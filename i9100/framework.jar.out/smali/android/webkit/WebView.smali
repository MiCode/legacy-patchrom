.class public Landroid/webkit/WebView;
.super Landroid/widget/AbsoluteLayout;
.source "WebView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalFocusChangeListener;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebView$CountingOutputStream;,
        Landroid/webkit/WebView$InvokeListBox;,
        Landroid/webkit/WebView$PrivateHandler;,
        Landroid/webkit/WebView$ScaleDetectorListener;,
        Landroid/webkit/WebView$DragTracker;,
        Landroid/webkit/WebView$DragTrackerHandler;,
        Landroid/webkit/WebView$PostScale;,
        Landroid/webkit/WebView$CmdVal;,
        Landroid/webkit/WebView$SelectionOffset;,
        Landroid/webkit/WebView$CursorDirection;,
        Landroid/webkit/WebView$ResultTransport;,
        Landroid/webkit/WebView$RequestFormData;,
        Landroid/webkit/WebView$PluginUpdateData;,
        Landroid/webkit/WebView$ViewSizeData;,
        Landroid/webkit/WebView$WebTextSelectionListener;,
        Landroid/webkit/WebView$WebSelectRequest;,
        Landroid/webkit/WebView$HitTestResult;,
        Landroid/webkit/WebView$PictureListener;,
        Landroid/webkit/WebView$WebViewTransport;,
        Landroid/webkit/WebView$ExtendedZoomControls;,
        Landroid/webkit/WebView$ZoomMode;
    }
.end annotation


# static fields
.field private static final AUTO_REDRAW_HACK:Z = false

.field private static final AWAKEN_SCROLL_BARS:I = 0x9

.field static final CENTER_FIT_RECT:I = 0x7f

.field static final CLEAR_TEXT_ENTRY:I = 0x6f

.field private static final DEBUG_DRAG_TRACKER:Z = false

.field private static DEFAULT_MAX_ZOOM_SCALE:F = 0.0f

.field private static DEFAULT_MIN_ZOOM_SCALE:F = 0.0f

.field static DEFAULT_SCALE_PERCENT:I = 0x0

.field static final DEFAULT_VIEWPORT_WIDTH:I = 0x320

.field static final DOM_FOCUS_CHANGED:I = 0x7a

.field private static final DOUBLE_TAP_TIMEOUT:I = 0x190

.field static final DO_MOTION_UP:I = 0x77

.field private static final DRAG_HELD_MOTIONLESS:I = 0x8

.field private static final DRAW_EXTRAS_CURSOR_RING:I = 0x3

.field private static final DRAW_EXTRAS_FIND:I = 0x1

.field private static final DRAW_EXTRAS_NONE:I = 0x0

.field private static final DRAW_EXTRAS_SELECTION:I = 0x2

.field static final FIND_AGAIN:I = 0x7e

.field private static final FIRST_PACKAGE_MSG_ID:I = 0x65

.field private static final FIRST_PRIVATE_MSG_ID:I = 0x1

.field static final FORM_INPUT_ACTION:I = 0x83

.field public static final FORM_INPUT_DONE:I = 0x20

.field public static final FORM_INPUT_GO:I = 0x10

.field public static final FORM_INPUT_NEXT_SELECT:I = 0x8

.field public static final FORM_INPUT_NEXT_TEXT:I = 0x4

.field public static final FORM_INPUT_NONE:I = 0x0

.field public static final FORM_INPUT_PREV_SELECT:I = 0x2

.field public static final FORM_INPUT_PREV_TEXT:I = 0x1

.field static final HIDE_FULLSCREEN:I = 0x79

.field static final HandlerPackageDebugString:[Ljava/lang/String; = null

.field static final HandlerPrivateDebugString:[Ljava/lang/String; = null

.field static final IMMEDIATE_REPAINT_MSG_ID:I = 0x7b

.field static final INVAL_RECT_MSG_ID:I = 0x75

.field private static final LAST_PACKAGE_MSG_ID:I = 0x81

.field private static final LAST_PRIVATE_MSG_ID:I = 0xa

.field static final LOGTAG:Ljava/lang/String; = "webview"

.field static final LONG_PRESS_CENTER:I = 0x72

.field private static final LONG_PRESS_TIMEOUT:I = 0x3e8

.field private static final MAX_ADAPTIVE_ZOOM_ANIMATION_LENGTH:I = 0x2bc

.field private static final MAX_DURATION:I = 0x2ee

.field private static final MAX_SLOPE_FOR_DIAG:F = 1.5f

.field private static MINIMUM_SCALE_INCREMENT:F = 0.0f

.field private static final MIN_BREAK_SNAP_CROSS_DISTANCE:I = 0x50

.field private static final MIN_FLING_TIME:I = 0xfa

.field private static final MIN_SCROLL_AMOUNT_TO_DISABLE_DRAG_TRACKER:I = 0x4

.field private static final MOTIONLESS_FALSE:I = 0x0

.field private static final MOTIONLESS_IGNORE:I = 0x3

.field private static final MOTIONLESS_PENDING:I = 0x1

.field private static final MOTIONLESS_TIME:I = 0x64

.field private static final MOTIONLESS_TRUE:I = 0x2

.field static final MOVE_OUT_OF_PLUGIN:I = 0x6e

.field private static final NEVER_REMEMBER_PASSWORD:I = 0x2

.field static final NEW_PICTURE_MSG_ID:I = 0x69

.field private static final NO_LEFTEDGE:I = -0x1

.field private static final PAGE_SCROLL_OVERLAP:I = 0x18

.field public static final PREVENT_DEFAULT_IGNORE:I = 0x4

.field public static final PREVENT_DEFAULT_MAYBE_YES:I = 0x1

.field public static final PREVENT_DEFAULT_NO:I = 0x0

.field public static final PREVENT_DEFAULT_NO_FROM_TOUCH_DOWN:I = 0x2

.field private static final PREVENT_DEFAULT_TIMEOUT:I = 0xa

.field public static final PREVENT_DEFAULT_YES:I = 0x3

.field static final PREVENT_TOUCH_ID:I = 0x73

.field private static final RELEASE_SINGLE_TAP:I = 0x5

.field private static final REMEMBER_PASSWORD:I = 0x1

.field static final REQUEST_CLEAR_CURSOR:I = 0x85

.field private static final REQUEST_FORM_DATA:I = 0x6

.field static final REQUEST_KEYBOARD:I = 0x76

.field static final REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID:I = 0x80

.field static final REQUEST_LISTBOX:I = 0x84

.field private static final RESUME_WEBCORE_PRIORITY:I = 0x7

.field static final RETURN_LABEL:I = 0x7d

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final SCROLLBAR_ALWAYSOFF:I = 0x1

.field private static final SCROLLBAR_ALWAYSON:I = 0x2

.field private static final SCROLLBAR_AUTO:I = 0x0

.field static final SCROLL_BY_MSG_ID:I = 0x66

.field static final SCROLL_TO_MSG_ID:I = 0x65

.field static final SELECTION_CONTROLS_NOTIFY:I = 0x8d

.field static final SELECTION_POS_CHANGED_DELAY:I = 0x320

.field private static final SELECT_CURSOR_OFFSET:I = 0x10

.field static final SET_ROOT_LAYER_MSG_ID:I = 0x7c

.field static final SET_SCROLLBAR_MODES:I = 0x81

.field static final SHOW_FULLSCREEN:I = 0x78

.field static final SHOW_RECT_MSG_ID:I = 0x71

.field private static final SLIDE_TITLE_DURATION:I = 0x1f4

.field private static final SNAP_LOCK:I = 0x1

.field private static final SNAP_NONE:I = 0x0

.field private static final SNAP_X:I = 0x2

.field private static final SNAP_Y:I = 0x4

.field static final SPAWN_SCROLL_TO_MSG_ID:I = 0x67

.field private static final STD_SPEED:I = 0x1e0

.field private static final SWITCH_TO_LONGPRESS:I = 0x4

.field private static final SWITCH_TO_SHORTPRESS:I = 0x3

.field static final SYNC_SCROLL_TO_MSG_ID:I = 0x68

.field private static final TAP_TIMEOUT:I = 0xc8

.field private static final TOUCH_DONE_MODE:I = 0x7

.field private static final TOUCH_DOUBLE_TAP_MODE:I = 0x6

.field private static final TOUCH_DRAG_MODE:I = 0x3

.field private static final TOUCH_DRAG_START_MODE:I = 0x2

.field private static final TOUCH_INIT_MODE:I = 0x1

.field private static final TOUCH_PINCH_DRAG:I = 0x8

.field private static final TOUCH_SENT_INTERVAL:I = 0x32

.field private static final TOUCH_SHORTPRESS_MODE:I = 0x5

.field private static final TOUCH_SHORTPRESS_START_MODE:I = 0x4

.field private static final TRACKBALL_KEY_TIMEOUT:I = 0x3e8

.field private static final TRACKBALL_MOVE_COUNT:I = 0xa

.field private static final TRACKBALL_MULTIPLIER:I = 0x3

.field private static final TRACKBALL_SCALE:I = 0x190

.field private static final TRACKBALL_SCROLL_COUNT:I = 0x5

.field private static final TRACKBALL_TIMEOUT:I = 0xc8

.field private static final TRACKBALL_WAIT:I = 0x64

.field static final UPDATE_SELECTION_MSG_ID:I = 0x8c

.field static final UPDATE_TEXTFIELD_TEXT_MSG_ID:I = 0x6c

.field static final UPDATE_TEXT_ENTRY_MSG_ID:I = 0x6a

.field static final UPDATE_TEXT_SELECTION_MSG_ID:I = 0x70

.field static final UPDATE_ZOOM_RANGE:I = 0x6d

.field static final WEBCORE_INITIALIZED_MSG_ID:I = 0x6b

.field static final WEBCORE_NEED_TOUCH_EVENTS:I = 0x74

.field public static final WEBTEXTSELECT_CHARACTER_GRANULARITY:I = 0x0

.field public static final WEBTEXTSELECT_CHAR_CONTROLER_LEFT:I = 0x1

.field public static final WEBTEXTSELECT_CHAR_CONTROLER_RIGHT:I = 0x2

.field public static final WEBTEXTSELECT_NO_CONTROLER:I = 0x0

.field public static final WEBTEXTSELECT_PARAGRAPH_GRANULARITY:I = 0x4

.field public static final WEBTEXTSELECT_PARA_CONTROLER_BM:I = 0x5

.field public static final WEBTEXTSELECT_PARA_CONTROLER_LM:I = 0x3

.field public static final WEBTEXTSELECT_PARA_CONTROLER_RM:I = 0x4

.field public static final WEBTEXTSELECT_PARA_CONTROLER_UM:I = 0x6

.field public static final WEBTEXTSELECT_WORD_GRANULARITY:I = 0x1

.field private static final ZOOM_ANIMATION_LENGTH:I = 0x1f4

#the value of this static final field might be set in the static constructor
.field private static final ZOOM_CONTROLS_TIMEOUT:J = 0x0L

.field static final ZOOM_ON_DOUBLE_TAP:I = 0x82

.field private static final mAdaptiveZoomPadding:I = 0xa

.field public static mInUserRotate:Z = false

.field public static mInUserScroll:Z = false

.field static mLogEvent:Z = false

.field private static final mMaxAdaptiveZoomScale:F = 2.0f

.field private static mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

.field private static mOverScrollBackground:Landroid/graphics/Paint;

.field private static mOverScrollBorder:Landroid/graphics/Paint;

.field private static mScrollBeyondPage:Z

.field static sMaxViewportWidth:I


# instance fields
.field public SimulateSelect:Z

.field private bWebSelectDialogIsUp:Z

.field public isSelectionset:Z

.field private mActionMove:Z

.field private mActualScale:F

.field private mAdaptiveZoom:Z

.field private mAdaptiveZoomAnimationLength:F

.field private mAllowPanAndScale:Z

.field private mAnchorX:I

.field private mAnchorY:I

.field private mAutoRedraw:Z

.field private mAutoSelection:Z

.field private mBackgroundColor:I

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCertificate:Landroid/net/http/SslCertificate;

.field private mConfirmMove:Z

.field private mContentHeight:I

.field private mContentWidth:I

.field private mController:I

.field mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

.field private mCurrentTouchInterval:I

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mDefaultScale:F

.field private mDeferTouchMode:I

.field private mDeferTouchProcess:Z

.field private mDelayedDeleteRootLayer:Z

.field private mDoubleTapSlopSquare:I

.field mDragFromTextInput:Z

.field private mDragTracker:Landroid/webkit/WebView$DragTracker;

.field private mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

.field private mDrawCursorRing:Z

.field private mDrawHistory:Z

.field private mDrawSelectionPointer:Z

.field private mEdgeGlowBottom:Landroid/widget/EdgeGlow;

.field private mEdgeGlowLeft:Landroid/widget/EdgeGlow;

.field private mEdgeGlowRight:Landroid/widget/EdgeGlow;

.field private mEdgeGlowTop:Landroid/widget/EdgeGlow;

.field private mExtendSelection:Z

.field private mExtendSelectionPressed:Z

.field private mFindHeight:I

.field private mFindIsUp:Z

.field private mFirstTouchPosX:F

.field private mFirstTouchPosY:F

.field private mFocusSizeChanged:Z

.field private mFocusedNodeName:Ljava/lang/String;

.field private mFocusedNodePointer:I

.field private mForwardTouchEvents:Z

.field private mForwardTouchEvents_others:Z

.field private mForwardTouchEvents_plugin:Z

.field mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

.field private mGotCenterDown:Z

.field private mGotKeyDown:Z

.field private mHandleTouchRevision:I

.field private mHasRotateSupport:Z

.field mHeightCanMeasure:Z

.field private mHeldMotionless:I

.field private mHistoryHeight:I

.field private mHistoryPicture:Landroid/graphics/Picture;

.field private mHistoryWidth:I

.field private mHorizontalScrollBarMode:I

.field private mIgnoreDoubleTap:Z

.field private mIgnoreFling:Z

.field private mIgnoreViewSizeChanged:Z

.field public mInActionMove:Z

.field private mInOverScrollMode:Z

.field mInZoomOverview:Z

.field private mInitialScaleInPercent:I

.field private mInitialScrollX:I

.field private mInitialScrollY:I

.field private mInvActualScale:F

.field private mInvFinalZoomScale:F

.field private mInvInitialZoomScale:F

.field private mIsGrabbingScreen:Z

.field private mIsPaused:Z

.field private mIsWebCoreTimerPaused:Z

.field private mLastCursorBounds:Landroid/graphics/Rect;

.field private mLastCursorTime:J

.field private mLastDeferTouchX:F

.field private mLastDeferTouchY:F

.field private mLastFind:Ljava/lang/String;

.field private mLastGlobalRect:Landroid/graphics/Rect;

.field mLastHeightSent:I

.field private mLastSentTouchTime:J

.field private mLastTouchTime:J

.field private mLastTouchUpTime:J

.field private mLastTouchX:F

.field private mLastTouchY:F

.field private mLastVelX:F

.field private mLastVelY:F

.field private mLastVelocity:F

.field private mLastVisibleRectSent:Landroid/graphics/Rect;

.field mLastWidthSent:I

.field private mLongPress:Z

.field private mMagnifier:Landroid/webkit/WebMagnifier;

.field private mMapTrackballToArrowKeys:Z

.field private mMaxZoomScale:F

.field private mMaximumFling:I

.field private mMinLockSnapReverseDistance:I

.field private mMinZoomScale:F

.field private mMinZoomScaleFixed:Z

.field private mMsgPauseRecvd:Z

.field private mMsgResumeRecvd:Z

.field private mNativeClass:I

.field private mNavSlop:I

.field private mNeedToAdjustWebTextView:Z

.field private mOverflingDistance:I

.field private mOverlayHorizontalScrollbar:Z

.field private mOverlayVerticalScrollbar:Z

.field private mOverscrollDeltaX:I

.field private mOverscrollDeltaY:I

.field private mOverscrollDistance:I

.field private mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

.field private mPictureListener:Landroid/webkit/WebView$PictureListener;

.field mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

.field private mPreserveZoom:Z

.field public mPreventDefault:I

.field mPreventDefaultTimeout:I

.field private mPreviewZoomOnly:Z

.field final mPrivateHandler:Landroid/os/Handler;

.field private mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

.field private mScroller:Landroid/widget/OverScroller;

.field private mSelectX:I

.field private mSelectY:I

.field private mSelectingText:Z

.field private mSelectionStarted:Z

.field private mShiftIsPressed:Z

.field private mSizeChangedCallback:Ljava/lang/Runnable;

.field private mSmartSelection:Z

.field private mSnapPositive:Z

.field private mSnapScrollMode:I

.field public mStopSelection:Z

.field private mSupportMultiTouch:Z

.field private mTempDisableInvalidate:Z

.field private mTextGeneration:I

.field mTextWrapScale:F

.field private mTitleBar:Landroid/view/View;

.field private mTitleShadow:Landroid/graphics/drawable/Drawable;

.field private mTmpLocations:[I

.field private mTouchMode:I

.field private mTouchSelectionHandler:Z

.field private mTouchSlop:I

.field private mTouchSlopSquare:I

.field private mTrackballDown:Z

.field private mTrackballFirstTime:J

.field private mTrackballLastTime:J

.field private mTrackballRemainsX:F

.field private mTrackballRemainsY:F

.field private mTrackballUpTime:J

.field private mTrackballXMove:I

.field private mTrackballYMove:I

.field public mUserScroll:Z

.field mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVerticalScrollBarMode:I

.field private mViewCenterYCorrection:F

.field final mViewManager:Landroid/webkit/ViewManager;

.field private mWebClipboard:Landroid/webkit/WebClipboard;

.field private mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

.field private mWebSelectDialog:Landroid/webkit/WebSelectDialog;

.field private mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

.field private mWebSelectionOn:Z

.field private mWebTextView:Landroid/webkit/WebTextView;

.field private mWebViewCore:Landroid/webkit/WebViewCore;

.field mWidthCanMeasure:Z

.field private mWrapContent:Z

.field private mYDistanceToSlideTitleOffScreen:I

.field private mZoomButtonsController:Landroid/widget/ZoomButtonsController;

.field private mZoomCenterX:F

.field private mZoomCenterY:F

.field private mZoomControlRunnable:Ljava/lang/Runnable;

.field private mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

.field mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

.field private mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

.field mZoomOverviewWidth:I

.field private mZoomScale:F

.field private mZoomStart:J

.field private mbIsNewWordSelected:Z

.field private motionListener1:Landroid/hardware/motion/MRListener;

.field private registerTiltListener:Z

.field textWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 338
    sput-boolean v3, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    .line 339
    sput-boolean v3, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 340
    sput-boolean v3, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 355
    const/4 v0, 0x0

    sput-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 689
    invoke-static {}, Landroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v0

    sput-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    .line 813
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REMEMBER_PASSWORD"

    aput-object v1, v0, v3

    const-string v1, "NEVER_REMEMBER_PASSWORD"

    aput-object v1, v0, v4

    const-string v1, "SWITCH_TO_SHORTPRESS"

    aput-object v1, v0, v5

    const-string v1, "SWITCH_TO_LONGPRESS"

    aput-object v1, v0, v6

    const-string v1, "RELEASE_SINGLE_TAP"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "REQUEST_FORM_DATA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "RESUME_WEBCORE_PRIORITY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "DRAG_HELD_MOTIONLESS"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "AWAKEN_SCROLL_BARS"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "PREVENT_DEFAULT_TIMEOUT"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPrivateDebugString:[Ljava/lang/String;

    .line 826
    const/16 v0, 0x21

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "SCROLL_TO_MSG_ID"

    aput-object v1, v0, v3

    const-string v1, "SCROLL_BY_MSG_ID"

    aput-object v1, v0, v4

    const-string v1, "SPAWN_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v5

    const-string v1, "SYNC_SCROLL_TO_MSG_ID"

    aput-object v1, v0, v6

    const-string v1, "NEW_PICTURE_MSG_ID"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "UPDATE_TEXT_ENTRY_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "WEBCORE_INITIALIZED_MSG_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "UPDATE_TEXTFIELD_TEXT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "UPDATE_ZOOM_RANGE"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "MOVE_OUT_OF_PLUGIN"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "CLEAR_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "UPDATE_TEXT_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "SHOW_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "LONG_PRESS_CENTER"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "PREVENT_TOUCH_ID"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "WEBCORE_NEED_TOUCH_EVENTS"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "INVAL_RECT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REQUEST_KEYBOARD"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "DO_MOTION_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SHOW_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "HIDE_FULLSCREEN"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "DOM_FOCUS_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "IMMEDIATE_REPAINT_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "SET_ROOT_LAYER_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "RETURN_LABEL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "FIND_AGAIN"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "CENTER_FIT_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "REQUEST_KEYBOARD_WITH_SELECTION_MSG_ID"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "SET_SCROLLBAR_MODES"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "ZOOM_ON_DOUBLE_TAP"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "FORM_INPUT_ACTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "REQUEST_LISTBOX"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "REQUEST_CLEAR_CURSOR"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebView;->HandlerPackageDebugString:[Ljava/lang/String;

    .line 872
    const/16 v0, 0x320

    sput v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 900
    const v0, 0x3c23d70a

    sput v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    .line 977
    sput-boolean v4, Landroid/webkit/WebView;->mLogEvent:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1487
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1488
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 1496
    const v0, 0x1010085

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 1497
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 1506
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V

    .line 1507
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;)V
    .locals 7
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1523
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 330
    iput-boolean v1, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 351
    iput-boolean v1, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    .line 352
    iput-boolean v1, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    .line 353
    iput-boolean v1, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    .line 356
    new-instance v0, Landroid/webkit/WebView$1;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$1;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->motionListener1:Landroid/hardware/motion/MRListener;

    .line 376
    iput-boolean v1, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 539
    new-instance v0, Landroid/webkit/WebView$PrivateHandler;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$PrivateHandler;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    .line 552
    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 591
    const/16 v0, 0x32

    iput v0, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 605
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 621
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    .line 622
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    .line 623
    iput-boolean v1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    .line 634
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 645
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    .line 654
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 714
    iput-boolean v2, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 715
    iput-boolean v1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 725
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 880
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 883
    iput v1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 889
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 893
    const/16 v0, 0x320

    iput v0, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 903
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 921
    iput-boolean v1, p0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 922
    iput v6, p0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 925
    iput-boolean v1, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 927
    iput v1, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 945
    iput v1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    .line 946
    iput v1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    .line 980
    iput-wide v4, p0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 995
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 1120
    new-instance v0, Landroid/webkit/WebView$2;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$2;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    .line 1147
    iput v1, p0, Landroid/webkit/WebView;->mController:I

    .line 1148
    iput-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1149
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 1150
    iput-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 1151
    iput-boolean v1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1157
    new-instance v0, Landroid/webkit/WebView$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$3;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 4762
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 4763
    iput-object v3, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4764
    iput v1, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 4765
    iput v1, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 5076
    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5605
    iput-boolean v1, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 6505
    iput-object v3, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 6506
    iput-object v3, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    .line 7645
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 7646
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7647
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7648
    iput v6, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 7649
    iput v1, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7650
    iput v1, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 7651
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 7652
    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7653
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 7654
    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7657
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 7658
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 7659
    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 7660
    iput-boolean v1, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 7661
    iput-boolean v1, p0, Landroid/webkit/WebView;->mActionMove:Z

    .line 7662
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInActionMove:Z

    .line 7663
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 7664
    iput-boolean v1, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 7713
    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7714
    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7715
    iput-boolean v1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 7716
    iput-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 7717
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7718
    iput-wide v4, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 7719
    iput-wide v4, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 7725
    iput-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 8427
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    .line 10083
    iput-boolean v1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 10084
    iput-object v3, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 10768
    const/16 v0, 0xc8

    iput v0, p0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    .line 10951
    iput v1, p0, Landroid/webkit/WebView;->mHandleTouchRevision:I

    .line 1524
    invoke-direct {p0}, Landroid/webkit/WebView;->init()V

    .line 1526
    new-instance v0, Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0}, Landroid/webkit/CallbackProxy;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 1527
    new-instance v0, Landroid/webkit/ViewManager;

    invoke-direct {v0, p0}, Landroid/webkit/ViewManager;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    .line 1528
    new-instance v0, Landroid/webkit/WebViewCore;

    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {v0, p1, p0, v1, p4}, Landroid/webkit/WebViewCore;-><init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1529
    invoke-static {p1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    .line 1530
    new-instance v0, Landroid/widget/OverScroller;

    invoke-direct {v0, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    .line 1532
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 1534
    new-instance v0, Landroid/webkit/WebMagnifier;

    invoke-direct {v0, p0}, Landroid/webkit/WebMagnifier;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    .line 1535
    new-instance v0, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct {v0}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    .line 1537
    new-instance v0, Landroid/webkit/WebTextSelectionControls;

    invoke-direct {v0, p1, p0}, Landroid/webkit/WebTextSelectionControls;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    .line 1538
    return-void
.end method

.method private IsTextSelectionControlerForward(II)Z
    .locals 11
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const-string/jumbo v10, "webview"

    const-string/jumbo v9, "startPoint="

    const-string v8, ","

    .line 11039
    const/4 v0, 0x0

    .line 11041
    .local v0, moveForward:Z
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    if-ne v4, v6, :cond_3

    .line 11042
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->left:I

    .line 11043
    .local v2, startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 11044
    .local v3, startY:I
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_0

    .line 11045
    const-string/jumbo v4, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPoint="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11047
    :cond_0
    if-le p2, v3, :cond_2

    .line 11048
    const/4 v0, 0x1

    .line 11091
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_1
    :goto_0
    return v0

    .line 11049
    .restart local v2       #startX:I
    .restart local v3       #startY:I
    :cond_2
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    if-lt p2, v4, :cond_1

    add-int/lit8 v4, v2, 0x5

    if-le p1, v4, :cond_1

    .line 11051
    const/4 v0, 0x1

    goto :goto_0

    .line 11053
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_3
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_6

    .line 11054
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v4, Landroid/graphics/Rect;->right:I

    .line 11055
    .restart local v2       #startX:I
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 11056
    .restart local v3       #startY:I
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_4

    .line 11057
    const-string/jumbo v4, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startPoint="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11060
    :cond_4
    if-ge p2, v3, :cond_5

    .line 11061
    const/4 v0, 0x1

    goto :goto_0

    .line 11062
    :cond_5
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    if-gt p2, v4, :cond_1

    sub-int v4, v2, v7

    if-ge p1, v4, :cond_1

    .line 11064
    const/4 v0, 0x1

    goto :goto_0

    .line 11066
    .end local v2           #startX:I
    .end local v3           #startY:I
    :cond_6
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_7

    .line 11067
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11068
    .local v1, selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 11069
    .restart local v3       #startY:I
    sub-int v4, v3, v6

    if-ge p2, v4, :cond_1

    .line 11070
    const/4 v0, 0x1

    goto :goto_0

    .line 11072
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_7
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    if-ne v4, v7, :cond_8

    .line 11073
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11074
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    .line 11075
    .restart local v3       #startY:I
    add-int/lit8 v4, v3, 0x2

    if-le p2, v4, :cond_1

    .line 11076
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 11078
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v3           #startY:I
    :cond_8
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_9

    .line 11079
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11080
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->right:I

    .line 11081
    .restart local v2       #startX:I
    sub-int v4, v2, v6

    if-ge p1, v4, :cond_1

    .line 11082
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 11084
    .end local v1           #selectRect:Landroid/graphics/Rect;
    .end local v2           #startX:I
    :cond_9
    iget v4, p0, Landroid/webkit/WebView;->mController:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_1

    .line 11085
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 11086
    .restart local v1       #selectRect:Landroid/graphics/Rect;
    iget v2, v1, Landroid/graphics/Rect;->left:I

    .line 11087
    .restart local v2       #startX:I
    add-int/lit8 v4, v2, 0x2

    if-le p1, v4, :cond_1

    .line 11088
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private _onDraw(Landroid/graphics/Canvas;)V
    .locals 25
    .parameter "canvas"

    .prologue
    .line 4297
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->alwaysAllowWebViewDraw()Z

    move-result v20

    if-nez v20, :cond_1

    .line 4364
    :cond_0
    :goto_0
    return-void

    .line 4303
    :cond_1
    const/4 v5, 0x0

    .line 4304
    .local v5, cacheBitmap:Landroid/graphics/Bitmap;
    move-object/from16 v7, p1

    .line 4305
    .local v7, innerCanvas:Landroid/graphics/Canvas;
    const/4 v9, 0x0

    .line 4306
    .local v9, offsetX:I
    const/4 v10, 0x0

    .line 4307
    .local v10, offsetY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    move/from16 v20, v0

    if-nez v20, :cond_2

    .line 4308
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 4309
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmapOffsetX()I

    move-result v9

    .line 4310
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->getCacheBitmapOffsetY()I

    move-result v10

    .line 4313
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    .line 4314
    .local v11, time1:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4315
    .local v13, time2:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    .line 4316
    .local v15, time3:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4319
    .local v17, time4:J
    if-eqz v5, :cond_3

    .line 4322
    :try_start_0
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4323
    .end local v7           #innerCanvas:Landroid/graphics/Canvas;
    .local v8, innerCanvas:Landroid/graphics/Canvas;
    :try_start_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    move/from16 v0, v21

    neg-int v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4324
    move v0, v9

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v21, v0

    move-object v0, v8

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 4326
    .end local v8           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v7       #innerCanvas:Landroid/graphics/Canvas;
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->_onDrawInner(Landroid/graphics/Canvas;)V

    .line 4327
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 4328
    if-eqz v5, :cond_4

    .line 4330
    move v0, v9

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move v0, v10

    neg-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 4332
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v15

    .line 4334
    if-eqz v5, :cond_5

    .line 4335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->postCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 4337
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_6

    if-eqz v5, :cond_6

    .line 4344
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    if-nez v20, :cond_7

    .line 4346
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v19

    .line 4347
    .local v19, titleH:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    if-nez v19, :cond_7

    .line 4348
    const/high16 v20, 0x40a0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    mul-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move v6, v0

    .line 4350
    .local v6, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v24

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v24, v0

    add-int v24, v24, v6

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4352
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 4358
    .end local v6           #height:I
    .end local v19           #titleH:I
    :cond_7
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 4359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebTextView;->onDrawSubstitute()V

    .line 4361
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 4362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebViewCore;->signalRepaintDone()V

    goto/16 :goto_0

    .line 4334
    :catchall_0
    move-exception v20

    :goto_1
    if-eqz v5, :cond_9

    .line 4335
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->postCacheBitmap(Landroid/graphics/Bitmap;)V

    .line 4337
    :cond_9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    .line 4334
    throw v20

    .end local v7           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v8       #innerCanvas:Landroid/graphics/Canvas;
    :catchall_1
    move-exception v20

    move-object v7, v8

    .end local v8           #innerCanvas:Landroid/graphics/Canvas;
    .restart local v7       #innerCanvas:Landroid/graphics/Canvas;
    goto :goto_1
.end method

.method private _onDrawInner(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    const/4 v11, 0x0

    .line 4369
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 4427
    :goto_0
    return-void

    .line 4376
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    if-nez v0, :cond_1

    .line 4377
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 4381
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v9

    .line 4382
    .local v9, saveCount:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWebViewBackgroundForOverscrollBackground()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4384
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    if-nez v0, :cond_2

    .line 4385
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    .line 4386
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1080344

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 4389
    .local v6, bm:Landroid/graphics/Bitmap;
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/BitmapShader;

    sget-object v2, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v3, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v1, v6, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4391
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    .line 4392
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4393
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    invoke-virtual {v0, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 4394
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    const v1, -0x444445

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4397
    .end local v6           #bm:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v10, 0x0

    .line 4398
    .local v10, top:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v8

    .line 4399
    .local v8, right:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    add-int v7, v10, v0

    .line 4401
    .local v7, bottom:I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4402
    iget v0, p0, Landroid/view/View;->mScrollX:I

    int-to-float v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4403
    iget v0, p0, Landroid/view/View;->mScrollX:I

    neg-int v0, v0

    int-to-float v1, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v10, v0

    int-to-float v2, v0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v0, v8, v0

    int-to-float v3, v0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v0, v7, v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 4405
    sget-object v0, Landroid/webkit/WebView;->mOverScrollBackground:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 4406
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 4408
    const/high16 v1, -0x4080

    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v2, v0

    int-to-float v3, v8

    int-to-float v4, v7

    sget-object v5, Landroid/webkit/WebView;->mOverScrollBorder:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 4410
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v10, v8, v7}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 4412
    .end local v7           #bottom:I
    .end local v8           #right:I
    .end local v10           #top:I
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 4413
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4415
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-nez v0, :cond_6

    .line 4416
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 4426
    :cond_5
    :goto_1
    invoke-virtual {p1, v9}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/16 :goto_0

    .line 4418
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView$DragTrackerHandler;->draw(Landroid/graphics/Canvas;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 4420
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    .line 4422
    :cond_7
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4423
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    goto :goto_1
.end method

.method private abortAnimation()V
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 2878
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mLastVelocity:F

    .line 2879
    return-void
.end method

.method static synthetic access$000(Landroid/webkit/WebView;)Landroid/webkit/WebviewScaleGestureDetector;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebView;)Landroid/widget/ZoomButtonsController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    return-object v0
.end method

.method static synthetic access$10000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$10100(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doDrag(II)V

    return-void
.end method

.method static synthetic access$10200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$10300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$10400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    return v0
.end method

.method static synthetic access$10500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    return v0
.end method

.method static synthetic access$10600(Landroid/webkit/WebView;)Landroid/widget/OverScroller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    return-object v0
.end method

.method static synthetic access$10700(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->doDoubleTap()V

    return-void
.end method

.method static synthetic access$10800(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    return-void
.end method

.method static synthetic access$10900(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method static synthetic access$11000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return v0
.end method

.method static synthetic access$11002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    return p1
.end method

.method static synthetic access$1102(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    return p1
.end method

.method static synthetic access$11100(Landroid/webkit/WebView;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$11200(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->doMotionUp(II)V

    return-void
.end method

.method static synthetic access$11300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$11600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$11700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    return v0
.end method

.method static synthetic access$11800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$11900(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    return-void
.end method

.method static synthetic access$1200(Landroid/webkit/WebView;FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 319
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    return-void
.end method

.method static synthetic access$12002(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    return p1
.end method

.method static synthetic access$12102(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    return p1
.end method

.method static synthetic access$12200(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->doAdaptiveZoom(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    return v0
.end method

.method static synthetic access$12400(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->showMagnifier(IIZ)V

    return-void
.end method

.method static synthetic access$12502(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mController:I

    return p1
.end method

.method static synthetic access$12600(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    return v0
.end method

.method static synthetic access$12700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return v0
.end method

.method static synthetic access$12702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    return p1
.end method

.method static synthetic access$12800(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$13000(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13100(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13300(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13400(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$13500(Landroid/webkit/WebView;)Landroid/webkit/WebSelectDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object v0
.end method

.method static synthetic access$13502(Landroid/webkit/WebView;Landroid/webkit/WebSelectDialog;)Landroid/webkit/WebSelectDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-object p1, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    return-object p1
.end method

.method static synthetic access$13600(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    return v0
.end method

.method static synthetic access$1600(Landroid/webkit/WebView;Landroid/graphics/Canvas;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->drawContent(Landroid/graphics/Canvas;)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    return-object v0
.end method

.method static synthetic access$1900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return v0
.end method

.method static synthetic access$200(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->updateZoomButtonsEnabled()V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method static synthetic access$2002(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return p1
.end method

.method static synthetic access$2100(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return v0
.end method

.method static synthetic access$2102(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    return p1
.end method

.method static synthetic access$2200(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return v0
.end method

.method static synthetic access$2202(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    return p1
.end method

.method static synthetic access$2300(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return v0
.end method

.method static synthetic access$2302(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    return p1
.end method

.method static synthetic access$2402(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mAnchorX:I

    return p1
.end method

.method static synthetic access$2500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$2602(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mAnchorY:I

    return p1
.end method

.method static synthetic access$2700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$2800()F
    .locals 1

    .prologue
    .line 319
    sget v0, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    return v0
.end method

.method static synthetic access$2900(Landroid/webkit/WebView;FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebView;Z)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    return v0
.end method

.method static synthetic access$3102(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mTouchMode:I

    return p1
.end method

.method static synthetic access$3202(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    return p1
.end method

.method static synthetic access$3300(Landroid/webkit/WebView;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 319
    iget-wide v0, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebView;FFJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    return-void
.end method

.method static synthetic access$3500(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    return-object v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebView;)Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    return-object v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebView;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$3800()J
    .locals 2

    .prologue
    .line 319
    sget-wide v0, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return v0
.end method

.method static synthetic access$3902(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebView;Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4100(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return v0
.end method

.method static synthetic access$4102(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    return p1
.end method

.method static synthetic access$4200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4300(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    return-void
.end method

.method static synthetic access$4400(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->updateSelection()V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    return v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$4700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$4800(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->selectClosestWord(II)V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    return v0
.end method

.method static synthetic access$5100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->doShortPress()V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebView;IIZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->setContentScrollBy(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5500(Landroid/webkit/WebView;II)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->setContentScrollTo(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5600(Landroid/webkit/WebView;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->spawnContentScrollTo(II)V

    return-void
.end method

.method static synthetic access$5700(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return v0
.end method

.method static synthetic access$5802(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mDelayedDeleteRootLayer:Z

    return p1
.end method

.method static synthetic access$5900(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetRootLayer(I)V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method static synthetic access$6100(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    return v0
.end method

.method static synthetic access$6200(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    return v0
.end method

.method static synthetic access$6300(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    return-void
.end method

.method static synthetic access$6400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    return v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mFindHeight:I

    return v0
.end method

.method static synthetic access$6600(Landroid/webkit/WebView;IIZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebView;Landroid/graphics/Rect;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->invalidateContentRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    return-object v0
.end method

.method static synthetic access$6900(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    return v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    return v0
.end method

.method static synthetic access$7100(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mInvActualScale:F

    return v0
.end method

.method static synthetic access$7202(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    return p1
.end method

.method static synthetic access$7300(Landroid/webkit/WebView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeCreate(I)V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$7500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    return v0
.end method

.method static synthetic access$7600(Landroid/webkit/WebView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    return-void
.end method

.method static synthetic access$7700(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;->updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V

    return-void
.end method

.method static synthetic access$7800(Landroid/webkit/WebView;IIZJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 319
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    return-object v0
.end method

.method static synthetic access$8000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return v0
.end method

.method static synthetic access$8002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebView;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8200(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    return v0
.end method

.method static synthetic access$8300(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebView;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 319
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    return-void
.end method

.method static synthetic access$8602(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    return p1
.end method

.method static synthetic access$8702(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    return p1
.end method

.method static synthetic access$8800(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    return v0
.end method

.method static synthetic access$8802(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_plugin:Z

    return p1
.end method

.method static synthetic access$8900(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    return v0
.end method

.method static synthetic access$8902(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    return p1
.end method

.method static synthetic access$900(Landroid/webkit/WebView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$9000(Landroid/webkit/WebView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return v0
.end method

.method static synthetic access$9002(Landroid/webkit/WebView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput-boolean p1, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return v0
.end method

.method static synthetic access$9102(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchX:F

    return p1
.end method

.method static synthetic access$9200(Landroid/webkit/WebView;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return v0
.end method

.method static synthetic access$9202(Landroid/webkit/WebView;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mLastDeferTouchY:F

    return p1
.end method

.method static synthetic access$9300(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return v0
.end method

.method static synthetic access$9302(Landroid/webkit/WebView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    iput p1, p0, Landroid/webkit/WebView;->mDeferTouchMode:I

    return p1
.end method

.method static synthetic access$9400(Landroid/webkit/WebView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/webkit/WebView;->startDrag()V

    return-void
.end method

.method static synthetic access$9500(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$9600(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$9700(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollX:I

    return v0
.end method

.method static synthetic access$9800(Landroid/webkit/WebView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 319
    iget v0, p0, Landroid/view/View;->mScrollY:I

    return v0
.end method

.method static synthetic access$9900(Landroid/webkit/WebView;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 319
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v0

    return v0
.end method

.method private calcOurContentVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x0

    .line 3156
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3158
    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 3163
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 3164
    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 3165
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 3166
    return-void
.end method

.method private calcOurContentVisibleRectF(Landroid/graphics/RectF;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 3173
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 3174
    .local v0, ri:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3176
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->left:F

    .line 3181
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->top:F

    .line 3182
    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentXf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->right:F

    .line 3183
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentYf(I)F

    move-result v1

    iget v2, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Landroid/graphics/RectF;->bottom:F

    .line 3184
    return-void
.end method

.method private calcOurVisibleRect(Landroid/graphics/Rect;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 3146
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 3147
    .local v0, p:Landroid/graphics/Point;
    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    .line 3148
    iget v1, v0, Landroid/graphics/Point;->x:I

    neg-int v1, v1

    iget v2, v0, Landroid/graphics/Point;->y:I

    neg-int v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 3149
    iget-boolean v1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    if-eqz v1, :cond_0

    .line 3150
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    .line 3152
    :cond_0
    return-void
.end method

.method private cancelWebCoreTouchEvent(IIZ)V
    .locals 3
    .parameter "x"
    .parameter "y"
    .parameter "removeEvents"

    .prologue
    const/16 v2, 0x8d

    .line 7493
    invoke-virtual {p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7494
    if-eqz p3, :cond_0

    .line 7495
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 7497
    :cond_0
    new-instance v0, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7498
    .local v0, ted:Landroid/webkit/WebViewCore$TouchEventData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7499
    iput p2, v0, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7500
    const/4 v1, 0x3

    iput v1, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7501
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7502
    const/4 v1, 0x4

    iput v1, p0, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7504
    .end local v0           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1
    return-void
.end method

.method private centerFitRect(IIII)V
    .locals 22
    .parameter "docX"
    .parameter "docY"
    .parameter "docWidth"
    .parameter "docHeight"

    .prologue
    .line 8481
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v17

    .line 8482
    .local v17, viewWidth:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v16

    .line 8483
    .local v16, viewHeight:I
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v19, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 8485
    .local v15, scale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v18, v0

    cmpg-float v18, v15, v18

    if-gez v18, :cond_1

    .line 8486
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v15, v0

    .line 8490
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    sub-float v18, v15, v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Math;->abs(F)F

    move-result v18

    sget v19, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v18, v18, v19

    if-gez v18, :cond_2

    .line 8491
    div-int/lit8 v18, p3, 0x2

    add-int v18, v18, p1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v18

    div-int/lit8 v19, v17, 0x2

    sub-int v18, v18, v19

    div-int/lit8 v19, p4, 0x2

    add-int v19, v19, p2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v19

    div-int/lit8 v20, v16, 0x2

    sub-int v19, v19, v20

    const/16 v20, 0x1

    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 8524
    :goto_1
    return-void

    .line 8487
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v18, v0

    cmpl-float v18, v15, v18

    if-lez v18, :cond_0

    .line 8488
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v15, v0

    goto :goto_0

    .line 8495
    :cond_2
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v9, v18, v19

    .line 8496
    .local v9, oldScreenX:F
    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v13, v18, v15

    .line 8497
    .local v13, rectViewX:F
    move/from16 v0, p3

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v12, v18, v15

    .line 8498
    .local v12, rectViewWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v6, v18, v15

    .line 8499
    .local v6, newMaxWidth:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v12

    const/high16 v19, 0x4000

    div-float v7, v18, v19

    .line 8501
    .local v7, newScreenX:F
    cmpl-float v18, v7, v13

    if-lez v18, :cond_5

    .line 8502
    move v7, v13

    .line 8506
    :cond_3
    :goto_2
    mul-float v18, v9, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v7

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8508
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v10, v18, v19

    .line 8510
    .local v10, oldScreenY:F
    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v14, v18, v19

    .line 8511
    .local v14, rectViewY:F
    move/from16 v0, p4

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v11, v18, v15

    .line 8512
    .local v11, rectViewHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v15

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    add-float v5, v18, v19

    .line 8513
    .local v5, newMaxHeight:F
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v18, v18, v11

    const/high16 v19, 0x4000

    div-float v8, v18, v19

    .line 8515
    .local v8, newScreenY:F
    cmpl-float v18, v8, v14

    if-lez v18, :cond_6

    .line 8516
    move v8, v14

    .line 8520
    :cond_4
    :goto_3
    mul-float v18, v10, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    mul-float v19, v19, v8

    sub-float v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v19, v0

    sub-float v19, v15, v19

    div-float v18, v18, v19

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8522
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_1

    .line 8503
    .end local v5           #newMaxHeight:F
    .end local v8           #newScreenY:F
    .end local v10           #oldScreenY:F
    .end local v11           #rectViewHeight:F
    .end local v14           #rectViewY:F
    :cond_5
    sub-float v18, v6, v13

    sub-float v18, v18, v12

    cmpl-float v18, v7, v18

    if-lez v18, :cond_3

    .line 8504
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v6, v13

    sub-float v7, v18, v19

    goto/16 :goto_2

    .line 8517
    .restart local v5       #newMaxHeight:F
    .restart local v8       #newScreenY:F
    .restart local v10       #oldScreenY:F
    .restart local v11       #rectViewHeight:F
    .restart local v14       #rectViewY:F
    :cond_6
    sub-float v18, v5, v14

    sub-float v18, v18, v11

    cmpl-float v18, v8, v18

    if-lez v18, :cond_4

    .line 8518
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v18, v0

    sub-float v19, v5, v14

    sub-float v8, v18, v19

    goto :goto_3
.end method

.method private clearHelpers()V
    .locals 1

    .prologue
    .line 1864
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 1865
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 1866
    return-void
.end method

.method private static computeDuration(II)I
    .locals 4
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 3828
    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 3829
    .local v0, distance:I
    mul-int/lit16 v2, v0, 0x3e8

    div-int/lit16 v1, v2, 0x1e0

    .line 3830
    .local v1, duration:I
    const/16 v2, 0x2ee

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2
.end method

.method private computeMaxScrollX()I
    .locals 2

    .prologue
    .line 7990
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeMaxScrollY()I
    .locals 2

    .prologue
    .line 7994
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private computeRealHorizontalScrollRange()I
    .locals 2

    .prologue
    .line 3272
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3273
    iget v0, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 3280
    :goto_0
    return v0

    .line 3274
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 3277
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeHorizontalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 3280
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private computeRealVerticalScrollRange()I
    .locals 2

    .prologue
    .line 3306
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v0, :cond_0

    .line 3307
    iget v0, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 3314
    :goto_0
    return v0

    .line 3308
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v0, v1

    sget v1, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 3311
    invoke-virtual {p0}, Landroid/webkit/WebView;->computeVerticalScrollExtent()I

    move-result v0

    goto :goto_0

    .line 3314
    :cond_1
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method

.method private contentSizeChanged(Z)V
    .locals 2
    .parameter "updateLayout"

    .prologue
    .line 4013
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    or-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 4032
    :cond_0
    :goto_0
    return-void

    .line 4017
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v0, :cond_3

    .line 4018
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredHeight()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_2

    if-eqz p1, :cond_0

    .line 4020
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4022
    :cond_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    if-eqz v0, :cond_5

    .line 4023
    invoke-virtual {p0}, Landroid/webkit/WebView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    if-ne v0, v1, :cond_4

    if-eqz p1, :cond_0

    .line 4025
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->requestLayout()V

    goto :goto_0

    .line 4030
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    goto :goto_0
.end method

.method private contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 5
    .parameter "x"

    .prologue
    .line 2829
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;
    .locals 3

    .prologue
    .line 8205
    new-instance v0, Landroid/webkit/WebView$ExtendedZoomControls;

    iget-object v1, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView$ExtendedZoomControls;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8207
    .local v0, zoomControls:Landroid/webkit/WebView$ExtendedZoomControls;
    new-instance v1, Landroid/webkit/WebView$11;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$11;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomInClickListener(Landroid/view/View$OnClickListener;)V

    .line 8216
    new-instance v1, Landroid/webkit/WebView$12;

    invoke-direct {v1, p0}, Landroid/webkit/WebView$12;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setOnZoomOutClickListener(Landroid/view/View$OnClickListener;)V

    .line 8225
    return-object v0
.end method

.method private didUpdateTextViewBounds(Z)Z
    .locals 9
    .parameter "allowIntersect"

    .prologue
    const/4 v8, 0x0

    .line 4497
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 4498
    .local v0, contentBounds:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 4499
    .local v1, vBox:Landroid/graphics/Rect;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 4500
    .local v2, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 4505
    if-eqz p1, :cond_1

    invoke-static {v2, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4510
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v4, v1, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4512
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v8, v4}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4515
    const/4 v3, 0x1

    return v3

    .line 4505
    :cond_1
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4508
    :cond_2
    iget v3, v1, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    invoke-direct {p0, v3, v4, v8, v8}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method public static disablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1915
    invoke-static {}, Landroid/webkit/Network;->disablePlatformNotifications()V

    .line 1916
    return-void
.end method

.method private dismissWebSelectDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2506
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_0

    .line 2507
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->dismiss()V

    .line 2508
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    .line 2509
    iput-boolean v3, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    .line 2511
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7c

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2513
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x85

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2516
    :cond_0
    return-void
.end method

.method private displaySoftKeyboard(Z)V
    .locals 7
    .parameter "isTextView"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4843
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4844
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    .line 4845
    invoke-virtual {v0, p0, p1}, Landroid/webkit/WebChromeClient;->onDisplaySoftKeyboard(Landroid/webkit/WebView;Z)V

    .line 4848
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 4852
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v4, p0, Landroid/webkit/WebView;->mDefaultScale:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    move v2, v6

    .line 4853
    .local v2, zoom:Z
    :goto_0
    if-eqz v2, :cond_1

    .line 4854
    iput-boolean v5, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 4855
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 4856
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v3, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 4858
    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    const/4 v4, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 4860
    :cond_1
    if-eqz p1, :cond_4

    .line 4861
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4862
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4863
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v3, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 4864
    if-eqz v2, :cond_2

    .line 4865
    invoke-direct {p0, v6}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    .line 4876
    :cond_2
    :goto_1
    return-void

    .end local v2           #zoom:Z
    :cond_3
    move v2, v5

    .line 4852
    goto :goto_0

    .line 4875
    .restart local v2       #zoom:Z
    :cond_4
    invoke-virtual {v1, p0, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_1
.end method

.method private doAdaptiveZoom(Landroid/graphics/Rect;)V
    .locals 25
    .parameter "blockRect"

    .prologue
    .line 8699
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v21

    if-nez v21, :cond_1

    .line 8859
    :cond_0
    :goto_0
    return-void

    .line 8703
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    .line 8707
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v9, v0

    .line 8709
    .local v9, oldScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8710
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8711
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 8712
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 8714
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_2

    .line 8715
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom mLastTouchX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mLastTouchY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8716
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom mScrollX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mScrollY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8717
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom blockRect=("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8721
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v15

    .line 8723
    .local v15, settings:Landroid/webkit/WebSettings;
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 8724
    .local v5, blockWidth:I
    if-lez v5, :cond_0

    .line 8725
    const/16 v20, 0x0

    .line 8726
    .local v20, zoomToMin:Z
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v21

    const/16 v22, 0xa

    sub-int v18, v21, v22

    .line 8728
    .local v18, viewWidth:I
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v21, v0

    move v0, v5

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v8, v21, v22

    .line 8730
    .local v8, newScale:F
    const/high16 v21, 0x4000

    cmpl-float v21, v8, v21

    if-lez v21, :cond_3

    .line 8732
    const/high16 v8, 0x4000

    .line 8735
    :cond_3
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_4

    .line 8736
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom newScale="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mActualScale="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8739
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    sub-float v21, v21, v8

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->abs(F)F

    move-result v21

    const v22, 0x3d4ccccd

    cmpl-float v21, v21, v22

    if-ltz v21, :cond_c

    .line 8741
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8743
    new-instance v11, Landroid/graphics/Rect;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8744
    .local v11, scaledRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 8745
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_5

    .line 8746
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom scaledRect=("

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ")"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8749
    :cond_5
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8751
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v10, v21, v8

    .line 8753
    .local v10, scaledHeight:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpg-float v21, v10, v21

    if-gtz v21, :cond_7

    .line 8754
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_6

    .line 8755
    const-string/jumbo v21, "webview"

    const-string v22, "doAdaptiveZoom make complete block visible..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8757
    :cond_6
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v22

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8759
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v22

    sub-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    .line 8761
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_8

    .line 8762
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom mZoomCenterX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mZoomCenterY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", mViewCenterYCorrection="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8765
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 8766
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 8771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_b

    .line 8773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->overrideDoubleTap()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a

    .line 8775
    new-instance v19, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct/range {v19 .. v19}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    .line 8776
    .local v19, zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 8777
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v9

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8826
    .end local v10           #scaledHeight:F
    .end local v19           #zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    :goto_1
    if-eqz v20, :cond_0

    .line 8827
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8829
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_9

    .line 8830
    const-string/jumbo v21, "webview"

    const-string v22, "doAdaptiveZoom : Zooming to default scale..."

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8834
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8835
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    const/high16 v22, 0x3f00

    mul-float v21, v21, v22

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8836
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    .line 8837
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v21

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    .line 8840
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    if-eqz v21, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_13

    .line 8842
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/webkit/OnPinchZoomListener;->overrideDoubleTap()Z

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_12

    .line 8844
    new-instance v19, Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    invoke-direct/range {v19 .. v19}, Landroid/webkit/OnPinchZoomListener$ZoomInfo;-><init>()V

    .line 8845
    .restart local v19       #zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 8846
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mZoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move v1, v9

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doDoubleTap(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto/16 :goto_0

    .line 8781
    .end local v19           #zoomInfo:Landroid/webkit/OnPinchZoomListener$ZoomInfo;
    .restart local v10       #scaledHeight:F
    :cond_a
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_1

    .line 8786
    :cond_b
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_1

    .line 8793
    .end local v10           #scaledHeight:F
    .end local v11           #scaledRect:Landroid/graphics/Rect;
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v22

    sub-int v21, v21, v22

    const/16 v22, 0x0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->max(II)I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move v14, v0

    .line 8794
    .local v14, scrollYwithoutTitle:F
    new-instance v11, Landroid/graphics/Rect;

    move-object v0, v11

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 8795
    .restart local v11       #scaledRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object v0, v11

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    .line 8797
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move v12, v0

    .line 8798
    .local v12, scrollCentreX:F
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move v13, v0

    .line 8800
    .local v13, scrollCentreY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v22

    div-int/lit8 v22, v22, 0x2

    add-int v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v16, v0

    .line 8801
    .local v16, viewCentreX:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-float v17, v14, v21

    .line 8803
    .local v17, viewCentreY:F
    sub-float v21, v12, v16

    move/from16 v0, v21

    float-to-int v0, v0

    move v6, v0

    .line 8804
    .local v6, dx:I
    sub-float v21, v13, v17

    move/from16 v0, v21

    float-to-int v0, v0

    move v7, v0

    .line 8806
    .local v7, dy:I
    sget-boolean v21, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v21, :cond_d

    .line 8807
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom scrollCentreX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", scrollCentreY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8808
    const-string/jumbo v21, "webview"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "doAdaptiveZoom viewCentreX="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", viewCentreY="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", dx="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ", dy="

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8811
    :cond_d
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    cmpl-float v21, v21, v14

    if-ltz v21, :cond_e

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    add-float v22, v22, v14

    cmpg-float v21, v21, v22

    if-gtz v21, :cond_e

    .line 8812
    const/4 v7, 0x0

    .line 8814
    :cond_e
    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_f

    move-object v0, v11

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v22, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v23

    add-int v22, v22, v23

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_f

    .line 8815
    const/4 v6, 0x0

    .line 8817
    :cond_f
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_10

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v21

    const/16 v22, 0xa

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_11

    .line 8818
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v21, v21, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v22, v0

    add-int v22, v22, v7

    const/16 v23, 0x1

    const/16 v24, 0x1f4

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto/16 :goto_1

    .line 8822
    :cond_11
    const/16 v20, 0x1

    goto/16 :goto_1

    .line 8850
    .end local v6           #dx:I
    .end local v7           #dy:I
    .end local v12           #scrollCentreX:F
    .end local v13           #scrollCentreY:F
    .end local v14           #scrollYwithoutTitle:F
    .end local v16           #viewCentreX:F
    .end local v17           #viewCentreY:F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_0

    .line 8855
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_0
.end method

.method private doDoubleTap()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 8560
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doDoubleTap : getUseWideViewPort - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v9}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mIgnoreDoubleTap -  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " getLayoutAlgorithm - "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v9

    invoke-virtual {v9}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8562
    iget-object v7, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v7}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v7

    if-nez v7, :cond_1

    .line 8637
    :cond_0
    :goto_0
    return-void

    .line 8566
    :cond_1
    iget-boolean v7, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    if-nez v7, :cond_0

    .line 8571
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_2

    .line 8572
    invoke-direct {p0}, Landroid/webkit/WebView;->prepareForAdaptiveZoom()V

    goto :goto_0

    .line 8576
    :cond_2
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8577
    iget v7, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8578
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8579
    iget v7, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v7, v7

    iget v8, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v7, v8

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8580
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 8581
    .local v4, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v4, v10}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 8583
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 8584
    iget-object v7, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget v8, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v9, p0, Landroid/webkit/WebView;->mAnchorY:I

    invoke-virtual {v7, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v3

    .line 8585
    .local v3, plugin:Landroid/webkit/ViewManager$ChildView;
    if-eqz v3, :cond_5

    .line 8586
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 8587
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8589
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_3

    iput v10, p0, Landroid/view/View;->mScrollY:I

    .line 8590
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-direct {p0, v7, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_0

    .line 8593
    :cond_4
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8594
    iget v7, v3, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v8, v3, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v9, v3, Landroid/webkit/ViewManager$ChildView;->width:I

    iget v10, v3, Landroid/webkit/ViewManager$ChildView;->height:I

    invoke-direct {p0, v7, v8, v9, v10}, Landroid/webkit/WebView;->centerFitRect(IIII)V

    goto :goto_0

    .line 8598
    :cond_5
    const/4 v6, 0x0

    .line 8599
    .local v6, zoomToDefault:Z
    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v7

    sget-object v8, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-ne v7, v8, :cond_8

    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_8

    .line 8601
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v2, v7, v8

    .line 8603
    .local v2, overviewScale:F
    invoke-direct {p0, v2, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    .line 8604
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8618
    .end local v2           #overviewScale:F
    :cond_6
    :goto_1
    if-eqz v6, :cond_0

    .line 8619
    iput-boolean v10, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8620
    iget v7, p0, Landroid/webkit/WebView;->mAnchorX:I

    iget v8, p0, Landroid/webkit/WebView;->mAnchorY:I

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-direct {p0, v7, v8, v9}, Landroid/webkit/WebView;->nativeGetBlockLeftEdge(IIF)I

    move-result v0

    .line 8621
    .local v0, left:I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_7

    .line 8623
    if-ge v0, v13, :cond_c

    move v7, v10

    :goto_2
    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v7

    iget v8, p0, Landroid/view/View;->mScrollX:I

    sub-int v5, v7, v8

    .line 8627
    .local v5, viewLeft:I
    if-lez v5, :cond_d

    .line 8628
    int-to-float v7, v5

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    mul-float/2addr v7, v8

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    iget v9, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v8, v9

    div-float/2addr v7, v8

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8635
    .end local v5           #viewLeft:I
    :cond_7
    :goto_3
    iget v7, p0, Landroid/webkit/WebView;->mDefaultScale:F

    invoke-direct {p0, v7, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto/16 :goto_0

    .line 8605
    .end local v0           #left:I
    :cond_8
    iget-boolean v7, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v7, :cond_b

    .line 8606
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v7

    int-to-float v7, v7

    iget v8, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v8, v8

    div-float v1, v7, v8

    .line 8607
    .local v1, newScale:F
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float/2addr v7, v1

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_a

    .line 8608
    iput-boolean v11, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8610
    iget v7, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    if-ge v7, v8, :cond_9

    iput v10, p0, Landroid/view/View;->mScrollY:I

    .line 8611
    :cond_9
    invoke-direct {p0, v1, v11, v12}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    goto :goto_1

    .line 8612
    :cond_a
    iget v7, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v8, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    sget v8, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_6

    .line 8613
    const/4 v6, 0x1

    goto :goto_1

    .line 8616
    .end local v1           #newScale:F
    :cond_b
    const/4 v6, 0x1

    goto :goto_1

    .line 8623
    .restart local v0       #left:I
    :cond_c
    sub-int v7, v0, v13

    goto :goto_2

    .line 8631
    .restart local v5       #viewLeft:I
    :cond_d
    invoke-virtual {p0, v5, v10}, Landroid/webkit/WebView;->scrollBy(II)V

    .line 8632
    const/4 v7, 0x0

    iput v7, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    goto :goto_3
.end method

.method private doDrag(II)V
    .locals 12
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    const/4 v11, 0x0

    const/4 v9, 0x1

    .line 7550
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v0

    if-ne v0, v9, :cond_1

    .line 7552
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0, p1, p2}, Landroid/webkit/OnPinchZoomListener;->doDrag(II)Z

    move-result v0

    if-ne v0, v9, :cond_1

    .line 7589
    :cond_0
    :goto_0
    return-void

    .line 7556
    :cond_1
    or-int v0, p1, p2

    if-eqz v0, :cond_4

    .line 7557
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 7558
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 7559
    .local v4, oldY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 7560
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 7562
    .local v6, rangeY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 7564
    iput p1, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 7565
    iput p2, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 7568
    :cond_2
    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 7571
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_4

    .line 7574
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7577
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7578
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    move v10, v9

    .line 7579
    .local v10, showPlusMinus:Z
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v0, :cond_0

    if-eqz v10, :cond_0

    .line 7580
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0}, Landroid/webkit/WebView$ExtendedZoomControls;->getVisibility()I

    move-result v0

    if-nez v0, :cond_6

    .line 7581
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 7585
    :goto_2
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v7, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .end local v10           #showPlusMinus:Z
    :cond_5
    move v10, v11

    .line 7578
    goto :goto_1

    .line 7583
    .restart local v10       #showPlusMinus:Z
    :cond_6
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v0, v10, v11}, Landroid/webkit/WebView$ExtendedZoomControls;->show(ZZ)V

    goto :goto_2
.end method

.method private doFling()V
    .locals 21

    .prologue
    .line 8006
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mIgnoreFling:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 8112
    :cond_0
    :goto_0
    return-void

    .line 8010
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 8013
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v9

    .line 8014
    .local v9, maxX:I
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v11

    .line 8016
    .local v11, maxY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    const/16 v4, 0x3e8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaximumFling:I

    move v5, v0

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 8017
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8018
    .local v19, vx:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v3

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 8020
    .local v20, vy:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v3, v0

    if-eqz v3, :cond_2

    .line 8021
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    .line 8022
    const/16 v20, 0x0

    .line 8028
    :cond_2
    :goto_1
    const/high16 v17, 0x3f40

    .line 8029
    .local v17, flingfactor:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 8031
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->getFlingFactor()F

    move-result v17

    .line 8036
    :cond_3
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    mul-float v3, v3, v17

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8037
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    mul-float v3, v3, v17

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 8040
    if-nez v9, :cond_4

    if-eqz v20, :cond_5

    :cond_4
    if-nez v11, :cond_7

    if-nez v19, :cond_7

    .line 8041
    :cond_5
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 8042
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v3, v0

    invoke-static {v3}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8043
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    const/4 v6, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v9

    .end local v9           #maxX:I
    invoke-virtual/range {v3 .. v9}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8045
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 8024
    .end local v17           #flingfactor:F
    .restart local v9       #maxX:I
    :cond_6
    const/16 v19, 0x0

    goto :goto_1

    .line 8050
    .restart local v17       #flingfactor:F
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    invoke-interface {v3}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 8052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-interface {v0, v1, v2}, Landroid/webkit/OnPinchZoomListener;->doFling(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    .line 8056
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v15

    .line 8057
    .local v15, currentVelocity:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v3, v0

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    const/4 v3, 0x0

    cmpl-float v3, v15, v3

    if-lez v3, :cond_14

    .line 8058
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v3, v0

    float-to-double v3, v3

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v5, v0

    float-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v7, v0

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    move-wide v0, v3

    double-to-float v0, v0

    move/from16 v16, v0

    .line 8060
    .local v16, deltaR:F
    const v14, 0x40c90fdb

    .line 8061
    .local v14, circle:F
    const v3, 0x40b4f4ab

    cmpl-float v3, v16, v3

    if-gtz v3, :cond_9

    const v3, 0x3f20d97c

    cmpg-float v3, v16, v3

    if-gez v3, :cond_13

    .line 8062
    :cond_9
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelX:F

    move v4, v0

    mul-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    float-to-int v0, v0

    move/from16 v19, v0

    .line 8063
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelY:F

    move v4, v0

    mul-float/2addr v4, v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    move v0, v3

    float-to-int v0, v0

    move/from16 v20, v0

    .line 8064
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_a

    .line 8065
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFling vx= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8079
    .end local v14           #circle:F
    .end local v16           #deltaR:F
    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-ne v3, v9, :cond_c

    :cond_b
    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_c

    .line 8080
    const/16 v19, 0x0

    .line 8082
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-eqz v3, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-ne v3, v11, :cond_e

    :cond_d
    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static/range {v19 .. v19}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-ge v3, v4, :cond_e

    .line 8083
    const/16 v20, 0x0

    .line 8086
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v4, v0

    if-ge v3, v4, :cond_12

    .line 8087
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    neg-int v4, v4

    if-eq v3, v4, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    add-int/2addr v4, v9

    if-ne v3, v4, :cond_10

    .line 8088
    :cond_f
    const/16 v19, 0x0

    .line 8090
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    neg-int v4, v4

    if-eq v3, v4, :cond_11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverscrollDistance:I

    move v4, v0

    add-int/2addr v4, v11

    if-ne v3, v4, :cond_12

    .line 8091
    :cond_11
    const/16 v20, 0x0

    .line 8095
    :cond_12
    move/from16 v0, v19

    int-to-float v0, v0

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelX:F

    .line 8096
    move/from16 v0, v20

    int-to-float v0, v0

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelY:F

    .line 8097
    move/from16 v0, v19

    int-to-double v0, v0

    move-wide v3, v0

    move/from16 v0, v20

    int-to-double v0, v0

    move-wide v5, v0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    double-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 8100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    move/from16 v0, v19

    neg-int v0, v0

    move v6, v0

    move/from16 v0, v20

    neg-int v0, v0

    move v7, v0

    const/4 v8, 0x0

    const/4 v10, 0x0

    if-nez v9, :cond_15

    const/4 v12, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v13, v0

    invoke-virtual/range {v3 .. v13}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 8107
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getDuration()I

    move-result v18

    .line 8108
    .local v18, time:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 8109
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 8067
    .end local v18           #time:I
    .restart local v14       #circle:F
    .restart local v16       #deltaR:F
    :cond_13
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_a

    .line 8068
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFling missed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x40c90fdb

    div-float v5, v16, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8070
    .end local v14           #circle:F
    .end local v16           #deltaR:F
    :cond_14
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_a

    .line 8071
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFling start last="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastVelocity:F

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " current="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vx="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " vy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " maxY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScrollX="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mScrollY="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 8100
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v12, v0

    goto/16 :goto_3
.end method

.method private doMotionUp(II)V
    .locals 3
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 8418
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, p1, p2, v0}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8419
    const v0, 0x11206

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 8421
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8422
    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 8424
    :cond_1
    return-void
.end method

.method private doShortPress()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 8386
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doShortPress : mNativeClass - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mPreventDefault -  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/webkit/WebView;->mPreventDefault:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8388
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_1

    .line 8415
    :cond_0
    :goto_0
    return-void

    .line 8391
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    .line 8395
    sput-boolean v6, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 8396
    sput-boolean v6, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 8397
    const/4 v3, 0x7

    iput v3, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 8398
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8400
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8401
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8402
    .local v1, contentY:I
    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativePointInNavCache(III)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 8403
    new-instance v2, Landroid/webkit/WebViewCore$MotionUpData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$MotionUpData;-><init>()V

    .line 8405
    .local v2, motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitFramePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mFrame:I

    .line 8406
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodePointer()I

    move-result v3

    iput v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mNode:I

    .line 8407
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCacheHitNodeBounds()Landroid/graphics/Rect;

    move-result-object v3

    iput-object v3, v2, Landroid/webkit/WebViewCore$MotionUpData;->mBounds:Landroid/graphics/Rect;

    .line 8408
    iput v0, v2, Landroid/webkit/WebViewCore$MotionUpData;->mX:I

    .line 8409
    iput v1, v2, Landroid/webkit/WebViewCore$MotionUpData;->mY:I

    .line 8410
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x92

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessageAtFrontOfQueue(ILjava/lang/Object;)V

    goto :goto_0

    .line 8413
    .end local v2           #motionUpData:Landroid/webkit/WebViewCore$MotionUpData;
    :cond_2
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doMotionUp(II)V

    goto :goto_0
.end method

.method private doTrackball(J)V
    .locals 26
    .parameter "time"

    .prologue
    .line 7900
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballLastTime:J

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    move-wide v10, v0

    sub-long/2addr v8, v10

    long-to-int v13, v8

    .line 7901
    .local v13, elapsed:I
    if-nez v13, :cond_0

    .line 7902
    const/16 v13, 0xc8

    .line 7904
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v23, v5, v6

    .line 7905
    .local v23, xRate:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x447a

    mul-float/2addr v5, v6

    int-to-float v6, v13

    div-float v25, v5, v6

    .line 7906
    .local v25, yRate:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    .line 7907
    .local v20, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    .line 7908
    .local v19, viewHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_3

    .line 7909
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move v5, v0

    if-nez v5, :cond_1

    .line 7913
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionX()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectX:I

    .line 7914
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSelectionY()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSelectY:I

    .line 7915
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelection:Z

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7916
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 7918
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v20

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->moveSelection(FF)V

    .line 7920
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7987
    :cond_2
    :goto_0
    return-void

    .line 7923
    :cond_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 7924
    .local v11, ax:F
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7925
    .local v12, ay:F
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 7926
    .local v16, maxA:F
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_4

    .line 7927
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doTrackball elapsed="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yRate="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTrackballRemainsX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTrackballRemainsY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7933
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move v5, v0

    sub-int v21, v5, v20

    .line 7934
    .local v21, width:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move v5, v0

    sub-int v14, v5, v19

    .line 7935
    .local v14, height:I
    if-gez v21, :cond_5

    const/16 v21, 0x0

    .line 7936
    :cond_5
    if-gez v14, :cond_6

    const/4 v14, 0x0

    .line 7937
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v11

    .line 7938
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/high16 v6, 0x4040

    mul-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v12

    .line 7939
    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v16

    .line 7940
    const/4 v5, 0x0

    move/from16 v0, v16

    float-to-int v0, v0

    move v6, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 7941
    .local v7, count:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    .line 7942
    .local v17, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    .line 7943
    .local v18, oldScrollY:I
    if-lez v7, :cond_d

    .line 7944
    cmpg-float v5, v11, v12

    if-gez v5, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_8

    const/16 v5, 0x13

    move v6, v5

    .line 7948
    .local v6, selectKeyCode:I
    :goto_1
    const/16 v5, 0xa

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 7949
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_7

    .line 7950
    const-string/jumbo v5, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "doTrackball keyCode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " count="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mTrackballRemainsX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mTrackballRemainsY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v9, v0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7955
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_13

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v5

    if-eqz v5, :cond_13

    .line 7956
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    if-ge v15, v7, :cond_b

    .line 7957
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 7956
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 7944
    .end local v6           #selectKeyCode:I
    .end local v15           #i:I
    :cond_8
    const/16 v5, 0x14

    move v6, v5

    goto :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    move v5, v0

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gez v5, :cond_a

    const/16 v5, 0x15

    move v6, v5

    goto :goto_1

    :cond_a
    const/16 v5, 0x16

    move v6, v5

    goto :goto_1

    .line 7959
    .restart local v6       #selectKeyCode:I
    .restart local v15       #i:I
    :cond_b
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    .line 7963
    .end local v15           #i:I
    :cond_c
    :goto_3
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsY:F

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7965
    .end local v6           #selectKeyCode:I
    :cond_d
    const/4 v5, 0x5

    if-lt v7, v5, :cond_2

    .line 7966
    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballX(FI)I

    move-result v22

    .line 7967
    .local v22, xMove:I
    move-object/from16 v0, p0

    move/from16 v1, v25

    move v2, v14

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->scaleTrackballY(FI)I

    move-result v24

    .line 7968
    .local v24, yMove:I
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_e

    .line 7969
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doTrackball pinScrollBy count="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " xMove="

    .end local v7           #count:I
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " yMove="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mScrollX-oldScrollX="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v7, v0

    sub-int v7, v7, v17

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mScrollY-oldScrollY="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    sub-int v7, v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7976
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    sub-int v5, v5, v17

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_f

    .line 7977
    const/16 v22, 0x0

    .line 7979
    :cond_f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sub-int v5, v5, v18

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v5, v6, :cond_10

    .line 7980
    const/16 v24, 0x0

    .line 7982
    :cond_10
    if-nez v22, :cond_11

    if-eqz v24, :cond_12

    .line 7983
    :cond_11
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v24

    move v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7985
    :cond_12
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_0

    .line 7960
    .end local v22           #xMove:I
    .end local v24           #yMove:I
    .restart local v6       #selectKeyCode:I
    .restart local v7       #count:I
    :cond_13
    const/4 v8, 0x0

    move-object/from16 v5, p0

    move-wide/from16 v9, p1

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 7961
    move-object/from16 v0, p0

    move v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    goto/16 :goto_3
.end method

.method private domChangedFocus()V
    .locals 2

    .prologue
    .line 2626
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2627
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2629
    :cond_0
    return-void
.end method

.method private drawContent(Landroid/graphics/Canvas;)V
    .locals 5
    .parameter "canvas"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4273
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    :goto_0
    iget v1, p0, Landroid/webkit/WebView;->mTouchMode:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    if-eqz v1, :cond_2

    :cond_0
    move v1, v4

    :goto_1
    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 4276
    iget v0, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    invoke-direct {p0, p1, v0, v1}, Landroid/webkit/WebView;->drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V

    .line 4277
    iget-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->drawWebSelectionControl(Landroid/graphics/Canvas;Z)V

    .line 4278
    return-void

    :cond_1
    move v0, v3

    .line 4273
    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1
.end method

.method private drawCoreAndCursorRing(Landroid/graphics/Canvas;IZ)V
    .locals 25
    .parameter "canvas"
    .parameter "color"
    .parameter "drawCursorRing"

    .prologue
    .line 4567
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 4568
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4569
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->drawPicture(Landroid/graphics/Picture;)V

    .line 4759
    :cond_0
    :goto_0
    return-void

    .line 4573
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_e

    const/16 v20, 0x1

    move/from16 v7, v20

    .line 4574
    .local v7, animateZoom:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v20

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v20, v0

    if-eqz v20, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDeferTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_f

    :cond_4
    const/16 v20, 0x1

    move/from16 v6, v20

    .line 4580
    .local v6, animateScroll:Z
    :goto_2
    const/4 v8, 0x0

    .line 4581
    .local v8, correctionY:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x3

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_6

    .line 4582
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_5

    .line 4583
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x8

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 4584
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    invoke-virtual/range {v20 .. v21}, Landroid/os/Handler;->removeMessages(I)V

    .line 4585
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 4587
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move/from16 v20, v0

    if-nez v20, :cond_6

    .line 4588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    const-wide/16 v22, 0x64

    invoke-virtual/range {v20 .. v23}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4590
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 4595
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    .line 4596
    const/4 v7, 0x0

    .line 4599
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->forceHighQualityImage()Z

    move-result v20

    if-eqz v20, :cond_8

    .line 4607
    const/4 v6, 0x0

    .line 4611
    :cond_8
    if-eqz v7, :cond_15

    .line 4613
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mZoomStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move v11, v0

    .line 4614
    .local v11, interval:I
    const/16 v20, 0x1f4

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_10

    .line 4615
    move v0, v11

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x43fa

    div-float v12, v20, v21

    .line 4616
    .local v12, ratio:F
    const/high16 v20, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v23, v0

    sub-float v22, v22, v23

    mul-float v22, v22, v12

    add-float v21, v21, v22

    div-float v19, v20, v21

    .line 4618
    .local v19, zoomScale:F
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4640
    .end local v12           #ratio:F
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    move/from16 v20, v0

    mul-float v13, v19, v20

    .line 4643
    .local v13, scale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_12

    .line 4644
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v17, v20, v21

    .line 4649
    .local v17, viewCentreX:F
    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollX:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v21, v0

    add-float v20, v20, v21

    mul-float v20, v20, v13

    sub-float v20, v20, v17

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v15

    .line 4651
    .local v15, tx:I
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v20

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentWidth:I

    move/from16 v21, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v19

    invoke-static/range {v21 .. v21}, Ljava/lang/Math;->round(F)I

    move-result v21

    move v0, v15

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v20

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v21, v0

    add-int v15, v20, v21

    .line 4653
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v14

    .line 4656
    .local v14, titleHeight:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move/from16 v20, v0

    if-eqz v20, :cond_13

    .line 4657
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v20

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x3f00

    mul-float v18, v20, v21

    .line 4658
    .local v18, viewCentreY:F
    add-float v18, v18, v8

    .line 4663
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInitialScrollY:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v21, v0

    add-float v20, v20, v21

    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v20, v20, v21

    mul-float v20, v20, v13

    move v0, v14

    int-to-float v0, v0

    move/from16 v21, v0

    sub-float v21, v18, v21

    sub-float v20, v20, v21

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->round(F)I

    move-result v16

    .line 4666
    .local v16, ty:I
    move/from16 v0, v16

    move v1, v14

    if-gt v0, v1, :cond_14

    const/16 v20, 0x0

    move/from16 v0, v16

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v20

    :goto_6
    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v21, v0

    add-int v16, v20, v21

    .line 4669
    move v0, v15

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4670
    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4671
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v20, v0

    const/16 v21, 0x0

    cmpl-float v20, v20, v21

    if-eqz v20, :cond_9

    .line 4675
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 4678
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v20

    if-eqz v20, :cond_9

    .line 4679
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 4688
    .end local v11           #interval:I
    .end local v13           #scale:F
    .end local v14           #titleHeight:I
    .end local v15           #tx:I
    .end local v16           #ty:I
    .end local v17           #viewCentreX:F
    .end local v18           #viewCentreY:F
    .end local v19           #zoomScale:F
    :cond_9
    :goto_7
    const/4 v5, 0x0

    .line 4691
    .local v5, UIAnimationsRunning:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v20, v0

    if-eqz v20, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->nativeEvaluateLayersAnimations()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 4692
    const/4 v5, 0x1

    .line 4695
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4697
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-nez v7, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    if-eqz v5, :cond_16

    :cond_b
    const/16 v21, 0x1

    :goto_8
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, v21

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 4700
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 4702
    const/4 v9, 0x0

    .line 4703
    .local v9, extras:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFindIsUp:Z

    move/from16 v20, v0

    if-eqz v20, :cond_17

    .line 4704
    const/4 v9, 0x1

    .line 4743
    :cond_c
    :goto_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->drawExtras(Landroid/graphics/Canvas;IZ)V

    .line 4745
    const/16 v20, 0x3

    move v0, v9

    move/from16 v1, v20

    if-ne v0, v1, :cond_d

    .line 4746
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_d

    .line 4747
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 4750
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    move/from16 v20, v0

    if-eqz v20, :cond_0

    .line 4751
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mFocusSizeChanged:Z

    .line 4755
    if-nez v7, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 4756
    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    goto/16 :goto_0

    .line 4573
    .end local v5           #UIAnimationsRunning:Z
    .end local v6           #animateScroll:Z
    .end local v7           #animateZoom:Z
    .end local v8           #correctionY:F
    .end local v9           #extras:I
    :cond_e
    const/16 v20, 0x0

    move/from16 v7, v20

    goto/16 :goto_1

    .line 4574
    .restart local v7       #animateZoom:Z
    :cond_f
    const/16 v20, 0x0

    move/from16 v6, v20

    goto/16 :goto_2

    .line 4620
    .restart local v6       #animateScroll:Z
    .restart local v8       #correctionY:F
    .restart local v11       #interval:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomScale:F

    move/from16 v19, v0

    .line 4622
    .restart local v19       #zoomScale:F
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomScale:F

    .line 4623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4625
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4626
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    move/from16 v20, v0

    if-eqz v20, :cond_11

    .line 4627
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mNeedToAdjustWebTextView:Z

    .line 4628
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v20

    if-eqz v20, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v20

    if-eqz v20, :cond_11

    .line 4632
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-virtual/range {v20 .. v21}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 4636
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mViewCenterYCorrection:F

    move v8, v0

    goto/16 :goto_3

    .line 4646
    .restart local v13       #scale:F
    :cond_12
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    .restart local v17       #viewCentreX:F
    goto/16 :goto_4

    .line 4661
    .restart local v14       #titleHeight:I
    .restart local v15       #tx:I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v18, v0

    .restart local v18       #viewCentreY:F
    goto/16 :goto_5

    .line 4666
    .restart local v16       #ty:I
    :cond_14
    sub-int v20, v16, v14

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mContentHeight:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v22, v22, v19

    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v22

    invoke-static/range {v20 .. v22}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v20

    add-int v20, v20, v14

    goto/16 :goto_6

    .line 4683
    .end local v11           #interval:I
    .end local v13           #scale:F
    .end local v14           #titleHeight:I
    .end local v15           #tx:I
    .end local v16           #ty:I
    .end local v17           #viewCentreX:F
    .end local v18           #viewCentreY:F
    .end local v19           #zoomScale:F
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 4685
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    goto/16 :goto_7

    .line 4697
    .restart local v5       #UIAnimationsRunning:Z
    :cond_16
    const/16 v21, 0x0

    goto/16 :goto_8

    .line 4705
    .restart local v9       #extras:I
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move/from16 v20, v0

    if-eqz v20, :cond_18

    .line 4706
    const/4 v9, 0x2

    .line 4707
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSelectY:I

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    move/from16 v4, v23

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->nativeSetSelectionPointer(ZFII)V

    goto/16 :goto_9

    .line 4711
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1d

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAutoSelection:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1d

    .line 4713
    if-eqz p3, :cond_1a

    .line 4714
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move/from16 v20, v0

    const/16 v21, 0x4

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 4715
    const/16 v20, 0x5

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 4716
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v10

    .line 4717
    .local v10, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v10, :cond_19

    #getter for: Landroid/webkit/WebView$HitTestResult;->mType:I
    invoke-static {v10}, Landroid/webkit/WebView$HitTestResult;->access$700(Landroid/webkit/WebView$HitTestResult;)I

    move-result v20

    if-nez v20, :cond_1b

    .line 4720
    :cond_19
    const/4 v9, 0x0

    .line 4729
    .end local v10           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_1a
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 4731
    const/4 v9, 0x0

    goto/16 :goto_9

    .line 4721
    .restart local v10       #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    .line 4722
    const/4 v9, 0x3

    goto :goto_a

    .line 4724
    .end local v10           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move/from16 v20, v0

    if-nez v20, :cond_1a

    .line 4725
    const/4 v9, 0x3

    goto :goto_a

    .line 4734
    :cond_1d
    if-eqz p3, :cond_c

    .line 4735
    const/4 v9, 0x3

    .line 4737
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v20

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_c

    .line 4739
    const/4 v9, 0x0

    goto/16 :goto_9
.end method

.method private drawExtras(Landroid/graphics/Canvas;IZ)V
    .locals 1
    .parameter "canvas"
    .parameter "extras"
    .parameter "animationsRunning"

    .prologue
    .line 4545
    if-eqz p3, :cond_0

    .line 4546
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4548
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->nativeDrawExtras(Landroid/graphics/Canvas;I)V

    .line 4549
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 4550
    return-void
.end method

.method private drawWebSelectionControl(Landroid/graphics/Canvas;Z)V
    .locals 9
    .parameter "canvas"
    .parameter "pressed"

    .prologue
    const/4 v1, 0x1

    .line 4530
    iget-boolean v0, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_1

    .line 4531
    const/4 v8, 0x1

    .line 4533
    .local v8, bDisaplayController:Z
    iget v7, p0, Landroid/webkit/WebView;->mController:I

    .line 4534
    .local v7, nController:I
    iget-boolean v0, p0, Landroid/webkit/WebView;->mLongPress:Z

    if-ne v1, v0, :cond_0

    .line 4535
    const/4 v8, 0x0

    .line 4537
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v2, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget-object v1, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v6, v1, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move-object v1, p1

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/webkit/WebTextSelectionControls;->DrawSelectionControls(Landroid/graphics/Canvas;Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;ZIIZ)V

    .line 4541
    .end local v7           #nController:I
    .end local v8           #bDisaplayController:Z
    :cond_1
    return-void
.end method

.method public static enablePlatformNotifications()V
    .locals 0

    .prologue
    .line 1907
    invoke-static {}, Landroid/webkit/Network;->enablePlatformNotifications()V

    .line 1908
    return-void
.end method

.method private extendScroll(I)Z
    .locals 4
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 2395
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v0

    .line 2396
    .local v0, finalY:I
    add-int v2, v0, p1

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v1

    .line 2397
    .local v1, newY:I
    if-ne v1, v0, :cond_0

    move v2, v3

    .line 2400
    :goto_0
    return v2

    .line 2398
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2, v1}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2399
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-static {v3, p1}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/OverScroller;->extendDuration(I)V

    .line 2400
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "addr"

    .prologue
    .line 3691
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findAddress(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .parameter "addr"
    .parameter "caseInsensitive"

    .prologue
    .line 3717
    invoke-static {p0, p1}, Landroid/webkit/WebViewCore;->nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;
    .locals 2
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"

    .prologue
    .line 10794
    new-instance v0, Landroid/webkit/WebViewCore$CopyParams;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$CopyParams;-><init>()V

    .line 10795
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p1, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentX:I

    .line 10796
    iput p2, v0, Landroid/webkit/WebViewCore$CopyParams;->mContentY:I

    .line 10797
    iput-boolean p3, v0, Landroid/webkit/WebViewCore$CopyParams;->mSmartSelection:Z

    .line 10798
    iput-boolean p4, v0, Landroid/webkit/WebViewCore$CopyParams;->mSelectionMove:Z

    .line 10799
    iput p5, v0, Landroid/webkit/WebViewCore$CopyParams;->mZoomScale:F

    .line 10800
    iget v1, p0, Landroid/webkit/WebView;->mController:I

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mController:I

    .line 10801
    const/4 v1, -0x1

    iput v1, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 10802
    return-object v0
.end method

.method private getCopyParams(IIZZFI)Landroid/webkit/WebViewCore$CopyParams;
    .locals 1
    .parameter "contentX"
    .parameter "contentY"
    .parameter "extendSelection"
    .parameter "selectionMove"
    .parameter "zoomScale"
    .parameter "granularity"

    .prologue
    .line 10813
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v0

    .line 10815
    .local v0, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iput p6, v0, Landroid/webkit/WebViewCore$CopyParams;->mGranularity:I

    .line 10816
    return-object v0
.end method

.method public static declared-synchronized getPluginList()Landroid/webkit/PluginList;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4227
    const-class v0, Landroid/webkit/WebView;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/webkit/PluginList;

    invoke-direct {v1}, Landroid/webkit/PluginList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getScaledMaxXScroll()I
    .locals 3

    .prologue
    .line 10617
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 10618
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v1, v2, 0x4

    .line 10625
    .local v1, width:I
    :goto_0
    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    return v2

    .line 10620
    .end local v1           #width:I
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 10621
    .local v0, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10622
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #width:I
    goto :goto_0
.end method

.method private getScaledMaxYScroll()I
    .locals 4

    .prologue
    .line 10630
    iget-boolean v2, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v2, :cond_0

    .line 10631
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v2

    div-int/lit8 v0, v2, 0x4

    .line 10640
    .local v0, height:I
    :goto_0
    int-to-float v2, v0

    iget v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 10633
    .end local v0           #height:I
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 10634
    .local v1, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10635
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .restart local v0       #height:I
    goto :goto_0
.end method

.method private getSelectionDirection(II)V
    .locals 4
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v2, 0x0

    .line 10932
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 10934
    invoke-virtual {p0, p1, p2, v2}, Landroid/webkit/WebView;->getSelectionType(IIZ)I

    move-result v0

    .line 10936
    .local v0, nController:I
    packed-switch v0, :pswitch_data_0

    .line 10948
    :cond_0
    :goto_0
    return-void

    .line 10943
    :pswitch_0
    iput v0, p0, Landroid/webkit/WebView;->mController:I

    .line 10944
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 10945
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v1, :cond_0

    .line 10946
    const-string/jumbo v1, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSelectionDirection : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selection controller has been selected."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10936
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectionExtendPoint(II)Landroid/graphics/Point;
    .locals 8
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x2

    .line 10958
    new-instance v4, Landroid/graphics/Point;

    invoke-direct {v4}, Landroid/graphics/Point;-><init>()V

    .line 10959
    .local v4, value:Landroid/graphics/Point;
    const/4 v1, 0x0

    .line 10960
    .local v1, deltaX:I
    const/4 v2, 0x0

    .line 10961
    .local v2, deltaY:I
    const/4 v0, 0x0

    .line 10963
    .local v0, ControlerLength:I
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-nez v5, :cond_0

    .line 10964
    const/4 v5, 0x0

    .line 11034
    :goto_0
    return-object v5

    .line 10966
    :cond_0
    iput p1, v4, Landroid/graphics/Point;->x:I

    .line 10967
    iput p2, v4, Landroid/graphics/Point;->y:I

    .line 10968
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 10970
    .local v3, selectRect:Landroid/graphics/Rect;
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v5}, Landroid/webkit/WebTextSelectionControls;->getControllerHeight()I

    move-result v0

    .line 10971
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-eq v6, v5, :cond_1

    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v7, v5, :cond_2

    .line 10972
    :cond_1
    iget v5, p0, Landroid/webkit/WebView;->mHandleTouchRevision:I

    add-int/2addr v0, v5

    .line 10975
    :cond_2
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v6, v5, :cond_8

    .line 10976
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v5

    if-nez v5, :cond_6

    .line 10977
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, p2

    .line 10978
    if-le v2, v0, :cond_5

    .line 10979
    add-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    .line 11029
    :cond_3
    :goto_1
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_4

    .line 11030
    const-string v5, "getSelectionExtendPoint"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Org Value X"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Y "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " Modify Value "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object v5, v4

    .line 11034
    goto :goto_0

    .line 10980
    :cond_5
    if-lez v2, :cond_3

    if-gt v2, v0, :cond_3

    .line 10981
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 10985
    :cond_6
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 10986
    if-le v2, v0, :cond_7

    .line 10987
    sub-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 10988
    :cond_7
    if-lez v2, :cond_3

    if-gt v2, v0, :cond_3

    .line 10989
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 10993
    :cond_8
    iget v5, p0, Landroid/webkit/WebView;->mController:I

    if-ne v7, v5, :cond_c

    .line 10994
    iget-object v5, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v5

    if-nez v5, :cond_a

    .line 10995
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int v2, p2, v5

    .line 10996
    if-le v2, v0, :cond_9

    .line 10997
    sub-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto :goto_1

    .line 10998
    :cond_9
    if-lez v2, :cond_3

    if-gt v2, v0, :cond_3

    .line 10999
    sub-int v5, p2, v2

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 11003
    :cond_a
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int v2, v5, p2

    .line 11004
    if-le v2, v0, :cond_b

    .line 11005
    add-int v5, p2, v0

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 11006
    :cond_b
    if-lez v2, :cond_3

    if-gt v2, v0, :cond_3

    .line 11007
    iget-object v5, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v7

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 11012
    :cond_c
    const/4 v5, 0x5

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-eq v5, v6, :cond_d

    const/4 v5, 0x6

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-ne v5, v6, :cond_f

    .line 11015
    :cond_d
    if-lez p1, :cond_e

    iget v5, v3, Landroid/graphics/Rect;->left:I

    if-ge p1, v5, :cond_e

    .line 11016
    iget v5, v3, Landroid/graphics/Rect;->left:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    .line 11017
    :cond_e
    if-lez p1, :cond_3

    iget v5, v3, Landroid/graphics/Rect;->right:I

    if-le p1, v5, :cond_3

    .line 11018
    iget v5, v3, Landroid/graphics/Rect;->right:I

    iput v5, v4, Landroid/graphics/Point;->x:I

    goto/16 :goto_1

    .line 11020
    :cond_f
    const/4 v5, 0x3

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-eq v5, v6, :cond_10

    const/4 v5, 0x4

    iget v6, p0, Landroid/webkit/WebView;->mController:I

    if-ne v5, v6, :cond_3

    .line 11023
    :cond_10
    if-lez p2, :cond_11

    iget v5, v3, Landroid/graphics/Rect;->top:I

    if-ge p2, v5, :cond_11

    .line 11024
    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1

    .line 11025
    :cond_11
    if-lez p2, :cond_3

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    if-le p2, v5, :cond_3

    .line 11026
    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    iput v5, v4, Landroid/graphics/Point;->y:I

    goto/16 :goto_1
.end method

.method private getViewHeightWithTitle()I
    .locals 2

    .prologue
    .line 1795
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 1796
    .local v0, height:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->isHorizontalScrollBarEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    if-nez v1, :cond_0

    .line 1797
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHorizontalScrollbarHeight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1799
    :cond_0
    return v0
.end method

.method private goBackOrForward(IZ)V
    .locals 3
    .parameter "steps"
    .parameter "ignoreSnapshot"

    .prologue
    .line 2385
    if-eqz p1, :cond_0

    .line 2386
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2388
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2389
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6a

    if-eqz p2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 2392
    :cond_0
    return-void

    .line 2389
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private hideCursor()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11526
    invoke-direct {p0}, Landroid/webkit/WebView;->isPinchZoomListenerEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11531
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 11533
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11535
    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    .line 11540
    :goto_0
    return-void

    .line 11535
    :catchall_0
    move-exception v0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    throw v0

    .line 11538
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHideCursor()V

    goto :goto_0
.end method

.method private hideSoftKeyboard()V
    .locals 3

    .prologue
    .line 4880
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 4883
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 4884
    return-void
.end method

.method private hitFocusedPlugin(II)Z
    .locals 5
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const-string/jumbo v4, "webview"

    const-string v3, ", "

    .line 6821
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v1, :cond_0

    .line 6822
    const-string/jumbo v1, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeFocusIsPlugin()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6823
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 6824
    .local v0, r:Landroid/graphics/Rect;
    const-string/jumbo v1, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "nativeFocusNodeBounds()=("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6827
    .end local v0           #r:Landroid/graphics/Rect;
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private inEditingMode()Z
    .locals 1

    .prologue
    .line 2484
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private inFullScreenMode()Z
    .locals 1

    .prologue
    .line 6841
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1585
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setWillNotDraw(Z)V

    .line 1586
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusable(Z)V

    .line 1587
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    .line 1588
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setClickable(Z)V

    .line 1589
    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->setLongClickable(Z)V

    .line 1591
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1592
    .local v0, configuration:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    .line 1593
    .local v2, slop:I
    iput v2, p0, Landroid/webkit/WebView;->mTouchSlop:I

    .line 1594
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    .line 1595
    iput v2, p0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    .line 1596
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v2

    .line 1597
    mul-int v3, v2, v2

    iput v3, p0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    .line 1598
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v1, v3, Landroid/util/DisplayMetrics;->density:F

    .line 1601
    .local v1, density:F
    const/high16 v3, 0x4180

    mul-float/2addr v3, v1

    float-to-int v3, v3

    iput v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1603
    const/high16 v3, 0x42c8

    mul-float/2addr v3, v1

    float-to-int v3, v3

    sput v3, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1604
    iput v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1605
    iput v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 1606
    const/high16 v3, 0x3f80

    div-float/2addr v3, v1

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 1607
    iput v1, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 1608
    const/high16 v3, 0x4080

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1609
    const/high16 v3, 0x3e80

    mul-float/2addr v3, v1

    sput v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1610
    sget v3, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1611
    sget v3, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1612
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mMaximumFling:I

    .line 1613
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverscrollDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverscrollDistance:I

    .line 1614
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledOverflingDistance()I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    .line 1616
    new-instance v3, Landroid/webkit/WebClipboard;

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/webkit/WebClipboard;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    .line 1617
    iget-object v3, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    invoke-virtual {v3}, Landroid/webkit/WebClipboard;->initWebClipboard()V

    .line 1619
    return-void
.end method

.method private invalidateContentRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 2871
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->viewInvalidate(IIII)V

    .line 2872
    return-void
.end method

.method private isPinchZoomListenerEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 11521
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 11522
    .local v0, l:Landroid/webkit/OnPinchZoomListener;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isPluginFitOnScreen(Landroid/webkit/ViewManager$ChildView;)Z
    .locals 6
    .parameter "view"

    .prologue
    .line 8452
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    .line 8453
    .local v2, viewWidth:I
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v1

    .line 8454
    .local v1, viewHeight:I
    int-to-float v3, v2

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    int-to-float v4, v1

    iget v5, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 8456
    .local v0, scale:F
    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 8457
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 8461
    :cond_0
    :goto_0
    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sget v4, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 8462
    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->x:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->width:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-lt v3, v4, :cond_2

    iget v3, p1, Landroid/webkit/ViewManager$ChildView;->y:I

    iget v4, p1, Landroid/webkit/ViewManager$ChildView;->height:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v1

    if-gt v3, v4, :cond_2

    .line 8468
    const/4 v3, 0x1

    .line 8471
    :goto_1
    return v3

    .line 8458
    :cond_1
    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    .line 8459
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_0

    .line 8471
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private keyCodeToSoundsEffect(I)I
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 7884
    packed-switch p1, :pswitch_data_0

    .line 7894
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keyCode must be one of {KEYCODE_DPAD_UP, KEYCODE_DPAD_RIGHT, KEYCODE_DPAD_DOWN, KEYCODE_DPAD_LEFT}."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7886
    :pswitch_0
    const/4 v0, 0x2

    .line 7892
    :goto_0
    return v0

    .line 7888
    :pswitch_1
    const/4 v0, 0x3

    goto :goto_0

    .line 7890
    :pswitch_2
    const/4 v0, 0x4

    goto :goto_0

    .line 7892
    :pswitch_3
    const/4 v0, 0x1

    goto :goto_0

    .line 7884
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private letPluginHandleNavKey(IJZ)V
    .locals 13
    .parameter "keyCode"
    .parameter "time"
    .parameter "down"

    .prologue
    .line 10657
    if-eqz p4, :cond_0

    .line 10658
    const/4 v5, 0x0

    .line 10659
    .local v5, keyEventAction:I
    const/16 v12, 0x67

    .line 10660
    .local v12, eventHubAction:I
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 10665
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    iget-boolean v1, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    or-int/lit8 v1, v1, 0x0

    or-int/lit8 v8, v1, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide v1, p2

    move-wide v3, p2

    move v6, p1

    invoke-direct/range {v0 .. v11}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    .line 10670
    .local v0, event:Landroid/view/KeyEvent;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v12, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10671
    return-void

    .line 10662
    .end local v0           #event:Landroid/view/KeyEvent;
    .end local v5           #keyEventAction:I
    .end local v12           #eventHubAction:I
    :cond_0
    const/4 v5, 0x1

    .line 10663
    .restart local v5       #keyEventAction:I
    const/16 v12, 0x68

    .restart local v12       #eventHubAction:I
    goto :goto_0

    .line 10665
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private native nativeCacheHitFramePointer()I
.end method

.method private native nativeCacheHitNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCacheHitNodePointer()I
.end method

.method private native nativeCreate(I)V
.end method

.method private native nativeCursorFramePointer()I
.end method

.method private native nativeCursorIntersects(Landroid/graphics/Rect;)Z
.end method

.method private native nativeCursorIsAnchor()Z
.end method

.method private native nativeCursorIsTextInput()Z
.end method

.method private native nativeCursorNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeCursorNodePointer()I
.end method

.method private native nativeCursorPosition()Landroid/graphics/Point;
.end method

.method private native nativeCursorText()Ljava/lang/String;
.end method

.method private native nativeCursorWantsKeyEvents()Z
.end method

.method private native nativeDebugDump()V
.end method

.method private native nativeDestroy()V
.end method

.method private native nativeDrawExtras(Landroid/graphics/Canvas;I)V
.end method

.method private native nativeDumpDisplayTree(Ljava/lang/String;)V
.end method

.method private native nativeEvaluateLayersAnimations()Z
.end method

.method private native nativeExtendSelection(II)V
.end method

.method private native nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private native nativeFindIndex()I
.end method

.method private native nativeFindNext(Z)V
.end method

.method private native nativeFocusCandidateIsReadonlyTextInput()Z
.end method

.method private native nativeFocusCandidateIsRtlText()Z
.end method

.method private native nativeFocusCandidateIsTextInput()Z
.end method

.method private native nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;
.end method

.method private native nativeFocusCandidateText()Ljava/lang/String;
.end method

.method private native nativeFocusCandidateTextSize()I
.end method

.method private native nativeFocusCandidateType()I
.end method

.method private native nativeFocusIsPlugin()Z
.end method

.method private native nativeFocusNodeBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetBlockLeftEdge(IIF)I
.end method

.method private native nativeGetClosestWordPosition(II)Landroid/graphics/Point;
.end method

.method private native nativeGetCursorRingBounds()Landroid/graphics/Rect;
.end method

.method private native nativeGetNodeBounds(Ljava/lang/String;I)Landroid/graphics/Rect;
.end method

.method private native nativeGetSelection()Ljava/lang/String;
.end method

.method private native nativeHasCursorNode()Z
.end method

.method private native nativeHasFocusNode()Z
.end method

.method private native nativeHideCursor()V
.end method

.method private native nativeHitSelection(II)Z
.end method

.method private native nativeImageURI(II)Ljava/lang/String;
.end method

.method private native nativeInstrumentReport()V
.end method

.method private native nativeMotionUp(III)Z
.end method

.method private native nativeMoveCursor(IIZ)Z
.end method

.method private native nativeMoveGeneration()I
.end method

.method private native nativeMoveSelection(II)V
.end method

.method private native nativePointInNavCache(III)Z
.end method

.method private native nativeRecordButtons(ZZZ)V
.end method

.method private native nativeResetSelection()V
.end method

.method private native nativeSelectAll()V
.end method

.method private native nativeSelectBestAt(Landroid/graphics/Rect;)V
.end method

.method private native nativeSelectionX()I
.end method

.method private native nativeSelectionY()I
.end method

.method private native nativeSetExtendSelection()V
.end method

.method private native nativeSetFindIsEmpty()V
.end method

.method private native nativeSetFindIsUp(Z)V
.end method

.method private native nativeSetFollowedLink(Z)V
.end method

.method private native nativeSetHeightCanMeasure(Z)V
.end method

.method private native nativeSetRootLayer(I)V
.end method

.method private native nativeSetSelectionPointer(ZFII)V
.end method

.method private native nativeSetSelectionRegion(Z)V
.end method

.method private native nativeStartSelection(II)Z
.end method

.method private native nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;
.end method

.method private native nativeTextGeneration()I
.end method

.method private native nativeUpdateCachedTextfield(Ljava/lang/String;I)V
.end method

.method private native nativeWordSelection(II)Z
.end method

.method private navHandledKey(IIZJ)Z
    .locals 15
    .parameter "keyCode"
    .parameter "count"
    .parameter "noScroll"
    .parameter "time"

    .prologue
    .line 10676
    iget v11, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v11, :cond_0

    .line 10677
    const/4 v11, 0x0

    .line 10725
    :goto_0
    return v11

    .line 10679
    :cond_0
    move-wide/from16 v0, p4

    move-object v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastCursorTime:J

    .line 10680
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v11

    iput-object v11, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    .line 10681
    invoke-direct/range {p0 .. p3}, Landroid/webkit/WebView;->nativeMoveCursor(IIZ)Z

    move-result v11

    if-nez v11, :cond_3

    const/4 v11, 0x1

    move v4, v11

    .line 10683
    .local v4, keyHandled:Z
    :goto_1
    sget-boolean v11, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v11, :cond_1

    .line 10684
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "navHandledKey mLastCursorBounds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " mLastCursorTime="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v13, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    invoke-virtual {v12, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " handled="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10688
    :cond_1
    if-eqz v4, :cond_2

    iget-boolean v11, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v11, :cond_4

    :cond_2
    move v11, v4

    .line 10689
    goto :goto_0

    .line 10681
    .end local v4           #keyHandled:Z
    :cond_3
    const/4 v11, 0x0

    move v4, v11

    goto :goto_1

    .line 10691
    .restart local v4       #keyHandled:Z
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    .line 10692
    .local v3, contentCursorRingBounds:Landroid/graphics/Rect;
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_5

    move v11, v4

    goto :goto_0

    .line 10693
    :cond_5
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v9

    .line 10694
    .local v9, viewCursorRingBounds:Landroid/graphics/Rect;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 10695
    .local v10, visRect:Landroid/graphics/Rect;
    invoke-direct {p0, v10}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 10696
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v10}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 10697
    .local v8, outset:Landroid/graphics/Rect;
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    div-int/lit8 v6, v11, 0x2

    .line 10698
    .local v6, maxXScroll:I
    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v7, v11, 0x2

    .line 10699
    .local v7, maxYScroll:I
    neg-int v11, v6

    neg-int v12, v7

    invoke-virtual {v8, v11, v12}, Landroid/graphics/Rect;->inset(II)V

    .line 10700
    invoke-static {v8, v9}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v11

    if-nez v11, :cond_6

    move v11, v4

    .line 10701
    goto/16 :goto_0

    .line 10704
    :cond_6
    iget v11, v9, Landroid/graphics/Rect;->right:I

    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v11, v12

    invoke-static {v11, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 10706
    .local v5, maxH:I
    if-lez v5, :cond_8

    .line 10707
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v5, v11, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 10715
    :cond_7
    :goto_2
    iget-object v11, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_9

    move v11, v4

    goto/16 :goto_0

    .line 10709
    :cond_8
    iget v11, v9, Landroid/graphics/Rect;->left:I

    iget v12, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    neg-int v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 10711
    if-gez v5, :cond_7

    .line 10712
    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    invoke-direct {p0, v5, v11, v12, v13}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    goto :goto_2

    .line 10716
    :cond_9
    iget-object v11, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    move v11, v4

    .line 10717
    goto/16 :goto_0

    .line 10719
    :cond_a
    sget-boolean v11, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v11, :cond_b

    .line 10720
    const-string/jumbo v11, "webview"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "navHandledKey contentCursorRingBounds="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10723
    :cond_b
    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 10724
    const/4 v11, 0x1

    iput-boolean v11, p0, Landroid/webkit/WebView;->mUserScroll:Z

    move v11, v4

    .line 10725
    goto/16 :goto_0
.end method

.method private overrideLoading(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 9011
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    .line 9012
    return-void
.end method

.method private pictureReady()Z
    .locals 1

    .prologue
    .line 6845
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v0

    return v0
.end method

.method private static pinLoc(III)I
    .locals 1
    .parameter "x"
    .parameter "viewMax"
    .parameter "docMax"

    .prologue
    .line 2690
    if-ge p2, p1, :cond_1

    .line 2692
    const/4 p0, 0x0

    .line 2703
    :cond_0
    :goto_0
    return p0

    .line 2694
    :cond_1
    if-gez p0, :cond_2

    .line 2695
    const/4 p0, 0x0

    goto :goto_0

    .line 2697
    :cond_2
    add-int v0, p0, p1

    if-le v0, p2, :cond_0

    .line 2698
    sub-int p0, p2, p1

    .line 2700
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    goto :goto_0
.end method

.method private pinLocX(I)I
    .locals 2
    .parameter "x"

    .prologue
    .line 2708
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    move v0, p1

    .line 2709
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_0
.end method

.method private pinLocY(I)I
    .locals 3
    .parameter "y"

    .prologue
    .line 2714
    iget-boolean v0, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    if-eqz v0, :cond_0

    move v0, p1

    .line 2715
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {p1, v0, v1}, Landroid/webkit/WebView;->pinLoc(III)I

    move-result v0

    goto :goto_0
.end method

.method private pinScrollBy(IIZI)Z
    .locals 2
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3836
    iget v0, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, p1

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v1, p2

    invoke-direct {p0, v0, v1, p3, p4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v0

    return v0
.end method

.method private pinScrollTo(IIZI)Z
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "animate"
    .parameter "animationDuration"

    .prologue
    .line 3841
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3842
    invoke-direct {p0, p2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result p2

    .line 3843
    iget v0, p0, Landroid/view/View;->mScrollX:I

    sub-int v3, p1, v0

    .line 3844
    .local v3, dx:I
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int v4, p2, v0

    .line 3846
    .local v4, dy:I
    or-int v0, v3, v4

    if-nez v0, :cond_0

    .line 3847
    const/4 v0, 0x0

    .line 3859
    :goto_0
    return v0

    .line 3849
    :cond_0
    if-eqz p3, :cond_2

    .line 3851
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-lez p4, :cond_1

    move v5, p4

    :goto_1
    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 3853
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getDuration()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->awakenScrollBars(I)Z

    .line 3854
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3859
    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    .line 3851
    :cond_1
    invoke-static {v3, v4}, Landroid/webkit/WebView;->computeDuration(II)I

    move-result v5

    goto :goto_1

    .line 3856
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 3857
    invoke-virtual {p0, p1, p2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto :goto_2
.end method

.method private prepareForAdaptiveZoom()V
    .locals 7

    .prologue
    .line 8642
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v4

    if-nez v4, :cond_0

    .line 8665
    :goto_0
    return-void

    .line 8646
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8647
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    iput v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8649
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    .line 8650
    .local v2, touchX:I
    iget v4, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v3

    .line 8652
    .local v3, touchY:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 8655
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 8657
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 8659
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_1

    .line 8660
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "prepareForAdaptiveZoom touchX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", touchY="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8663
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 8664
    .local v0, pt:Landroid/graphics/Point;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0xbb

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private recordNewContentSize(IIZ)V
    .locals 7
    .parameter "w"
    .parameter "h"
    .parameter "updateLayout"

    .prologue
    .line 2886
    or-int v4, p1, p2

    if-nez v4, :cond_0

    .line 2943
    :goto_0
    return-void

    .line 2890
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v5, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-eqz v4, :cond_1

    .line 2900
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v4, p1, :cond_1

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-ge p2, v4, :cond_1

    .line 2901
    if-lez p2, :cond_1

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    int-to-float v4, v4

    int-to-float v5, p2

    div-float/2addr v4, v5

    const v5, 0x3f99999a

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    .line 2902
    int-to-float v4, p2

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v4, v5

    float-to-int v0, v4

    .line 2903
    .local v0, newHeightInPixels:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v5

    sub-int v3, v4, v5

    .line 2910
    .local v3, viewPortHeight:I
    sub-int v4, v0, v3

    const/16 v5, 0x1e

    if-ge v4, v5, :cond_1

    .line 2911
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "override mContentHeight "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    move p2, v0

    .line 2919
    .end local v0           #newHeightInPixels:I
    .end local v3           #viewPortHeight:I
    :cond_1
    iget v4, p0, Landroid/webkit/WebView;->mContentWidth:I

    if-ne v4, p1, :cond_2

    iget v4, p0, Landroid/webkit/WebView;->mContentHeight:I

    if-eq v4, p2, :cond_5

    .line 2921
    :cond_2
    iput p1, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2922
    iput p2, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2925
    iget-boolean v4, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-nez v4, :cond_5

    .line 2927
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 2928
    .local v1, oldX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 2929
    .local v2, oldY:I
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v4

    iput v4, p0, Landroid/view/View;->mScrollX:I

    .line 2930
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v4}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v4

    iput v4, p0, Landroid/view/View;->mScrollY:I

    .line 2931
    iget v4, p0, Landroid/view/View;->mScrollX:I

    if-ne v1, v4, :cond_3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v4, :cond_4

    .line 2932
    :cond_3
    iget v4, p0, Landroid/view/View;->mScrollX:I

    iget v5, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v4, v5, v1, v2}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 2934
    :cond_4
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v4}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v4

    if-nez v4, :cond_5

    .line 2937
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/OverScroller;->setFinalX(I)V

    .line 2938
    iget-object v4, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget-object v5, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v5}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v5

    invoke-direct {p0, v5}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/OverScroller;->setFinalY(I)V

    .line 2942
    .end local v1           #oldX:I
    .end local v2           #oldY:I
    :cond_5
    invoke-direct {p0, p3}, Landroid/webkit/WebView;->contentSizeChanged(Z)V

    goto/16 :goto_0
.end method

.method private requestSelectElementOnScreen(Landroid/graphics/Rect;Z)V
    .locals 21
    .parameter "elementRect"
    .parameter "immediate"

    .prologue
    .line 9158
    invoke-direct/range {p0 .. p1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v8

    .line 9161
    .local v8, rect:Landroid/graphics/Rect;
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v19

    add-int v18, v18, v19

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v20

    add-int v19, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v19

    move-object v0, v5

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9171
    .local v5, content:Landroid/graphics/Rect;
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v12

    .line 9172
    .local v12, screenTop:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v9

    .line 9173
    .local v9, screenBottom:I
    sub-int v6, v9, v12

    .line 9174
    .local v6, height:I
    const/4 v14, 0x0

    .line 9176
    .local v14, scrollYDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v9

    if-le v0, v1, :cond_3

    .line 9177
    div-int/lit8 v7, v6, 0x3

    .line 9178
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v16

    mul-int/lit8 v17, v7, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_2

    .line 9181
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    .line 9191
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 9192
    .local v10, screenLeft:I
    move-object v0, v5

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v11

    .line 9193
    .local v11, screenRight:I
    sub-int v15, v11, v10

    .line 9194
    .local v15, width:I
    const/4 v13, 0x0

    .line 9196
    .local v13, scrollXDelta:I
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-le v0, v1, :cond_5

    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-le v0, v1, :cond_5

    .line 9197
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v16

    move/from16 v0, v16

    move v1, v15

    if-le v0, v1, :cond_4

    .line 9198
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v16, v10

    add-int v13, v13, v16

    .line 9211
    :cond_1
    :goto_1
    or-int v16, v14, v13

    if-eqz v16, :cond_7

    .line 9212
    if-nez p2, :cond_6

    const/16 v16, 0x1

    :goto_2
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v14

    move/from16 v3, v16

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 9216
    :goto_3
    return-void

    .line 9185
    .end local v10           #screenLeft:I
    .end local v11           #screenRight:I
    .end local v13           #scrollXDelta:I
    .end local v15           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_2
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    add-int v17, v12, v7

    sub-int v14, v16, v17

    goto :goto_0

    .line 9187
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_3
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    if-ge v0, v1, :cond_0

    .line 9188
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v16, v0

    sub-int v14, v16, v12

    goto :goto_0

    .line 9200
    .restart local v10       #screenLeft:I
    .restart local v11       #screenRight:I
    .restart local v13       #scrollXDelta:I
    .restart local v15       #width:I
    :cond_4
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    sub-int v16, v16, v11

    add-int v13, v13, v16

    goto :goto_1

    .line 9202
    :cond_5
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-ge v0, v1, :cond_1

    .line 9203
    move-object v0, v8

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    sub-int v16, v10, v16

    sub-int v13, v13, v16

    goto :goto_1

    .line 9212
    :cond_6
    const/16 v16, 0x0

    goto :goto_2

    .line 9214
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_3
.end method

.method private restoreHistoryPictureFields(Landroid/graphics/Picture;Landroid/os/Bundle;)V
    .locals 6
    .parameter "p"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x3f80

    .line 2056
    const-string/jumbo v3, "scrollX"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2057
    .local v1, sx:I
    const-string/jumbo v3, "scrollY"

    invoke-virtual {p2, v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2058
    .local v2, sy:I
    const-string/jumbo v3, "scale"

    invoke-virtual {p2, v3, v4}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v0

    .line 2059
    .local v0, scale:F
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 2060
    iput-object p1, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 2061
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 2062
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 2063
    invoke-virtual {p1}, Landroid/graphics/Picture;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryWidth:I

    .line 2064
    invoke-virtual {p1}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mHistoryHeight:I

    .line 2068
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2069
    div-float v3, v4, v0

    iput v3, p0, Landroid/webkit/WebView;->mInvActualScale:F

    .line 2070
    const-string/jumbo v3, "textwrapScale"

    invoke-virtual {p2, v3, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v3

    iput v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2071
    const-string/jumbo v3, "overview"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2072
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 2073
    return-void
.end method

.method private scaleTrackballX(FI)I
    .locals 4
    .parameter "xRate"
    .parameter "width"

    .prologue
    .line 7856
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 7857
    .local v1, xMove:I
    move v0, v1

    .line 7858
    .local v0, nextXMove:I
    if-lez v1, :cond_1

    .line 7859
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-le v1, v2, :cond_0

    .line 7860
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    .line 7865
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7866
    return v1

    .line 7862
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    if-ge v1, v2, :cond_0

    .line 7863
    iget v2, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private scaleTrackballY(FI)I
    .locals 4
    .parameter "yRate"
    .parameter "height"

    .prologue
    .line 7870
    const/high16 v2, 0x43c8

    div-float v2, p1, v2

    int-to-float v3, p2

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 7871
    .local v1, yMove:I
    move v0, v1

    .line 7872
    .local v0, nextYMove:I
    if-lez v1, :cond_1

    .line 7873
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-le v1, v2, :cond_0

    .line 7874
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    .line 7879
    :cond_0
    :goto_0
    iput v0, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    .line 7880
    return v1

    .line 7876
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    if-ge v1, v2, :cond_0

    .line 7877
    iget v2, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    sub-int/2addr v1, v2

    goto :goto_0
.end method

.method private selectClosestWord(II)V
    .locals 8
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1224
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_0

    .line 1225
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1226
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1228
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1230
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1231
    iput-boolean v7, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 1232
    iput-boolean v7, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 1233
    iput-boolean v7, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1234
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1235
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 1236
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectClosestWord Touch Position content x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "y "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_0
    return-void
.end method

.method private sendMotionUp(IIIII)V
    .locals 3
    .parameter "touchGeneration"
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10601
    new-instance v0, Landroid/webkit/WebViewCore$TouchUpData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$TouchUpData;-><init>()V

    .line 10602
    .local v0, touchUpData:Landroid/webkit/WebViewCore$TouchUpData;
    iput p1, v0, Landroid/webkit/WebViewCore$TouchUpData;->mMoveGeneration:I

    .line 10603
    iput p2, v0, Landroid/webkit/WebViewCore$TouchUpData;->mFrame:I

    .line 10604
    iput p3, v0, Landroid/webkit/WebViewCore$TouchUpData;->mNode:I

    .line 10605
    iput p4, v0, Landroid/webkit/WebViewCore$TouchUpData;->mX:I

    .line 10606
    iput p5, v0, Landroid/webkit/WebViewCore$TouchUpData;->mY:I

    .line 10607
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8c

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10608
    instance-of v1, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v1, :cond_0

    .line 10610
    check-cast p0, Landroid/webkit/HtmlComposerView;

    .end local p0
    invoke-virtual {p0}, Landroid/webkit/HtmlComposerView;->onRecieveWebviewTouchUp()V

    .line 10612
    :cond_0
    return-void
.end method

.method private sendMouseClick(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10575
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xbc

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10577
    return-void
.end method

.method private sendMoveFocus(II)V
    .locals 4
    .parameter "frame"
    .parameter "node"

    .prologue
    const/4 v3, 0x0

    .line 10562
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7f

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, v3, v3}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10564
    return-void
.end method

.method private sendMoveMouse(IIII)V
    .locals 3
    .parameter "frame"
    .parameter "node"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 10568
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x87

    new-instance v2, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/webkit/WebViewCore$CursorData;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10570
    return-void
.end method

.method private sendMoveMouseIfLatest(Z)V
    .locals 3
    .parameter "removeFocus"

    .prologue
    .line 10591
    if-eqz p1, :cond_0

    .line 10592
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 10594
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x88

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 10596
    return-void
.end method

.method private sendOurVisibleRect()Landroid/graphics/Rect;
    .locals 7

    .prologue
    .line 3112
    iget-boolean v3, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3141
    :goto_0
    return-object v3

    .line 3114
    :cond_0
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 3115
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 3117
    iget-object v3, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3118
    new-instance v1, Landroid/graphics/Point;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    invoke-direct {v1, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    .line 3119
    .local v1, pos:Landroid/graphics/Point;
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x6b

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6, v1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 3121
    iput-object v2, p0, Landroid/webkit/WebView;->mLastVisibleRectSent:Landroid/graphics/Rect;

    .line 3123
    .end local v1           #pos:Landroid/graphics/Point;
    :cond_1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3124
    .local v0, globalRect:Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 3126
    sget-boolean v3, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v3, :cond_2

    .line 3127
    const-string/jumbo v3, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendOurVisibleRect=("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",r="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",b="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3134
    :cond_2
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x74

    invoke-virtual {v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3135
    iput-object v0, p0, Landroid/webkit/WebView;->mLastGlobalRect:Landroid/graphics/Rect;

    .line 3137
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 3138
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    :cond_3
    move-object v3, v2

    .line 3141
    goto/16 :goto_0
.end method

.method private sendViewSizeZoom()Z
    .locals 1

    .prologue
    .line 3228
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    move-result v0

    return v0
.end method

.method private sendViewSizeZoom(Z)Z
    .locals 8
    .parameter "needAnchorDiff"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3231
    iget-boolean v4, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    if-eqz v4, :cond_0

    if-nez p1, :cond_0

    move v4, v6

    .line 3268
    :goto_0
    return v4

    .line 3233
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v3

    .line 3234
    .local v3, viewWidth:I
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 3235
    .local v2, newWidth:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v4

    int-to-float v4, v4

    iget v5, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 3244
    .local v1, newHeight:I
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-le v2, v4, :cond_1

    iget-boolean v4, p0, Landroid/webkit/WebView;->mWrapContent:Z

    if-eqz v4, :cond_1

    .line 3245
    const/4 v1, 0x0

    .line 3248
    :cond_1
    iget v4, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    if-eq v1, v4, :cond_4

    .line 3249
    :cond_2
    new-instance v0, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v0}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 3250
    .local v0, data:Landroid/webkit/WebView$ViewSizeData;
    iput v2, v0, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 3251
    iput v1, v0, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 3252
    int-to-float v4, v3

    iget v5, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    div-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 3253
    iget v4, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 3254
    iget v4, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-nez v4, :cond_3

    move v4, v7

    :goto_1
    iput-boolean v4, v0, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 3255
    iget v4, p0, Landroid/webkit/WebView;->mAnchorX:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 3256
    iget v4, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    .line 3258
    iput-boolean p1, v0, Landroid/webkit/WebView$ViewSizeData;->mNeedAnchorDiff:Z

    .line 3259
    iget v4, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportLeft:I

    .line 3260
    iget v4, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v4

    iput v4, v0, Landroid/webkit/WebView$ViewSizeData;->mViewportTop:I

    .line 3262
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x69

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 3263
    iput v2, p0, Landroid/webkit/WebView;->mLastWidthSent:I

    .line 3264
    iput v1, p0, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3265
    iput v6, p0, Landroid/webkit/WebView;->mAnchorY:I

    iput v6, p0, Landroid/webkit/WebView;->mAnchorX:I

    move v4, v7

    .line 3266
    goto :goto_0

    :cond_3
    move v4, v6

    .line 3254
    goto :goto_1

    .end local v0           #data:Landroid/webkit/WebView$ViewSizeData;
    :cond_4
    move v4, v6

    .line 3268
    goto :goto_0
.end method

.method private setActive(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5497
    if-eqz p1, :cond_4

    .line 5498
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5499
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_1

    .line 5500
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5501
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5509
    :goto_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    .line 5510
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5511
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5512
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5513
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5555
    :cond_0
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5556
    return-void

    .line 5507
    :cond_1
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_0

    .line 5516
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_1

    .line 5524
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_1

    .line 5530
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v0}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v0

    if-nez v0, :cond_6

    .line 5542
    :cond_5
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-nez v0, :cond_6

    .line 5543
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 5546
    :cond_6
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 5547
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5548
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5549
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 5550
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_7

    .line 5551
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 5553
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    goto :goto_1
.end method

.method private setContentScrollBy(IIZ)Z
    .locals 3
    .parameter "cx"
    .parameter "cy"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 3865
    iget-boolean v1, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v1, :cond_0

    move v1, v2

    .line 3889
    :goto_0
    return v1

    .line 3872
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p1

    .line 3873
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result p2

    .line 3874
    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_3

    .line 3876
    if-eqz p2, :cond_1

    .line 3877
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3878
    .local v0, tempRect:Landroid/graphics/Rect;
    invoke-direct {p0, v0}, Landroid/webkit/WebView;->calcOurVisibleRect(Landroid/graphics/Rect;)V

    .line 3879
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->offset(II)V

    .line 3880
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 3887
    .end local v0           #tempRect:Landroid/graphics/Rect;
    :cond_1
    if-nez p2, :cond_2

    if-eqz p1, :cond_2

    invoke-direct {p0, p1, v2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 3889
    :cond_3
    invoke-direct {p0, p1, p2, p3, v2}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v1

    goto :goto_0
.end method

.method private setContentScrollTo(II)Z
    .locals 6
    .parameter "cx"
    .parameter "cy"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3935
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    move v2, v4

    .line 3989
    :goto_0
    return v2

    .line 3945
    :cond_0
    or-int v2, p1, p2

    if-nez v2, :cond_1

    .line 3949
    const/4 v0, 0x0

    .line 3950
    .local v0, vx:I
    const/4 v1, 0x0

    .line 3962
    .local v1, vy:I
    :goto_1
    if-nez p1, :cond_3

    if-ne p2, v5, :cond_3

    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-nez v2, :cond_3

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-nez v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v2, :cond_3

    .line 3965
    invoke-virtual {p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_2

    .line 3969
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3970
    iput v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    :goto_2
    move v2, v4

    .line 3976
    goto :goto_0

    .line 3952
    .end local v0           #vx:I
    .end local v1           #vy:I
    :cond_1
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 3953
    .restart local v0       #vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .restart local v1       #vy:I
    goto :goto_1

    .line 3972
    :cond_2
    const/16 v2, 0x1f4

    invoke-direct {p0, v0, v1, v5, v2}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_2

    .line 3979
    :cond_3
    sput-boolean v4, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    .line 3981
    invoke-direct {p0, v0, v1, v4, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3985
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-eq v2, v0, :cond_4

    if-gez p1, :cond_5

    :cond_4
    sget-boolean v2, Landroid/webkit/WebView;->mScrollBeyondPage:Z

    if-nez v2, :cond_6

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, v1, :cond_6

    if-ltz p2, :cond_6

    :cond_5
    move v2, v5

    .line 3987
    goto :goto_0

    :cond_6
    move v2, v4

    .line 3989
    goto :goto_0
.end method

.method private setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 6
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "zoomInfo"

    .prologue
    .line 2948
    sget-object v4, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 2949
    return-void
.end method

.method private setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 25
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "mode"
    .parameter "zoomInfo"

    .prologue
    .line 2959
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextWrapScale:F

    move/from16 v18, v0

    .line 2960
    .local v18, oldTextWrapScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move v15, v0

    .line 2961
    .local v15, oldLastHeightSent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    .line 2962
    .local v10, oldActualScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v14, v0

    .line 2963
    .local v14, oldInvActualScale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v11, v0

    .line 2964
    .local v11, oldAdaptiveZoom:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    move v12, v0

    .line 2965
    .local v12, oldAdaptiveZoomAnimationLength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v16, v0

    .line 2966
    .local v16, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    .line 2967
    .local v17, oldScrollY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mInZoomOverview:Z

    move v13, v0

    .line 2968
    .local v13, oldInZoomOverview:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v19, v0

    .line 2969
    .local v19, oldZoomCenterX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v20, v0

    .line 2972
    .local v20, oldZoomCenterY:F
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_0

    .line 2973
    const/4 v3, 0x1

    sput-boolean v3, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 2975
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_7

    .line 2976
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 p1, v0

    .line 2978
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDefaultScale:F

    move v3, v0

    cmpg-float v3, p1, v3

    if-gez v3, :cond_1

    .line 2979
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 2992
    :cond_1
    :goto_0
    if-eqz p2, :cond_2

    .line 2993
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 2995
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2997
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-nez v3, :cond_3

    if-eqz p3, :cond_5

    .line 2998
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move v3, v0

    if-eqz v3, :cond_a

    .line 3001
    if-nez p5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v3, v0

    if-nez v3, :cond_4

    .line 3002
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 3004
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3005
    const/high16 v3, 0x3f80

    div-float v3, v3, p1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3006
    if-nez p5, :cond_5

    .line 3007
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 3081
    :cond_5
    :goto_1
    if-eqz p5, :cond_6

    .line 3083
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    .line 3084
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    .line 3085
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    int-to-float v3, v3

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    .line 3086
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    .line 3087
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v3, v0

    move v0, v3

    move-object/from16 v1, p5

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    .line 3090
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 3091
    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 3092
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3093
    move v0, v14

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3094
    move v0, v11

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 3095
    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 3096
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 3097
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 3098
    move v0, v13

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 3099
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 3100
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 3105
    :cond_6
    return-void

    .line 2980
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-lez v3, :cond_8

    .line 2981
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 p1, v0

    goto/16 :goto_0

    .line 2982
    :cond_8
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_9

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-nez v3, :cond_9

    .line 2986
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 p1, v0

    goto/16 :goto_0

    .line 2987
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getRegisterTiltListener()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2989
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInZoomOverview:Z

    goto/16 :goto_0

    .line 3012
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v6, v0

    .line 3013
    .local v6, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v7, v0

    .line 3014
    .local v7, oldY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v3, v0

    mul-float v21, p1, v3

    .line 3015
    .local v21, ratio:F
    int-to-float v3, v6

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v5, v0

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    .line 3016
    .local v22, sx:F
    int-to-float v3, v7

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v5, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float v23, v3, v4

    .line 3020
    .local v23, sy:F
    if-nez p5, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    cmpl-float v3, p1, v3

    if-eqz v3, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move v3, v0

    if-nez v3, :cond_b

    .line 3021
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v4, v0

    move-object v0, v3

    move v1, v4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 3023
    :cond_b
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 3024
    const/high16 v3, 0x3f80

    div-float v3, v3, p1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 3027
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 3029
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v24

    .line 3031
    .local v24, titleHeight:I
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_12

    .line 3032
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 3033
    int-to-float v3, v6

    mul-float v22, v21, v3

    .line 3035
    move/from16 v0, v24

    move v1, v7

    if-ge v0, v1, :cond_10

    .line 3036
    move/from16 v0, v24

    int-to-float v0, v0

    move v3, v0

    sub-int v4, v7, v24

    int-to-float v4, v4

    mul-float v4, v4, v21

    add-float v23, v3, v4

    .line 3051
    :goto_2
    if-nez p5, :cond_c

    .line 3052
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 3057
    :cond_c
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 3058
    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->round(F)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v3

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 3061
    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->userScalable()Z

    move-result v3

    if-eqz v3, :cond_d

    sget-object v3, Landroid/webkit/WebSettings$LayoutAlgorithm;->NORMAL:Landroid/webkit/WebSettings$LayoutAlgorithm;

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_d
    const/4 v3, 0x1

    move v9, v3

    .line 3063
    .local v9, needAnchorDiff:Z
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v3, v0

    if-ne v6, v3, :cond_e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v3, v0

    if-eq v7, v3, :cond_15

    .line 3064
    :cond_e
    if-nez p5, :cond_f

    .line 3065
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sget-object v3, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v0, v3

    move-object/from16 v1, p4

    if-ne v0, v1, :cond_14

    const/4 v3, 0x1

    move v8, v3

    :goto_4
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/webkit/WebView;->onScrollChangedAnchorDiff(IIIIZ)V

    .line 3074
    :cond_f
    :goto_5
    if-nez p5, :cond_5

    .line 3076
    move-object/from16 v0, p0

    move v1, v9

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    goto/16 :goto_1

    .line 3038
    .end local v9           #needAnchorDiff:Z
    :cond_10
    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    goto :goto_2

    .line 3041
    :cond_11
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorX:I

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    .line 3042
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAnchorY:I

    move v0, v7

    int-to-float v0, v0

    move/from16 v23, v0

    goto/16 :goto_2

    .line 3045
    :cond_12
    int-to-float v3, v6

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move v5, v0

    mul-float/2addr v4, v5

    add-float v22, v3, v4

    .line 3046
    int-to-float v3, v7

    mul-float v3, v3, v21

    const/high16 v4, 0x3f80

    sub-float v4, v21, v4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move v5, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move v8, v0

    sub-float/2addr v5, v8

    mul-float/2addr v4, v5

    add-float v23, v3, v4

    goto/16 :goto_2

    .line 3061
    :cond_13
    const/4 v3, 0x0

    move v9, v3

    goto :goto_3

    .line 3065
    .restart local v9       #needAnchorDiff:Z
    :cond_14
    const/4 v3, 0x0

    move v8, v3

    goto :goto_4

    .line 3071
    :cond_15
    if-nez p5, :cond_f

    .line 3072
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_5
.end method

.method private setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V
    .locals 21
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "force"
    .parameter "zoomInfo"

    .prologue
    .line 8870
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTextWrapScale:F

    move v10, v0

    .line 8871
    .local v10, oldTextWrapScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastHeightSent:I

    move v7, v0

    .line 8872
    .local v7, oldLastHeightSent:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v3, v0

    .line 8873
    .local v3, oldActualScale:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move v6, v0

    .line 8874
    .local v6, oldInvActualScale:F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    move v4, v0

    .line 8875
    .local v4, oldAdaptiveZoom:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    move v5, v0

    .line 8876
    .local v5, oldAdaptiveZoomAnimationLength:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v8, v0

    .line 8877
    .local v8, oldScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v9, v0

    .line 8880
    .local v9, oldScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v17, v0

    cmpg-float v17, p1, v17

    if-gez v17, :cond_7

    .line 8881
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 p1, v0

    .line 8885
    :cond_0
    :goto_0
    sget-boolean v17, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v17, :cond_1

    .line 8886
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setNewZoomScaleEx scale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMinZoomScale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mMaxZoomScale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", zoomInfo = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8889
    :cond_1
    if-eqz p2, :cond_2

    .line 8890
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 8892
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 8894
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-nez v17, :cond_3

    if-eqz p3, :cond_5

    .line 8895
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDrawHistory:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 8898
    if-nez p4, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_4

    .line 8899
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 8901
    :cond_4
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 8902
    const/high16 v17, 0x3f80

    div-float v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 8904
    if-nez p4, :cond_5

    .line 8905
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 8956
    :cond_5
    :goto_1
    if-eqz p4, :cond_6

    .line 8958
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scale:F

    .line 8959
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollX:F

    .line 8960
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->scrollY:F

    .line 8961
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterX:F

    .line 8962
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p4

    iput v0, v1, Landroid/webkit/OnPinchZoomListener$ZoomInfo;->zoomCenterY:F

    .line 8965
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 8966
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 8967
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 8968
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 8969
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 8970
    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 8971
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 8972
    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 8975
    :cond_6
    return-void

    .line 8882
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-lez v17, :cond_0

    .line 8883
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move/from16 p1, v0

    goto/16 :goto_0

    .line 8910
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v11, v0

    .line 8911
    .local v11, oldX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v12, v0

    .line 8912
    .local v12, oldY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v17, v0

    mul-float v13, p1, v17

    .line 8913
    .local v13, ratio:F
    sget-boolean v17, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v17, :cond_9

    .line 8914
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setNewZoomScale ratio = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mInvActualScale = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mInvActualScale:F

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8919
    :cond_9
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v16, v0

    .line 8920
    .local v16, titleHeight:F
    move v0, v11

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterX:F

    move/from16 v18, v0

    mul-float v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    add-float v14, v17, v18

    .line 8921
    .local v14, sx:F
    move v0, v12

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v17, v17, v13

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mZoomCenterY:F

    move/from16 v18, v0

    sub-float v18, v18, v16

    mul-float v18, v18, v13

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v19, v19, v16

    const/high16 v20, 0x3f00

    mul-float v19, v19, v20

    sub-float v18, v18, v19

    add-float v15, v17, v18

    .line 8924
    .local v15, sy:F
    if-nez p4, :cond_a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v17, v0

    cmpl-float v17, p1, v17

    if-eqz v17, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    move/from16 v17, v0

    if-nez v17, :cond_a

    .line 8925
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move/from16 v18, v0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/webkit/CallbackProxy;->onScaleChanged(FF)V

    .line 8927
    :cond_a
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mActualScale:F

    .line 8928
    const/high16 v17, 0x3f80

    div-float v17, v17, p1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mInvActualScale:F

    .line 8930
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mAdaptiveZoom:Z

    .line 8931
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mAdaptiveZoomAnimationLength:F

    .line 8934
    if-nez p4, :cond_b

    .line 8935
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 8940
    :cond_b
    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollX:I

    .line 8941
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/View;->mScrollY:I

    .line 8942
    sget-boolean v17, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v17, :cond_c

    .line 8943
    const-string/jumbo v17, "webview"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setNewZoomScale mScrollX = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", mScrollY = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8947
    :cond_c
    if-nez p4, :cond_5

    .line 8949
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 8950
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto/16 :goto_1
.end method

.method private setSmartTextSelection(Z)V
    .locals 0
    .parameter "smartSeelction"

    .prologue
    .line 1396
    iput-boolean p1, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    .line 1397
    return-void
.end method

.method private showMagnifier(IIZ)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "isNew"

    .prologue
    const/4 v5, 0x1

    .line 7669
    invoke-virtual {p0, p1, p2, v5}, Landroid/webkit/WebView;->getSelectionType(IIZ)I

    move-result v0

    .line 7671
    .local v0, handleType:I
    if-nez p3, :cond_0

    .line 7672
    packed-switch v0, :pswitch_data_0

    .line 7698
    :cond_0
    :goto_0
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_1

    .line 7699
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {v3, p1, p2, v4, v5}, Landroid/webkit/WebMagnifier;->show(IILandroid/graphics/Rect;F)V

    .line 7702
    :goto_1
    return-void

    .line 7674
    :pswitch_0
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_0

    .line 7675
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7676
    .local v2, rtStart:Landroid/graphics/Rect;
    iget v3, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 7677
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 7678
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iput v5, v3, Landroid/webkit/WebMagnifier;->mMode:I

    goto :goto_0

    .line 7683
    .end local v2           #rtStart:Landroid/graphics/Rect;
    :pswitch_1
    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v3, :cond_0

    .line 7684
    new-instance v1, Landroid/graphics/Rect;

    iget-object v3, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v3, v3, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 7685
    .local v1, rtEnd:Landroid/graphics/Rect;
    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v4

    sub-int p2, v3, v4

    .line 7686
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mAdjustY:I

    .line 7687
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    const/4 v4, 0x2

    iput v4, v3, Landroid/webkit/WebMagnifier;->mMode:I

    goto :goto_0

    .line 7701
    .end local v1           #rtEnd:Landroid/graphics/Rect;
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v3, p1, p2}, Landroid/webkit/WebMagnifier;->show(II)V

    goto :goto_1

    .line 7672
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static sign(F)I
    .locals 2
    .parameter "x"

    .prologue
    const/4 v1, 0x0

    .line 6306
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    cmpg-float v0, p0, v1

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private skipInvalidates()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 11508
    iget-boolean v0, p0, Landroid/webkit/WebView;->mTempDisableInvalidate:Z

    if-eqz v0, :cond_0

    move v0, v1

    .line 11516
    :goto_0
    return v0

    .line 11511
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 11514
    goto :goto_0

    .line 11516
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private spawnContentScrollTo(II)V
    .locals 4
    .parameter "cx"
    .parameter "cy"

    .prologue
    .line 3995
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    .line 4003
    :goto_0
    return-void

    .line 4000
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v0

    .line 4001
    .local v0, vx:I
    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    .line 4002
    .local v1, vy:I
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    goto :goto_0
.end method

.method private startDrag()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 7519
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7521
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v2}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7522
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    if-nez v2, :cond_0

    .line 7523
    invoke-direct {p0}, Landroid/webkit/WebView;->hideCursor()V

    .line 7525
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 7526
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->isVisible()Z

    move-result v2

    if-nez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_2

    iget v2, p0, Landroid/webkit/WebView;->mHorizontalScrollBarMode:I

    if-ne v2, v4, :cond_1

    iget v2, p0, Landroid/webkit/WebView;->mVerticalScrollBarMode:I

    if-eq v2, v4, :cond_2

    .line 7532
    :cond_1
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v4}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 7533
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getDoubleTapToastCount()I

    move-result v0

    .line 7534
    .local v0, count:I
    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v2, :cond_2

    if-lez v0, :cond_2

    .line 7535
    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setDoubleTapToastCount(I)V

    .line 7536
    iget-object v2, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v3, 0x1040355

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 7542
    .end local v0           #count:I
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v2

    if-ne v2, v4, :cond_3

    .line 7544
    iget-object v2, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v2}, Landroid/webkit/OnPinchZoomListener;->startDrag()V

    .line 7546
    :cond_3
    return-void
.end method

.method private startTouch(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 7508
    iput p1, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7509
    iput p2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7510
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7511
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7512
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7513
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    if-eqz v0, :cond_0

    .line 7514
    new-instance v0, Landroid/webkit/WebView$DragTrackerHandler;

    iget-object v1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/webkit/WebView$DragTrackerHandler;-><init>(Landroid/webkit/WebView;FFLandroid/webkit/WebView$DragTracker;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    .line 7516
    :cond_0
    return-void
.end method

.method private stopTouch()V
    .locals 1

    .prologue
    .line 7592
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 7593
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 7598
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 7599
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7600
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7604
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 7605
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7606
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7607
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7608
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7610
    :cond_2
    return-void
.end method

.method private textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z
    .locals 21
    .parameter "ev"
    .parameter "touchEvent"
    .parameter "contentX"
    .parameter "contentY"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11098
    const/16 v17, 0x0

    .line 11099
    .local v17, result:Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 11101
    .local v14, eventTime:J
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_0

    .line 11102
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textSelectionTouchEvent "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11105
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v5

    if-nez v5, :cond_1

    .line 11106
    const/4 v5, 0x0

    .line 11286
    .end local p1
    :goto_0
    return v5

    .line 11107
    .restart local p1
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    move v5, v0

    if-nez v5, :cond_4

    .line 11109
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget-boolean v6, v6, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v5, v6, :cond_2

    .line 11110
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 11112
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 11113
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 11115
    :cond_3
    const/4 v5, 0x0

    goto :goto_0

    .line 11117
    :cond_4
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_5

    .line 11118
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xtend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11121
    :cond_5
    packed-switch p2, :pswitch_data_0

    .end local p1
    :cond_6
    :goto_1
    move/from16 v5, v17

    .line 11286
    goto :goto_0

    .line 11123
    .restart local p1
    :pswitch_0
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_7

    .line 11124
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent:ACTION_DOWN: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11126
    :cond_7
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mStopSelection:Z

    .line 11127
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 11128
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionDirection(II)V

    .line 11130
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_9

    .line 11131
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 11132
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 11133
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x3

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11136
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 11137
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 11138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_8

    .line 11139
    move/from16 v0, p5

    float-to-int v0, v0

    move v5, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->showMagnifier(IIZ)V

    .line 11142
    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 11143
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11144
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 11145
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 11149
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 11151
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-interface {v5, v6}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_1

    .line 11159
    :pswitch_1
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_a

    .line 11160
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent ACTION_MOVE: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11162
    :cond_a
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 11164
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_6

    .line 11166
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "xtend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11168
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_f

    .line 11169
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_b

    .line 11170
    const-string/jumbo v5, "webview"

    const-string v6, "Action Move after LONG PRESS"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11172
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd4

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 11174
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11175
    .local v11, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd4

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11212
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_d

    .line 11213
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "textSelectionTouchEvent : Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11218
    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move-wide v3, v14

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 11220
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 11221
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    iget v5, v5, Landroid/webkit/WebMagnifier;->mMode:I

    if-nez v5, :cond_12

    .line 11223
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move/from16 v0, p6

    float-to-int v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    .line 11231
    :cond_e
    :goto_3
    const/16 v17, 0x1

    goto/16 :goto_1

    .line 11178
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v5, :cond_11

    .line 11182
    const/16 v16, 0x0

    .line 11183
    .local v16, moveForward:Z
    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->getSelectionExtendPoint(II)Landroid/graphics/Point;

    move-result-object v20

    .line 11185
    .local v20, value:Landroid/graphics/Point;
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v12, v0

    .line 11186
    .local v12, currX:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v13, v0

    .line 11187
    .local v13, currY:I
    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->IsTextSelectionControlerForward(II)Z

    move-result v16

    .line 11189
    const/4 v5, 0x1

    move/from16 v0, v16

    move v1, v5

    if-ne v0, v1, :cond_10

    .line 11190
    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v7, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mActionMove:Z

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11193
    .restart local v11       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mActionMove:Z

    .line 11194
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mInActionMove:Z

    .line 11195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 11196
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd2

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11199
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_c

    .line 11200
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MotionEvent.ACTION_MOVE: ExtendPoint="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11204
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_10
    const-string/jumbo v5, "webview"

    const-string v6, "Right Selection Controler never cross left side Controler ."

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11207
    .end local v12           #currX:I
    .end local v13           #currY:I
    .end local v16           #moveForward:Z
    .end local v20           #value:Landroid/graphics/Point;
    :cond_11
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_c

    .line 11208
    const-string/jumbo v5, "webview"

    const-string v6, "MotionEvent.ACTION_MOVE: mCopyInfo not updated"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 11224
    :cond_12
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v5, v6, :cond_13

    .line 11225
    new-instance v19, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11226
    .local v19, rtStart:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_3

    .line 11227
    .end local v19           #rtStart:Landroid/graphics/Rect;
    :cond_13
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebMagnifier;->mMode:I

    if-ne v5, v6, :cond_e

    .line 11228
    new-instance v18, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 11229
    .local v18, rtEnd:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    move/from16 v0, p5

    float-to-int v0, v0

    move v6, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->move(II)V

    goto/16 :goto_3

    .line 11237
    .end local v18           #rtEnd:Landroid/graphics/Rect;
    :pswitch_2
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_14

    .line 11238
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent ACTION_UP: Begin"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11240
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 11241
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mExtendSelectionPressed:Z

    .line 11242
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 11243
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/16 v6, 0x8

    if-eq v5, v6, :cond_18

    .line 11245
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/webkit/HtmlComposerView;

    move v5, v0

    if-eqz v5, :cond_15

    move-object/from16 v0, p0

    check-cast v0, Landroid/webkit/HtmlComposerView;

    move-object/from16 p1, v0

    .end local p1
    invoke-virtual/range {p1 .. p1}, Landroid/webkit/HtmlComposerView;->getConetextmenuVisibility()Z

    move-result v5

    if-nez v5, :cond_17

    .line 11246
    :cond_15
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 11247
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSmartSelection:Z

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mActualScale:F

    move v10, v0

    move-object/from16 v5, p0

    move/from16 v6, p3

    move/from16 v7, p4

    invoke-direct/range {v5 .. v10}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v11

    .line 11250
    .restart local v11       #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0xd3

    invoke-virtual {v5, v6, v11}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 11252
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 11253
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_16

    .line 11254
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "textSelectionTouchEvent : Selection Stopped"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11256
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11258
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11282
    .end local v11           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_17
    :goto_4
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mLongPress:Z

    goto/16 :goto_1

    .line 11261
    .restart local p1
    :cond_18
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mStopSelection:Z

    move v5, v0

    if-nez v5, :cond_1a

    .line 11263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mLongPress:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    .line 11265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11273
    :goto_5
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    .line 11274
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 11275
    const/16 v17, 0x1

    goto :goto_4

    .line 11270
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/4 v8, 0x5

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 11279
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4

    .line 11121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private updateSelection()V
    .locals 7

    .prologue
    .line 8285
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    .line 8294
    :goto_0
    return-void

    .line 8289
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8290
    .local v0, contentX:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8291
    .local v1, contentY:I
    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v3, v0, v3

    iget v4, p0, Landroid/webkit/WebView;->mNavSlop:I

    sub-int v4, v1, v4

    iget v5, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/webkit/WebView;->mNavSlop:I

    add-int/2addr v6, v1

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 8293
    .local v2, rect:Landroid/graphics/Rect;
    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method private updateTextSelectionFromMessage(IILandroid/webkit/WebViewCore$TextSelectionData;)V
    .locals 3
    .parameter "nodePointer"
    .parameter "textGeneration"
    .parameter "data"

    .prologue
    .line 10075
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne p2, v0, :cond_0

    .line 10078
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v1, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mStart:I

    iget v2, p3, Landroid/webkit/WebViewCore$TextSelectionData;->mEnd:I

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebTextView;->setSelectionFromWebKit(II)V

    .line 10080
    :cond_0
    return-void
.end method

.method private updateZoomButtonsEnabled()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1569
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v2, :cond_0

    .line 1582
    :goto_0
    return-void

    .line 1570
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    move v0, v5

    .line 1571
    .local v0, canZoomIn:Z
    :goto_1
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    iget-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-nez v2, :cond_2

    move v1, v5

    .line 1572
    .local v1, canZoomOut:Z
    :goto_2
    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 1575
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local v0           #canZoomIn:Z
    .end local v1           #canZoomOut:Z
    :cond_1
    move v0, v4

    .line 1570
    goto :goto_1

    .restart local v0       #canZoomIn:Z
    :cond_2
    move v1, v4

    .line 1571
    goto :goto_2

    .line 1579
    .restart local v1       #canZoomOut:Z
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v0}, Landroid/widget/ZoomButtonsController;->setZoomInEnabled(Z)V

    .line 1580
    iget-object v2, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v2, v1}, Landroid/widget/ZoomButtonsController;->setZoomOutEnabled(Z)V

    goto :goto_0
.end method

.method private updateZoomRange(Landroid/webkit/WebViewCore$RestoreState;IIZ)V
    .locals 6
    .parameter "restoreState"
    .parameter "viewWidth"
    .parameter "minPrefWidth"
    .parameter "updateZoomOverview"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10505
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_4

    .line 10506
    iget-boolean v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    if-eqz v1, :cond_3

    .line 10507
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    if-le p3, v1, :cond_2

    .line 10508
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10509
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    .line 10510
    if-eqz p4, :cond_0

    .line 10511
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 10512
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v4

    :goto_0
    iput-boolean v1, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 10527
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_0
    :goto_1
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    cmpl-float v1, v1, v5

    if-nez v1, :cond_5

    .line 10528
    sget v1, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 10532
    :goto_2
    return-void

    .restart local v0       #settings:Landroid/webkit/WebSettings;
    :cond_1
    move v1, v3

    .line 10512
    goto :goto_0

    .line 10516
    .end local v0           #settings:Landroid/webkit/WebSettings;
    :cond_2
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10517
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 10520
    :cond_3
    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10521
    iput-boolean v3, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 10524
    :cond_4
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 10525
    iput-boolean v4, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    goto :goto_1

    .line 10530
    :cond_5
    iget v1, p1, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    iput v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    goto :goto_2
.end method

.method private viewInvalidate()V
    .locals 0

    .prologue
    .line 10647
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 10648
    return-void
.end method

.method private viewInvalidate(IIII)V
    .locals 7
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2850
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2851
    .local v1, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 2852
    .local v0, dy:I
    int-to-float v2, p1

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v2, v2

    int-to-float v3, p2

    mul-float/2addr v3, v1

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/2addr v3, v0

    int-to-float v4, p3

    mul-float/2addr v4, v1

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    int-to-float v5, p4

    mul-float/2addr v5, v1

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/2addr v5, v0

    invoke-virtual {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->invalidate(IIII)V

    .line 2856
    return-void
.end method

.method private viewInvalidateDelayed(JIIII)V
    .locals 9
    .parameter "delay"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 2861
    iget v8, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 2862
    .local v8, scale:F
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v7

    .line 2863
    .local v7, dy:I
    int-to-float v0, p3

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v3, v0

    int-to-float v0, p4

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v4, v0, v7

    int-to-float v0, p5

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v5, v0

    int-to-float v0, p6

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int v6, v0, v7

    move-object v0, p0

    move-wide v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/webkit/WebView;->postInvalidateDelayed(JIIII)V

    .line 2868
    return-void
.end method

.method private viewToContentDimension(IF)F
    .locals 1
    .parameter "d"
    .parameter "scale"

    .prologue
    .line 8115
    int-to-float v0, p1

    div-float/2addr v0, p2

    return v0
.end method

.method private viewToContentX(IF)F
    .locals 1
    .parameter "x"
    .parameter "scale"

    .prologue
    .line 8119
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;->viewToContentDimension(IF)F

    move-result v0

    return v0
.end method

.method private viewToContentY(IF)F
    .locals 1
    .parameter "y"
    .parameter "scale"

    .prologue
    .line 8123
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-direct {p0, v0, p2}, Landroid/webkit/WebView;->viewToContentDimension(IF)F

    move-result v0

    return v0
.end method

.method private zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .locals 5
    .parameter "scale"
    .parameter "updateTextWrapScale"
    .parameter "zoomInfo"

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f80

    .line 8128
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 8130
    .local v0, oldScale:F
    if-nez p3, :cond_0

    .line 8132
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 8133
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 8137
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sget v2, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 8138
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 8141
    :cond_1
    invoke-direct {p0, p1, p2, v4, p3}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8143
    if-nez p3, :cond_2

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 8145
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 8146
    div-float v1, v3, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 8147
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v3, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 8148
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 8149
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 8150
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8151
    const/4 v1, 0x1

    .line 8153
    :goto_0
    return v1

    :cond_2
    move v1, v4

    goto :goto_0
.end method

.method private zoomWithPreviewEx(FLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z
    .locals 10
    .parameter "scale"
    .parameter "zoomInfo"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f80

    const-wide v5, 0x3fa999999999999aL

    .line 8979
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 8980
    .local v0, oldScale:F
    if-nez p2, :cond_0

    .line 8982
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollX:I

    .line 8983
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iput v1, p0, Landroid/webkit/WebView;->mInitialScrollY:I

    .line 8987
    :cond_0
    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    sub-double/2addr v3, v5

    cmpl-double v1, v1, v3

    if-lez v1, :cond_1

    float-to-double v1, p1

    iget v3, p0, Landroid/webkit/WebView;->mDefaultScale:F

    float-to-double v3, v3

    add-double/2addr v3, v5

    cmpg-double v1, v1, v3

    if-gez v1, :cond_1

    .line 8988
    iget p1, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 8991
    :cond_1
    invoke-direct {p0, p1, v9, v8, p2}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8993
    if-nez p2, :cond_2

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 8995
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/webkit/WebView;->mZoomStart:J

    .line 8996
    div-float v1, v7, v0

    iput v1, p0, Landroid/webkit/WebView;->mInvInitialZoomScale:F

    .line 8997
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    div-float v1, v7, v1

    iput v1, p0, Landroid/webkit/WebView;->mInvFinalZoomScale:F

    .line 8998
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    iput v1, p0, Landroid/webkit/WebView;->mZoomScale:F

    .line 8999
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    move v1, v9

    .line 9002
    :goto_0
    return v1

    :cond_2
    move v1, v8

    goto :goto_0
.end method


# virtual methods
.method public AdvanceTextSelectionAll()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 1247
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    move v0, v4

    .line 1271
    :goto_0
    return v0

    .line 1248
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v4

    goto :goto_0

    .line 1251
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->ClearWebTextSelection()V

    .line 1255
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1256
    invoke-direct {p0, v4, v4}, Landroid/webkit/WebView;->nativeGetClosestWordPosition(II)Landroid/graphics/Point;

    move-result-object v7

    .line 1259
    .local v7, pos:Landroid/graphics/Point;
    iget v1, v7, Landroid/graphics/Point;->x:I

    iget v2, v7, Landroid/graphics/Point;->y:I

    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1262
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1264
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1265
    iput-boolean v8, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1266
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1267
    iput-boolean v4, p0, Landroid/webkit/WebView;->mLongPress:Z

    .line 1268
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_2

    .line 1269
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "selectClosestWord closest point x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "y: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move v0, v8

    .line 1271
    goto :goto_0
.end method

.method public ClearWebTextSelection()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1350
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v2, :cond_1

    .line 1351
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 1352
    iput-boolean v2, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1353
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_1

    .line 1354
    iput-boolean v1, p0, Landroid/webkit/WebView;->mWebSelectionOn:Z

    .line 1355
    const/4 v5, 0x0

    move-object v0, p0

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1356
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd3

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1357
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 1358
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 1359
    const-string/jumbo v0, "webview"

    const-string v1, "ClearWebTextSelection() : Clear Text Selection "

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 1364
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :cond_1
    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    .line 4159
    new-instance v0, Landroid/webkit/WebViewCore$JSInterfaceData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSInterfaceData;-><init>()V

    .line 4160
    .local v0, arg:Landroid/webkit/WebViewCore$JSInterfaceData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mObject:Ljava/lang/Object;

    .line 4161
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSInterfaceData;->mInterfaceName:Ljava/lang/String;

    .line 4162
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8a

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4163
    return-void
.end method

.method public addPackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 4203
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb9

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4204
    return-void
.end method

.method public addPackageNames(Ljava/util/Set;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4190
    .local p1, packageNames:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xb8

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4191
    return-void
.end method

.method public addTextChangedListener(Landroid/text/TextWatcher;)V
    .locals 0
    .parameter "watcher"

    .prologue
    .line 5953
    iput-object p1, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    .line 5954
    return-void
.end method

.method public canGoBack()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2316
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2317
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2318
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2319
    monitor-exit v0

    move v1, v2

    .line 2321
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 2323
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v2

    .line 2321
    goto :goto_1
.end method

.method public canGoBackOrForward(I)Z
    .locals 4
    .parameter "steps"

    .prologue
    const/4 v3, 0x0

    .line 2362
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2363
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2364
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2365
    monitor-exit v0

    move v2, v3

    .line 2368
    :goto_0
    return v2

    .line 2367
    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v2

    add-int v1, v2, p1

    .line 2368
    .local v1, newIndex:I
    if-ltz v1, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 2370
    .end local v1           #newIndex:I
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .restart local v1       #newIndex:I
    :cond_1
    move v2, v3

    .line 2368
    goto :goto_1
.end method

.method public canGoForward()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2338
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    .line 2339
    .local v0, l:Landroid/webkit/WebBackForwardList;
    monitor-enter v0

    .line 2340
    :try_start_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getClearPending()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2341
    monitor-exit v0

    move v1, v3

    .line 2343
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    sub-int/2addr v2, v4

    if-ge v1, v2, :cond_1

    move v1, v4

    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 2345
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    move v1, v3

    .line 2343
    goto :goto_1
.end method

.method public canRedo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5897
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 5913
    .end local p0
    :goto_0
    return v3

    .line 5899
    .restart local p0
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5900
    .local v0, canRedo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5902
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 5904
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x20f

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5907
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5912
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5913
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 5909
    .restart local p0
    :catch_0
    move-exception v1

    .line 5910
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5912
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public canUndo()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5877
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 5893
    .end local p0
    :goto_0
    return v3

    .line 5879
    .restart local p0
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5880
    .local v0, canUndo:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5882
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 5884
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x20d

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5887
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5892
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5893
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 5889
    .restart local p0
    :catch_0
    move-exception v1

    .line 5890
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5892
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public cancelTouch()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 7613
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    if-eqz v0, :cond_0

    .line 7614
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    invoke-virtual {v0}, Landroid/webkit/WebView$DragTrackerHandler;->stopDrag()V

    .line 7619
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 7620
    iget-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 7621
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 7625
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_2

    .line 7626
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7627
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7628
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7629
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 7632
    :cond_2
    iget v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    if-ne v0, v1, :cond_3

    .line 7633
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7634
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7636
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7637
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7638
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7639
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7640
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7641
    const/4 v0, 0x7

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 7642
    invoke-direct {p0}, Landroid/webkit/WebView;->hideCursor()V

    .line 7643
    return-void
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .locals 1

    .prologue
    .line 2476
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2477
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->copyContentPicture()Landroid/graphics/Picture;

    move-result-object v0

    goto :goto_0
.end method

.method centerKeyPressOnTextField()V
    .locals 4

    .prologue
    .line 8366
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 8368
    return-void
.end method

.method centerKeyPressOnTextFieldEx(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 8375
    new-instance v0, Landroid/webkit/WebViewCore$SelectAndClickData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$SelectAndClickData;-><init>()V

    .line 8376
    .local v0, data:Landroid/webkit/WebViewCore$SelectAndClickData;
    iput p1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionStart:I

    .line 8377
    iput p2, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->selectionEnd:I

    .line 8378
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorFrame:I

    .line 8379
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectAndClickData;->cursorNode:I

    .line 8380
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xbe

    invoke-virtual {v1, v2, v3, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 8381
    return-void
.end method

.method public changeProgressState(Z)V
    .locals 1
    .parameter "state"

    .prologue
    .line 6520
    iget-object v0, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/webkit/WebviewScaleGestureDetector;->setIsInProgress(Z)V

    .line 6521
    return-void
.end method

.method public ckeckIfSelectionAtBoundry()I
    .locals 4

    .prologue
    .line 5997
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 6008
    .end local p0
    :goto_0
    return v2

    .line 5999
    .restart local p0
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6000
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 6001
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x217

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6003
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6007
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6008
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 6004
    .restart local p0
    :catch_0
    move-exception v0

    .line 6005
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6007
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public clearCache(Z)V
    .locals 4
    .parameter "includeDiskFiles"

    .prologue
    const/4 v3, 0x0

    .line 3570
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6f

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 3572
    return-void

    :cond_0
    move v2, v3

    .line 3570
    goto :goto_0
.end method

.method public clearFormData()V
    .locals 2

    .prologue
    .line 3579
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3580
    const/4 v0, 0x0

    .line 3581
    .local v0, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1, v0}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    .line 3583
    .end local v0           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :cond_0
    return-void
.end method

.method public clearHistory()V
    .locals 2

    .prologue
    .line 3589
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->setClearPending()V

    .line 3590
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x70

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3591
    return-void
.end method

.method public clearMatches()V
    .locals 1

    .prologue
    .line 3724
    const-string v0, ""

    iput-object v0, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    .line 3725
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3729
    :goto_0
    return-void

    .line 3727
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetFindIsEmpty()V

    .line 3728
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public clearSslPreferences()V
    .locals 2

    .prologue
    .line 3598
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3599
    return-void
.end method

.method clearTextEntry(Z)V
    .locals 1
    .parameter "disableFocusController"

    .prologue
    .line 2493
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2494
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->remove()V

    .line 2495
    if-eqz p1, :cond_0

    .line 2496
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 2499
    :cond_0
    return-void
.end method

.method public clearView()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 2461
    iput v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    .line 2462
    iput v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    .line 2463
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x86

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2464
    return-void
.end method

.method public commitInputMethodText(Ljava/lang/String;I)V
    .locals 3
    .parameter "text"
    .parameter "numOfcharsToDeleteFromCursorPos"

    .prologue
    .line 5651
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5660
    :cond_0
    :goto_0
    return-void

    .line 5653
    :cond_1
    if-lez p2, :cond_2

    .line 5654
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "commitInputMethodText "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 5655
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1fc

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 5657
    :cond_2
    if-eqz p1, :cond_0

    const-string v0, ""

    if-eq p1, v0, :cond_0

    .line 5658
    const-string v0, "InsertText"

    invoke-virtual {p0, v0, p1}, Landroid/webkit/WebView;->execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V

    .line 5659
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    goto :goto_0
.end method

.method protected computeHorizontalScrollOffset()I
    .locals 2

    .prologue
    .line 3302
    iget v0, p0, Landroid/view/View;->mScrollX:I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeHorizontalScrollRange()I
    .locals 4

    .prologue
    .line 3286
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealHorizontalScrollRange()I

    move-result v1

    .line 3289
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3290
    .local v2, scrollX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3291
    .local v0, overscrollRight:I
    if-gez v2, :cond_1

    .line 3292
    sub-int/2addr v1, v2

    .line 3297
    :cond_0
    :goto_0
    return v1

    .line 3293
    :cond_1
    if-le v2, v0, :cond_0

    .line 3294
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 3773
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 3774
    iget v3, p0, Landroid/view/View;->mScrollX:I

    .line 3775
    .local v3, oldX:I
    iget v4, p0, Landroid/view/View;->mScrollY:I

    .line 3776
    .local v4, oldY:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v10

    .line 3777
    .local v10, x:I
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v11

    .line 3778
    .local v11, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3780
    if-ne v3, v10, :cond_0

    if-eq v4, v11, :cond_3

    .line 3781
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    .line 3782
    .local v5, rangeX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v6

    .line 3783
    .local v6, rangeY:I
    sub-int v1, v10, v3

    sub-int v2, v11, v4

    iget v7, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v8, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    .line 3787
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v0, :cond_3

    .line 3788
    if-gtz v6, :cond_1

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v0

    if-nez v0, :cond_2

    .line 3789
    :cond_1
    if-gez v11, :cond_5

    if-ltz v4, :cond_5

    .line 3790
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3791
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3792
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3802
    :cond_2
    :goto_0
    if-lez v5, :cond_3

    .line 3803
    if-gez v10, :cond_6

    if-ltz v3, :cond_6

    .line 3804
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3805
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3806
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3817
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3818
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3819
    sput-boolean v9, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 3820
    sput-boolean v9, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 3825
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_4
    :goto_2
    return-void

    .line 3794
    .restart local v3       #oldX:I
    .restart local v4       #oldY:I
    .restart local v5       #rangeX:I
    .restart local v6       #rangeY:I
    .restart local v10       #x:I
    .restart local v11       #y:I
    :cond_5
    if-le v11, v6, :cond_2

    if-gt v4, v6, :cond_2

    .line 3795
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3796
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3797
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_0

    .line 3808
    :cond_6
    if-le v10, v5, :cond_3

    if-gt v3, v5, :cond_3

    .line 3809
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget-object v1, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrVelocity()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeGlow;->onAbsorb(I)V

    .line 3810
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3811
    iget-object v0, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v0}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_1

    .line 3823
    .end local v3           #oldX:I
    .end local v4           #oldY:I
    .end local v5           #rangeX:I
    .end local v6           #rangeY:I
    .end local v10           #x:I
    .end local v11           #y:I
    :cond_7
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->computeScroll()V

    goto :goto_2
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 3341
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .prologue
    .line 3336
    iget v0, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 4

    .prologue
    .line 3320
    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v1

    .line 3323
    .local v1, range:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 3324
    .local v2, scrollY:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v0

    .line 3325
    .local v0, overscrollBottom:I
    if-gez v2, :cond_1

    .line 3326
    sub-int/2addr v1, v2

    .line 3331
    :cond_0
    :goto_0
    return v1

    .line 3327
    :cond_1
    if-le v2, v0, :cond_0

    .line 3328
    sub-int v3, v2, v0

    add-int/2addr v1, v3

    goto :goto_0
.end method

.method contentToViewDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2809
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method contentToViewX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2817
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    return v0
.end method

.method contentToViewY(I)I
    .locals 2
    .parameter "y"

    .prologue
    .line 2825
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public copyBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 3610
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebBackForwardList;->clone()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public copySelection()Z
    .locals 8

    .prologue
    const-string/jumbo v7, "webview"

    .line 5427
    const/4 v1, 0x0

    .line 5428
    .local v1, copiedSomething:Z
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v3

    .line 5429
    .local v3, selection:Ljava/lang/String;
    const-string v4, ""

    if-eq v3, v4, :cond_1

    .line 5430
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_0

    .line 5431
    const-string/jumbo v4, "webview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "copySelection \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5433
    :cond_0
    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    const v5, 0x1040363

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 5436
    const/4 v1, 0x1

    .line 5438
    :try_start_0
    const-string v4, "clipboard"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/text/IClipboard$Stub;->asInterface(Landroid/os/IBinder;)Landroid/text/IClipboard;

    move-result-object v0

    .line 5440
    .local v0, clip:Landroid/text/IClipboard;
    invoke-interface {v0, v3}, Landroid/text/IClipboard;->setClipboardText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5445
    .end local v0           #clip:Landroid/text/IClipboard;
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5446
    return v1

    .line 5441
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 5442
    .local v2, e:Landroid/os/RemoteException;
    const-string/jumbo v4, "webview"

    const-string v4, "Clipboard failed"

    invoke-static {v7, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method cursorData()Landroid/webkit/WebViewCore$CursorData;
    .locals 3

    .prologue
    .line 4795
    new-instance v1, Landroid/webkit/WebViewCore$CursorData;

    invoke-direct {v1}, Landroid/webkit/WebViewCore$CursorData;-><init>()V

    .line 4796
    .local v1, result:Landroid/webkit/WebViewCore$CursorData;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeMoveGeneration()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mMoveGeneration:I

    .line 4797
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    .line 4798
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorPosition()Landroid/graphics/Point;

    move-result-object v0

    .line 4799
    .local v0, position:Landroid/graphics/Point;
    iget v2, v0, Landroid/graphics/Point;->x:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mX:I

    .line 4800
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v1, Landroid/webkit/WebViewCore$CursorData;->mY:I

    .line 4801
    return-object v1
.end method

.method public cursorIsAnchor()Z
    .locals 1

    .prologue
    .line 2639
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 2640
    const/4 v0, 0x0

    .line 2642
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    goto :goto_0
.end method

.method public debugDump()V
    .locals 2

    .prologue
    .line 10739
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDebugDump()V

    .line 10740
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xac

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 10741
    return-void
.end method

.method deleteSelection(II)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4812
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4813
    new-instance v0, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v0, p1, p2}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    .line 4815
    .local v0, data:Landroid/webkit/WebViewCore$TextSelectionData;
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x7a

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 4817
    return-void
.end method

.method public deleteSurroundingText(II)V
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 5803
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5807
    :cond_0
    :goto_0
    return-void

    .line 5805
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x1ff

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1874
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 1876
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 1877
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v1, :cond_0

    .line 1880
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 1881
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 1883
    monitor-enter p0

    .line 1884
    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1885
    .local v0, webViewCore:Landroid/webkit/WebViewCore;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    .line 1886
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->destroy()V

    .line 1887
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1889
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1890
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v2}, Landroid/webkit/CallbackProxy;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1893
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    monitor-enter v1

    .line 1894
    :try_start_1
    iget-object v2, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 1895
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1897
    .end local v0           #webViewCore:Landroid/webkit/WebViewCore;
    :cond_0
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_1

    .line 1898
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeDestroy()V

    .line 1899
    const/4 v1, 0x0

    iput v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    .line 1901
    :cond_1
    return-void

    .line 1887
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 1895
    .restart local v0       #webViewCore:Landroid/webkit/WebViewCore;
    :catchall_1
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v2
.end method

.method dismissZoomControl()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8527
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_2

    .line 8530
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_0

    .line 8531
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    .line 8533
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 8534
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    .line 8551
    :cond_1
    :goto_0
    return-void

    .line 8538
    :cond_2
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 8539
    .local v0, settings:Landroid/webkit/WebSettings;
    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8540
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-eqz v1, :cond_1

    .line 8541
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v1, v2}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 8544
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_4

    .line 8545
    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8547
    :cond_4
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-eqz v1, :cond_1

    .line 8548
    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    invoke-virtual {v1}, Landroid/webkit/WebView$ExtendedZoomControls;->hide()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 6268
    const/4 v0, 0x1

    .line 6272
    .local v0, dispatch:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6273
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    .line 6274
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    .line 6287
    :cond_1
    :goto_0
    if-eqz v0, :cond_4

    .line 6288
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 6291
    :goto_1
    return v1

    .line 6276
    :cond_2
    iget-boolean v1, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    if-nez v1, :cond_3

    .line 6281
    const/4 v0, 0x0

    .line 6283
    :cond_3
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_0

    :cond_4
    move v1, v2

    .line 6291
    goto :goto_1
.end method

.method public displaySoftKeyboardForHtmlComposer()V
    .locals 1

    .prologue
    .line 5631
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->displaySoftKeyboard(Z)V

    .line 5632
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4136
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa1

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4137
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 3765
    if-nez p1, :cond_0

    .line 3769
    :goto_0
    return-void

    .line 3768
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    const/4 v1, 0x1

    .line 4252
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isVisible()Z

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->isDrawingWebView()Z

    move-result v0

    if-ne v0, v1, :cond_2

    .line 4254
    :cond_1
    const/4 v0, 0x0

    .line 4261
    :goto_0
    return v0

    .line 4256
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne p2, v0, :cond_3

    .line 4259
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget-object v2, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 4261
    :cond_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    goto :goto_0
.end method

.method drawHistory()Z
    .locals 1

    .prologue
    .line 4769
    iget-boolean v0, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    return v0
.end method

.method public drawPage(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 10751
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, v1, v1, v1}, Landroid/webkit/WebViewCore;->drawContentPicture(Landroid/graphics/Canvas;IZZ)V

    .line 10752
    return-void
.end method

.method public drawSelectionControl()V
    .locals 1

    .prologue
    .line 5963
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->drawSelectionControl(Z)V

    .line 5964
    return-void
.end method

.method public drawSelectionControl(Z)V
    .locals 2
    .parameter "isTextChanged"

    .prologue
    .line 5967
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5975
    :cond_0
    :goto_0
    return-void

    .line 5969
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 5970
    const/4 v0, 0x4

    iput v0, p0, Landroid/webkit/WebView;->mController:I

    .line 5971
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x205

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5972
    if-eqz p1, :cond_0

    .line 5973
    invoke-virtual {p0}, Landroid/webkit/WebView;->textChangedForWatcher()V

    goto :goto_0
.end method

.method public dumpDisplayTree()V
    .locals 1

    .prologue
    .line 5040
    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->nativeDumpDisplayTree(Ljava/lang/String;)V

    .line 5041
    return-void
.end method

.method public dumpDomTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 5050
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xaa

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5051
    return-void

    :cond_0
    move v2, v3

    .line 5050
    goto :goto_0
.end method

.method public dumpRenderTree(Z)V
    .locals 4
    .parameter "toFile"

    .prologue
    const/4 v3, 0x0

    .line 5060
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xab

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5061
    return-void

    :cond_0
    move v2, v3

    .line 5060
    goto :goto_0
.end method

.method public dumpV8Counters()V
    .locals 2

    .prologue
    .line 5071
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xad

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 5072
    return-void
.end method

.method public emulateShiftHeld()V
    .locals 2

    .prologue
    .line 5375
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 5381
    :cond_0
    :goto_0
    return-void

    .line 5377
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 5380
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_0
.end method

.method public execEditorCommand(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "command"
    .parameter "value"

    .prologue
    .line 5858
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_1

    .line 5873
    :cond_0
    :goto_0
    return-void

    .line 5860
    :cond_1
    new-instance v0, Landroid/webkit/WebView$CmdVal;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$CmdVal;-><init>(Landroid/webkit/WebView;)V

    .line 5861
    .local v0, cmdVal:Landroid/webkit/WebView$CmdVal;
    iput-object p1, v0, Landroid/webkit/WebView$CmdVal;->command:Ljava/lang/String;

    .line 5862
    iput-object p2, v0, Landroid/webkit/WebView$CmdVal;->value:Ljava/lang/String;

    .line 5863
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Copy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5864
    :cond_2
    monitor-enter v0

    .line 5865
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x203

    invoke-virtual {v2, v3, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5867
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5871
    :goto_1
    :try_start_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5868
    :catch_0
    move-exception v1

    .line 5869
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 2
    .parameter "callback"

    .prologue
    .line 4128
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xa0

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4129
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 4243
    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4245
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 4247
    return-void

    .line 4245
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public findAll(Ljava/lang/String;)I
    .locals 3
    .parameter "find"

    .prologue
    const/4 v2, 0x0

    .line 3632
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_0

    move v1, v2

    .line 3637
    :goto_0
    return v1

    .line 3633
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeFindAll(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    move v0, v1

    .line 3635
    .local v0, result:I
    :goto_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 3636
    iput-object p1, p0, Landroid/webkit/WebView;->mLastFind:Ljava/lang/String;

    move v1, v0

    .line 3637
    goto :goto_0

    .end local v0           #result:I
    :cond_1
    move v0, v2

    .line 3633
    goto :goto_1
.end method

.method public findIndex()I
    .locals 1

    .prologue
    .line 3657
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const/4 v0, -0x1

    .line 3658
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFindIndex()I

    move-result v0

    goto :goto_0
.end method

.method public findNext(Z)V
    .locals 1
    .parameter "forward"

    .prologue
    .line 3621
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 3623
    :goto_0
    return-void

    .line 3622
    :cond_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeFindNext(Z)V

    goto :goto_0
.end method

.method public flingScroll(II)V
    .locals 11
    .parameter "vx"
    .parameter "vy"

    .prologue
    const/4 v5, 0x0

    .line 7999
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v6

    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v8

    iget v9, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    iget v10, p0, Landroid/webkit/WebView;->mOverflingDistance:I

    move v3, p1

    move v4, p2

    move v7, v5

    invoke-virtual/range {v0 .. v10}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 8001
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8002
    return-void
.end method

.method public freeMemory()V
    .locals 2

    .prologue
    .line 3557
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x91

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3558
    return-void
.end method

.method public getBodyHTML()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "webview"

    .line 5731
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 5744
    .end local p0
    :goto_0
    return-object v2

    .line 5733
    .restart local p0
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v3, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5734
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 5735
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x200

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5738
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5743
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5744
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .line 5739
    .restart local p0
    :catch_0
    move-exception v0

    .line 5740
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5741
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5743
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .locals 1

    .prologue
    .line 1807
    iget-object v0, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    return-object v0
.end method

.method public getContentHeight()I
    .locals 1

    .prologue
    .line 3480
    iget v0, p0, Landroid/webkit/WebView;->mContentHeight:I

    return v0
.end method

.method public getContentWidth()I
    .locals 1

    .prologue
    .line 3488
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    return v0
.end method

.method public getCursorRect(Z)Landroid/graphics/Rect;
    .locals 6
    .parameter "giveContentRect"

    .prologue
    const/4 v5, 0x0

    .line 6013
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_0

    move-object v3, v5

    .line 6026
    .end local p0
    :goto_0
    return-object v3

    .line 6015
    .restart local p0
    :cond_0
    const/4 v3, 0x1

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v1, v3

    .line 6016
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6017
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Rect;>;"
    monitor-enter v2

    .line 6018
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x209

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6021
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6025
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6026
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    move-object v3, p0

    goto :goto_0

    .line 6022
    .restart local p0
    :catch_0
    move-exception v0

    .line 6023
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 6025
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getDragTracker()Landroid/webkit/WebView$DragTracker;
    .locals 1

    .prologue
    .line 6495
    iget-object v0, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    return-object v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 3455
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3456
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHitTestResult()Landroid/webkit/WebView$HitTestResult;
    .locals 10

    .prologue
    const/4 v6, 0x7

    const-string/jumbo v9, "tel:"

    const-string/jumbo v8, "mailto:"

    const-string v7, "geo:0,0?q="

    .line 2578
    iget v5, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v5, :cond_0

    .line 2579
    const/4 v5, 0x0

    .line 2620
    :goto_0
    return-object v5

    .line 2582
    :cond_0
    new-instance v2, Landroid/webkit/WebView$HitTestResult;

    invoke-direct {v2, p0}, Landroid/webkit/WebView$HitTestResult;-><init>(Landroid/webkit/WebView;)V

    .line 2583
    .local v2, result:Landroid/webkit/WebView$HitTestResult;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2584
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 2585
    const/16 v5, 0x9

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2606
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/webkit/WebView$HitTestResult;->getType()I

    move-result v4

    .line 2607
    .local v4, type:I
    if-eqz v4, :cond_2

    if-ne v4, v6, :cond_3

    .line 2610
    :cond_2
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2611
    .local v0, contentX:I
    iget v5, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v5, v6

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2612
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2613
    .local v3, text:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 2614
    if-nez v4, :cond_8

    const/4 v5, 0x5

    :goto_2
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2617
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    .end local v0           #contentX:I
    .end local v1           #contentY:I
    .end local v3           #text:Ljava/lang/String;
    :cond_3
    move-object v5, v2

    .line 2620
    goto :goto_0

    .line 2587
    .end local v4           #type:I
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v3

    .line 2588
    .restart local v3       #text:Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 2589
    const-string/jumbo v5, "tel:"

    invoke-virtual {v3, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 2590
    const/4 v5, 0x2

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2591
    const-string/jumbo v5, "tel:"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2592
    :cond_5
    const-string/jumbo v5, "mailto:"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2593
    const/4 v5, 0x4

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2594
    const-string/jumbo v5, "mailto:"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto :goto_1

    .line 2595
    :cond_6
    const-string v5, "geo:0,0?q="

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 2596
    const/4 v5, 0x3

    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2597
    const-string v5, "geo:0,0?q="

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v5}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2599
    :cond_7
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2600
    #calls: Landroid/webkit/WebView$HitTestResult;->setType(I)V
    invoke-static {v2, v6}, Landroid/webkit/WebView$HitTestResult;->access$500(Landroid/webkit/WebView$HitTestResult;I)V

    .line 2601
    #calls: Landroid/webkit/WebView$HitTestResult;->setExtra(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2614
    .restart local v0       #contentX:I
    .restart local v1       #contentY:I
    .restart local v4       #type:I
    :cond_8
    const/16 v5, 0x8

    goto :goto_2
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "host"
    .parameter "realm"

    .prologue
    .line 1860
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDatabase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMailHTML()Landroid/webkit/WebHTMLMarkupData;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5925
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v4

    .line 5938
    .end local p0
    :goto_0
    return-object v3

    .line 5927
    .restart local p0
    :cond_1
    new-instance v1, Landroid/webkit/WebHTMLMarkupData;

    invoke-direct {v1}, Landroid/webkit/WebHTMLMarkupData;-><init>()V

    .line 5928
    .local v1, mailMarkupData:Landroid/webkit/WebHTMLMarkupData;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v4, v1}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5929
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/webkit/WebHTMLMarkupData;>;"
    monitor-enter v2

    .line 5930
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x206

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5933
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5937
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5938
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/WebHTMLMarkupData;

    move-object v3, p0

    goto :goto_0

    .line 5934
    .restart local p0
    :catch_0
    move-exception v0

    .line 5935
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5937
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getMaxZoomScale()F
    .locals 1

    .prologue
    .line 448
    iget v0, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    return v0
.end method

.method public getMinZoomScale()F
    .locals 1

    .prologue
    .line 452
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3435
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3436
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getOriginalUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getPlainText()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string/jumbo v2, "webview"

    .line 5712
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v2, v3

    .line 5725
    .end local p0
    :goto_0
    return-object v2

    .line 5714
    .restart local p0
    :cond_1
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v1, p0, v3, v3}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5715
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v1

    .line 5716
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x202

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5719
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5724
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5725
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v2, p0

    goto :goto_0

    .line 5720
    .restart local p0
    :catch_0
    move-exception v0

    .line 5721
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for overrideUrl"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5722
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5724
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 3473
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getProgress()I

    move-result v0

    return v0
.end method

.method public getRegisterTiltListener()Z
    .locals 1

    .prologue
    .line 6543
    iget-boolean v0, p0, Landroid/webkit/WebView;->registerTiltListener:Z

    return v0
.end method

.method public getScale()F
    .locals 1

    .prologue
    .line 2524
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    return v0
.end method

.method public getSelection()Ljava/lang/String;
    .locals 1

    .prologue
    .line 5453
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    const-string v0, ""

    .line 5454
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetSelection()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSelectionOffset()Landroid/webkit/WebView$SelectionOffset;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, -0x1

    .line 5823
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    invoke-direct {v3, p0, v4, v4}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    .line 5840
    :goto_0
    return-object v3

    .line 5826
    :cond_1
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v5, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5828
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Landroid/graphics/Point;>;"
    monitor-enter v2

    .line 5830
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x201

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5833
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5838
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5839
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    .line 5840
    .local v1, pnt:Landroid/graphics/Point;
    new-instance v3, Landroid/webkit/WebView$SelectionOffset;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-direct {v3, p0, v4, v5}, Landroid/webkit/WebView$SelectionOffset;-><init>(Landroid/webkit/WebView;II)V

    goto :goto_0

    .line 5835
    .end local v1           #pnt:Landroid/graphics/Point;
    :catch_0
    move-exception v0

    .line 5836
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5838
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getSelectionType(IIZ)I
    .locals 17
    .parameter "ptX"
    .parameter "ptY"
    .parameter "isScreenCoords"

    .prologue
    .line 10822
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    if-nez v14, :cond_1

    .line 10823
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_0

    .line 10824
    const-string/jumbo v14, "webview"

    const-string v15, "isSelectionControlArea : Selection Info is not updated "

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 10826
    :cond_0
    const/4 v14, 0x0

    .line 10928
    :goto_0
    return v14

    .line 10829
    :cond_1
    const/high16 v3, 0x3f80

    .line 10831
    .local v3, MIN_SCALE_LEVEL:F
    const/4 v5, 0x0

    .local v5, controllerWidth:I
    const/4 v4, 0x0

    .line 10832
    .local v4, controllerHeight:I
    const/4 v9, 0x0

    .local v9, selectX:I
    const/4 v10, 0x0

    .line 10834
    .local v10, selectY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebTextSelectionControls;->getControllerWidth()I

    move-result v5

    .line 10835
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    invoke-virtual {v14}, Landroid/webkit/WebTextSelectionControls;->getControllerHeight()I

    move-result v4

    .line 10837
    const/4 v14, 0x1

    move v0, v14

    move/from16 v1, p3

    if-ne v0, v1, :cond_2

    .line 10838
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v14, v0

    add-int v14, v14, p1

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result p1

    .line 10839
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    add-int v14, v14, p2

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result p2

    .line 10843
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v15, 0x4

    if-ne v14, v15, :cond_7

    .line 10844
    int-to-float v14, v5

    const v15, 0x3f99999a

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 10845
    int-to-float v14, v4

    const v15, 0x3f99999a

    mul-float/2addr v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 10846
    new-instance v11, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v11, v14, v15, v5, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10848
    .local v11, selectionCtrl:Landroid/graphics/Rect;
    const/4 v8, 0x0

    .line 10849
    .local v8, selectRect:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    if-eqz v14, :cond_3

    .line 10850
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v14}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 10853
    :cond_3
    if-eqz v8, :cond_d

    .line 10855
    div-int/lit8 v12, v5, 0x2

    .line 10856
    .local v12, xRadius:I
    div-int/lit8 v13, v4, 0x2

    .line 10859
    .local v13, yRadius:I
    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    div-int/lit8 v9, v14, 0x2

    .line 10860
    iget v10, v8, Landroid/graphics/Rect;->bottom:I

    .line 10861
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10862
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 10863
    const/4 v14, 0x5

    goto/16 :goto_0

    .line 10866
    :cond_4
    iget v9, v8, Landroid/graphics/Rect;->left:I

    .line 10867
    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    div-int/lit8 v10, v14, 0x2

    .line 10868
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10869
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 10870
    const/4 v14, 0x3

    goto/16 :goto_0

    .line 10873
    :cond_5
    iget v9, v8, Landroid/graphics/Rect;->right:I

    .line 10874
    iget v14, v8, Landroid/graphics/Rect;->top:I

    iget v15, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v14, v15

    div-int/lit8 v10, v14, 0x2

    .line 10875
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10876
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 10877
    const/4 v14, 0x4

    goto/16 :goto_0

    .line 10880
    :cond_6
    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v15, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v15

    div-int/lit8 v9, v14, 0x2

    .line 10881
    iget v10, v8, Landroid/graphics/Rect;->top:I

    .line 10882
    sub-int v14, v9, v12

    sub-int v15, v10, v13

    invoke-virtual {v11, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10883
    move-object v0, v11

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 10884
    const/4 v14, 0x6

    goto/16 :goto_0

    .line 10888
    .end local v8           #selectRect:Landroid/graphics/Rect;
    .end local v11           #selectionCtrl:Landroid/graphics/Rect;
    .end local v12           #xRadius:I
    .end local v13           #yRadius:I
    :cond_7
    div-int/lit8 v14, v4, 0x2

    add-int v6, v4, v14

    .line 10889
    .local v6, nTouchAreaHeight:I
    new-instance v7, Landroid/graphics/Rect;

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct {v7, v14, v15, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 10892
    .local v7, rtCtrlTouchArea:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    if-eqz v14, :cond_a

    .line 10893
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->left:I

    .line 10894
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v14

    if-nez v14, :cond_9

    .line 10895
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->top:I

    .line 10896
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    sub-int v15, v10, v4

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10902
    :goto_1
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_8

    .line 10903
    const-string/jumbo v14, "webview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isSelectionControlArea : rtCtrlTouchArea: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10905
    :cond_8
    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_a

    .line 10906
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 10898
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 10899
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    div-int/lit8 v15, v4, 0x4

    sub-int v15, v10, v15

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_1

    .line 10910
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    if-eqz v14, :cond_d

    .line 10911
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->right:I

    .line 10912
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    move-object v14, v0

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/webkit/WebTextSelectionControls;->isReversed(I)Z

    move-result v14

    if-nez v14, :cond_c

    .line 10913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 10914
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    div-int/lit8 v15, v4, 0x4

    sub-int v15, v10, v15

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 10920
    :goto_2
    sget-boolean v14, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v14, :cond_b

    .line 10921
    const-string/jumbo v14, "webview"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "isSelectionControlArea : rtCtrlTouchArea: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10923
    :cond_b
    move-object v0, v7

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 10924
    const/4 v14, 0x2

    goto/16 :goto_0

    .line 10916
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object v14, v0

    iget-object v14, v14, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v10, v14, Landroid/graphics/Rect;->top:I

    .line 10917
    div-int/lit8 v14, v5, 0x2

    int-to-float v14, v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    sub-int v14, v9, v14

    sub-int v15, v10, v4

    invoke-virtual {v7, v14, v15}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_2

    .line 10928
    .end local v6           #nTouchAreaHeight:I
    .end local v7           #rtCtrlTouchArea:Landroid/graphics/Rect;
    :cond_d
    const/4 v14, 0x0

    goto/16 :goto_0
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 4172
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTextAroundCursor(ILandroid/webkit/WebView$CursorDirection;)Ljava/lang/String;
    .locals 6
    .parameter "n"
    .parameter "cursorDirection"

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v3, "webview"

    .line 5693
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v3, v5

    .line 5707
    .end local p0
    :goto_0
    return-object v3

    .line 5695
    .restart local p0
    :cond_1
    const/4 v3, 0x2

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object p2, v1, v3

    .line 5696
    .local v1, paramArray:[Ljava/lang/Object;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    invoke-direct {v2, p0, v1, v5}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5697
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/String;>;"
    monitor-enter v2

    .line 5698
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x1fd

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5701
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5706
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5707
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v3, p0

    goto :goto_0

    .line 5702
    .restart local p0
    :catch_0
    move-exception v0

    .line 5703
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5704
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5706
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3445
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3446
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getTitleHeight()I
    .locals 1

    .prologue
    .line 1774
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTouchIconUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3464
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3465
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3422
    iget-object v1, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 3423
    .local v0, h:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getViewHeight()I
    .locals 2

    .prologue
    .line 1791
    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getViewManager()Landroid/webkit/ViewManager;
    .locals 1

    .prologue
    .line 8687
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    return-object v0
.end method

.method getViewWidth()I
    .locals 2

    .prologue
    .line 1762
    invoke-virtual {p0}, Landroid/webkit/WebView;->isVerticalScrollBarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    if-eqz v0, :cond_1

    .line 1763
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    .line 1765
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getVisibleTitleHeight()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1782
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 4111
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 4080
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    return-object v0
.end method

.method public getWebClipboard()Landroid/webkit/WebClipboard;
    .locals 1

    .prologue
    .line 4177
    iget-object v0, p0, Landroid/webkit/WebView;->mWebClipboard:Landroid/webkit/WebClipboard;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 4091
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebFeedLinks()[Landroid/webkit/WebFeedLink;

    move-result-object v0

    return-object v0
.end method

.method public getWebTextSelectionControls()Landroid/webkit/WebTextSelectionControls;
    .locals 8

    .prologue
    .line 1202
    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    if-nez v4, :cond_1

    .line 1203
    :cond_0
    const/4 v4, 0x0

    .line 1214
    :goto_0
    return-object v4

    .line 1204
    :cond_1
    new-instance v3, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v4}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1205
    .local v3, value:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Landroid/webkit/WebViewCore;->getSelectedText()Ljava/lang/String;

    move-result-object v2

    .line 1206
    .local v2, textSelected:Ljava/lang/String;
    new-instance v1, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-direct {v1, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1207
    .local v1, startRect:Landroid/graphics/Rect;
    new-instance v0, Landroid/graphics/Rect;

    iget-object v4, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v4, v4, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-direct {v0, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1209
    .local v0, EndRect:Landroid/graphics/Rect;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    invoke-direct {p0, v3}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v4, v2, v5, v6, v7}, Landroid/webkit/WebTextSelectionControls;->SetTextSelectionData(Ljava/lang/String;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1214
    iget-object v4, p0, Landroid/webkit/WebView;->mWebSelectionControls:Landroid/webkit/WebTextSelectionControls;

    goto :goto_0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 4050
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->getWebViewClient()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getWebViewCore()Landroid/webkit/WebViewCore;
    .locals 1

    .prologue
    .line 9247
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getZoomButtonsController()Landroid/widget/ZoomButtonsController;
    .locals 6

    .prologue
    .line 8237
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    if-nez v4, :cond_0

    .line 8238
    new-instance v4, Landroid/widget/ZoomButtonsController;

    invoke-direct {v4, p0}, Landroid/widget/ZoomButtonsController;-><init>(Landroid/view/View;)V

    iput-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    .line 8239
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    iget-object v5, p0, Landroid/webkit/WebView;->mZoomListener:Landroid/widget/ZoomButtonsController$OnZoomListener;

    invoke-virtual {v4, v5}, Landroid/widget/ZoomButtonsController;->setOnZoomListener(Landroid/widget/ZoomButtonsController$OnZoomListener;)V

    .line 8243
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    invoke-virtual {v4}, Landroid/widget/ZoomButtonsController;->getZoomControls()Landroid/view/View;

    move-result-object v1

    .line 8244
    .local v1, controls:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 8245
    .local v3, params:Landroid/view/ViewGroup$LayoutParams;
    instance-of v4, v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v4, :cond_0

    .line 8246
    move-object v0, v3

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    move-object v2, v0

    .line 8247
    .local v2, frameParams:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v4, 0x5

    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8250
    .end local v1           #controls:Landroid/view/View;
    .end local v2           #frameParams:Landroid/widget/FrameLayout$LayoutParams;
    .end local v3           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    iget-object v4, p0, Landroid/webkit/WebView;->mZoomButtonsController:Landroid/widget/ZoomButtonsController;

    return-object v4
.end method

.method public getZoomControls()Landroid/view/View;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8172
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8173
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8174
    const/4 v0, 0x0

    .line 8201
    :goto_0
    return-object v0

    .line 8176
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    if-nez v0, :cond_1

    .line 8177
    invoke-direct {p0}, Landroid/webkit/WebView;->createZoomControls()Landroid/webkit/WebView$ExtendedZoomControls;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    .line 8184
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView$ExtendedZoomControls;->setVisibility(I)V

    .line 8185
    new-instance v0, Landroid/webkit/WebView$10;

    invoke-direct {v0, p0}, Landroid/webkit/WebView$10;-><init>(Landroid/webkit/WebView;)V

    iput-object v0, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    .line 8201
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mZoomControls:Landroid/webkit/WebView$ExtendedZoomControls;

    goto :goto_0
.end method

.method public goBack()V
    .locals 1

    .prologue
    .line 2330
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 2331
    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    .line 2381
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->goBackOrForward(IZ)V

    .line 2382
    return-void
.end method

.method public goForward()V
    .locals 1

    .prologue
    .line 2352
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->goBackOrForward(I)V

    .line 2353
    return-void
.end method

.method public grabScreen(Landroid/graphics/Canvas;IIF)V
    .locals 8
    .parameter "canvas"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "scale"

    .prologue
    const/4 v7, 0x0

    .line 381
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 382
    .local v3, start:J
    iget v1, p0, Landroid/view/View;->mScrollX:I

    .line 383
    .local v1, savedScrollX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    .line 384
    .local v2, savedScrollY:I
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 385
    .local v0, savedScale:F
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 386
    neg-int v5, p2

    iput v5, p0, Landroid/view/View;->mScrollX:I

    .line 387
    neg-int v5, p3

    iput v5, p0, Landroid/view/View;->mScrollY:I

    .line 388
    iput p4, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 390
    :try_start_0
    iget v5, p0, Landroid/view/View;->mScrollX:I

    int-to-float v5, v5

    iget v6, p0, Landroid/view/View;->mScrollY:I

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 391
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 393
    iput-boolean v7, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 394
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 395
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 396
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 399
    return-void

    .line 393
    :catchall_0
    move-exception v5

    iput-boolean v7, p0, Landroid/webkit/WebView;->mIsGrabbingScreen:Z

    .line 394
    iput v1, p0, Landroid/view/View;->mScrollX:I

    .line 395
    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 396
    iput v0, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 393
    throw v5
.end method

.method public hideSoftKeyboardForHtmlComposer()V
    .locals 0

    .prologue
    .line 5635
    invoke-direct {p0}, Landroid/webkit/WebView;->hideSoftKeyboard()V

    .line 5636
    return-void
.end method

.method public imageCopy(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 5846
    if-eqz p1, :cond_0

    .line 5847
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x204

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5849
    :cond_0
    return-void
.end method

.method inAnimateZoom()Z
    .locals 2

    .prologue
    .line 4484
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method initiateTextFieldDrag(FFJ)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "eventTime"

    .prologue
    .line 8317
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 8330
    :goto_0
    return-void

    .line 8320
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p1

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchX:F

    .line 8321
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->getTop()I

    move-result v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float/2addr v0, p2

    iput v0, p0, Landroid/webkit/WebView;->mLastTouchY:F

    .line 8322
    iput-wide p3, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 8323
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v0}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8324
    invoke-direct {p0}, Landroid/webkit/WebView;->abortAnimation()V

    .line 8325
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8327
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 8328
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 8329
    const/4 v0, 0x2

    iput v0, p0, Landroid/webkit/WebView;->mTouchMode:I

    goto :goto_0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 11453
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11454
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->invalidate()V

    .line 11456
    :cond_0
    return-void
.end method

.method public invalidate(IIII)V
    .locals 1
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 11460
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11461
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->invalidate(IIII)V

    .line 11463
    :cond_0
    return-void
.end method

.method public invalidate(Landroid/graphics/Rect;)V
    .locals 1
    .parameter "dirty"

    .prologue
    .line 11446
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11447
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 11449
    :cond_0
    return-void
.end method

.method public invokeZoomPicker()V
    .locals 4

    .prologue
    .line 2545
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2546
    const-string/jumbo v0, "webview"

    const-string v1, "This WebView doesn\'t support zoom."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :goto_0
    return-void

    .line 2549
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 2550
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2551
    invoke-virtual {p0}, Landroid/webkit/WebView;->getZoomButtonsController()Landroid/widget/ZoomButtonsController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ZoomButtonsController;->setVisible(Z)V

    goto :goto_0

    .line 2553
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2554
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mZoomControlRunnable:Ljava/lang/Runnable;

    sget-wide v2, Landroid/webkit/WebView;->ZOOM_CONTROLS_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public isBodyEmpty()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5750
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 5763
    .end local p0
    :goto_0
    return v3

    .line 5752
    .restart local p0
    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 5753
    .local v0, bodyEmpty:Ljava/lang/Boolean;
    new-instance v2, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3, v0}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5754
    .local v2, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Boolean;>;"
    monitor-enter v2

    .line 5755
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x212

    invoke-virtual {v3, v4, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5758
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5762
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5763
    invoke-virtual {v2}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    goto :goto_0

    .line 5759
    .restart local p0
    :catch_0
    move-exception v1

    .line 5760
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5762
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public isEditableView()Z
    .locals 1

    .prologue
    .line 5618
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method public isMagnifierVisible()Z
    .locals 1

    .prologue
    .line 5623
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-eqz v0, :cond_0

    .line 5624
    const/4 v0, 0x1

    .line 5627
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPaused()Z
    .locals 1

    .prologue
    .line 3549
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    return v0
.end method

.method public isPluginFullScreen()Z
    .locals 1

    .prologue
    .line 372
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"

    .prologue
    .line 2246
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 2247
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    .line 2273
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2274
    invoke-virtual {p0, p2, p3, p4}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2288
    :goto_0
    return-void

    .line 2277
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2278
    new-instance v0, Landroid/webkit/WebViewCore$BaseUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$BaseUrlData;-><init>()V

    .line 2279
    .local v0, arg:Landroid/webkit/WebViewCore$BaseUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mBaseUrl:Ljava/lang/String;

    .line 2280
    iput-object p2, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mData:Ljava/lang/String;

    .line 2281
    iput-object p3, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mMimeType:Ljava/lang/String;

    .line 2282
    iput-object p4, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mEncoding:Ljava/lang/String;

    .line 2283
    iput-object p5, v0, Landroid/webkit/WebViewCore$BaseUrlData;->mHistoryUrl:Ljava/lang/String;

    .line 2284
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2285
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2287
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 2206
    if-nez p1, :cond_0

    .line 2210
    :goto_0
    return-void

    .line 2209
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .parameter "url"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 2189
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2190
    new-instance v0, Landroid/webkit/WebViewCore$GetUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$GetUrlData;-><init>()V

    .line 2191
    .local v0, arg:Landroid/webkit/WebViewCore$GetUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$GetUrlData;->mUrl:Ljava/lang/String;

    .line 2192
    iput-object p2, v0, Landroid/webkit/WebViewCore$GetUrlData;->mExtraHeaders:Ljava/util/Map;

    .line 2193
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x64

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2194
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2196
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2197
    sput-boolean v3, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 2198
    sput-boolean v3, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 2199
    return-void
.end method

.method moveSelection(FF)V
    .locals 13
    .parameter "xRate"
    .parameter "yRate"

    .prologue
    const/16 v12, -0x10

    const/4 v11, 0x0

    const/16 v10, 0x10

    .line 7820
    iget v7, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v7, :cond_0

    .line 7853
    :goto_0
    return-void

    .line 7822
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    .line 7823
    .local v6, width:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    .line 7824
    .local v0, height:I
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    int-to-float v7, v7

    add-float/2addr v7, p1

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7825
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    int-to-float v7, v7

    add-float/2addr v7, p2

    float-to-int v7, v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7826
    iget v7, p0, Landroid/view/View;->mScrollX:I

    add-int v1, v6, v7

    .line 7827
    .local v1, maxX:I
    iget v7, p0, Landroid/view/View;->mScrollY:I

    add-int v2, v0, v7

    .line 7828
    .local v2, maxY:I
    iget v7, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 7830
    iget v7, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v7, v10

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    iput v7, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 7832
    sget-boolean v7, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v7, :cond_1

    .line 7833
    const-string/jumbo v7, "webview"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveSelection mSelectX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mSelectY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mScrollX="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " mScrollY="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " xRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " yRate="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7842
    :cond_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    invoke-virtual {p0, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v7

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v8

    invoke-direct {p0, v7, v8}, Landroid/webkit/WebView;->nativeMoveSelection(II)V

    .line 7843
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/view/View;->mScrollX:I

    if-ge v7, v8, :cond_2

    move v3, v12

    .line 7846
    .local v3, scrollX:I
    :goto_1
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v8, p0, Landroid/view/View;->mScrollY:I

    if-ge v7, v8, :cond_4

    move v4, v12

    .line 7849
    .local v4, scrollY:I
    :goto_2
    const/4 v7, 0x1

    invoke-direct {p0, v3, v4, v7, v11}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    .line 7850
    new-instance v5, Landroid/graphics/Rect;

    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    iget v8, p0, Landroid/webkit/WebView;->mSelectY:I

    iget v9, p0, Landroid/webkit/WebView;->mSelectX:I

    add-int/lit8 v9, v9, 0x1

    iget v10, p0, Landroid/webkit/WebView;->mSelectY:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7851
    .local v5, select:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->requestRectangleOnScreen(Landroid/graphics/Rect;)Z

    .line 7852
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7843
    .end local v3           #scrollX:I
    .end local v4           #scrollY:I
    .end local v5           #select:Landroid/graphics/Rect;
    :cond_2
    iget v7, p0, Landroid/webkit/WebView;->mSelectX:I

    sub-int v8, v1, v10

    if-le v7, v8, :cond_3

    move v3, v10

    goto :goto_1

    :cond_3
    move v3, v11

    goto :goto_1

    .line 7846
    .restart local v3       #scrollX:I
    :cond_4
    iget v7, p0, Landroid/webkit/WebView;->mSelectY:I

    sub-int v8, v2, v10

    if-le v7, v8, :cond_5

    move v4, v10

    goto :goto_2

    :cond_5
    move v4, v11

    goto :goto_2
.end method

.method native nativeClearCursor()V
.end method

.method native nativeCursorMatchesFocus()Z
.end method

.method native nativeFocusCandidateFramePointer()I
.end method

.method native nativeFocusCandidateHasNextTextfield()Z
.end method

.method native nativeFocusCandidateIsPassword()Z
.end method

.method native nativeFocusCandidateMaxLength()I
.end method

.method native nativeFocusCandidateName()Ljava/lang/String;
.end method

.method native nativeFocusCandidatePointer()I
.end method

.method native nativeFocusNodePointer()I
.end method

.method native nativeInputFieldAction(Ljava/lang/String;I)I
.end method

.method native nativeMoveCursorToInput(Ljava/lang/String;II)I
.end method

.method native nativeMoveCursorToNextTextInput()Z
.end method

.method public notifyFindDialogDismissed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3735
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 3746
    :goto_0
    return-void

    .line 3738
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->clearMatches()V

    .line 3739
    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->setFindIsUp(Z)V

    .line 3740
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    sub-int/2addr v1, v2

    invoke-direct {p0, v0, v1, v3}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3744
    iget v0, p0, Landroid/view/View;->mScrollX:I

    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v0, v1, v3, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3745
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public notifySelectDialogDismissed()V
    .locals 1

    .prologue
    .line 5407
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5408
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5409
    return-void
.end method

.method public onAdaptiveZoomFinished(F)V
    .locals 4
    .parameter "scale"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 8672
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 8674
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    invoke-direct {p0, v0, v2, v1, v3}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 8681
    :goto_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 8682
    return-void

    .line 8679
    :cond_0
    invoke-direct {p0, p1, v2, v1, v3}, Landroid/webkit/WebView;->setNewZoomScaleEx(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 5459
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onAttachedToWindow()V

    .line 5460
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5461
    :cond_0
    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "parent"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5478
    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "p"
    .parameter "child"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5485
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6
    .parameter "newConfig"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6135
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6138
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v5, v0, :cond_0

    .line 6139
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6141
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_1

    .line 6142
    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    const/4 v1, 0x7

    invoke-interface {v0, v1}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    .line 6144
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6146
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    if-eqz v0, :cond_2

    .line 6147
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 6157
    :cond_2
    sput-boolean v5, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 6158
    sput-boolean v4, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 6160
    return-void
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    .line 4832
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    .line 4833
    .local v0, connection:Landroid/view/inputmethod/InputConnection;
    iget v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    const/high16 v2, -0x8000

    or-int/2addr v1, v2

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 4834
    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 5465
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 5467
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 5468
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 5469
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5470
    :cond_0
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->onDetachedFromWindow()V

    .line 5471
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .parameter "canvas"

    .prologue
    .line 4288
    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->_onDraw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4290
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v0, :cond_0

    .line 4291
    iget-object v0, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v0}, Landroid/webkit/OnPinchZoomListener;->onWebViewDrawFinished()V

    .line 4294
    :cond_0
    return-void

    .line 4290
    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_1

    .line 4291
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->onWebViewDrawFinished()V

    .line 4290
    :cond_1
    throw v0
.end method

.method protected onDrawVerticalScrollBar(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;IIII)V
    .locals 1
    .parameter "canvas"
    .parameter "scrollBar"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3349
    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-gez v0, :cond_0

    .line 3350
    iget v0, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr p4, v0

    .line 3352
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    add-int/2addr v0, p4

    invoke-virtual {p2, p3, v0, p5, p6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 3353
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 3354
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 5
    .parameter "focused"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v4, "webview"

    .line 6042
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 6043
    const-string/jumbo v0, "webview"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT focusChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6046
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v0, v0, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v3, v0, :cond_1

    .line 6047
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6049
    :cond_1
    if-eqz p1, :cond_4

    .line 6052
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6053
    instance-of v0, p0, Landroid/webkit/HtmlComposerView;

    if-eqz v0, :cond_3

    .line 6054
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6055
    const-string/jumbo v0, "webview"

    const-string/jumbo v0, "setActive, has Focus() mDrawCursorRing set to false for HTMLComposer only"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6060
    :goto_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_2

    .line 6061
    invoke-direct {p0, v3, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 6081
    :cond_2
    :goto_1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/AbsoluteLayout;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 6082
    return-void

    .line 6058
    :cond_3
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    goto :goto_0

    .line 6071
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-nez v0, :cond_6

    .line 6072
    iput-boolean v2, p0, Landroid/webkit/WebView;->mDrawCursorRing:Z

    .line 6073
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_5

    .line 6074
    invoke-direct {p0, v2, v2, v3}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 6076
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 6078
    :cond_6
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotKeyDown:Z

    goto :goto_1
.end method

.method public onGlobalFocusChanged(Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .parameter "oldFocus"
    .parameter "newFocus"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5494
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 12
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v11, 0x16

    const/16 v10, 0x13

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5093
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 5094
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "keyDown at "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", unicode="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5098
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    move v0, v3

    .line 5227
    :goto_0
    return v0

    .line 5114
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    move v0, v3

    .line 5116
    goto :goto_0

    .line 5119
    :cond_3
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3c

    if-ne p1, v0, :cond_5

    .line 5121
    :cond_4
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5122
    iput-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5128
    :cond_5
    :goto_1
    if-lt p1, v10, :cond_e

    if-gt p1, v11, :cond_e

    .line 5130
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5131
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5132
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v0, v2

    .line 5133
    goto :goto_0

    .line 5123
    :cond_6
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_5

    .line 5124
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    goto :goto_1

    .line 5135
    :cond_7
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_c

    .line 5136
    const/16 v0, 0x15

    if-ne p1, v0, :cond_8

    move v7, v9

    .line 5138
    .local v7, xRate:I
    :goto_2
    if-ne p1, v10, :cond_a

    move v8, v9

    .line 5140
    .local v8, yRate:I
    :goto_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 5141
    .local v6, multiplier:I
    mul-int v0, v7, v6

    int-to-float v0, v0

    mul-int v1, v8, v6

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/webkit/WebView;->moveSelection(FF)V

    move v0, v2

    .line 5142
    goto :goto_0

    .line 5136
    .end local v6           #multiplier:I
    .end local v7           #xRate:I
    .end local v8           #yRate:I
    :cond_8
    if-ne p1, v11, :cond_9

    move v7, v2

    goto :goto_2

    :cond_9
    move v7, v3

    goto :goto_2

    .line 5138
    .restart local v7       #xRate:I
    :cond_a
    const/16 v0, 0x14

    if-ne p1, v0, :cond_b

    move v8, v2

    goto :goto_3

    :cond_b
    move v8, v3

    goto :goto_3

    .line 5144
    .end local v7           #xRate:I
    :cond_c
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 5145
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->keyCodeToSoundsEffect(I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->playSoundEffect(I)V

    move v0, v2

    .line 5146
    goto/16 :goto_0

    :cond_d
    move v0, v3

    .line 5149
    goto/16 :goto_0

    .line 5152
    :cond_e
    const/16 v0, 0x17

    if-eq p1, v0, :cond_f

    const/16 v0, 0x42

    if-ne p1, v0, :cond_13

    .line 5153
    :cond_f
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 5154
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 5155
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v0, :cond_10

    move v0, v2

    .line 5156
    goto/16 :goto_0

    .line 5158
    :cond_10
    iput-boolean v2, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5159
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x72

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5163
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v2

    :goto_4
    invoke-direct {p0, v0, v2, v2}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    move v0, v2

    .line 5164
    goto/16 :goto_0

    :cond_11
    move v0, v3

    .line 5163
    goto :goto_4

    :cond_12
    move v0, v3

    .line 5167
    goto/16 :goto_0

    .line 5170
    :cond_13
    const/16 v0, 0x3b

    if-eq p1, v0, :cond_14

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_14

    .line 5173
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    .line 5174
    iput-boolean v3, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5177
    :cond_14
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNavDump()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 5178
    packed-switch p1, :pswitch_data_0

    .line 5196
    :cond_15
    :goto_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 5199
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x76

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v3

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v4

    invoke-virtual {v0, v1, v3, v4}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5203
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5205
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5206
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 5207
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 5180
    :pswitch_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->dumpDisplayTree()V

    goto :goto_5

    .line 5184
    :pswitch_1
    const/16 v0, 0xc

    if-ne p1, v0, :cond_16

    move v0, v2

    :goto_6
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpDomTree(Z)V

    goto :goto_5

    :cond_16
    move v0, v3

    goto :goto_6

    .line 5188
    :pswitch_2
    const/16 v0, 0xe

    if-ne p1, v0, :cond_17

    move v0, v2

    :goto_7
    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->dumpRenderTree(Z)V

    goto :goto_5

    :cond_17
    move v0, v3

    goto :goto_7

    .line 5191
    :pswitch_3
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeInstrumentReport()V

    move v0, v2

    .line 5192
    goto/16 :goto_0

    .line 5209
    :cond_18
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasFocusNode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5212
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5213
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 5214
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    .line 5215
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p2}, Landroid/webkit/WebTextView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 5220
    :cond_19
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 5222
    :cond_1a
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5224
    invoke-virtual {p0}, Landroid/webkit/WebView;->drawSelectionControl()V

    move v0, v2

    .line 5227
    goto/16 :goto_0

    .line 5178
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onKeyMultiple(IILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "repeatCount"
    .parameter "event"

    .prologue
    .line 5081
    if-nez p1, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5083
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x67

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5084
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x68

    invoke-virtual {v0, v1, p3}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5086
    const/4 v0, 0x1

    .line 5088
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 10
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 5236
    sget-boolean v4, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v4, :cond_0

    .line 5237
    const-string/jumbo v4, "webview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "keyUp at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", unicode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5241
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_1

    move v4, v9

    .line 5333
    :goto_0
    return v4

    .line 5246
    :cond_1
    const/4 v4, 0x5

    if-ne p1, v4, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5247
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v2

    .line 5248
    .local v2, text:Ljava/lang/String;
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_2

    const-string/jumbo v4, "tel:"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5250
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5251
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v8

    .line 5252
    goto :goto_0

    .line 5259
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #text:Ljava/lang/String;
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4, p2}, Landroid/webkit/CallbackProxy;->uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v4, v9

    .line 5260
    goto :goto_0

    .line 5263
    :cond_4
    const/16 v4, 0x3b

    if-eq p1, v4, :cond_5

    const/16 v4, 0x3c

    if-ne p1, v4, :cond_6

    .line 5265
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 5266
    iput-boolean v9, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    .line 5273
    :cond_6
    const/16 v4, 0x13

    if-lt p1, v4, :cond_9

    const/16 v4, 0x16

    if-gt p1, v4, :cond_9

    .line 5275
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusIsPlugin()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 5276
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v4, v5, v9}, Landroid/webkit/WebView;->letPluginHandleNavKey(IJZ)V

    move v4, v8

    .line 5277
    goto :goto_0

    .line 5267
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 5268
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    move v4, v8

    .line 5269
    goto :goto_0

    :cond_8
    move v4, v9

    .line 5281
    goto :goto_0

    .line 5284
    :cond_9
    const/16 v4, 0x17

    if-eq p1, v4, :cond_a

    const/16 v4, 0x42

    if-ne p1, v4, :cond_11

    .line 5286
    :cond_a
    iget-object v4, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v5, 0x72

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 5287
    iput-boolean v9, p0, Landroid/webkit/WebView;->mGotCenterDown:Z

    .line 5289
    iget-boolean v4, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v4, :cond_c

    .line 5290
    iget-boolean v4, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v4, :cond_b

    .line 5291
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 5292
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_1
    move v4, v8

    .line 5298
    goto/16 :goto_0

    .line 5294
    :cond_b
    iput-boolean v8, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5295
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 5296
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_1

    .line 5302
    :cond_c
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 5305
    .local v3, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v3}, Landroid/webkit/WebView;->nativeCursorIntersects(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_d

    move v4, v9

    .line 5306
    goto/16 :goto_0

    .line 5308
    :cond_d
    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v0

    .line 5309
    .local v0, data:Landroid/webkit/WebViewCore$CursorData;
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x87

    invoke-virtual {v4, v5, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 5310
    invoke-virtual {p0, v9}, Landroid/webkit/WebView;->playSoundEffect(I)V

    .line 5311
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 5312
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 5313
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 5314
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v4

    if-eqz v4, :cond_e

    .line 5315
    iget-object v4, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v4}, Landroid/webkit/WebTextView;->setDefaultSelection()V

    :cond_e
    move v4, v8

    .line 5317
    goto/16 :goto_0

    .line 5319
    :cond_f
    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 5320
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetFollowedLink(Z)V

    .line 5321
    iget-object v4, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 5322
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x76

    iget v6, v0, Landroid/webkit/WebViewCore$CursorData;->mFrame:I

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    :cond_10
    move v4, v8

    .line 5325
    goto/16 :goto_0

    .line 5329
    .end local v0           #data:Landroid/webkit/WebViewCore$CursorData;
    .end local v3           #visibleRect:Landroid/graphics/Rect;
    :cond_11
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorWantsKeyEvents()Z

    move-result v4

    if-nez v4, :cond_12

    .line 5331
    :cond_12
    iget-object v4, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v5, 0x68

    invoke-virtual {v4, v5, p2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    move v4, v8

    .line 5333
    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 9053
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->onMeasure(II)V

    .line 9055
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 9056
    .local v2, heightMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 9057
    .local v3, heightSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 9058
    .local v6, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 9060
    .local v7, widthSize:I
    move v4, v3

    .line 9061
    .local v4, measuredHeight:I
    move v5, v7

    .line 9064
    .local v5, measuredWidth:I
    iget v8, p0, Landroid/webkit/WebView;->mContentHeight:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v0

    .line 9065
    .local v0, contentHeight:I
    iget v8, p0, Landroid/webkit/WebView;->mContentWidth:I

    invoke-virtual {p0, v8}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v1

    .line 9069
    .local v1, contentWidth:I
    const/high16 v8, 0x4000

    if-eq v2, v8, :cond_2

    .line 9070
    iput-boolean v10, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 9071
    move v4, v0

    .line 9072
    const/high16 v8, -0x8000

    if-ne v2, v8, :cond_0

    .line 9075
    if-le v4, v3, :cond_0

    .line 9076
    move v4, v3

    .line 9077
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    .line 9083
    :cond_0
    :goto_0
    iget v8, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v8, :cond_1

    .line 9084
    iget-boolean v8, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    invoke-direct {p0, v8}, Landroid/webkit/WebView;->nativeSetHeightCanMeasure(Z)V

    .line 9087
    :cond_1
    if-nez v6, :cond_3

    .line 9088
    iput-boolean v10, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    .line 9089
    move v5, v1

    .line 9094
    :goto_1
    monitor-enter p0

    .line 9095
    :try_start_0
    invoke-virtual {p0, v5, v4}, Landroid/webkit/WebView;->setMeasuredDimension(II)V

    .line 9096
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9097
    return-void

    .line 9081
    :cond_2
    iput-boolean v9, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    goto :goto_0

    .line 9091
    :cond_3
    iput-boolean v9, p0, Landroid/webkit/WebView;->mWidthCanMeasure:Z

    goto :goto_1

    .line 9096
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 10
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "clampedX"
    .parameter "clampedY"

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 3359
    iput-boolean v9, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3360
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v0

    .line 3361
    .local v0, maxX:I
    invoke-direct {p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v1

    .line 3362
    .local v1, maxY:I
    if-nez v0, :cond_8

    .line 3364
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result p1

    .line 3368
    :cond_0
    :goto_0
    if-ltz p2, :cond_1

    if-le p2, v1, :cond_2

    .line 3369
    :cond_1
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    .line 3372
    :cond_2
    iget v2, p0, Landroid/view/View;->mScrollX:I

    .line 3373
    .local v2, oldX:I
    iget v3, p0, Landroid/view/View;->mScrollY:I

    .line 3374
    .local v3, oldY:I
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    .line 3378
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-eqz v6, :cond_7

    iget v6, p0, Landroid/view/View;->mScrollY:I

    if-ne v3, v6, :cond_7

    iget v6, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, v6, :cond_7

    .line 3381
    if-lez v0, :cond_4

    .line 3382
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    add-int v4, v2, v6

    .line 3383
    .local v4, pulledToX:I
    if-gez v4, :cond_a

    .line 3384
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3385
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3386
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3394
    :cond_3
    :goto_1
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    .line 3397
    .end local v4           #pulledToX:I
    :cond_4
    if-gtz v1, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->getOverScrollMode()I

    move-result v6

    if-nez v6, :cond_7

    .line 3398
    :cond_5
    iget v6, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    add-int v5, v3, v6

    .line 3399
    .local v5, pulledToY:I
    if-gez v5, :cond_b

    .line 3400
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3401
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3402
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    .line 3410
    :cond_6
    :goto_2
    iput v9, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    .line 3413
    .end local v5           #pulledToY:I
    :cond_7
    return-void

    .line 3365
    .end local v2           #oldX:I
    .end local v3           #oldY:I
    :cond_8
    if-ltz p1, :cond_9

    if-le p1, v0, :cond_0

    .line 3366
    :cond_9
    iput-boolean v6, p0, Landroid/webkit/WebView;->mInOverScrollMode:Z

    goto :goto_0

    .line 3388
    .restart local v2       #oldX:I
    .restart local v3       #oldY:I
    .restart local v4       #pulledToX:I
    :cond_a
    if-le v4, v0, :cond_3

    .line 3389
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaX:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3390
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_3

    .line 3391
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_1

    .line 3404
    .end local v4           #pulledToX:I
    .restart local v5       #pulledToY:I
    :cond_b
    if-le v5, v1, :cond_6

    .line 3405
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    iget v7, p0, Landroid/webkit/WebView;->mOverscrollDeltaY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EdgeGlow;->onPull(F)V

    .line 3406
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->isFinished()Z

    move-result v6

    if-nez v6, :cond_6

    .line 3407
    iget-object v6, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    invoke-virtual {v6}, Landroid/widget/EdgeGlow;->onRelease()V

    goto :goto_2
.end method

.method onPageFinished(Ljava/lang/String;)V
    .locals 4
    .parameter "url"

    .prologue
    .line 3898
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3902
    iget-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollX:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/view/View;->mScrollY:I

    if-nez v0, :cond_0

    .line 3904
    const/4 v0, 0x0

    iget v1, p0, Landroid/webkit/WebView;->mYDistanceToSlideTitleOffScreen:I

    const/4 v2, 0x1

    const/16 v3, 0x1f4

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    .line 3907
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebView;->mPageThatNeedsToSlideTitleBarOffScreen:Ljava/lang/String;

    .line 3909
    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 3526
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-nez v0, :cond_0

    .line 3527
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3528
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8f

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3530
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 3537
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 3538
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mIsPaused:Z

    .line 3539
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x90

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3541
    :cond_0
    return-void
.end method

.method onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 8
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string/jumbo v7, "username"

    const-string/jumbo v6, "password"

    const-string v5, "host"

    .line 1661
    const/4 v1, 0x0

    .line 1662
    .local v1, rVal:Z
    if-nez p4, :cond_0

    .line 1664
    iget-object v3, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v3, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1710
    :goto_0
    return v1

    .line 1666
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1668
    .local v2, remember:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1670
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1671
    iput-object p4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1673
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1675
    .local v0, neverRemember:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "host"

    invoke-virtual {v3, v5, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "username"

    invoke-virtual {v3, v7, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "password"

    invoke-virtual {v3, v6, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1678
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1680
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1040354

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104035e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104035f

    new-instance v5, Landroid/webkit/WebView$7;

    invoke-direct {v5, p0, p4}, Landroid/webkit/WebView$7;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040360

    new-instance v5, Landroid/webkit/WebView$6;

    invoke-direct {v5, p0, v2}, Landroid/webkit/WebView$6;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1040361

    new-instance v5, Landroid/webkit/WebView$5;

    invoke-direct {v5, p0, v0}, Landroid/webkit/WebView$5;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Landroid/webkit/WebView$4;

    invoke-direct {v4, p0, p4}, Landroid/webkit/WebView$4;-><init>(Landroid/webkit/WebView;Landroid/os/Message;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1708
    const/4 v1, 0x1

    goto/16 :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 6
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"

    .prologue
    .line 6245
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_0

    .line 6247
    :goto_0
    return-void

    .line 6246
    :cond_0
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->onScrollChangedAnchorDiff(IIIIZ)V

    goto :goto_0
.end method

.method protected onScrollChangedAnchorDiff(IIIIZ)V
    .locals 4
    .parameter "l"
    .parameter "t"
    .parameter "oldl"
    .parameter "oldt"
    .parameter "needAnchorDiff"

    .prologue
    const/4 v3, 0x0

    .line 6250
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onScrollChanged(IIII)V

    .line 6251
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 6254
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    .line 6255
    .local v0, titleHeight:I
    sub-int v1, v0, p2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v2, v0, p4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 6256
    invoke-direct {p0, p5}, Landroid/webkit/WebView;->sendViewSizeZoom(Z)Z

    .line 6258
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 6260
    iget-object v1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/webkit/OnPinchZoomListener;->onScrollChanged(IIII)V

    .line 6263
    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 9
    .parameter "w"
    .parameter "h"
    .parameter "ow"
    .parameter "oh"

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 6165
    const-string/jumbo v0, "webview"

    const-string v1, "OnSizeChanged: Enter "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6167
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    if-eqz v0, :cond_1

    if-ne p1, p3, :cond_1

    .line 6168
    iput-boolean v4, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    .line 6240
    :cond_0
    :goto_0
    return-void

    .line 6172
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6173
    iget-object v0, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 6175
    :cond_2
    sput-boolean v4, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 6176
    sput-boolean v4, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 6179
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->onSizeChanged(IIII)V

    .line 6181
    iget v0, p0, Landroid/webkit/WebView;->mZoomScale:F

    cmpl-float v0, v0, v8

    if-nez v0, :cond_3

    .line 6183
    iput v8, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6184
    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6185
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6186
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6192
    :cond_3
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    sget v1, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    div-float/2addr v0, v1

    float-to-int v7, v0

    .line 6193
    .local v7, newMaxViewportWidth:I
    sget v0, Landroid/webkit/WebView;->sMaxViewportWidth:I

    if-le v7, v0, :cond_4

    .line 6194
    sput v7, Landroid/webkit/WebView;->sMaxViewportWidth:I

    .line 6198
    :cond_4
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-nez v0, :cond_5

    .line 6203
    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v1

    int-to-float v1, v1

    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    invoke-virtual {v2}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    :goto_1
    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6206
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    if-lez v0, :cond_5

    .line 6208
    iget v0, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    div-float v6, v0, v1

    .line 6209
    .local v6, initialScale:F
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpl-float v0, v0, v6

    if-lez v0, :cond_5

    .line 6210
    iput v6, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6215
    .end local v6           #initialScale:F
    :cond_5
    invoke-virtual {p0}, Landroid/webkit/WebView;->dismissZoomControl()V

    .line 6224
    iget-boolean v0, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    if-nez v0, :cond_8

    .line 6225
    new-instance v0, Landroid/webkit/WebView$PostScale;

    if-eq p1, p3, :cond_7

    move v1, v3

    :goto_2
    sget-object v2, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    invoke-direct {v0, p0, v1, v2}, Landroid/webkit/WebView$PostScale;-><init>(Landroid/webkit/WebView;ZLandroid/webkit/WebView$ZoomMode;)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->post(Ljava/lang/Runnable;)Z

    .line 6236
    :goto_3
    iget-boolean v0, p0, Landroid/webkit/WebView;->bWebSelectDialogIsUp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    if-eqz v0, :cond_0

    .line 6237
    iget-object v0, p0, Landroid/webkit/WebView;->mWebSelectDialog:Landroid/webkit/WebSelectDialog;

    invoke-virtual {v0}, Landroid/webkit/WebSelectDialog;->onWebViewSizeChanged()V

    goto/16 :goto_0

    .line 6203
    :cond_6
    iget v2, p0, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    goto :goto_1

    :cond_7
    move v1, v4

    .line 6225
    goto :goto_2

    .line 6228
    :cond_8
    if-lez p3, :cond_9

    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float/2addr v0, v1

    cmpg-float v0, v0, v8

    if-gtz v0, :cond_c

    .line 6229
    :cond_9
    iget v1, p0, Landroid/webkit/WebView;->mActualScale:F

    if-eq p1, p3, :cond_a

    move v2, v3

    :goto_4
    if-eq p1, p3, :cond_b

    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    :goto_5
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_3

    :cond_a
    move v2, v4

    goto :goto_4

    :cond_b
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    goto :goto_5

    .line 6231
    :cond_c
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    int-to-float v1, p3

    div-float v1, v0, v1

    if-eq p1, p3, :cond_d

    move v2, v3

    :goto_6
    if-eq p1, p3, :cond_e

    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_ROTATE:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    :goto_7
    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/WebView$ZoomMode;Landroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    goto :goto_3

    :cond_d
    move v2, v4

    goto :goto_6

    :cond_e
    sget-object v0, Landroid/webkit/WebView$ZoomMode;->ZOOM_NORMAL:Landroid/webkit/WebView$ZoomMode;

    move-object v4, v0

    goto :goto_7
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 39
    .parameter "ev"

    .prologue
    .line 6851
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getProgress()I

    move-result v5

    const/16 v6, 0x64

    if-ge v5, v6, :cond_1

    .line 6853
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->pictureReady()Z

    move-result v5

    if-nez v5, :cond_1

    .line 6854
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_0

    .line 6855
    const-string/jumbo v5, "webview"

    const-string/jumbo v6, "onTouchEvent: Warning-> picture is NOT ready! ignore!"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6857
    :cond_0
    const/4 v5, 0x0

    .line 7489
    :goto_0
    return v5

    .line 6861
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mNativeClass:I

    move v5, v0

    if-eqz v5, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isClickable()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->isLongClickable()Z

    move-result v5

    if-nez v5, :cond_3

    .line 6862
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 6865
    :cond_3
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_4

    .line 6866
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6868
    :cond_4
    const/4 v5, 0x2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_6

    .line 6869
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mFirstTouchPosX:F

    move v6, v0

    sub-float v22, v5, v6

    .line 6870
    .local v22, dX:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mFirstTouchPosY:F

    move v6, v0

    sub-float v23, v5, v6

    .line 6871
    .local v23, dY:F
    invoke-static/range {v22 .. v22}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlop:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    invoke-static/range {v23 .. v23}, Ljava/lang/Math;->abs(F)F

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlop:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-gez v5, :cond_6

    .line 6872
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_5

    .line 6873
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onTouchEvent: move event dx = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " and dy = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " too small! ignore!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6874
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6880
    .end local v22           #dX:F
    .end local v23           #dY:F
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebMagnifier;->mbShow:Z

    const/4 v6, 0x1

    if-ne v5, v6, :cond_7

    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-ne v5, v6, :cond_7

    .line 6881
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    .line 6883
    :cond_7
    const/16 v21, 0x0

    .line 6884
    .local v21, consumeEvent:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_8

    .line 6885
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->onWebViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v21

    const/4 v5, 0x1

    move/from16 v0, v21

    move v1, v5

    if-ne v0, v1, :cond_8

    .line 6886
    const/4 v5, 0x1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eq v5, v6, :cond_8

    .line 6887
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6894
    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v27

    .line 6898
    .local v27, eventTime:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    move v5, v0

    if-eqz v5, :cond_16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_16

    .line 6899
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinZoomScale:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMaxZoomScale:F

    move v6, v0

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_15

    .line 6901
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebviewScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 6902
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 6903
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 6904
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    move v5, v0

    if-nez v5, :cond_a

    .line 6905
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6907
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6908
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 6910
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusX()F

    move-result v10

    .line 6911
    .local v10, x:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->getFocusY()F

    move-result v11

    .line 6912
    .local v11, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    and-int/lit16 v7, v5, 0xff

    .line 6913
    .local v7, action:I
    const/4 v5, 0x5

    if-ne v7, v5, :cond_12

    .line 6914
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    .line 6915
    const/4 v7, 0x0

    .line 6940
    :cond_c
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v10, v5

    if-lez v5, :cond_d

    .line 6941
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v10, v5

    .line 6943
    :cond_d
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v5, v5

    cmpl-float v5, v11, v5

    if-lez v5, :cond_e

    .line 6944
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-float v11, v5

    .line 6947
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchX:F

    move v5, v0

    sub-float v29, v5, v10

    .line 6948
    .local v29, fDeltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mLastTouchY:F

    move v5, v0

    sub-float v30, v5, v11

    .line 6949
    .local v30, fDeltaY:F
    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v24, v0

    .line 6950
    .local v24, deltaX:I
    move/from16 v0, v30

    float-to-int v0, v0

    move/from16 v25, v0

    .line 6951
    .local v25, deltaY:I
    float-to-int v5, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v8

    .line 6952
    .local v8, contentX:I
    float-to-int v5, v11

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v6, v0

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v9

    .line 6953
    .local v9, contentY:I
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_f

    .line 6954
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "X, Y Position: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6955
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Content X, Y Position: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ", "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6962
    :cond_f
    if-eqz v21, :cond_17

    .line 6968
    const/16 v5, 0x8

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 6969
    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-nez v5, :cond_11

    .line 6970
    const/4 v5, 0x1

    if-ne v5, v7, :cond_11

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_11

    .line 6971
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 6972
    .local v37, ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 6973
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 6974
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 6975
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 6976
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 6977
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 6978
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 6979
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 6981
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6984
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_11
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6916
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    .end local v24           #deltaX:I
    .end local v25           #deltaY:I
    .end local v29           #fDeltaX:F
    .end local v30           #fDeltaY:F
    :cond_12
    const/4 v5, 0x6

    if-ne v7, v5, :cond_13

    .line 6918
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 6919
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    goto/16 :goto_1

    .line 6920
    :cond_13
    const/4 v5, 0x2

    if-ne v7, v5, :cond_c

    .line 6922
    const/4 v5, 0x0

    cmpg-float v5, v10, v5

    if-ltz v5, :cond_14

    const/4 v5, 0x0

    cmpg-float v5, v11, v5

    if-gez v5, :cond_c

    .line 6923
    :cond_14
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6928
    .end local v7           #action:I
    .end local v10           #x:F
    .end local v11           #y:F
    :cond_15
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6931
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 6932
    .restart local v7       #action:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 6933
    .restart local v10       #x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .restart local v11       #y:F
    goto/16 :goto_1

    .line 6987
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    .restart local v24       #deltaX:I
    .restart local v25       #deltaY:I
    .restart local v29       #fDeltaX:F
    .restart local v30       #fDeltaY:F
    :cond_17
    packed-switch v7, :pswitch_data_0

    .line 7489
    .end local v7           #action:I
    .end local v8           #contentX:I
    .end local v9           #contentY:I
    :cond_18
    :goto_2
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 6989
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_0
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 6990
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6992
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosX:F

    .line 6993
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosY:F

    .line 6996
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_18

    .line 7000
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_1d

    .line 7004
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 7005
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7006
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7007
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7042
    :cond_19
    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_29

    .line 7044
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    const-wide/16 v12, 0xc8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7046
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    const-wide/16 v12, 0x3e8

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7048
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_24

    .line 7049
    :cond_1b
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7072
    :cond_1c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_29

    .line 7073
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7074
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7075
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7076
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7077
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7078
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7079
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_28

    .line 7081
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7082
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7083
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7084
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7085
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 7008
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-eqz v5, :cond_20

    .line 7009
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7010
    mul-int v5, v24, v24

    mul-int v6, v25, v25

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mDoubleTapSlopSquare:I

    move v6, v0

    if-ge v5, v6, :cond_1e

    .line 7011
    const/4 v5, 0x6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_3

    .line 7014
    :cond_1e
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    .line 7015
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7016
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_1f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_1f

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_5
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    goto/16 :goto_3

    :cond_1f
    const/4 v5, 0x0

    goto :goto_5

    .line 7021
    :cond_20
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 7022
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7023
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_23

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->hitFocusedPlugin(II)Z

    move-result v5

    :goto_6
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    .line 7026
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x62

    invoke-virtual {v5, v6}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 7028
    sget-boolean v5, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v5, :cond_21

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    const-wide/16 v12, 0x3e8

    cmp-long v5, v5, v12

    if-gez v5, :cond_21

    .line 7029
    const v5, 0x111d6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchUpTime:J

    move-wide v13, v0

    sub-long v13, v27, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    const/4 v12, 0x1

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 7032
    :cond_21
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_19

    .line 7033
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 7034
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeStartSelection(II)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSelectionStarted:Z

    .line 7035
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_22

    .line 7036
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "select="

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v12, ","

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_3

    .line 7023
    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 7050
    :cond_24
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    move v5, v0

    if-eqz v5, :cond_27

    .line 7053
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mForwardTouchEvents_others:Z

    move v5, v0

    if-eqz v5, :cond_25

    .line 7054
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    .line 7064
    :goto_7
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_1c

    .line 7065
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "mPreventDefault = "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v12, v0

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 7056
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    move-object v5, v0

    invoke-virtual {v5, v8, v9}, Landroid/webkit/ViewManager;->hitTest(II)Landroid/webkit/ViewManager$ChildView;

    move-result-object v5

    if-nez v5, :cond_26

    .line 7059
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto :goto_7

    .line 7061
    :cond_26
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto :goto_7

    .line 7069
    :cond_27
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mPreventDefault:I

    goto/16 :goto_4

    .line 7088
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7089
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_29

    .line 7090
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v8, 0xa

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .end local v8           #contentX:I
    .end local v9           #contentY:I
    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    move v7, v0

    .end local v7           #action:I
    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7096
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_29
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    goto/16 :goto_2

    .line 7100
    .restart local v7       #action:I
    .restart local v8       #contentX:I
    .restart local v9       #contentY:I
    :pswitch_1
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_18

    .line 7103
    const/16 v31, 0x0

    .line 7106
    .local v31, firstMove:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2c

    .line 7108
    const/16 v38, 0x1

    .line 7115
    .local v38, touchSlopSquare:Z
    :goto_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-nez v5, :cond_2a

    if-eqz v38, :cond_2a

    .line 7116
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7117
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7118
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 7119
    const/16 v31, 0x1

    .line 7120
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x6

    if-ne v5, v6, :cond_2a

    .line 7121
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7125
    :cond_2a
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_2f

    if-nez v31, :cond_2b

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastSentTouchTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    move v12, v0

    int-to-long v12, v12

    cmp-long v5, v5, v12

    if-lez v5, :cond_2f

    .line 7127
    :cond_2b
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastSentTouchTime:J

    .line 7128
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7129
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7130
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7131
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7132
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7133
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7134
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_2e

    .line 7135
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7136
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7137
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_2

    .line 7112
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .end local v38           #touchSlopSquare:Z
    :cond_2c
    mul-int v5, v24, v24

    mul-int v6, v25, v25

    add-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchSlopSquare:I

    move v6, v0

    if-lt v5, v6, :cond_2d

    const/4 v5, 0x1

    move/from16 v38, v5

    .restart local v38       #touchSlopSquare:Z
    :goto_9
    goto/16 :goto_8

    .end local v38           #touchSlopSquare:Z
    :cond_2d
    const/4 v5, 0x0

    move/from16 v38, v5

    goto :goto_9

    .line 7140
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    .restart local v38       #touchSlopSquare:Z
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7141
    if-eqz v31, :cond_2f

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_2f

    .line 7142
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v6, v0

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v6, v12, v7, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    move v7, v0

    .end local v7           #action:I
    int-to-long v12, v7

    invoke-virtual {v5, v6, v12, v13}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7147
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x7

    if-eq v5, v6, :cond_18

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_18

    .line 7153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_30

    .line 7154
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mTouchMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7159
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7162
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7163
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_32

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectionStarted:Z

    move v5, v0

    if-eqz v5, :cond_32

    .line 7164
    sget-boolean v5, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v5, :cond_31

    .line 7165
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "extend="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7167
    :cond_31
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeExtendSelection(II)V

    .line 7168
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_2

    .line 7172
    :cond_32
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_36

    .line 7174
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_18

    .line 7177
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_33

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_34

    .line 7181
    :cond_33
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    goto/16 :goto_2

    .line 7188
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebviewScaleGestureDetector;->isInProgress()Z

    move-result v5

    if-nez v5, :cond_35

    .line 7190
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 7191
    .local v19, ax:I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 7192
    .local v20, ay:I
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_3c

    .line 7193
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7194
    if-lez v24, :cond_3b

    const/4 v5, 0x1

    :goto_a
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    .line 7201
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_35
    :goto_b
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    .line 7202
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7203
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7204
    const/16 v29, 0x0

    .line 7205
    const/16 v30, 0x0

    .line 7206
    const/16 v24, 0x0

    .line 7207
    const/16 v25, 0x0

    .line 7209
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->startDrag()V

    .line 7212
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    if-eqz v5, :cond_37

    .line 7213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mDragTrackerHandler:Landroid/webkit/WebView$DragTrackerHandler;

    move-object v5, v0

    invoke-virtual {v5, v10, v11}, Landroid/webkit/WebView$DragTrackerHandler;->dragTo(FF)V

    .line 7217
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_3e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3e

    .line 7233
    :cond_38
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_3f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    .line 7248
    :cond_39
    :goto_d
    const/16 v26, 0x0

    .line 7249
    .local v26, done:Z
    const/16 v32, 0x0

    .line 7250
    .local v32, keepScrollBarsVisible:Z
    invoke-static/range {v29 .. v29}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_40

    invoke-static/range {v30 .. v30}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpg-float v5, v5, v6

    if-gez v5, :cond_40

    .line 7251
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7252
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7253
    const/16 v26, 0x1

    move/from16 v32, v26

    .line 7312
    :goto_e
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->doDrag(II)V

    .line 7314
    if-eqz v32, :cond_18

    .line 7315
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mHeldMotionless:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3a

    .line 7316
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7317
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7320
    :cond_3a
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->awakenScrollBars(IZ)Z

    .line 7324
    if-nez v26, :cond_4d

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 7194
    .end local v26           #done:Z
    .end local v32           #keepScrollBarsVisible:Z
    .restart local v19       #ax:I
    .restart local v20       #ay:I
    :cond_3b
    const/4 v5, 0x0

    goto/16 :goto_a

    .line 7195
    :cond_3c
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_35

    .line 7196
    const/4 v5, 0x4

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7197
    if-lez v25, :cond_3d

    const/4 v5, 0x1

    :goto_f
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mSnapPositive:Z

    goto/16 :goto_b

    :cond_3d
    const/4 v5, 0x0

    goto :goto_f

    .line 7224
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_3e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    add-int v5, v5, v24

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v35

    .line 7226
    .local v35, newScrollX:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v5, v0

    sub-int v33, v35, v5

    .line 7227
    .local v33, newDeltaX:I
    move/from16 v0, v24

    move/from16 v1, v33

    if-eq v0, v1, :cond_38

    .line 7228
    move/from16 v24, v33

    .line 7229
    move/from16 v0, v33

    int-to-float v0, v0

    move/from16 v29, v0

    goto/16 :goto_c

    .line 7240
    .end local v33           #newDeltaX:I
    .end local v35           #newScrollX:I
    :cond_3f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    add-int v5, v5, v25

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v36

    .line 7242
    .local v36, newScrollY:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v5, v0

    sub-int v34, v36, v5

    .line 7243
    .local v34, newDeltaY:I
    move/from16 v0, v25

    move/from16 v1, v34

    if-eq v0, v1, :cond_39

    .line 7244
    move/from16 v25, v34

    .line 7245
    move/from16 v0, v34

    int-to-float v0, v0

    move/from16 v30, v0

    goto/16 :goto_d

    .line 7255
    .end local v34           #newDeltaY:I
    .end local v36           #newScrollY:I
    .restart local v26       #done:Z
    .restart local v32       #keepScrollBarsVisible:Z
    :cond_40
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_43

    .line 7256
    :cond_41
    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v19

    .line 7257
    .restart local v19       #ax:I
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(I)I

    move-result v20

    .line 7258
    .restart local v20       #ay:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_48

    .line 7260
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_42

    const/16 v5, 0x50

    move/from16 v0, v20

    move v1, v5

    if-le v0, v1, :cond_42

    .line 7262
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7265
    :cond_42
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_47

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_43

    .line 7269
    :goto_10
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7286
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_43
    :goto_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    if-eqz v5, :cond_44

    .line 7287
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    and-int/lit8 v5, v5, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4b

    .line 7288
    const/16 v25, 0x0

    .line 7293
    :cond_44
    :goto_12
    or-int v5, v24, v25

    if-eqz v5, :cond_4c

    .line 7294
    if-eqz v24, :cond_45

    .line 7295
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7297
    :cond_45
    if-eqz v25, :cond_46

    .line 7298
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7300
    :cond_46
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7308
    :goto_13
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchTime:J

    .line 7309
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/WebView;->mUserScroll:Z

    goto/16 :goto_e

    .line 7265
    .restart local v19       #ax:I
    .restart local v20       #ay:I
    :cond_47
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    move/from16 v0, v24

    move v1, v5

    if-le v0, v1, :cond_43

    goto :goto_10

    .line 7273
    :cond_48
    move/from16 v0, v19

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v20

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_49

    const/16 v5, 0x50

    move/from16 v0, v19

    move v1, v5

    if-le v0, v1, :cond_49

    .line 7275
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    .line 7278
    :cond_49
    move/from16 v0, v20

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x3fc0

    move/from16 v0, v19

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    cmpl-float v5, v5, v6

    if-lez v5, :cond_43

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSnapPositive:Z

    move v5, v0

    if-eqz v5, :cond_4a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    neg-int v5, v5

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_43

    .line 7282
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mSnapScrollMode:I

    move v5, v0

    or-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mSnapScrollMode:I

    goto/16 :goto_11

    .line 7278
    :cond_4a
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mMinLockSnapReverseDistance:I

    move v5, v0

    move/from16 v0, v25

    move v1, v5

    if-le v0, v1, :cond_43

    goto :goto_14

    .line 7290
    .end local v19           #ax:I
    .end local v20           #ay:I
    :cond_4b
    const/16 v24, 0x0

    goto/16 :goto_12

    .line 7304
    :cond_4c
    move v0, v10

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchX:F

    .line 7305
    move v0, v11

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastTouchY:F

    .line 7306
    const/16 v32, 0x1

    goto :goto_13

    .line 7324
    :cond_4d
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 7330
    .end local v26           #done:Z
    .end local v31           #firstMove:Z
    .end local v32           #keepScrollBarsVisible:Z
    .end local v38           #touchSlopSquare:Z
    .restart local v7       #action:I
    :pswitch_2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosX:F

    .line 7331
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mFirstTouchPosY:F

    .line 7333
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebView;->textSelectionTouchEvent(Landroid/view/MotionEvent;IIIFF)Z

    move-result v5

    if-eq v12, v5, :cond_18

    .line 7338
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->shouldForwardTouchEvent()Z

    move-result v5

    if-eqz v5, :cond_4f

    .line 7339
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7340
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move v0, v7

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7341
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7342
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7343
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7344
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7345
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_4e

    .line 7346
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7347
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7349
    :cond_4e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 7351
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_4f
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/webkit/WebView;->mLastTouchUpTime:J

    .line 7352
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    packed-switch v5, :pswitch_data_1

    .line 7475
    .end local v7           #action:I
    :cond_50
    :goto_15
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->stopTouch()V

    goto/16 :goto_2

    .line 7355
    .restart local v7       #action:I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_15

    .line 7360
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7361
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7362
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v5

    if-nez v5, :cond_51

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_53

    .line 7363
    :cond_51
    new-instance v37, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v37 .. v37}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7364
    .restart local v37       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x200

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7365
    move v0, v8

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7366
    move v0, v9

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7367
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v5

    move v0, v5

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7368
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    move v0, v5

    move-object/from16 v1, v37

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7369
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v5, v0

    if-eqz v5, :cond_52

    .line 7370
    move v0, v10

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7371
    move v0, v11

    move-object/from16 v1, v37

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7373
    :cond_52
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto :goto_15

    .line 7374
    .end local v37           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_53
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_50

    .line 7375
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doDoubleTap()V

    .line 7376
    const/4 v5, 0x7

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mTouchMode:I

    goto/16 :goto_15

    .line 7382
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7384
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mConfirmMove:Z

    move v5, v0

    if-eqz v5, :cond_57

    .line 7385
    const-string/jumbo v5, "webview"

    const-string v6, "Miss a drag as we are waiting for WebCore\'s response for touch down."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7387
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_56

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v5

    if-gtz v5, :cond_54

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v5

    if-lez v5, :cond_56

    .line 7391
    :cond_54
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7395
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 7398
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7425
    :pswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7426
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v6, 0x9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 7429
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/webkit/WebView;->mLastTouchTime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-gtz v5, :cond_5b

    .line 7430
    .end local v7           #action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    if-nez v5, :cond_55

    .line 7431
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Got null mVelocityTracker when mPreventDefault = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mPreventDefault:I

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mDeferTouchProcess = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mDeferTouchProcess:Z

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7437
    move-object/from16 v0, p0

    move v1, v10

    move v2, v11

    move-wide/from16 v3, v27

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 7440
    :cond_55
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 7444
    const/4 v5, 0x3

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7445
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doFling()V

    goto/16 :goto_15

    .line 7405
    .restart local v7       #action:I
    :cond_56
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_15

    .line 7409
    :cond_57
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/WebView;->mSelectingText:Z

    move v5, v0

    if-eqz v5, :cond_59

    .line 7410
    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    invoke-direct {v0, v1, v2}, Landroid/webkit/WebView;->nativeHitSelection(II)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 7411
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 7413
    :cond_58
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->selectionDone()V

    goto/16 :goto_15

    .line 7416
    :cond_59
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5a

    .line 7417
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object v5, v0

    const/4 v6, 0x5

    const-wide/16 v7, 0x190

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_15

    .line 7420
    :cond_5a
    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->doShortPress()V

    goto/16 :goto_15

    .line 7448
    .end local v7           #action:I
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    if-eqz v5, :cond_5d

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5d

    .line 7449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Landroid/webkit/OnPinchZoomListener;->doFling(II)Z

    .line 7457
    :cond_5c
    :goto_16
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mHeldMotionless:I

    .line 7458
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7464
    :pswitch_7
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebView;->mLastVelocity:F

    .line 7465
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_15

    .line 7450
    :cond_5d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 7453
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_16

    .line 7470
    .restart local v7       #action:I
    :pswitch_8
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7471
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_15

    .line 7479
    :pswitch_9
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebView;->mTouchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5e

    .line 7480
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    move-object v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v13, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move v14, v0

    const/4 v15, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollX()I

    move-result v16

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->computeMaxScrollY()I

    move-result v18

    invoke-virtual/range {v12 .. v18}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    .line 7482
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->invalidate()V

    .line 7484
    :cond_5e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v8

    move v2, v9

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/WebView;->cancelWebCoreTouchEvent(IIZ)V

    .line 7485
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->cancelTouch()V

    goto/16 :goto_2

    .line 6987
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_9
    .end packed-switch

    .line 7352
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_8
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter "ev"

    .prologue
    const-wide/16 v8, 0xc8

    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v10, " time="

    const-string/jumbo v7, "webview"

    .line 7737
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    .line 7738
    .local v0, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 7739
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageDown(Z)Z

    .line 7740
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    const/4 v3, 0x0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    invoke-virtual {p0, v5}, Landroid/webkit/WebView;->pageUp(Z)Z

    :cond_1
    move v2, v5

    .line 7816
    :goto_0
    return v2

    .line 7743
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_9

    .line 7744
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_3

    move v2, v5

    .line 7745
    goto :goto_0

    .line 7747
    :cond_3
    iput-boolean v5, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7748
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_4

    move v2, v6

    .line 7749
    goto :goto_0

    .line 7751
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v5

    :goto_1
    invoke-direct {p0, v2, v5, v5}, Landroid/webkit/WebView;->nativeRecordButtons(ZZZ)V

    .line 7752
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gtz v2, :cond_5

    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeGetCursorRingBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 7754
    iget-object v2, p0, Landroid/webkit/WebView;->mLastCursorBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->nativeSelectBestAt(Landroid/graphics/Rect;)V

    .line 7756
    :cond_5
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_6

    .line 7757
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent down ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mLastCursorTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/webkit/WebView;->mLastCursorTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7761
    :cond_6
    invoke-virtual {p0}, Landroid/webkit/WebView;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocusFromTouch()Z

    :cond_7
    move v2, v6

    .line 7762
    goto :goto_0

    :cond_8
    move v2, v6

    .line 7751
    goto :goto_1

    .line 7764
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_d

    .line 7766
    iget-object v2, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x72

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 7767
    iput-boolean v6, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    .line 7768
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    .line 7769
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v2, :cond_b

    .line 7770
    iget-boolean v2, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    if-eqz v2, :cond_a

    .line 7771
    invoke-virtual {p0}, Landroid/webkit/WebView;->copySelection()Z

    .line 7772
    invoke-virtual {p0}, Landroid/webkit/WebView;->selectionDone()V

    :goto_2
    move v2, v5

    .line 7778
    goto/16 :goto_0

    .line 7774
    :cond_a
    iput-boolean v5, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 7775
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 7776
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_2

    .line 7780
    :cond_b
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_c

    .line 7781
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent up ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    move v2, v6

    .line 7785
    goto/16 :goto_0

    .line 7787
    :cond_d
    iget-boolean v2, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    if-eqz v2, :cond_f

    iget-boolean v2, p0, Landroid/webkit/WebView;->mShiftIsPressed:Z

    if-nez v2, :cond_f

    .line 7788
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "webview"

    const-string/jumbo v2, "onTrackballEvent gmail quit"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    move v2, v6

    .line 7789
    goto/16 :goto_0

    .line 7791
    :cond_f
    iget-boolean v2, p0, Landroid/webkit/WebView;->mTrackballDown:Z

    if-eqz v2, :cond_11

    .line 7792
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_10

    const-string/jumbo v2, "webview"

    const-string/jumbo v2, "onTrackballEvent down quit"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    move v2, v5

    .line 7793
    goto/16 :goto_0

    .line 7795
    :cond_11
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballUpTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-gez v2, :cond_13

    .line 7796
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "webview"

    const-string/jumbo v2, "onTrackballEvent up timeout quit"

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    move v2, v5

    .line 7797
    goto/16 :goto_0

    .line 7800
    :cond_13
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 7801
    iget-wide v2, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    sub-long v2, v0, v2

    cmp-long v2, v2, v8

    if-lez v2, :cond_15

    .line 7802
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_14

    .line 7803
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " last="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7806
    :cond_14
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballFirstTime:J

    .line 7807
    iput v6, p0, Landroid/webkit/WebView;->mTrackballYMove:I

    iput v6, p0, Landroid/webkit/WebView;->mTrackballXMove:I

    .line 7809
    :cond_15
    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7810
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v2, :cond_16

    .line 7811
    const-string/jumbo v2, "webview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTrackballEvent ev="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time="

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7813
    :cond_16
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsX:F

    .line 7814
    iget v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    add-float/2addr v2, v3

    iput v2, p0, Landroid/webkit/WebView;->mTrackballRemainsY:F

    .line 7815
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->doTrackball(J)V

    move v2, v5

    .line 7816
    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/16 v4, 0x8d

    const/4 v3, 0x0

    .line 5562
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->setActive(Z)V

    .line 5563
    if-eqz p1, :cond_2

    .line 5564
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->setActiveWebView(Landroid/webkit/WebView;)V

    .line 5570
    :goto_0
    const/4 v0, 0x1

    iget-object v1, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    iget-boolean v1, v1, Landroid/webkit/WebMagnifier;->mbShow:Z

    if-ne v0, v1, :cond_0

    .line 5571
    iget-object v0, p0, Landroid/webkit/WebView;->mMagnifier:Landroid/webkit/WebMagnifier;

    invoke-virtual {v0}, Landroid/webkit/WebMagnifier;->hide()V

    .line 5573
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_1

    .line 5575
    if-nez p1, :cond_3

    .line 5578
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x9

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5588
    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->onWindowFocusChanged(Z)V

    .line 5589
    return-void

    .line 5566
    :cond_2
    invoke-static {p0}, Landroid/webkit/JWebCoreJavaBridge;->removeActiveWebView(Landroid/webkit/WebView;)V

    goto :goto_0

    .line 5581
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method public overlayHorizontalScrollbar()Z
    .locals 1

    .prologue
    .line 1745
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .locals 1

    .prologue
    .line 1753
    iget-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    return v0
.end method

.method public pageDown(Z)Z
    .locals 6
    .parameter "bottom"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2436
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v4

    .line 2452
    :goto_0
    return v2

    .line 2439
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2440
    if-eqz p1, :cond_1

    .line 2441
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0}, Landroid/webkit/WebView;->computeRealVerticalScrollRange()I

    move-result v3

    invoke-direct {p0, v2, v3, v5, v4}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2444
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2446
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 2447
    const/16 v2, 0x18

    sub-int v1, v0, v2

    .line 2451
    .local v1, y:I
    :goto_1
    iput-boolean v5, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2452
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v4, v1, v5, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2449
    .end local v1           #y:I
    :cond_2
    div-int/lit8 v1, v0, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2452
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method public pageUp(Z)Z
    .locals 5
    .parameter "top"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2409
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    move v2, v3

    .line 2426
    :goto_0
    return v2

    .line 2412
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 2413
    if-eqz p1, :cond_1

    .line 2415
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v2, v3, v4, v3}, Landroid/webkit/WebView;->pinScrollTo(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2418
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->getHeight()I

    move-result v0

    .line 2420
    .local v0, h:I
    const/16 v2, 0x30

    if-le v0, v2, :cond_2

    .line 2421
    neg-int v2, v0

    add-int/lit8 v1, v2, 0x18

    .line 2425
    .local v1, y:I
    :goto_1
    iput-boolean v4, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 2426
    iget-object v2, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v3, v1, v4, v3}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v2

    goto :goto_0

    .line 2423
    .end local v1           #y:I
    :cond_2
    neg-int v2, v0

    div-int/lit8 v1, v2, 0x2

    .restart local v1       #y:I
    goto :goto_1

    .line 2426
    :cond_3
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->extendScroll(I)Z

    move-result v2

    goto :goto_0
.end method

.method passToJavaScript(Ljava/lang/String;Landroid/view/KeyEvent;)V
    .locals 6
    .parameter "currentText"
    .parameter "event"

    .prologue
    const/16 v5, 0x80

    .line 9231
    new-instance v0, Landroid/webkit/WebViewCore$JSKeyData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$JSKeyData;-><init>()V

    .line 9232
    .local v0, arg:Landroid/webkit/WebViewCore$JSKeyData;
    iput-object p2, v0, Landroid/webkit/WebViewCore$JSKeyData;->mEvent:Landroid/view/KeyEvent;

    .line 9233
    iput-object p1, v0, Landroid/webkit/WebViewCore$JSKeyData;->mCurrentText:Ljava/lang/String;

    .line 9235
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9236
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x73

    iget v3, p0, Landroid/webkit/WebView;->mTextGeneration:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9241
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1, v5}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    .line 9242
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p0}, Landroid/webkit/WebView;->cursorData()Landroid/webkit/WebViewCore$CursorData;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v5, v2, v3, v4}, Landroid/webkit/WebViewCore;->sendMessageDelayed(ILjava/lang/Object;J)V

    .line 9244
    return-void
.end method

.method public pauseTimers()V
    .locals 2

    .prologue
    .line 3497
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    if-nez v0, :cond_0

    .line 3498
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3499
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    .line 3501
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    .line 3502
    return-void
.end method

.method public performLongClick()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4442
    invoke-virtual {p0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-nez v3, :cond_0

    move v3, v5

    .line 4480
    :goto_0
    return v3

    .line 4443
    :cond_0
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_1

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsTextInput()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4445
    invoke-virtual {p0}, Landroid/webkit/WebView;->centerKeyPressOnTextField()V

    .line 4446
    invoke-virtual {p0}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 4450
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4451
    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->performLongClick()Z

    move-result v3

    goto :goto_0

    .line 4448
    :cond_1
    invoke-virtual {p0, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto :goto_1

    .line 4456
    :cond_2
    invoke-super {p0}, Landroid/widget/AbsoluteLayout;->performLongClick()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v6

    .line 4457
    goto :goto_0

    .line 4462
    :cond_3
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-eqz v3, :cond_4

    move v3, v5

    goto :goto_0

    .line 4469
    :cond_4
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v3, :cond_5

    move v3, v5

    goto :goto_0

    .line 4470
    :cond_5
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v1

    .line 4471
    .local v1, x:I
    iget v3, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v3, v3

    iget v4, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    .line 4472
    .local v2, y:I
    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 4473
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_7

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebView;->nativeWordSelection(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4474
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSetExtendSelection()V

    .line 4475
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 4476
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_6

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionStart(Landroid/webkit/WebView;)V

    :cond_6
    move v3, v6

    .line 4477
    goto :goto_0

    .line 4479
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_7
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    move v3, v5

    .line 4480
    goto :goto_0
.end method

.method public postInvalidateDelayed(J)V
    .locals 1
    .parameter "delayMilliseconds"

    .prologue
    .line 11467
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11468
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->postInvalidateDelayed(J)V

    .line 11471
    :cond_0
    return-void
.end method

.method public postInvalidateDelayed(JIIII)V
    .locals 1
    .parameter "delayMilliseconds"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 11476
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11477
    invoke-super/range {p0 .. p6}, Landroid/widget/AbsoluteLayout;->postInvalidateDelayed(JIIII)V

    .line 11480
    :cond_0
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 3
    .parameter "url"
    .parameter "postData"

    .prologue
    .line 2221
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2222
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2223
    new-instance v0, Landroid/webkit/WebViewCore$PostUrlData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$PostUrlData;-><init>()V

    .line 2224
    .local v0, arg:Landroid/webkit/WebViewCore$PostUrlData;
    iput-object p1, v0, Landroid/webkit/WebViewCore$PostUrlData;->mUrl:Ljava/lang/String;

    .line 2225
    iput-object p2, v0, Landroid/webkit/WebViewCore$PostUrlData;->mPostData:[B

    .line 2226
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x84

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 2227
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2229
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2233
    .end local v0           #arg:Landroid/webkit/WebViewCore$PostUrlData;
    :goto_0
    return-void

    .line 2231
    :cond_0
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_0
.end method

.method rebuildWebTextView()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 4893
    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_1

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-eqz v9, :cond_0

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->hasFocus()Z

    move-result v9

    if-nez v9, :cond_1

    .line 4975
    :cond_0
    :goto_0
    return-void

    .line 4896
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    .line 4899
    .local v0, alreadyThere:Z
    iget v9, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v9, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsTextInput()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsReadonlyTextInput()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 4900
    :cond_2
    if-eqz v0, :cond_0

    .line 4901
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->remove()V

    goto :goto_0

    .line 4907
    :cond_3
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    if-nez v9, :cond_4

    .line 4908
    new-instance v9, Landroid/webkit/WebTextView;

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10, p0}, Landroid/webkit/WebTextView;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    .line 4910
    iput v14, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 4912
    :cond_4
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateTextSize()I

    move-result v10

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {v9, v14, v10}, Landroid/webkit/WebTextView;->setTextSize(IF)V

    .line 4914
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 4915
    .local v8, visibleRect:Landroid/graphics/Rect;
    invoke-direct {p0, v8}, Landroid/webkit/WebView;->calcOurContentVisibleRect(Landroid/graphics/Rect;)V

    .line 4918
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateNodeBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 4919
    .local v1, bounds:Landroid/graphics/Rect;
    invoke-direct {p0, v1}, Landroid/webkit/WebView;->contentToViewRect(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 4920
    .local v7, vBox:Landroid/graphics/Rect;
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v10, v7, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebTextView;->setRect(IIII)V

    .line 4921
    invoke-static {v1, v8}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 4922
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 4924
    :cond_5
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateText()Ljava/lang/String;

    move-result-object v6

    .line 4925
    .local v6, text:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePointer()I

    move-result v4

    .line 4927
    .local v4, nodePointer:I
    iput v4, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 4928
    if-eqz v0, :cond_7

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 4936
    if-eqz v6, :cond_6

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeTextGeneration()I

    move-result v9

    iget v10, p0, Landroid/webkit/WebView;->mTextGeneration:I

    if-ne v9, v10, :cond_6

    .line 4938
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4974
    :cond_6
    :goto_1
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9}, Landroid/webkit/WebTextView;->requestFocus()Z

    goto/16 :goto_0

    .line 4941
    :cond_7
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsRtlText()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x5

    :goto_2
    invoke-virtual {v9, v10}, Landroid/webkit/WebTextView;->setGravity(I)V

    .line 4945
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v4}, Landroid/webkit/WebTextView;->setNodePointer(I)V

    .line 4947
    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateName()Ljava/lang/String;

    move-result-object v3

    .line 4948
    .local v3, name:Ljava/lang/String;
    iput-object v3, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 4949
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v3}, Landroid/webkit/WebTextView;->setNodeName(Ljava/lang/String;)V

    .line 4951
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidateType()I

    move-result v10

    invoke-virtual {v9, v10}, Landroid/webkit/WebTextView;->setType(I)V

    .line 4952
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeFocusCandidatePaddingRect()Landroid/graphics/Rect;

    move-result-object v5

    .line 4953
    .local v5, paddingRect:Landroid/graphics/Rect;
    if-eqz v5, :cond_8

    .line 4956
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v10}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v10

    iget v11, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v11}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v11

    iget v12, v5, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0, v12}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v12

    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0, v13}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/webkit/WebTextView;->setPadding(IIII)V

    .line 4962
    :cond_8
    if-nez v6, :cond_a

    .line 4963
    sget-boolean v9, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v9, :cond_9

    .line 4964
    const-string/jumbo v9, "webview"

    const-string/jumbo v10, "rebuildWebTextView null == text"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4966
    :cond_9
    const-string v6, ""

    .line 4968
    :cond_a
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v9, v6}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    .line 4969
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v2

    .line 4970
    .local v2, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v2, :cond_6

    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v9}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 4971
    iget-object v9, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2, v9}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto :goto_1

    .end local v2           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v3           #name:Ljava/lang/String;
    .end local v5           #paddingRect:Landroid/graphics/Rect;
    :cond_b
    move v10, v14

    .line 4941
    goto :goto_2
.end method

.method public reduceWebViewPriority()V
    .locals 1

    .prologue
    .line 4555
    invoke-static {}, Landroid/webkit/WebViewCore;->reducePriority()V

    .line 4556
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4557
    return-void
.end method

.method public refreshPlugins(Z)V
    .locals 0
    .parameter "reloadOpenPages"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4234
    return-void
.end method

.method public registerTiltListener()V
    .locals 3

    .prologue
    .line 6525
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 6527
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/WebView;->motionListener1:Landroid/hardware/motion/MRListener;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/hardware/motion/MotionRecognitionManager;->registerListener(Landroid/hardware/motion/MRListener;I)V

    .line 6528
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->registerTiltListener:Z

    .line 6530
    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .prologue
    .line 2304
    invoke-direct {p0}, Landroid/webkit/WebView;->clearHelpers()V

    .line 2306
    invoke-direct {p0}, Landroid/webkit/WebView;->dismissWebSelectDialog()V

    .line 2307
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2308
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2309
    return-void
.end method

.method public removePackageName(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 4216
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xba

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 4217
    return-void
.end method

.method replaceTextfieldText(IILjava/lang/String;II)V
    .locals 3
    .parameter "oldStart"
    .parameter "oldEnd"
    .parameter "replace"
    .parameter "newStart"
    .parameter "newEnd"

    .prologue
    .line 9221
    new-instance v0, Landroid/webkit/WebViewCore$ReplaceTextData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$ReplaceTextData;-><init>()V

    .line 9222
    .local v0, arg:Landroid/webkit/WebViewCore$ReplaceTextData;
    iput-object p3, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mReplace:Ljava/lang/String;

    .line 9223
    iput p4, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewStart:I

    .line 9224
    iput p5, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mNewEnd:I

    .line 9225
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    .line 9226
    iget v1, p0, Landroid/webkit/WebView;->mTextGeneration:I

    iput v1, v0, Landroid/webkit/WebViewCore$ReplaceTextData;->mTextGeneration:I

    .line 9227
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, p1, p2, v0}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    .line 9228
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 20
    .parameter "child"
    .parameter "rect"
    .parameter "immediate"

    .prologue
    .line 9103
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollX()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScrollY()I

    move-result v17

    sub-int v16, v16, v17

    move-object/from16 v0, p2

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 9106
    new-instance v5, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move v15, v0

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v17, v0

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getWidth()I

    move-result v18

    add-int v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebView;->getVerticalScrollbarWidth()I

    move-result v18

    sub-int v17, v17, v18

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v18, v0

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v19

    add-int v18, v18, v19

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v18

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 9111
    .local v5, content:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/webkit/WebView;->nativeSubtractLayers(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 9112
    iget v15, v5, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v11

    .line 9113
    .local v11, screenTop:I
    iget v15, v5, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v8

    .line 9114
    .local v8, screenBottom:I
    sub-int v6, v8, v11

    .line 9115
    .local v6, height:I
    const/4 v13, 0x0

    .line 9117
    .local v13, scrollYDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v15, v0

    if-le v15, v8, :cond_3

    .line 9118
    div-int/lit8 v7, v6, 0x3

    .line 9119
    .local v7, oneThirdOfScreenHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v15

    mul-int/lit8 v16, v7, 0x2

    move v0, v15

    move/from16 v1, v16

    if-le v0, v1, :cond_2

    .line 9122
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    .line 9132
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_0
    :goto_0
    iget v15, v5, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v9

    .line 9133
    .local v9, screenLeft:I
    iget v15, v5, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    move v1, v15

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v10

    .line 9134
    .local v10, screenRight:I
    sub-int v14, v10, v9

    .line 9135
    .local v14, width:I
    const/4 v12, 0x0

    .line 9137
    .local v12, scrollXDelta:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    if-le v15, v10, :cond_5

    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-le v15, v9, :cond_5

    .line 9138
    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v15

    if-le v15, v14, :cond_4

    .line 9139
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int/2addr v15, v9

    add-int/2addr v12, v15

    .line 9147
    :cond_1
    :goto_1
    or-int v15, v13, v12

    if-eqz v15, :cond_7

    .line 9148
    if-nez p3, :cond_6

    const/4 v15, 0x1

    :goto_2
    const/16 v16, 0x0

    move-object/from16 v0, p0

    move v1, v12

    move v2, v13

    move v3, v15

    move/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->pinScrollBy(IIZI)Z

    move-result v15

    .line 9151
    :goto_3
    return v15

    .line 9126
    .end local v9           #screenLeft:I
    .end local v10           #screenRight:I
    .end local v12           #scrollXDelta:I
    .end local v14           #width:I
    .restart local v7       #oneThirdOfScreenHeight:I
    :cond_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    add-int v16, v11, v7

    sub-int v13, v15, v16

    goto :goto_0

    .line 9128
    .end local v7           #oneThirdOfScreenHeight:I
    :cond_3
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    if-ge v15, v11, :cond_0

    .line 9129
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v15, v0

    sub-int v13, v15, v11

    goto :goto_0

    .line 9141
    .restart local v9       #screenLeft:I
    .restart local v10       #screenRight:I
    .restart local v12       #scrollXDelta:I
    .restart local v14       #width:I
    :cond_4
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v15, v0

    sub-int/2addr v15, v10

    add-int/2addr v12, v15

    goto :goto_1

    .line 9143
    :cond_5
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    if-ge v15, v9, :cond_1

    .line 9144
    move-object/from16 v0, p2

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v15, v0

    sub-int v15, v9, v15

    sub-int/2addr v12, v15

    goto :goto_1

    .line 9148
    :cond_6
    const/4 v15, 0x0

    goto :goto_2

    .line 9151
    :cond_7
    const/4 v15, 0x0

    goto :goto_3
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v2, 0x1

    .line 9016
    const/4 v6, 0x0

    .line 9017
    .local v6, result:Z
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9018
    iget-object v0, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    :cond_0
    :goto_0
    move v7, v6

    .line 9048
    .end local v6           #result:Z
    .local v7, result:Z
    :goto_1
    return v7

    .line 9021
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v6

    .line 9022
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getNeedInitialFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9026
    const/4 v1, 0x0

    .line 9027
    .local v1, fakeKeyDirection:I
    sparse-switch p1, :sswitch_data_0

    move v7, v6

    .line 9041
    .end local v6           #result:Z
    .restart local v7       #result:Z
    goto :goto_1

    .line 9029
    .end local v7           #result:Z
    .restart local v6       #result:Z
    :sswitch_0
    const/16 v1, 0x13

    .line 9043
    :goto_2
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9044
    const-wide/16 v4, 0x0

    move-object v0, p0

    move v3, v2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->navHandledKey(IIZJ)Z

    goto :goto_0

    .line 9032
    :sswitch_1
    const/16 v1, 0x14

    .line 9033
    goto :goto_2

    .line 9035
    :sswitch_2
    const/16 v1, 0x15

    .line 9036
    goto :goto_2

    .line 9038
    :sswitch_3
    const/16 v1, 0x16

    .line 9039
    goto :goto_2

    .line 9027
    nop

    :sswitch_data_0
    .sparse-switch
        0x11 -> :sswitch_2
        0x21 -> :sswitch_0
        0x42 -> :sswitch_3
        0x82 -> :sswitch_1
    .end sparse-switch
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .locals 4
    .parameter "hrefMsg"

    .prologue
    .line 2660
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 2668
    :cond_0
    :goto_0
    return-void

    .line 2663
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorIsAnchor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2664
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x89

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorFramePointer()I

    move-result v2

    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodePointer()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/webkit/WebViewCore;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0
.end method

.method requestFormData(Ljava/lang/String;I)V
    .locals 5
    .parameter "name"
    .parameter "nodePointer"

    .prologue
    .line 4986
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v3}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4987
    iget-object v3, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 4988
    .local v1, update:Landroid/os/Message;
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 4989
    new-instance v2, Landroid/webkit/WebView$RequestFormData;

    invoke-virtual {p0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, p1, v3, v1}, Landroid/webkit/WebView$RequestFormData;-><init>(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 4991
    .local v2, updater:Landroid/webkit/WebView$RequestFormData;
    new-instance v0, Ljava/lang/Thread;

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 4992
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 4994
    .end local v0           #t:Ljava/lang/Thread;
    .end local v1           #update:Landroid/os/Message;
    .end local v2           #updater:Landroid/webkit/WebView$RequestFormData;
    :cond_0
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    .line 2678
    iget v4, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v4, :cond_0

    .line 2686
    :goto_0
    return-void

    .line 2679
    :cond_0
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 2680
    .local v0, contentX:I
    iget v4, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v4, v4

    iget v5, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v4}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 2681
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->nativeImageURI(II)Ljava/lang/String;

    move-result-object v3

    .line 2682
    .local v3, ref:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    .line 2683
    .local v2, data:Landroid/os/Bundle;
    const-string/jumbo v4, "url"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2684
    invoke-virtual {p1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2685
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method requestLabel(II)V
    .locals 2
    .parameter "framePointer"
    .parameter "nodePointer"

    .prologue
    .line 5003
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x61

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5005
    return-void
.end method

.method requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V
    .locals 8
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 10546
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 10547
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 10548
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 10550
    .local v5, action:I
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 10551
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestListBox mFocusedNodePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusedNodeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inputFieldAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10556
    :cond_0
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[IIILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10558
    return-void
.end method

.method requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V
    .locals 8
    .parameter "array"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "name"
    .parameter "pointer"

    .prologue
    .line 10490
    iput p5, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    .line 10491
    iput-object p4, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    .line 10492
    invoke-virtual {p0, p4, p5}, Landroid/webkit/WebView;->nativeInputFieldAction(Ljava/lang/String;I)I

    move-result v5

    .line 10493
    .local v5, action:I
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 10494
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestListBox mFocusedNodePointer="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/webkit/WebView;->mFocusedNodePointer:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFocusedNodeName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/webkit/WebView;->mFocusedNodeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " inputFieldAction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Node Bound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10499
    :cond_0
    iget-object v7, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    new-instance v0, Landroid/webkit/WebView$InvokeListBox;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Landroid/webkit/WebView$InvokeListBox;-><init>(Landroid/webkit/WebView;[Ljava/lang/String;[I[IILandroid/webkit/WebView$1;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10501
    return-void
.end method

.method resetTrackballTime()V
    .locals 2

    .prologue
    .line 7732
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/webkit/WebView;->mTrackballLastTime:J

    .line 7733
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 5
    .parameter "b"
    .parameter "src"

    .prologue
    const/4 v4, 0x0

    .line 2083
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move v3, v4

    .line 2117
    :goto_0
    return v3

    .line 2086
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    .line 2087
    goto :goto_0

    .line 2090
    :cond_2
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2091
    .local v2, in:Ljava/io/FileInputStream;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 2092
    .local v0, copy:Landroid/os/Bundle;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebView$9;

    invoke-direct {v4, p0, v2, v0}, Landroid/webkit/WebView$9;-><init>(Landroid/webkit/WebView;Ljava/io/FileInputStream;Landroid/os/Bundle;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2117
    .end local v0           #copy:Landroid/os/Bundle;
    .end local v2           #in:Ljava/io/FileInputStream;
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 2114
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 2115
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1
.end method

.method public restoreSelection()V
    .locals 2

    .prologue
    .line 5793
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5797
    :cond_0
    :goto_0
    return-void

    .line 5795
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x214

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 12
    .parameter "inState"

    .prologue
    const/4 v9, 0x0

    const-string v11, "index"

    const-string v10, "history"

    .line 2135
    const/4 v6, 0x0

    .line 2136
    .local v6, returnList:Landroid/webkit/WebBackForwardList;
    if-nez p1, :cond_0

    move-object v8, v6

    .line 2178
    :goto_0
    return-object v8

    .line 2139
    :cond_0
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    const-string v8, "history"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 2140
    const-string v8, "certificate"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v8

    invoke-static {v8}, Landroid/net/http/SslCertificate;->restoreState(Landroid/os/Bundle;)Landroid/net/http/SslCertificate;

    move-result-object v8

    iput-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 2143
    iget-object v8, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v8}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 2144
    .local v5, list:Landroid/webkit/WebBackForwardList;
    const-string v8, "index"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 2148
    .local v3, index:I
    monitor-enter v5

    .line 2149
    :try_start_0
    const-string v8, "history"

    invoke-virtual {p1, v8}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2151
    .local v1, history:Ljava/util/List;,"Ljava/util/List<[B>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 2154
    .local v7, size:I
    if-ltz v3, :cond_1

    if-lt v3, v7, :cond_2

    .line 2155
    :cond_1
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 2157
    :cond_2
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v7, :cond_4

    .line 2158
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 2159
    .local v0, data:[B
    if-nez v0, :cond_3

    .line 2162
    monitor-exit v5

    move-object v8, v9

    goto :goto_0

    .line 2164
    :cond_3
    new-instance v4, Landroid/webkit/WebHistoryItem;

    invoke-direct {v4, v0}, Landroid/webkit/WebHistoryItem;-><init>([B)V

    .line 2165
    .local v4, item:Landroid/webkit/WebHistoryItem;
    invoke-virtual {v5, v4}, Landroid/webkit/WebBackForwardList;->addHistoryItem(Landroid/webkit/WebHistoryItem;)V

    .line 2157
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2168
    .end local v0           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_4
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v6

    .line 2170
    invoke-virtual {v6, v3}, Landroid/webkit/WebBackForwardList;->setCurrentIndex(I)V

    .line 2171
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2174
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v8}, Landroid/webkit/WebViewCore;->removeMessages()V

    .line 2176
    iget-object v8, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v9, 0x6c

    invoke-virtual {v8, v9, v3}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .end local v1           #history:Ljava/util/List;,"Ljava/util/List<[B>;"
    .end local v2           #i:I
    .end local v3           #index:I
    .end local v5           #list:Landroid/webkit/WebBackForwardList;
    .end local v7           #size:I
    :cond_5
    move-object v8, v6

    .line 2178
    goto :goto_0

    .line 2171
    .restart local v3       #index:I
    .restart local v5       #list:Landroid/webkit/WebBackForwardList;
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method public resumeTimers()V
    .locals 2

    .prologue
    .line 3509
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    if-nez v0, :cond_0

    .line 3510
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x6e

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 3511
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgResumeRecvd:Z

    .line 3513
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mMsgPauseRecvd:Z

    .line 3514
    return-void
.end method

.method public resumeWebViewPriority()V
    .locals 1

    .prologue
    .line 4561
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 4562
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v0}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 4563
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 6036
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewCore;->saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1833
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1834
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .locals 4
    .parameter "b"
    .parameter "dest"

    .prologue
    .line 2016
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 2017
    :cond_0
    const/4 v2, 0x0

    .line 2052
    :goto_0
    return v2

    .line 2019
    :cond_1
    invoke-virtual {p0}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 2022
    .local v0, p:Landroid/graphics/Picture;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".writing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2023
    .local v1, temp:Ljava/io/File;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Landroid/webkit/WebView$8;

    invoke-direct {v3, p0, v1, v0, p2}, Landroid/webkit/WebView$8;-><init>(Landroid/webkit/WebView;Ljava/io/File;Landroid/graphics/Picture;Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 2047
    const-string/jumbo v2, "scrollX"

    iget v3, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2048
    const-string/jumbo v2, "scrollY"

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2049
    const-string/jumbo v2, "scale"

    iget v3, p0, Landroid/webkit/WebView;->mActualScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2050
    const-string/jumbo v2, "textwrapScale"

    iget v3, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 2051
    const-string/jumbo v2, "overview"

    iget-boolean v3, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2052
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public saveSelection()V
    .locals 2

    .prologue
    .line 5786
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5790
    :cond_0
    :goto_0
    return-void

    .line 5788
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x215

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
    .locals 10
    .parameter "outState"

    .prologue
    const/4 v9, 0x0

    .line 1964
    if-nez p1, :cond_0

    move-object v7, v9

    .line 2004
    :goto_0
    return-object v7

    .line 1969
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    .line 1970
    .local v5, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentIndex()I

    move-result v0

    .line 1971
    .local v0, currentIndex:I
    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v6

    .line 1974
    .local v6, size:I
    if-ltz v0, :cond_1

    if-ge v0, v6, :cond_1

    if-nez v6, :cond_2

    :cond_1
    move-object v7, v9

    .line 1975
    goto :goto_0

    .line 1977
    :cond_2
    const-string v7, "index"

    invoke-virtual {p1, v7, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1981
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 1982
    .local v2, history:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v6, :cond_5

    .line 1983
    invoke-virtual {v5, v3}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v4

    .line 1984
    .local v4, item:Landroid/webkit/WebHistoryItem;
    if-nez v4, :cond_3

    .line 1987
    const-string/jumbo v7, "webview"

    const-string/jumbo v8, "saveState: Unexpected null history item."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v9

    .line 1988
    goto :goto_0

    .line 1990
    :cond_3
    invoke-virtual {v4}, Landroid/webkit/WebHistoryItem;->getFlattenedData()[B

    move-result-object v1

    .line 1991
    .local v1, data:[B
    if-nez v1, :cond_4

    move-object v7, v9

    .line 1995
    goto :goto_0

    .line 1997
    :cond_4
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1982
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1999
    .end local v1           #data:[B
    .end local v4           #item:Landroid/webkit/WebHistoryItem;
    :cond_5
    const-string v7, "history"

    invoke-virtual {p1, v7, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 2000
    iget-object v7, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    if-eqz v7, :cond_6

    .line 2001
    const-string v7, "certificate"

    iget-object v8, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    invoke-static {v8}, Landroid/net/http/SslCertificate;->saveState(Landroid/net/http/SslCertificate;)Landroid/os/Bundle;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_6
    move-object v7, v5

    .line 2004
    goto :goto_0
.end method

.method public scaleAllPlugins()V
    .locals 1

    .prologue
    .line 6729
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->scaleAll()V

    .line 6730
    return-void
.end method

.method scrollFocusedTextInput(FI)V
    .locals 4
    .parameter "xPercent"
    .parameter "y"

    .prologue
    .line 8302
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v0, :cond_1

    .line 8311
    :cond_0
    :goto_0
    return-void

    .line 8305
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x63

    invoke-virtual {p0, p2}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v2

    new-instance v3, Ljava/lang/Float;

    invoke-direct {v3, p1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(IILjava/lang/Object;)V

    goto :goto_0
.end method

.method public scrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 11484
    invoke-direct {p0}, Landroid/webkit/WebView;->skipInvalidates()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 11490
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v2, p1, :cond_0

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v2, p2, :cond_1

    .line 11491
    :cond_0
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 11492
    .local v0, oldX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 11493
    .local v1, oldY:I
    iput p1, p0, Landroid/view/View;->mScrollX:I

    .line 11494
    iput p2, p0, Landroid/view/View;->mScrollY:I

    .line 11495
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    .line 11505
    .end local v0           #oldX:I
    .end local v1           #oldY:I
    :cond_1
    :goto_0
    return-void

    .line 11502
    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "old scrollTo"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 11503
    invoke-super {p0, p1, p2}, Landroid/widget/AbsoluteLayout;->scrollTo(II)V

    goto :goto_0
.end method

.method public selectAll()V
    .locals 1

    .prologue
    .line 5387
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 5394
    :cond_0
    :goto_0
    return-void

    .line 5388
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5389
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/webkit/WebView;->setUpSelect()V

    .line 5390
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeSelectAll()V

    .line 5391
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    .line 5392
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5393
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    goto :goto_0
.end method

.method public selectDialogIsUp()Z
    .locals 1

    .prologue
    .line 5400
    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    return v0
.end method

.method public selectedType()I
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 5768
    iget v3, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v3, v4

    .line 5781
    .end local p0
    :goto_0
    return v3

    .line 5770
    .restart local p0
    :cond_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5771
    .local v2, selectedType:Ljava/lang/Integer;
    new-instance v1, Landroid/webkit/WebView$ResultTransport;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Landroid/webkit/WebView$ResultTransport;-><init>(Landroid/webkit/WebView;[Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5772
    .local v1, res:Landroid/webkit/WebView$ResultTransport;,"Landroid/webkit/WebView$ResultTransport<Ljava/lang/Object;Ljava/lang/Integer;>;"
    monitor-enter v1

    .line 5773
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v4, 0x213

    invoke-virtual {v3, v4, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5776
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5780
    :goto_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5781
    invoke-virtual {v1}, Landroid/webkit/WebView$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    .line 5777
    .restart local p0
    :catch_0
    move-exception v0

    .line 5778
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v3, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 5780
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public selectionDone()V
    .locals 2

    .prologue
    .line 5415
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-eqz v1, :cond_1

    .line 5416
    invoke-virtual {p0}, Landroid/webkit/WebView;->getWebChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    .line 5417
    .local v0, client:Landroid/webkit/WebChromeClient;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/webkit/WebChromeClient;->onSelectionDone(Landroid/webkit/WebView;)V

    .line 5418
    :cond_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 5419
    invoke-virtual {p0}, Landroid/webkit/WebView;->notifySelectDialogDismissed()V

    .line 5421
    .end local v0           #client:Landroid/webkit/WebChromeClient;
    :cond_1
    return-void
.end method

.method public sendPluginUpdate(Landroid/webkit/WebView$PluginUpdateData;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 6514
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 6515
    return-void
.end method

.method public sendTextSelectionMoveEvent()V
    .locals 5

    .prologue
    .line 1378
    iget-object v0, p0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v0, :cond_0

    .line 1379
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/16 v3, 0x8

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1383
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 1384
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "sendTextSelectionMoveEvent : Sent"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1386
    :cond_0
    return-void
.end method

.method public sendselectionmessage()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 5607
    iget-boolean v0, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-ne v1, v0, :cond_0

    .line 5609
    const-string/jumbo v0, "webview"

    const-string/jumbo v1, "sendselectionmessage to HtmlComposerView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5611
    iget-object v0, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x8d

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 5613
    iput-boolean v4, p0, Landroid/webkit/WebView;->SimulateSelect:Z

    .line 5615
    :cond_0
    return-void
.end method

.method public setAutoTextSelection(Z)V
    .locals 0
    .parameter "value"

    .prologue
    .line 1328
    iput-boolean p1, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    .line 1329
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 2
    .parameter "color"

    .prologue
    .line 10734
    iput p1, p0, Landroid/webkit/WebView;->mBackgroundColor:I

    .line 10735
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    .line 10736
    return-void
.end method

.method public setCaretForEdit(Z)V
    .locals 4
    .parameter "active"

    .prologue
    const/16 v1, 0x8e

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5639
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5648
    :cond_0
    :goto_0
    return-void

    .line 5641
    :cond_1
    if-eqz p1, :cond_2

    .line 5642
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0

    .line 5644
    :cond_2
    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 5645
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 5646
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x20b

    invoke-virtual {v0, v1, v3, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .locals 3
    .parameter "certificate"

    .prologue
    .line 1814
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 1815
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCertificate="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1818
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebView;->mCertificate:Landroid/net/http/SslCertificate;

    .line 1819
    return-void
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 4060
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 4061
    return-void
.end method

.method public setDragTracker(Landroid/webkit/WebView$DragTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    .line 6500
    iput-object p1, p0, Landroid/webkit/WebView;->mDragTracker:Landroid/webkit/WebView$DragTracker;

    .line 6501
    return-void
.end method

.method protected setEditable(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    const/16 v2, 0x207

    .line 5943
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5949
    :cond_0
    :goto_0
    return-void

    .line 5945
    :cond_1
    if-eqz p1, :cond_2

    .line 5946
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0

    .line 5948
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/webkit/WebViewCore;->sendMessage(II)V

    goto :goto_0
.end method

.method public setEditableSelection(II)V
    .locals 4
    .parameter "start"
    .parameter "end"

    .prologue
    const-string/jumbo v2, "webview"

    .line 5978
    iget v2, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v2, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5993
    :goto_0
    return-void

    .line 5979
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 5980
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    .line 5982
    .local v1, sendTwoIntObj:Landroid/graphics/Point;
    monitor-enter v1

    .line 5983
    :try_start_0
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x1fe

    invoke-virtual {v2, v3, v1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5985
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 5990
    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 5986
    :catch_0
    move-exception v0

    .line 5987
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v2, "webview"

    const-string v3, "Caught exception while waiting for setEditableSelection"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5988
    const-string/jumbo v2, "webview"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public setEmbeddedTitleBar(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 2741
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-ne v0, p1, :cond_0

    .line 2755
    :goto_0
    return-void

    .line 2742
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 2743
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    .line 2745
    :cond_1
    if-eqz p1, :cond_2

    .line 2746
    new-instance v0, Landroid/widget/AbsoluteLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2, v3, v3}, Landroid/widget/AbsoluteLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2749
    iget-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_2

    .line 2750
    iget-object v0, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10803a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebView;->mTitleShadow:Landroid/graphics/drawable/Drawable;

    .line 2754
    :cond_2
    iput-object p1, p0, Landroid/webkit/WebView;->mTitleBar:Landroid/view/View;

    goto :goto_0
.end method

.method public setFindDialogHeight(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 3752
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 3753
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFindDialogHeight height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3755
    :cond_0
    iput p1, p0, Landroid/webkit/WebView;->mFindHeight:I

    .line 3756
    return-void
.end method

.method public setFindIsUp(Z)V
    .locals 3
    .parameter "isUp"

    .prologue
    .line 3644
    iput-boolean p1, p0, Landroid/webkit/WebView;->mFindIsUp:Z

    .line 3645
    if-eqz p1, :cond_0

    .line 3646
    iget v0, p0, Landroid/webkit/WebView;->mContentWidth:I

    iget v1, p0, Landroid/webkit/WebView;->mContentHeight:I

    iget v2, p0, Landroid/webkit/WebView;->mFindHeight:I

    add-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->recordNewContentSize(IIZ)V

    .line 3649
    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_1

    .line 3651
    :goto_0
    return-void

    .line 3650
    :cond_1
    invoke-direct {p0, p1}, Landroid/webkit/WebView;->nativeSetFindIsUp(Z)V

    goto :goto_0
.end method

.method setFocusControllerInactive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5600
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v0, :cond_0

    .line 5602
    :goto_0
    return-void

    .line 5601
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, v2, v2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto :goto_0
.end method

.method protected setFrame(IIII)Z
    .locals 2
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 6089
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AbsoluteLayout;->setFrame(IIII)Z

    move-result v0

    .line 6090
    .local v0, changed:Z
    if-nez v0, :cond_0

    iget-boolean v1, p0, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v1, :cond_0

    .line 6097
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 6099
    :cond_0
    return v0
.end method

.method public setHandleTouchRevision(I)V
    .locals 0
    .parameter "value"

    .prologue
    .line 10953
    iput p1, p0, Landroid/webkit/WebView;->mHandleTouchRevision:I

    .line 10954
    return-void
.end method

.method public setHasRotateSupport(Z)V
    .locals 0
    .parameter "has"

    .prologue
    .line 435
    iput-boolean p1, p0, Landroid/webkit/WebView;->mHasRotateSupport:Z

    .line 436
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1729
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1730
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1847
    iget-object v0, p0, Landroid/webkit/WebView;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDatabase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1848
    return-void
.end method

.method public setIgnoreDoubleTap(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 423
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreDoubleTap:Z

    .line 424
    return-void
.end method

.method public setIgnoreFling(Z)V
    .locals 2
    .parameter "ignore"

    .prologue
    .line 441
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreFling:Z

    .line 442
    iget-boolean v0, p0, Landroid/webkit/WebView;->mIgnoreFling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    if-eqz v0, :cond_0

    .line 443
    iget-object v0, p0, Landroid/webkit/WebView;->mScroller:Landroid/widget/OverScroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/OverScroller;->forceFinished(Z)V

    .line 445
    :cond_0
    return-void
.end method

.method public setIgnoreViewSizeChanged(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 417
    iput-boolean p1, p0, Landroid/webkit/WebView;->mIgnoreViewSizeChanged:Z

    .line 418
    return-void
.end method

.method public setInitialScale(I)V
    .locals 0
    .parameter "scaleInPercent"

    .prologue
    .line 2536
    iput p1, p0, Landroid/webkit/WebView;->mInitialScaleInPercent:I

    .line 2537
    return-void
.end method

.method public setJsFlags(Ljava/lang/String;)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 1926
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xae

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1927
    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .parameter "params"

    .prologue
    .line 4431
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    .line 4432
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mWrapContent:Z

    .line 4434
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 4435
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .locals 0
    .parameter "setMap"

    .prologue
    .line 7728
    iput-boolean p1, p0, Landroid/webkit/WebView;->mMapTrackballToArrowKeys:Z

    .line 7729
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .locals 4
    .parameter "networkUp"

    .prologue
    const/4 v3, 0x0

    .line 1936
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x77

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 1938
    return-void

    :cond_0
    move v2, v3

    .line 1936
    goto :goto_0
.end method

.method public setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "type"
    .parameter "subtype"

    .prologue
    .line 1945
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1946
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1947
    const-string/jumbo v1, "subtype"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1948
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v2, 0xb7

    invoke-virtual {v1, v2, v0}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1949
    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    const/4 v4, 0x0

    .line 1623
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setOverScrollMode(I)V

    .line 1624
    const/4 v3, 0x2

    if-eq p1, v3, :cond_1

    .line 1625
    iget-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    if-nez v3, :cond_0

    .line 1626
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1627
    .local v2, res:Landroid/content/res/Resources;
    const v3, 0x1080258

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1628
    .local v0, edge:Landroid/graphics/drawable/Drawable;
    const v3, 0x1080259

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1629
    .local v1, glow:Landroid/graphics/drawable/Drawable;
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1630
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1631
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1632
    new-instance v3, Landroid/widget/EdgeGlow;

    invoke-direct {v3, v0, v1}, Landroid/widget/EdgeGlow;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iput-object v3, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    .line 1640
    .end local v0           #edge:Landroid/graphics/drawable/Drawable;
    .end local v1           #glow:Landroid/graphics/drawable/Drawable;
    .end local v2           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 1635
    :cond_1
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowTop:Landroid/widget/EdgeGlow;

    .line 1636
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowBottom:Landroid/widget/EdgeGlow;

    .line 1637
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowLeft:Landroid/widget/EdgeGlow;

    .line 1638
    iput-object v4, p0, Landroid/webkit/WebView;->mEdgeGlowRight:Landroid/widget/EdgeGlow;

    goto :goto_0
.end method

.method public setPictureListener(Landroid/webkit/WebView$PictureListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 4120
    iput-object p1, p0, Landroid/webkit/WebView;->mPictureListener:Landroid/webkit/WebView$PictureListener;

    .line 4121
    return-void
.end method

.method public setPinchZoomListener(Landroid/webkit/OnPinchZoomListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 6509
    iput-object p1, p0, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    .line 6510
    return-void
.end method

.method public setPluginRefreshDelay(I)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 8443
    invoke-static {p1}, Landroid/webkit/WebViewCore;->setPluginRefreshDelay(I)V

    .line 8444
    return-void
.end method

.method public setPreserveZoom(Z)V
    .locals 0
    .parameter "preserveZoom"

    .prologue
    .line 1332
    iput-boolean p1, p0, Landroid/webkit/WebView;->mPreserveZoom:Z

    .line 1333
    return-void
.end method

.method public setPreventDefaultTimeout(I)V
    .locals 0
    .parameter "timeout"

    .prologue
    .line 10770
    iput p1, p0, Landroid/webkit/WebView;->mPreventDefaultTimeout:I

    .line 10771
    return-void
.end method

.method public setScrollAndZoom(FIIFFZ)V
    .locals 8
    .parameter "newScale"
    .parameter "newScrollX"
    .parameter "newScrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "updatePlugins"

    .prologue
    .line 6745
    iput p4, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 6746
    iput p5, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 6748
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 6749
    iget p1, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 6751
    :cond_0
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 6752
    iget p1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 6755
    :cond_1
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    cmpl-float v2, p1, v2

    if-nez v2, :cond_7

    const/4 v2, 0x1

    move v1, v2

    .line 6756
    .local v1, sameScale:Z
    :goto_0
    if-nez v1, :cond_2

    .line 6757
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 6759
    :cond_2
    iput p1, p0, Landroid/webkit/WebView;->mActualScale:F

    .line 6761
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/webkit/WebView;->mPreviewZoomOnly:Z

    .line 6762
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 6763
    iget v2, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v2, v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 6765
    if-nez v1, :cond_4

    .line 6768
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    iget v3, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    sub-float/2addr v2, v3

    sget v3, Landroid/webkit/WebView;->MINIMUM_SCALE_INCREMENT:F

    cmpg-float v2, v2, v3

    if-lez v2, :cond_3

    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    float-to-double v2, v2

    const-wide v4, 0x3fe999999999999aL

    iget v6, p0, Landroid/webkit/WebView;->mTextWrapScale:F

    float-to-double v6, v6

    mul-double/2addr v4, v6

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_8

    :cond_3
    const/4 v2, 0x1

    move v0, v2

    .line 6772
    .local v0, reflowNow:Z
    :goto_1
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {p0, v2, v0, v3, v4}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 6777
    .end local v0           #reflowNow:Z
    :cond_4
    const/4 v2, 0x1

    sput-boolean v2, Landroid/webkit/WebView;->mInUserScroll:Z

    .line 6778
    const/4 v2, 0x0

    sput-boolean v2, Landroid/webkit/WebView;->mInUserRotate:Z

    .line 6780
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->didUpdateTextViewBounds(Z)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Landroid/webkit/WebView;->nativeFocusCandidateIsPassword()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 6784
    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 6790
    :cond_5
    const/16 v2, 0x8

    iput v2, p0, Landroid/webkit/WebView;->mTouchMode:I

    .line 6791
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebView;->mConfirmMove:Z

    .line 6792
    iget-wide v2, p0, Landroid/webkit/WebView;->mLastTouchTime:J

    invoke-direct {p0, p4, p5, v2, v3}, Landroid/webkit/WebView;->startTouch(FFJ)V

    .line 6808
    if-eqz p6, :cond_6

    .line 6809
    iget-object v2, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->endZoom()V

    .line 6812
    :cond_6
    iput p2, p0, Landroid/view/View;->mScrollX:I

    .line 6813
    iput p3, p0, Landroid/view/View;->mScrollY:I

    .line 6815
    invoke-direct {p0}, Landroid/webkit/WebView;->sendViewSizeZoom()Z

    .line 6816
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    .line 6817
    return-void

    .line 6755
    .end local v1           #sameScale:Z
    :cond_7
    const/4 v2, 0x0

    move v1, v2

    goto/16 :goto_0

    .line 6768
    .restart local v1       #sameScale:Z
    :cond_8
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method public setScrollBarStyle(I)V
    .locals 1
    .parameter "style"

    .prologue
    .line 1715
    const/high16 v0, 0x100

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x300

    if-ne p1, v0, :cond_1

    .line 1717
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    .line 1721
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AbsoluteLayout;->setScrollBarStyle(I)V

    .line 1722
    return-void

    .line 1719
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    iput-boolean v0, p0, Landroid/webkit/WebView;->mOverlayHorizontalScrollbar:Z

    goto :goto_0
.end method

.method setSelection(II)V
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 4826
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebView;->isSelectionset:Z

    .line 4827
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1, p2}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4828
    return-void
.end method

.method public setSizeChangedCallback(Ljava/lang/Runnable;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 429
    iput-object p1, p0, Landroid/webkit/WebView;->mSizeChangedCallback:Ljava/lang/Runnable;

    .line 430
    return-void
.end method

.method public setTextSelecitonAt(II)Z
    .locals 4
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    const/4 v3, 0x1

    .line 1283
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v2

    if-ne v2, v3, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v2, :cond_0

    .line 1284
    iget v2, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v2, p1

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 1285
    .local v0, contentX:I
    iget v2, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v2, p2

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 1286
    .local v1, contentY:I
    invoke-direct {p0, v0, v1}, Landroid/webkit/WebView;->selectClosestWord(II)V

    move v2, v3

    .line 1289
    .end local v0           #contentX:I
    .end local v1           #contentY:I
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setTextSelecitonManualAtContentPoint(II)Z
    .locals 8
    .parameter "contentX"
    .parameter "contentY"

    .prologue
    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 1303
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v0

    if-ne v0, v7, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mAutoSelection:Z

    if-nez v0, :cond_1

    .line 1304
    invoke-virtual {p0}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 1305
    iget-boolean v3, p0, Landroid/webkit/WebView;->mSmartSelection:Z

    iget v5, p0, Landroid/webkit/WebView;->mActualScale:F

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Landroid/webkit/WebView;->getCopyParams(IIZZF)Landroid/webkit/WebViewCore$CopyParams;

    move-result-object v6

    .line 1307
    .local v6, copyParams:Landroid/webkit/WebViewCore$CopyParams;
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, v6}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    .line 1309
    iput-boolean v4, p0, Landroid/webkit/WebView;->mStopSelection:Z

    .line 1310
    iput-boolean v7, p0, Landroid/webkit/WebView;->mbIsNewWordSelected:Z

    .line 1311
    iput-boolean v4, p0, Landroid/webkit/WebView;->mTouchSelectionHandler:Z

    .line 1312
    iput v4, p0, Landroid/webkit/WebView;->mController:I

    .line 1313
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    if-eqz v0, :cond_0

    .line 1314
    const-string/jumbo v0, "webview"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTextSelecitonManualAtContentPoint x: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "y :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v0, v7

    .line 1318
    .end local v6           #copyParams:Landroid/webkit/WebViewCore$CopyParams;
    :goto_0
    return v0

    :cond_1
    move v0, v4

    goto :goto_0
.end method

.method public setTouchInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 10761
    iput p1, p0, Landroid/webkit/WebView;->mCurrentTouchInterval:I

    .line 10762
    return-void
.end method

.method public setUpSelect()V
    .locals 3

    .prologue
    .line 5344
    iget v1, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-nez v1, :cond_1

    .line 5364
    :cond_0
    :goto_0
    return-void

    .line 5345
    :cond_1
    invoke-direct {p0}, Landroid/webkit/WebView;->inFullScreenMode()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5346
    iget-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v1, :cond_0

    .line 5347
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebView;->mExtendSelection:Z

    .line 5348
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDrawSelectionPointer:Z

    iput-boolean v1, p0, Landroid/webkit/WebView;->mSelectingText:Z

    .line 5350
    iget-object v1, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-static {v1}, Landroid/webkit/WebViewCore;->pauseUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 5351
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeResetSelection()V

    .line 5352
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeHasCursorNode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5353
    invoke-direct {p0}, Landroid/webkit/WebView;->nativeCursorNodeBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 5354
    .local v0, rect:Landroid/graphics/Rect;
    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5355
    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v1

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    .line 5363
    .end local v0           #rect:Landroid/graphics/Rect;
    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebView;->hideCursor()V

    goto :goto_0

    .line 5356
    :cond_2
    iget v1, p0, Landroid/webkit/WebView;->mLastTouchY:F

    invoke-virtual {p0}, Landroid/webkit/WebView;->getVisibleTitleHeight()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    .line 5357
    iget v1, p0, Landroid/view/View;->mScrollX:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchX:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5358
    iget v1, p0, Landroid/view/View;->mScrollY:I

    iget v2, p0, Landroid/webkit/WebView;->mLastTouchY:F

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_1

    .line 5360
    :cond_3
    iget v1, p0, Landroid/view/View;->mScrollX:I

    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectX:I

    .line 5361
    iget v1, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0}, Landroid/webkit/WebView;->getViewHeightWithTitle()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Landroid/webkit/WebView;->mSelectY:I

    goto :goto_1
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .locals 0
    .parameter "overlay"

    .prologue
    .line 1737
    iput-boolean p1, p0, Landroid/webkit/WebView;->mOverlayVerticalScrollbar:Z

    .line 1738
    return-void
.end method

.method public setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4103
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V

    .line 4104
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4070
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 4071
    return-void
.end method

.method public setWebTextSelectionListener(Landroid/webkit/WebView$WebTextSelectionListener;)V
    .locals 0
    .parameter "Listener"

    .prologue
    .line 1341
    iput-object p1, p0, Landroid/webkit/WebView;->mWebListenerSelection:Landroid/webkit/WebView$WebTextSelectionListener;

    .line 1342
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .parameter "client"

    .prologue
    .line 4040
    iget-object v0, p0, Landroid/webkit/WebView;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4041
    return-void
.end method

.method public shouldForwardTouchEvent()Z
    .locals 2

    .prologue
    .line 6835
    iget-object v0, p0, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/webkit/WebView;->mForwardTouchEvents:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroid/webkit/WebView;->mSelectingText:Z

    if-nez v0, :cond_1

    iget v0, p0, Landroid/webkit/WebView;->mPreventDefault:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public stopLoading()V
    .locals 2

    .prologue
    .line 2296
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 2297
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2298
    return-void
.end method

.method switchOutDrawHistory()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4774
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v2, :cond_1

    .line 4792
    :cond_0
    :goto_0
    return-void

    .line 4775
    :cond_1
    iget-boolean v2, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v2}, Landroid/webkit/WebViewCore;->pictureReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4776
    iput-boolean v3, p0, Landroid/webkit/WebView;->mDrawHistory:Z

    .line 4777
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/WebView;->mHistoryPicture:Landroid/graphics/Picture;

    .line 4778
    invoke-virtual {p0}, Landroid/webkit/WebView;->invalidate()V

    .line 4779
    iget v0, p0, Landroid/view/View;->mScrollX:I

    .line 4780
    .local v0, oldScrollX:I
    iget v1, p0, Landroid/view/View;->mScrollY:I

    .line 4781
    .local v1, oldScrollY:I
    iget v2, p0, Landroid/view/View;->mScrollX:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocX(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollX:I

    .line 4782
    iget v2, p0, Landroid/view/View;->mScrollY:I

    invoke-direct {p0, v2}, Landroid/webkit/WebView;->pinLocY(I)I

    move-result v2

    iput v2, p0, Landroid/view/View;->mScrollY:I

    .line 4783
    iget v2, p0, Landroid/view/View;->mScrollX:I

    if-ne v0, v2, :cond_2

    iget v2, p0, Landroid/view/View;->mScrollY:I

    if-eq v1, v2, :cond_3

    .line 4784
    :cond_2
    iput-boolean v3, p0, Landroid/webkit/WebView;->mUserScroll:Z

    .line 4785
    iget-object v2, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x83

    invoke-virtual {v2, v3, v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    .line 4787
    iget v2, p0, Landroid/view/View;->mScrollX:I

    iget v3, p0, Landroid/view/View;->mScrollY:I

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    goto :goto_0

    .line 4789
    :cond_3
    invoke-direct {p0}, Landroid/webkit/WebView;->sendOurVisibleRect()Landroid/graphics/Rect;

    goto :goto_0
.end method

.method public textChangedForWatcher()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5958
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    if-eqz v0, :cond_0

    .line 5959
    iget-object v0, p0, Landroid/webkit/WebView;->textWatcher:Landroid/text/TextWatcher;

    const-string v1, ""

    invoke-interface {v0, v1, v2, v2, v2}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 5960
    :cond_0
    return-void
.end method

.method textFieldDrag(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x0

    .line 8337
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v4

    .line 8345
    :goto_0
    return v1

    .line 8340
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    .line 8341
    iget-object v1, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v1}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v1

    iget v2, p0, Landroid/view/View;->mScrollX:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    iget-object v2, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v2}, Landroid/webkit/WebTextView;->getTop()I

    move-result v2

    iget v3, p0, Landroid/view/View;->mScrollY:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 8343
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 8344
    .local v0, result:Z
    iput-boolean v4, p0, Landroid/webkit/WebView;->mDragFromTextInput:Z

    move v1, v0

    .line 8345
    goto :goto_0
.end method

.method touchUpOnTextField(Landroid/view/MotionEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    .line 8354
    invoke-direct {p0}, Landroid/webkit/WebView;->inEditingMode()Z

    move-result v2

    if-nez v2, :cond_0

    .line 8360
    :goto_0
    return-void

    .line 8357
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    .line 8358
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Landroid/webkit/WebView;->mWebTextView:Landroid/webkit/WebTextView;

    invoke-virtual {v3}, Landroid/webkit/WebTextView;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v1

    .line 8359
    .local v1, y:I
    iget v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->nativeMotionUp(III)Z

    goto :goto_0
.end method

.method public transformPlugins(Landroid/graphics/Matrix;Z)V
    .locals 1
    .parameter "matrix"
    .parameter "zoomInProgress"

    .prologue
    .line 8691
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    if-nez v0, :cond_0

    .line 8695
    :goto_0
    return-void

    .line 8694
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/ViewManager;->transformAll(Landroid/graphics/Matrix;Z)V

    goto :goto_0
.end method

.method public undoRedoStateReset()V
    .locals 2

    .prologue
    .line 5917
    iget v0, p0, Landroid/webkit/WebView;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5921
    :cond_0
    :goto_0
    return-void

    .line 5919
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebView;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v1, 0x211

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    goto :goto_0
.end method

.method public unregisterTiltListener()V
    .locals 2

    .prologue
    .line 6534
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-eqz v0, :cond_0

    .line 6536
    sget-object v0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    iget-object v1, p0, Landroid/webkit/WebView;->motionListener1:Landroid/hardware/motion/MRListener;

    invoke-virtual {v0, v1}, Landroid/hardware/motion/MotionRecognitionManager;->unregisterListener(Landroid/hardware/motion/MRListener;)V

    .line 6537
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->registerTiltListener:Z

    .line 6539
    :cond_0
    return-void
.end method

.method updateCachedTextfield(Ljava/lang/String;)V
    .locals 1
    .parameter "updatedText"

    .prologue
    .line 10780
    iget v0, p0, Landroid/webkit/WebView;->mTextGeneration:I

    invoke-direct {p0, p1, v0}, Landroid/webkit/WebView;->nativeUpdateCachedTextfield(Ljava/lang/String;I)V

    .line 10781
    return-void
.end method

.method updateDefaultZoomDensity(I)V
    .locals 7
    .parameter "zoomDensity"

    .prologue
    const/high16 v6, 0x42c8

    .line 1643
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    int-to-float v3, p1

    div-float v0, v2, v3

    .line 1645
    .local v0, density:F
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    sub-float v2, v0, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 1646
    iget v2, p0, Landroid/webkit/WebView;->mDefaultScale:F

    div-float v1, v0, v2

    .line 1648
    .local v1, scaleFactor:F
    const/high16 v2, 0x4180

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, p0, Landroid/webkit/WebView;->mNavSlop:I

    .line 1649
    mul-float v2, v6, v0

    float-to-int v2, v2

    sput v2, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    .line 1650
    const/high16 v2, 0x4080

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MAX_ZOOM_SCALE:F

    .line 1651
    const/high16 v2, 0x3e80

    mul-float/2addr v2, v0

    sput v2, Landroid/webkit/WebView;->DEFAULT_MIN_ZOOM_SCALE:F

    .line 1652
    iput v0, p0, Landroid/webkit/WebView;->mDefaultScale:F

    .line 1653
    iget v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    .line 1654
    iget v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    mul-float/2addr v2, v1

    iput v2, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    .line 1655
    iget v2, p0, Landroid/webkit/WebView;->mActualScale:F

    mul-float/2addr v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v3, v4, v5}, Landroid/webkit/WebView;->setNewZoomScale(FZZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)V

    .line 1657
    .end local v1           #scaleFactor:F
    :cond_0
    return-void
.end method

.method updateMultiTouchSupport(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 1541
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    .line 1546
    .local v1, settings:Landroid/webkit/WebSettings;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1551
    .local v0, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->supportZoom()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getSupportZoomWithoutControls()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    .line 1553
    const-string v2, "android.hardware.touchscreen.multitouch.distinct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Landroid/webkit/WebView;->mAllowPanAndScale:Z

    .line 1555
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-nez v2, :cond_4

    .line 1556
    new-instance v2, Landroid/webkit/WebviewScaleGestureDetector;

    new-instance v3, Landroid/webkit/WebView$ScaleDetectorListener;

    invoke-direct {v3, p0, v4}, Landroid/webkit/WebView$ScaleDetectorListener;-><init>(Landroid/webkit/WebView;Landroid/webkit/WebView$1;)V

    invoke-direct {v2, p1, v3}, Landroid/webkit/WebviewScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/webkit/WebviewScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    .line 1559
    sget-object v2, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    if-nez v2, :cond_2

    .line 1560
    const-string/jumbo v2, "motion_recognition"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/hardware/motion/MotionRecognitionManager;

    sput-object p0, Landroid/webkit/WebView;->mMotionSensorManager:Landroid/hardware/motion/MotionRecognitionManager;

    .line 1566
    :cond_2
    :goto_1
    return-void

    .line 1551
    .restart local p0
    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1563
    :cond_4
    iget-boolean v2, p0, Landroid/webkit/WebView;->mSupportMultiTouch:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    if-eqz v2, :cond_2

    .line 1564
    iput-object v4, p0, Landroid/webkit/WebView;->mScaleDetector:Landroid/webkit/WebviewScaleGestureDetector;

    goto :goto_1
.end method

.method public updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIFFFI)V
    .locals 10
    .parameter "parentView"
    .parameter "scrollX"
    .parameter "scrollY"
    .parameter "zoomCenterX"
    .parameter "zoomCenterY"
    .parameter "scale"
    .parameter "serial"

    .prologue
    .line 8433
    iget-object v0, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->getLocationInWindow([I)V

    .line 8434
    iget-object v0, p0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    iget-object v1, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    const/4 v2, 0x0

    aget v2, v1, v2

    iget-object v1, p0, Landroid/webkit/WebView;->mTmpLocations:[I

    const/4 v3, 0x1

    aget v3, v1, v3

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/ViewManager;->updateScrollPosForPluginViews(Landroid/view/SurfaceView;IIIIFFFI)V

    .line 8437
    return-void
.end method

.method public userScalable()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 405
    iget-boolean v0, p0, Landroid/webkit/WebView;->mMinZoomScaleFixed:Z

    if-eqz v0, :cond_0

    move v0, v2

    .line 411
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/webkit/WebView;->mMinZoomScale:F

    iget v1, p0, Landroid/webkit/WebView;->mMaxZoomScale:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public viewToContentDimension(I)I
    .locals 2
    .parameter "d"

    .prologue
    .line 2764
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method viewToContentX(I)I
    .locals 1
    .parameter "x"

    .prologue
    .line 2773
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentXf(I)F
    .locals 2
    .parameter "x"

    .prologue
    .line 2790
    int-to-float v0, p1

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method viewToContentY(I)I
    .locals 1
    .parameter "y"

    .prologue
    .line 2782
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentDimension(I)I

    move-result v0

    return v0
.end method

.method viewToContentYf(I)F
    .locals 2
    .parameter "y"

    .prologue
    .line 2799
    invoke-virtual {p0}, Landroid/webkit/WebView;->getTitleHeight()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    iget v1, p0, Landroid/webkit/WebView;->mInvActualScale:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public zoomIn()Z
    .locals 3

    .prologue
    const/high16 v1, 0x3f00

    .line 8259
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8260
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 8262
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8263
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8264
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8265
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8266
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const/high16 v1, 0x3fa0

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .locals 3

    .prologue
    const/high16 v1, 0x3f00

    .line 8275
    invoke-virtual {p0}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    .line 8277
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    .line 8278
    invoke-virtual {p0}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    .line 8279
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterX:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollX:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorX:I

    .line 8280
    iget v0, p0, Landroid/webkit/WebView;->mZoomCenterY:F

    float-to-int v0, v0

    iget v1, p0, Landroid/view/View;->mScrollY:I

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v0

    iput v0, p0, Landroid/webkit/WebView;->mAnchorY:I

    .line 8281
    iget v0, p0, Landroid/webkit/WebView;->mActualScale:F

    const v1, 0x3f4ccccd

    mul-float/2addr v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Landroid/webkit/WebView;->zoomWithPreview(FZLandroid/webkit/OnPinchZoomListener$ZoomInfo;)Z

    move-result v0

    return v0
.end method
