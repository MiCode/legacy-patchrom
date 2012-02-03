.class final Landroid/webkit/WebViewCore;
.super Ljava/lang/Object;
.source "WebViewCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebViewCore$ShowRectData;,
        Landroid/webkit/WebViewCore$DrawData;,
        Landroid/webkit/WebViewCore$RestoreState;,
        Landroid/webkit/WebViewCore$EventHub;,
        Landroid/webkit/WebViewCore$SelectionCopiedData;,
        Landroid/webkit/WebViewCore$CopyParams;,
        Landroid/webkit/WebViewCore$GeolocationPermissionsData;,
        Landroid/webkit/WebViewCore$SelectAndClickData;,
        Landroid/webkit/WebViewCore$TouchEventData;,
        Landroid/webkit/WebViewCore$TouchUpData;,
        Landroid/webkit/WebViewCore$TextSelectionData;,
        Landroid/webkit/WebViewCore$ReplaceTextData;,
        Landroid/webkit/WebViewCore$PostUrlData;,
        Landroid/webkit/WebViewCore$GetUrlData;,
        Landroid/webkit/WebViewCore$MotionUpData;,
        Landroid/webkit/WebViewCore$JSKeyData;,
        Landroid/webkit/WebViewCore$JSInterfaceData;,
        Landroid/webkit/WebViewCore$CursorData;,
        Landroid/webkit/WebViewCore$BaseUrlData;,
        Landroid/webkit/WebViewCore$WebCoreThread;
    }
.end annotation


# static fields
.field static final ACTION_DOUBLETAP:I = 0x200

.field static final ACTION_LONGPRESS:I = 0x100

.field static final HandlerDebugString:[Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = "webcore"

.field static final SCROLL_BITS:I = 0x6

.field static final THREAD_NAME:Ljava/lang/String; = "WebViewCoreThread"

.field static final ZOOM_BITS:I = 0x86

.field private static mRepaintScheduled:Z

.field private static sWebCoreHandler:Landroid/os/Handler;


# instance fields
.field private final PREFS_BROWSER_SESSION_NAME:Ljava/lang/String;

.field bLoggingEnableCIQ:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private final mContext:Landroid/content/Context;

.field private mCurrentViewHeight:I

.field private mCurrentViewScale:F

.field private mCurrentViewWidth:I

.field private mDrawIsPaused:Z

.field private mDrawIsScheduled:Z

.field private final mEventHub:Landroid/webkit/WebViewCore$EventHub;

.field private mIQClient:Lcom/carrieriq/iqagent/client/IQClient;

.field private mJavascriptInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeClass:I

.field private mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

.field private mRestoredScale:I

.field private mRestoredScreenWidthScale:I

.field private mRestoredX:I

.field private mRestoredY:I

.field final mScrollFilter:Landroid/graphics/DrawFilter;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private mSplitPictureIsScheduled:Z

.field private mViewportDensityDpi:I

.field private mViewportHeight:I

.field private mViewportInitialScale:I

.field private mViewportMaximumScale:I

.field private mViewportMinimumScale:I

.field private mViewportUserScalable:Z

.field private mViewportWidth:I

.field private mWebView:Landroid/webkit/WebView;

.field private mWebkitScrollX:I

.field private mWebkitScrollY:I

.field final mZoomFilter:Landroid/graphics/DrawFilter;

.field private mbrowserSessionPageID:I

.field private reLoad:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    const-string/jumbo v0, "webcore"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 904
    const/16 v0, 0x49

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "REQUEST_LABEL"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "UPDATE_FRAME_CACHE_IF_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "SCROLL_TEXT_INPUT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "LOAD_URL"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "STOP_LOADING"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "RELOAD"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "KEY_DOWN"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "KEY_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "VIEW_SIZE_CHANGED"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "GO_BACK_FORWARD"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "SET_SCROLL_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "RESTORE_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "PAUSE_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "RESUME_TIMERS"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "CLEAR_CACHE"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "CLEAR_HISTORY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "SET_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "REPLACE_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "PASS_TO_JS"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "SET_GLOBAL_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "UPDATE_CACHE_AND_TEXT_ENTRY"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CLICK"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "SET_NETWORK_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "DOC_HAS_IMAGES"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "121"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "DELETE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "LISTBOX_CHOICES"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "SINGLE_LISTBOX_CHOICE"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "MESSAGE_RELAY"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "SET_BACKGROUND_COLOR"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "SET_MOVE_FOCUS"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "SAVE_DOCUMENT_STATE"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "129"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WEBKIT_DRAW"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "SYNC_SCROLL"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "POST_URL"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "SPLIT_PICTURE_SET"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "CLEAR_CONTENT"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "SET_MOVE_MOUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "SET_MOVE_MOUSE_IF_LATEST"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "REQUEST_CURSOR_HREF"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "ADD_JS_INTERFACE"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "LOAD_DATA"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "TOUCH_UP"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "TOUCH_EVENT"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "SET_ACTIVE"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "ON_PAUSE"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "ON_RESUME"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "FREE_MEMORY"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "VALID_NODE_BOUNDS"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "DELKEY_SIML_FOR_COUNT"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "GET_TEXT_AROUND_CURSOR"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "SET_SELECTION_FOR_EDITING"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "DELETE_SURROUNDING_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "GET_BODY_HTML"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "GET_SLECTION_OFFSET"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "GET_BODY_PLAIN_TEXT"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "EXEC_COMMAND"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "COPY_SAVE_IMAGE"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "DRAW_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "GET_EMAIL_MARKUP"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "SET_EDITABLE"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "GET_CARET_RECT"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "SET_SELECTION_NONE"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "CAN_UNDO"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "CAN_REDO"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "CLEAR_REDO_UNDO"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "GET_BODY_EMPTY"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "CONTENT_SELECTION_TYPE"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "RESTORE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "SAVE_SELECTION"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "CHECK_SELECTION_AT_BOUNDRY"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "COPY_MOVE_SELECTION"

    aput-object v2, v0, v1

    sput-object v0, Landroid/webkit/WebViewCore;->HandlerDebugString:[Ljava/lang/String;

    .line 2603
    sput-boolean v3, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Landroid/webkit/CallbackProxy;Ljava/util/Map;)V
    .locals 9
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebView;",
            "Landroid/webkit/CallbackProxy;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v7, 0x0

    const/4 v4, -0x1

    const/4 v6, 0x0

    const-class v8, Landroid/webkit/WebViewCore;

    const-string/jumbo v3, "webcore"

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 108
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportHeight:I

    .line 113
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 118
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 123
    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 125
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    .line 134
    iput v4, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    .line 136
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 137
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    .line 138
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 139
    iput v6, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 141
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    .line 142
    iput v6, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    .line 153
    const-string v3, "BrowserSessionFile"

    iput-object v3, p0, Landroid/webkit/WebViewCore;->PREFS_BROWSER_SESSION_NAME:Ljava/lang/String;

    .line 2196
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2197
    iput v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2198
    const/high16 v3, 0x3f80

    iput v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2302
    iput-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2391
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/16 v4, 0x86

    const/16 v5, 0x40

    invoke-direct {v3, v4, v5}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 2394
    new-instance v3, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v4, 0x6

    invoke-direct {v3, v4, v6}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    .line 159
    iput-object p3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    .line 160
    iput-object p2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    .line 161
    iput-object p4, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 164
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    .line 170
    const-class v3, Landroid/webkit/WebViewCore;

    monitor-enter v8

    .line 171
    :try_start_0
    sget-object v4, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    if-nez v4, :cond_0

    .line 173
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Landroid/webkit/WebViewCore$WebCoreThread;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Landroid/webkit/WebViewCore$WebCoreThread;-><init>(Landroid/webkit/WebViewCore$1;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 174
    .local v2, t:Ljava/lang/Thread;
    const-string v4, "WebViewCoreThread"

    invoke-virtual {v2, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 175
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    :try_start_1
    const-class v4, Landroid/webkit/WebViewCore;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 184
    .end local v2           #t:Ljava/lang/Thread;
    :cond_0
    :goto_0
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 187
    new-instance v3, Landroid/webkit/WebViewCore$EventHub;

    invoke-direct {v3, p0, v7}, Landroid/webkit/WebViewCore$EventHub;-><init>(Landroid/webkit/WebViewCore;Landroid/webkit/WebViewCore$1;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    .line 189
    new-instance v3, Landroid/webkit/WebSettings;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-direct {v3, v4, v5}, Landroid/webkit/WebSettings;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    iput-object v3, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    .line 192
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 194
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebStorage;->createUIHandler()V

    .line 196
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/GeolocationPermissions;->createUIHandler()V

    .line 198
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 200
    .local v1, init:Landroid/os/Message;
    sget-object v3, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 207
    return-void

    .line 178
    .end local v1           #init:Landroid/os/Message;
    .restart local v2       #t:Ljava/lang/Thread;
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 179
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string/jumbo v4, "webcore"

    const-string v5, "Caught exception while waiting for thread creation."

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string/jumbo v4, "webcore"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v0           #e:Ljava/lang/InterruptedException;
    .end local v2           #t:Ljava/lang/Thread;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method private HttpEquivhandle(Ljava/lang/String;)V
    .locals 2
    .parameter "Url"

    .prologue
    .line 2662
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    const/16 v1, 0x71

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewWorker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2664
    return-void
.end method

.method static synthetic access$1000(Landroid/webkit/WebViewCore;)Landroid/webkit/WebView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic access$1002(Landroid/webkit/WebViewCore;Landroid/webkit/WebView;)Landroid/webkit/WebView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object p1
.end method

.method static synthetic access$1100(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRequestLabel(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCacheIfLoading()V

    return-void
.end method

.method static synthetic access$1300(Landroid/webkit/WebViewCore;FI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeScrollFocusedTextInput(FI)V

    return-void
.end method

.method static synthetic access$1400(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/webkit/WebViewCore;Landroid/view/KeyEvent;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->key(Landroid/view/KeyEvent;Z)V

    return-void
.end method

.method static synthetic access$1700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClick(II)V

    return-void
.end method

.method static synthetic access$1800(Landroid/webkit/WebViewCore;IIIFIIZZII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"
    .parameter "x9"
    .parameter "x10"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p10}, Landroid/webkit/WebViewCore;->viewSizeChanged(IIIFIIZZII)V

    return-void
.end method

.method static synthetic access$1900(Landroid/webkit/WebViewCore;IIIIIFII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->nativeUpdatePlugins(IIIIIFII)V

    return-void
.end method

.method static synthetic access$2000(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeSetScrollOffset(III)V

    return-void
.end method

.method static synthetic access$2100(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSetGlobalBounds(IIII)V

    return-void
.end method

.method static synthetic access$2200(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->restoreState(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePause()V

    return-void
.end method

.method static synthetic access$2600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeResume()V

    return-void
.end method

.method static synthetic access$2700(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    return-void
.end method

.method static synthetic access$2800(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->clearCache(Z)V

    return-void
.end method

.method static synthetic access$2900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFreeMemory()V

    return-void
.end method

.method static synthetic access$300(Landroid/webkit/WebViewCore;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetNewStorageLimit(J)V

    return-void
.end method

.method static synthetic access$3000(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSimulateDelKeyForCount(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/webkit/WebViewCore;IZ)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeGetTextAroundCursor(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3200(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDeleteSurroundingText(II)V

    return-void
.end method

.method static synthetic access$3300(Landroid/webkit/WebViewCore;)Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionOffset()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Landroid/webkit/WebViewCore;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyHTML()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetBodyEmpty()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeContentSelectionType()I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Landroid/webkit/WebViewCore;Z)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeGetCursorRect(Z)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Landroid/webkit/WebViewCore;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanUndo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$402(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    sput-object p0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$4100(Landroid/webkit/WebViewCore;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCanRedo()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUndoRedoStateReset()V

    return-void
.end method

.method static synthetic access$4300(Landroid/webkit/WebViewCore;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeCopyAndSaveImage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    return-void
.end method

.method static synthetic access$4500(Landroid/webkit/WebViewCore;)Landroid/webkit/WebHTMLMarkupData;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4600(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetEditable(Z)V

    return-void
.end method

.method static synthetic access$4700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelectionEditable(II)V

    return-void
.end method

.method static synthetic access$4800(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSetSelectionNone()V

    return-void
.end method

.method static synthetic access$4900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeRestorePreviousSelectionController()V

    return-void
.end method

.method static synthetic access$500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    return-void
.end method

.method static synthetic access$5000(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSaveSelectionController()V

    return-void
.end method

.method static synthetic access$5100(Landroid/webkit/WebViewCore;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeCheckSelectionAtBoundry()I

    move-result v0

    return v0
.end method

.method static synthetic access$5200(Landroid/webkit/WebViewCore;)Landroid/webkit/CallbackProxy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method static synthetic access$5300(Landroid/webkit/WebViewCore;IILjava/lang/String;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p6}, Landroid/webkit/WebViewCore;->nativeReplaceTextfieldText(IILjava/lang/String;III)V

    return-void
.end method

.method static synthetic access$5400(Landroid/webkit/WebViewCore;ILjava/lang/String;IIZZZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"
    .parameter "x8"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p8}, Landroid/webkit/WebViewCore;->passToJs(ILjava/lang/String;IIZZZZ)V

    return-void
.end method

.method static synthetic access$5500(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSaveDocumentState(I)V

    return-void
.end method

.method static synthetic access$5600(Landroid/webkit/WebViewCore;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$5700(Landroid/webkit/WebViewCore;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 62
    invoke-direct/range {p0 .. p5}, Landroid/webkit/WebViewCore;->nativeTouchUp(IIIII)V

    return-void
.end method

.method static synthetic access$5800(Landroid/webkit/WebViewCore;IIII)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeHandleTouchEvent(IIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5900(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetFocusControllerActive(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->webkitDraw()V

    return-void
.end method

.method static synthetic access$6000(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMoveFocus(II)V

    return-void
.end method

.method static synthetic access$6100(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeMoveMouse(III)V

    return-void
.end method

.method static synthetic access$6200(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeMoveMouseIfLatest(IIII)V

    return-void
.end method

.method static synthetic access$6300(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveHref(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Landroid/webkit/WebViewCore;II)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeRetrieveAnchorText(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6500(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    return-void
.end method

.method static synthetic access$6600(Landroid/webkit/WebViewCore;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeDeleteSelection(III)V

    return-void
.end method

.method static synthetic access$6700(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSetSelection(II)V

    return-void
.end method

.method static synthetic access$6800(Landroid/webkit/WebViewCore;[ZI)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoices([ZI)V

    return-void
.end method

.method static synthetic access$6900(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSendListBoxChoice(I)V

    return-void
.end method

.method static synthetic access$700(Landroid/webkit/WebViewCore;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$7000(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetBackgroundColor(I)V

    return-void
.end method

.method static synthetic access$702(Landroid/webkit/WebViewCore;Landroid/webkit/BrowserFrame;)Landroid/webkit/BrowserFrame;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-object p1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object p1
.end method

.method static synthetic access$7100(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpDomTree(Z)V

    return-void
.end method

.method static synthetic access$7200(Landroid/webkit/WebViewCore;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeDumpRenderTree(Z)V

    return-void
.end method

.method static synthetic access$7300(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpNavTree()V

    return-void
.end method

.method static synthetic access$7400(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeDumpV8Counters()V

    return-void
.end method

.method static synthetic access$7500(Landroid/webkit/WebViewCore;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeSetJsFlags(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$7600(Landroid/webkit/WebViewCore;Ljava/lang/String;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$7702(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    return p1
.end method

.method static synthetic access$7802(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    return p1
.end method

.method static synthetic access$7900(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeSplitContent()V

    return-void
.end method

.method static synthetic access$800(Landroid/webkit/WebViewCore;)Landroid/webkit/WebSettings;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method static synthetic access$8002(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    return p1
.end method

.method static synthetic access$8100(Landroid/webkit/WebViewCore;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeClearContent()V

    return-void
.end method

.method static synthetic access$8200(Landroid/webkit/WebViewCore;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeProvideVisitedHistory([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$8300(Landroid/webkit/WebViewCore;IILandroid/graphics/Rect;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8400(Landroid/webkit/WebViewCore;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/webkit/WebViewCore;->nativeFullScreenPluginHidden(I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/webkit/WebViewCore;IIF)Landroid/graphics/Rect;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebViewCore;->nativeGetBlockBounds(IIF)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$8600(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeMouseClick(II)V

    return-void
.end method

.method static synthetic access$8700(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSelectAndClick(IIII)V

    return-void
.end method

.method static synthetic access$8800(Landroid/webkit/WebViewCore;IIIZZFI)V
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
    .line 62
    invoke-direct/range {p0 .. p7}, Landroid/webkit/WebViewCore;->nativeCopyMoveSelection(IIIZZFI)V

    return-void
.end method

.method static synthetic access$8900(Landroid/webkit/WebViewCore;IIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeWebTextSelectionAll(IIII)V

    return-void
.end method

.method static synthetic access$9000(Landroid/webkit/WebViewCore;IIFZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewCore;->nativeSelectClosestWord(IIFZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$902(Landroid/webkit/WebViewCore;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    return p1
.end method

.method static synthetic access$9100(Landroid/webkit/WebViewCore;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeClearTextSelection(II)V

    return-void
.end method

.method static synthetic access$9202(Landroid/webkit/WebViewCore;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    return p1
.end method

.method private addSurface(Landroid/view/View;IIII)Landroid/webkit/ViewManager$ChildView;
    .locals 5
    .parameter "pluginView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v4, 0x0

    .line 3064
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v2, :cond_0

    move-object v2, v4

    .line 3082
    :goto_0
    return-object v2

    .line 3068
    :cond_0
    if-nez p1, :cond_1

    .line 3069
    const-string/jumbo v2, "webcore"

    const-string v3, "Attempted to add an empty plugin view to the view hierarchy"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v4

    .line 3070
    goto :goto_0

    .line 3074
    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setWillNotDraw(Z)V

    .line 3076
    instance-of v2, p1, Landroid/view/SurfaceView;

    if-eqz v2, :cond_2

    .line 3077
    move-object v0, p1

    check-cast v0, Landroid/view/SurfaceView;

    move-object v2, v0

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/view/SurfaceView;->setZOrderOnTop(Z)V

    .line 3079
    :cond_2
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v2}, Landroid/webkit/ViewManager;->createView()Landroid/webkit/ViewManager$ChildView;

    move-result-object v1

    .line 3080
    .local v1, view:Landroid/webkit/ViewManager$ChildView;
    iput-object p1, v1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    .line 3081
    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    move-object v2, v1

    .line 3082
    goto :goto_0
.end method

.method private centerFitRect(IIII)V
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3147
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3152
    :goto_0
    return-void

    .line 3150
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7f

    new-instance v2, Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    invoke-direct {v2, p1, p2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private clearCache(Z)V
    .locals 1
    .parameter "includeDiskFiles"

    .prologue
    .line 2142
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->clearCache()V

    .line 2143
    if-eqz p1, :cond_0

    .line 2144
    invoke-static {}, Landroid/webkit/CacheManager;->removeAllCacheFiles()Z

    .line 2146
    :cond_0
    return-void
.end method

.method private clearTextEntry()V
    .locals 2

    .prologue
    .line 2913
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2916
    :goto_0
    return-void

    .line 2914
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollBy(IIZ)V
    .locals 4
    .parameter "dx"
    .parameter "dy"
    .parameter "animate"

    .prologue
    .line 2515
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2529
    :cond_0
    :goto_0
    return-void

    .line 2519
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2520
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    new-instance v3, Ljava/lang/Boolean;

    invoke-direct {v3, p3}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v1, v2, p1, p2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2522
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 2523
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2526
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentScrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2533
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2539
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2540
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2553
    :cond_0
    :goto_0
    return-void

    .line 2543
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2544
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2546
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 2547
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2550
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private contentSpawnScrollTo(II)V
    .locals 4
    .parameter "x"
    .parameter "y"

    .prologue
    .line 2557
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2563
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    .line 2564
    iput p2, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    .line 2577
    :cond_0
    :goto_0
    return-void

    .line 2567
    :cond_1
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2568
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x67

    invoke-static {v1, v2, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 2570
    .local v0, msg:Landroid/os/Message;
    iget-boolean v1, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v1, :cond_2

    .line 2571
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v2, 0x0

    const/16 v3, 0x7d

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v1, v2}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto :goto_0

    .line 2574
    :cond_2
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private destroySurface(Landroid/webkit/ViewManager$ChildView;)V
    .locals 0
    .parameter "childView"

    .prologue
    .line 3091
    invoke-virtual {p1}, Landroid/webkit/ViewManager$ChildView;->removeView()V

    .line 3092
    return-void
.end method

.method private didFirstLayout(Z)V
    .locals 5
    .parameter "standardLoad"

    .prologue
    const/4 v4, 0x0

    .line 2638
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v1, :cond_0

    .line 2639
    const-string/jumbo v1, "webcore"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "didFirstLayout standardLoad ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2642
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v1}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    .line 2644
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_1

    .line 2658
    :goto_0
    return-void

    .line 2646
    :cond_1
    if-nez p1, :cond_2

    iget v1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v1, :cond_4

    :cond_2
    const/4 v1, 0x1

    move v0, v1

    .line 2647
    .local v0, updateRestoreState:Z
    :goto_1
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2651
    if-nez v0, :cond_3

    .line 2652
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v1}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    .line 2656
    :cond_3
    iput v4, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    iput v4, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    iput v4, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v4, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v4, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v4, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    goto :goto_0

    .end local v0           #updateRestoreState:Z
    :cond_4
    move v0, v4

    .line 2646
    goto :goto_1
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 3008
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .parameter "libName"
    .parameter "clsName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const-string v7, ")"

    const-string/jumbo v6, "webcore"

    .line 3014
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v3, :cond_0

    move-object v3, v5

    .line 3035
    :goto_0
    return-object v3

    .line 3018
    :cond_0
    invoke-static {v5}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v2

    .line 3020
    .local v2, pluginManager:Landroid/webkit/PluginManager;
    invoke-virtual {v2, p1}, Landroid/webkit/PluginManager;->getPluginsAPKName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3021
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_1

    .line 3022
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to resolve "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to a plugin APK"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 3023
    goto :goto_0

    .line 3027
    :cond_1
    :try_start_0
    invoke-virtual {v2, v1, p2}, Landroid/webkit/PluginManager;->getPluginClass(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_0

    .line 3028
    :catch_0
    move-exception v0

    .line 3029
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin classloader for the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1
    move-object v3, v5

    .line 3035
    goto :goto_0

    .line 3030
    :catch_1
    move-exception v0

    .line 3031
    .local v0, e:Ljava/lang/ClassNotFoundException;
    const-string/jumbo v3, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find plugin class ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in the apk ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getUsedQuota()J
    .locals 8

    .prologue
    .line 2278
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v4

    .line 2279
    .local v4, webStorage:Landroid/webkit/WebStorage;
    invoke-virtual {v4}, Landroid/webkit/WebStorage;->getOriginsSync()Ljava/util/Collection;

    move-result-object v1

    .line 2281
    .local v1, origins:Ljava/util/Collection;,"Ljava/util/Collection<Landroid/webkit/WebStorage$Origin;>;"
    if-nez v1, :cond_0

    .line 2282
    const-wide/16 v6, 0x0

    .line 2288
    :goto_0
    return-wide v6

    .line 2284
    :cond_0
    const-wide/16 v2, 0x0

    .line 2285
    .local v2, usedQuota:J
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebStorage$Origin;

    .line 2286
    .local v5, website:Landroid/webkit/WebStorage$Origin;
    invoke-virtual {v5}, Landroid/webkit/WebStorage$Origin;->getQuota()J

    move-result-wide v6

    add-long/2addr v2, v6

    goto :goto_1

    .end local v5           #website:Landroid/webkit/WebStorage$Origin;
    :cond_1
    move-wide v6, v2

    .line 2288
    goto :goto_0
.end method

.method private hideFullScreenPlugin()V
    .locals 2

    .prologue
    .line 3053
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3058
    :goto_0
    return-void

    .line 3056
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x79

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private initBrowserSessionID(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    const-string v4, "appSessionID"

    .line 216
    const-string v2, "BrowserSessionFile"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 217
    .local v0, browserSession:Landroid/content/SharedPreferences;
    const-string v2, "appSessionID"

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Landroid/webkit/WebViewCore;->mbrowserSessionPageID:I

    .line 218
    iget v2, p0, Landroid/webkit/WebViewCore;->mbrowserSessionPageID:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/webkit/WebViewCore;->mbrowserSessionPageID:I

    .line 219
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 220
    .local v1, browserSessionEditor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "appSessionID"

    iget v2, p0, Landroid/webkit/WebViewCore;->mbrowserSessionPageID:I

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 222
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 223
    return-void
.end method

.method private initialize()V
    .locals 6

    .prologue
    .line 247
    new-instance v0, Landroid/webkit/BrowserFrame;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v5, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroid/webkit/BrowserFrame;-><init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 249
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/webkit/WebViewCore;->mJavascriptInterfaces:Ljava/util/Map;

    .line 251
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    iget-object v1, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V

    .line 253
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->createHandler()V

    .line 255
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->createHandler()V

    .line 257
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/GeolocationPermissions;->createHandler()V

    .line 260
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->transferMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$200(Landroid/webkit/WebViewCore$EventHub;)V

    .line 264
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6b

    iget v2, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 270
    :cond_0
    return-void
.end method

.method private key(Landroid/view/KeyEvent;Z)V
    .locals 9
    .parameter "evt"
    .parameter "isDown"

    .prologue
    const-string/jumbo v8, "webcore"

    .line 2154
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v0, :cond_0

    .line 2155
    const-string/jumbo v0, "webcore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CORE key at "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 2159
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    .line 2161
    .local v2, unicodeChar:I
    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 2164
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 2167
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v5

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isSymPressed()Z

    move-result v6

    move-object v0, p0

    move v7, p2

    invoke-direct/range {v0 .. v7}, Landroid/webkit/WebViewCore;->nativeKey(IIIZZZZ)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x42

    if-eq v1, v0, :cond_3

    .line 2170
    const/16 v0, 0x13

    if-lt v1, v0, :cond_4

    const/16 v0, 0x16

    if-gt v1, v0, :cond_4

    .line 2172
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v0, :cond_2

    .line 2173
    const-string/jumbo v0, "webcore"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key: arrow unused by plugin: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    :cond_2
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->isDown()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2176
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x6e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2186
    :cond_3
    :goto_0
    return-void

    .line 2184
    :cond_4
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onUnhandledKeyEvent(Landroid/view/KeyEvent;)V

    goto :goto_0
.end method

.method private loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 3
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
    .line 2149
    .local p2, extraHeaders:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webcore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " CORE loadUrl "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2150
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/BrowserFrame;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 2151
    return-void
.end method

.method private native nativeCanRedo()Z
.end method

.method private native nativeCanUndo()Z
.end method

.method private native nativeCheckSelectionAtBoundry()I
.end method

.method private native nativeClearContent()V
.end method

.method private native nativeClearTextSelection(II)V
.end method

.method private native nativeClick(II)V
.end method

.method private native nativeContentSelectionType()I
.end method

.method private native nativeCopyAndSaveImage(Ljava/lang/String;)Z
.end method

.method private native nativeCopyContentToPicture(Landroid/graphics/Picture;)V
.end method

.method private native nativeCopyMoveSelection(IIIZZFI)V
.end method

.method private native nativeDeleteSelection(III)V
.end method

.method private native nativeDeleteSurroundingText(II)V
.end method

.method private native nativeDrawContent(Landroid/graphics/Canvas;I)Z
.end method

.method private native nativeDumpDomTree(Z)V
.end method

.method private native nativeDumpNavTree()V
.end method

.method private native nativeDumpRenderTree(Z)V
.end method

.method private native nativeDumpV8Counters()V
.end method

.method private native nativeExecCommand(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method static native nativeFindAddress(Ljava/lang/String;Z)Ljava/lang/String;
.end method

.method private native nativeFocusBoundsChanged()Z
.end method

.method private native nativeFreeMemory()V
.end method

.method private native nativeFullScreenPluginHidden(I)V
.end method

.method private native nativeGeolocationPermissionsProvide(Ljava/lang/String;ZZ)V
.end method

.method private native nativeGetBlockBounds(IIF)Landroid/graphics/Rect;
.end method

.method private native nativeGetBodyEmpty()Z
.end method

.method private native nativeGetBodyHTML()Ljava/lang/String;
.end method

.method private native nativeGetBodyText()Ljava/lang/String;
.end method

.method private native nativeGetContentMinPrefWidth()I
.end method

.method private native nativeGetCursorRect(Z)Landroid/graphics/Rect;
.end method

.method private native nativeGetFullMarkupData()Landroid/webkit/WebHTMLMarkupData;
.end method

.method private native nativeGetSelectedText()Ljava/lang/String;
.end method

.method private native nativeGetSelectionGranularity()I
.end method

.method private native nativeGetSelectionOffset()Landroid/graphics/Point;
.end method

.method private native nativeGetTextAroundCursor(IZ)Ljava/lang/String;
.end method

.method private native nativeHandleTouchEvent(IIII)Z
.end method

.method private native nativeKey(IIIZZZZ)Z
.end method

.method private native nativeMouseClick(II)V
.end method

.method private native nativeMoveFocus(II)V
.end method

.method private native nativeMoveMouse(III)V
.end method

.method private native nativeMoveMouseIfLatest(IIII)V
.end method

.method private native nativePause()V
.end method

.method private native nativePictureReady()Z
.end method

.method private native nativeProvideVisitedHistory([Ljava/lang/String;)V
.end method

.method private native nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z
.end method

.method private native nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z
.end method

.method private native nativeRegisterURLSchemeAsLocal(Ljava/lang/String;)V
.end method

.method private native nativeReplaceTextfieldText(IILjava/lang/String;III)V
.end method

.method private native nativeRequestLabel(II)Ljava/lang/String;
.end method

.method private native nativeRestorePreviousSelectionController()V
.end method

.method private native nativeResume()V
.end method

.method private native nativeRetrieveAnchorText(II)Ljava/lang/String;
.end method

.method private native nativeRetrieveHref(II)Ljava/lang/String;
.end method

.method private native nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeSaveDocumentState(I)V
.end method

.method private native nativeSaveSelectionController()V
.end method

.method private native nativeScrollFocusedTextInput(FI)V
.end method

.method private native nativeSelectAndClick(IIII)V
.end method

.method private native nativeSelectClosestWord(IIFZ)Z
.end method

.method private native nativeSendListBoxChoice(I)V
.end method

.method private native nativeSendListBoxChoices([ZI)V
.end method

.method private native nativeSetBackgroundColor(I)V
.end method

.method private native nativeSetEditable(Z)V
.end method

.method private native nativeSetFocusControllerActive(Z)V
.end method

.method private native nativeSetGlobalBounds(IIII)V
.end method

.method private native nativeSetJsFlags(Ljava/lang/String;)V
.end method

.method private native nativeSetNewStorageLimit(J)V
.end method

.method private static native nativeSetPluginRefreshDelay(I)V
.end method

.method private native nativeSetScrollOffset(III)V
.end method

.method private native nativeSetSelection(II)V
.end method

.method private native nativeSetSelectionEditable(II)V
.end method

.method private native nativeSetSelectionNone()V
.end method

.method private native nativeSetSize(IIIFIIIIZZII)V
.end method

.method private native nativeSimulateDelKeyForCount(I)V
.end method

.method private native nativeSplitContent()V
.end method

.method private native nativeTouchUp(IIIII)V
.end method

.method private native nativeUndoRedoStateReset()V
.end method

.method private native nativeUpdateFrameCache()V
.end method

.method private native nativeUpdateFrameCacheIfLoading()V
.end method

.method private native nativeUpdatePlugins(IIIIIFII)V
.end method

.method private native nativeValidNodeAndBounds(IILandroid/graphics/Rect;)Z
.end method

.method private native nativeWebTextSelectionAll(IIII)V
.end method

.method private needTouchEvents(ZZ)V
    .locals 5
    .parameter "need"
    .parameter "isPlugin"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2879
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 2880
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    if-eqz p1, :cond_2

    move v2, v4

    :goto_0
    if-eqz p2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2884
    :cond_1
    return-void

    :cond_2
    move v2, v3

    .line 2880
    goto :goto_0
.end method

.method private openFileChooser()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 362
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->openFileChooser()Landroid/net/Uri;

    move-result-object v1

    .line 363
    .local v1, uri:Landroid/net/Uri;
    if-nez v1, :cond_0

    const-string v0, ""

    .line 384
    :goto_0
    return-object v0

    .line 368
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_display_name"

    aput-object v4, v2, v5

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 374
    .local v6, cursor:Landroid/database/Cursor;
    const-string v7, ""

    .line 375
    .local v7, name:Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 377
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 381
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 384
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 381
    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private native passToJs(ILjava/lang/String;IIZZZZ)V
.end method

.method public static pauseTimers()V
    .locals 2

    .prologue
    .line 298
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 299
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 302
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->pause()V

    .line 303
    return-void
.end method

.method static pauseUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "core"

    .prologue
    .line 2454
    if-eqz p0, :cond_1

    .line 2455
    monitor-enter p0

    .line 2456
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2457
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_0

    .line 2458
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v1, 0x82

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9600(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2460
    :cond_0
    monitor-exit p0

    .line 2463
    :cond_1
    return-void

    .line 2460
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static reducePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2436
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2437
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2438
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2440
    return-void
.end method

.method private requestKeyboard(Z)V
    .locals 5
    .parameter "showKeyboard"

    .prologue
    const/4 v4, 0x0

    .line 2991
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2993
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v1, v2, v4, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2997
    :cond_0
    return-void

    :cond_1
    move v2, v4

    .line 2993
    goto :goto_0
.end method

.method private requestKeyboardWithSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "selStart"
    .parameter "selEnd"
    .parameter "textGeneration"

    .prologue
    .line 2981
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2982
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2987
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[III)V
    .locals 4
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selection"
    .parameter "pointer"

    .prologue
    const/4 v3, 0x0

    .line 2960
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v2, :cond_0

    .line 2961
    const/4 v2, 0x1

    new-array v1, v2, [I

    aput p4, v1, v3

    .line 2962
    .local v1, selectedArray:[I
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 2963
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 2964
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 2965
    iput-object v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 2966
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 2967
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 2968
    iput-boolean v3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 2970
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v2, v2, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v3, 0x84

    invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 2975
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    .end local v1           #selectedArray:[I
    :cond_0
    return-void
.end method

.method private requestListBox([Ljava/lang/String;Ljava/lang/String;[I[II)V
    .locals 3
    .parameter "array"
    .parameter "name"
    .parameter "enabledArray"
    .parameter "selectedArray"
    .parameter "pointer"

    .prologue
    .line 2941
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 2942
    new-instance v0, Landroid/webkit/WebView$WebSelectRequest;

    invoke-direct {v0}, Landroid/webkit/WebView$WebSelectRequest;-><init>()V

    .line 2943
    .local v0, req:Landroid/webkit/WebView$WebSelectRequest;
    iput-object p1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    .line 2944
    iput-object p3, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    .line 2945
    iput-object p4, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    .line 2946
    iput p5, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    .line 2947
    iput-object p2, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    .line 2948
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    .line 2951
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x84

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2955
    .end local v0           #req:Landroid/webkit/WebView$WebSelectRequest;
    :cond_0
    return-void
.end method

.method private restoreScale(I)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 2861
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2862
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    .line 2864
    :cond_0
    return-void
.end method

.method private restoreScreenWidthScale(I)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 2868
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2875
    :cond_0
    :goto_0
    return-void

    .line 2872
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2873
    iput p1, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    goto :goto_0
.end method

.method private restoreState(I)V
    .locals 5
    .parameter "index"

    .prologue
    .line 2480
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v1

    .line 2481
    .local v1, list:Landroid/webkit/WebBackForwardList;
    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getSize()I

    move-result v2

    .line 2482
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 2483
    invoke-virtual {v1, v0}, Landroid/webkit/WebBackForwardList;->getItemAtIndex(I)Landroid/webkit/WebHistoryItem;

    move-result-object v3

    iget-object v4, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v4, v4, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-virtual {v3, v4}, Landroid/webkit/WebHistoryItem;->inflate(I)V

    .line 2482
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2485
    :cond_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2486
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    iget v3, v3, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-static {v3, p1}, Landroid/webkit/WebBackForwardList;->restoreIndex(II)V

    .line 2487
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    .line 2488
    return-void
.end method

.method static resumePriority()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 2444
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 2445
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2446
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    sget-object v1, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 2448
    return-void
.end method

.method public static resumeTimers()V
    .locals 2

    .prologue
    .line 309
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No WebView has been created in this process!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 313
    :cond_0
    sget-object v0, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    invoke-virtual {v0}, Landroid/webkit/JWebCoreJavaBridge;->resume()V

    .line 314
    return-void
.end method

.method static resumeUpdatePicture(Landroid/webkit/WebViewCore;)V
    .locals 1
    .parameter "core"

    .prologue
    .line 2466
    if-eqz p0, :cond_1

    .line 2467
    monitor-enter p0

    .line 2468
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    .line 2469
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_0

    .line 2470
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2471
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2473
    :cond_0
    monitor-exit p0

    .line 2475
    :cond_1
    return-void

    .line 2473
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private sendFindAgain()V
    .locals 2

    .prologue
    .line 2920
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 2923
    :goto_0
    return-void

    .line 2921
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7e

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private sendImmediateRepaint()V
    .locals 2

    .prologue
    .line 2614
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    sget-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    if-nez v0, :cond_0

    .line 2615
    const/4 v0, 0x1

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2616
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7b

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2619
    :cond_0
    return-void
.end method

.method private sendNotifyProgressFinished()V
    .locals 2

    .prologue
    const/16 v1, 0x6e

    .line 2581
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->sendUpdateTextEntry()V

    .line 2584
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->removeMessages(I)V

    .line 2586
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    .line 2588
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2589
    return-void
.end method

.method private sendOrientationChangeEvent()V
    .locals 1

    .prologue
    .line 3002
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->sendOrientationChangeEvent()V

    .line 3003
    return-void
.end method

.method private sendUpdateTextEntry()V
    .locals 2

    .prologue
    .line 2269
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2270
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x6a

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2273
    :cond_0
    return-void
.end method

.method private sendViewInvalidate(IIII)V
    .locals 3
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 2596
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2597
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x75

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1, p2, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2601
    :cond_0
    return-void
.end method

.method static setPluginRefreshDelay(I)V
    .locals 0
    .parameter "ms"

    .prologue
    .line 3164
    invoke-static {p0}, Landroid/webkit/WebViewCore;->nativeSetPluginRefreshDelay(I)V

    .line 3165
    return-void
.end method

.method private setRootLayer(I)V
    .locals 3
    .parameter "layer"

    .prologue
    .line 2623
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2624
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2628
    :cond_0
    return-void
.end method

.method private setScrollbarModes(II)V
    .locals 2
    .parameter "hMode"
    .parameter "vMode"

    .prologue
    .line 3156
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v0, :cond_0

    .line 3161
    :goto_0
    return-void

    .line 3159
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x81

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private native setViewportSettingsFromNative()V
.end method

.method private setupViewport(Z)V
    .locals 10
    .parameter "updateRestoreState"

    .prologue
    .line 2681
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->setViewportSettingsFromNative()V

    .line 2684
    const/high16 v0, 0x3f80

    .line 2685
    .local v0, adjust:F
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_a

    .line 2686
    sget v6, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    const/16 v7, 0x64

    if-eq v6, v7, :cond_0

    .line 2687
    sget v6, Landroid/webkit/WebView;->DEFAULT_SCALE_PERCENT:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v0, v6, v7

    .line 2693
    :cond_0
    :goto_0
    const/high16 v6, 0x42c8

    mul-float/2addr v6, v0

    float-to-int v2, v6

    .line 2695
    .local v2, defaultScale:I
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v6, :cond_1

    .line 2696
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2698
    :cond_1
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    if-lez v6, :cond_2

    .line 2699
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2701
    :cond_2
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v6, :cond_3

    .line 2702
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v6, v6

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2706
    :cond_3
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v6, :cond_4

    .line 2707
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-nez v6, :cond_4

    .line 2708
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2711
    :cond_4
    iget-boolean v6, p0, Landroid/webkit/WebViewCore;->mViewportUserScalable:Z

    if-nez v6, :cond_5

    .line 2712
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    .line 2713
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2714
    iput v2, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2716
    :cond_5
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-le v6, v7, :cond_6

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-eqz v6, :cond_6

    .line 2718
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    .line 2720
    :cond_6
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    if-lez v6, :cond_7

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ge v6, v7, :cond_7

    .line 2722
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    .line 2724
    :cond_7
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-gez v6, :cond_8

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-ne v6, v2, :cond_8

    .line 2725
    const/4 v6, 0x0

    iput v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    .line 2729
    :cond_8
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-eqz v6, :cond_b

    if-nez p1, :cond_b

    .line 2730
    new-instance v3, Landroid/webkit/WebViewCore$RestoreState;

    invoke-direct {v3}, Landroid/webkit/WebViewCore$RestoreState;-><init>()V

    .line 2731
    .local v3, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    .line 2732
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    .line 2733
    iput v0, v3, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    .line 2735
    const/4 v6, 0x0

    iput-boolean v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    .line 2737
    const/4 v6, 0x0

    iput v6, v3, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    .line 2738
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x6d

    invoke-static {v6, v7, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 2857
    .end local v3           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :cond_9
    :goto_1
    return-void

    .line 2689
    .end local v2           #defaultScale:I
    :cond_a
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    if-lez v6, :cond_0

    .line 2690
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v6, v6

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportDensityDpi:I

    int-to-float v7, v7

    div-float v0, v6, v7

    goto/16 :goto_0

    .line 2747
    .restart local v2       #defaultScale:I
    :cond_b
    iget v4, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2748
    .local v4, viewportWidth:I
    if-nez v4, :cond_d

    .line 2752
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v5

    .line 2753
    .local v5, webViewWidth:I
    int-to-float v6, v5

    div-float/2addr v6, v0

    float-to-int v4, v6

    .line 2754
    if-nez v4, :cond_c

    .line 2755
    const-string/jumbo v6, "webcore"

    const-string v7, "Can\'t get the viewWidth after the first layout"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_c
    :goto_2
    new-instance v6, Landroid/webkit/WebViewCore$RestoreState;

    invoke-direct {v6}, Landroid/webkit/WebViewCore$RestoreState;-><init>()V

    iput-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2761
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportMinimumScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMinScale:F

    .line 2762
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportMaximumScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMaxScale:F

    .line 2763
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput v0, v6, Landroid/webkit/WebViewCore$RestoreState;->mDefaultScale:F

    .line 2764
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredX:I

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    .line 2765
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredY:I

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    .line 2766
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v7, :cond_e

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mMobileSite:Z

    .line 2767
    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v6, :cond_10

    .line 2768
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    .line 2769
    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    if-lez v6, :cond_f

    .line 2770
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, p0, Landroid/webkit/WebViewCore;->mRestoredScreenWidthScale:I

    int-to-float v7, v7

    const/high16 v8, 0x42c8

    div-float/2addr v7, v8

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    .line 2789
    :goto_4
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-boolean v6, v6, Landroid/webkit/WebView;->mHeightCanMeasure:Z

    if-eqz v6, :cond_13

    .line 2795
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    .line 2798
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2799
    .local v1, data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2800
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2803
    iget v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2804
    const/high16 v6, -0x4080

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2805
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2806
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2813
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v7, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9600(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2814
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x69

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2758
    .end local v1           #data:Landroid/webkit/WebView$ViewSizeData;
    .end local v5           #webViewWidth:I
    :cond_d
    int-to-float v6, v4

    iget v7, p0, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .restart local v5       #webViewWidth:I
    goto/16 :goto_2

    .line 2766
    :cond_e
    const/4 v7, 0x0

    goto :goto_3

    .line 2773
    :cond_f
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, v7, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    goto :goto_4

    .line 2776
    :cond_10
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    if-lez v6, :cond_11

    .line 2777
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v8, p0, Landroid/webkit/WebViewCore;->mViewportInitialScale:I

    int-to-float v8, v8

    const/high16 v9, 0x42c8

    div-float/2addr v8, v9

    iput v8, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    iput v8, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_4

    .line 2779
    :cond_11
    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-lez v6, :cond_12

    iget v6, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-ge v6, v5, :cond_12

    .line 2780
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    int-to-float v8, v5

    iget v9, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    iput v8, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    iput v8, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto :goto_4

    .line 2783
    :cond_12
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput v0, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    .line 2785
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto/16 :goto_4

    .line 2816
    :cond_13
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v6}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2817
    if-nez v4, :cond_14

    .line 2820
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    const/4 v7, 0x0

    iput v7, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    goto/16 :goto_1

    .line 2822
    :cond_14
    new-instance v1, Landroid/webkit/WebView$ViewSizeData;

    invoke-direct {v1}, Landroid/webkit/WebView$ViewSizeData;-><init>()V

    .line 2826
    .restart local v1       #data:Landroid/webkit/WebView$ViewSizeData;
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-nez v6, :cond_17

    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    if-lez v6, :cond_16

    iget v6, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    :goto_5
    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    .line 2830
    sget-boolean v6, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v6, :cond_15

    .line 2831
    const-string/jumbo v6, "webcore"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setupViewport mRestoredScale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Landroid/webkit/WebViewCore;->mRestoredScale:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mViewScale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v8, v8, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTextWrapScale="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v8, v8, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    :cond_15
    int-to-float v6, v5

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    .line 2843
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    if-nez v6, :cond_18

    iget-object v6, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v6

    int-to-float v6, v6

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    :goto_6
    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mHeight:I

    .line 2846
    int-to-float v6, v5

    iget-object v7, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v7, v7, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mTextWrapWidth:I

    .line 2848
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/webkit/WebView$ViewSizeData;->mIgnoreHeight:Z

    .line 2849
    const/4 v6, 0x0

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorY:I

    iput v6, v1, Landroid/webkit/WebView$ViewSizeData;->mAnchorX:I

    .line 2852
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v7, 0x69

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9600(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2853
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v7, 0x0

    const/16 v8, 0x69

    invoke-static {v7, v8, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v6, v7}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2826
    :cond_16
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    goto/16 :goto_5

    :cond_17
    iget-object v6, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iget v6, v6, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    goto/16 :goto_5

    .line 2843
    :cond_18
    iget v6, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    iget v7, v1, Landroid/webkit/WebView$ViewSizeData;->mWidth:I

    mul-int/2addr v6, v7

    div-int/2addr v6, v4

    goto :goto_6
.end method

.method private showFullScreenPlugin(Landroid/webkit/ViewManager$ChildView;I)V
    .locals 3
    .parameter "childView"
    .parameter "npp"

    .prologue
    .line 3041
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-nez v1, :cond_0

    .line 3049
    :goto_0
    return-void

    .line 3045
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x78

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 3046
    .local v0, message:Landroid/os/Message;
    iget-object v1, p1, Landroid/webkit/ViewManager$ChildView;->mView:Landroid/view/View;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3047
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 3048
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method private showRect(IIIIIIFFFFZIIII)V
    .locals 5
    .parameter "left"
    .parameter "top"
    .parameter "width"
    .parameter "height"
    .parameter "contentWidth"
    .parameter "contentHeight"
    .parameter "xPercentInDoc"
    .parameter "xPercentInView"
    .parameter "yPercentInDoc"
    .parameter "yPercentInView"
    .parameter "hasAnchorDiff"
    .parameter "oldAnchorX"
    .parameter "oldAnchorY"
    .parameter "newAnchorX"
    .parameter "newAnchorY"

    .prologue
    .line 3121
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v3, :cond_0

    .line 3122
    new-instance v2, Landroid/webkit/WebViewCore$ShowRectData;

    invoke-direct {v2}, Landroid/webkit/WebViewCore$ShowRectData;-><init>()V

    .line 3123
    .local v2, data:Landroid/webkit/WebViewCore$ShowRectData;
    iput p1, v2, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    .line 3124
    iput p2, v2, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    .line 3125
    iput p3, v2, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    .line 3126
    iput p4, v2, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    .line 3127
    iput p5, v2, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    .line 3128
    iput p6, v2, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    .line 3129
    iput p7, v2, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    .line 3130
    iput p8, v2, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    .line 3131
    iput p9, v2, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    .line 3132
    iput p10, v2, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    .line 3134
    move/from16 v0, p11

    move-object v1, v2

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mHasAnchorDiff:Z

    .line 3135
    move/from16 v0, p12

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorX:I

    .line 3136
    move/from16 v0, p13

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mOldAnchorY:I

    .line 3137
    move/from16 v0, p14

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorX:I

    .line 3138
    move/from16 v0, p15

    move-object v1, v2

    iput v0, v1, Landroid/webkit/WebViewCore$ShowRectData;->mNewAnchorY:I

    .line 3140
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v3, v3, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v4, 0x71

    invoke-static {v3, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 3143
    .end local v2           #data:Landroid/webkit/WebViewCore$ShowRectData;
    :cond_0
    return-void
.end method

.method static supportsMimeType(Ljava/lang/String;)Z
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 331
    invoke-static {p0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSurface(Landroid/webkit/ViewManager$ChildView;IIII)V
    .locals 0
    .parameter "childView"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 3087
    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/webkit/ViewManager$ChildView;->attachView(IIII)V

    .line 3088
    return-void
.end method

.method private updateTextSelection(IIII)V
    .locals 3
    .parameter "pointer"
    .parameter "start"
    .parameter "end"
    .parameter "textGeneration"

    .prologue
    .line 2904
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    .line 2905
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v0, v0, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v1, 0x70

    new-instance v2, Landroid/webkit/WebViewCore$TextSelectionData;

    invoke-direct {v2, p2, p3}, Landroid/webkit/WebViewCore$TextSelectionData;-><init>(II)V

    invoke-static {v0, v1, p1, p4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2909
    :cond_0
    return-void
.end method

.method private updateTextfield(IZLjava/lang/String;IZ)V
    .locals 3
    .parameter "ptr"
    .parameter "changeToPassword"
    .parameter "text"
    .parameter "textGeneration"
    .parameter "forceUpdateCache"

    .prologue
    .line 2889
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 2890
    if-eqz p5, :cond_0

    .line 2891
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeUpdateFrameCache()V

    .line 2893
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-static {v1, v2, p1, p4, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2896
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2897
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2899
    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    return-void
.end method

.method private updateViewport()V
    .locals 1

    .prologue
    .line 2674
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2675
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->setupViewport(Z)V

    .line 2677
    :cond_0
    return-void
.end method

.method private viewSizeChanged(IIIFIIZZII)V
    .locals 16
    .parameter "w"
    .parameter "h"
    .parameter "textwrapWidth"
    .parameter "scale"
    .parameter "anchorX"
    .parameter "anchorY"
    .parameter "ignoreHeight"
    .parameter "needAnchorDiff"
    .parameter "viewportLeft"
    .parameter "viewportTop"

    .prologue
    .line 2206
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v2, :cond_0

    .line 2207
    const-string/jumbo v2, "webcore"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "viewSizeChanged w="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; h="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; textwrapWidth="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; scale="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2210
    :cond_0
    if-nez p1, :cond_2

    .line 2211
    const-string/jumbo v2, "webcore"

    const-string/jumbo v3, "skip viewSizeChanged as w is 0"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2266
    :cond_1
    :goto_0
    return-void

    .line 2214
    :cond_2
    move/from16 v3, p1

    .line 2215
    .local v3, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2216
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    move v2, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_6

    .line 2234
    .end local v3           #width:I
    sget v2, Landroid/webkit/WebView;->sMaxViewportWidth:I

    const/16 v3, 0x320

    invoke-direct/range {p0 .. p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v0, p1

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2244
    .restart local v3       #width:I
    :cond_3
    :goto_1
    move v0, v3

    move/from16 v1, p1

    if-ne v0, v1, :cond_8

    move/from16 v4, p2

    :goto_2
    move-object/from16 v2, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    invoke-direct/range {v2 .. v14}, Landroid/webkit/WebViewCore;->nativeSetSize(IIIFIIIIZZII)V

    .line 2251
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    move v2, v0

    if-nez v2, :cond_9

    const/4 v2, 0x1

    move v15, v2

    .line 2252
    .local v15, needInvalidate:Z
    :goto_3
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    .line 2253
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    .line 2254
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Landroid/webkit/WebViewCore;->mCurrentViewScale:F

    .line 2255
    if-eqz v15, :cond_5

    .line 2258
    sget-boolean v2, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "webcore"

    const-string/jumbo v3, "viewSizeChanged"

    .end local v3           #width:I
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2259
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->contentDraw()V

    .line 2261
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    move-object v2, v0

    const/4 v3, 0x0

    const/16 v4, 0x75

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v2, v3}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2263
    const/4 v2, 0x1

    invoke-virtual/range {p0 .. p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getAdvancedCopyPasteFeature()Z

    move-result v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    move-object v2, v0

    iget-object v2, v2, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v2, :cond_1

    .line 2264
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    move-object v2, v0

    iget-object v2, v2, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v2, v2, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    move-object/from16 v0, p0

    move v1, v2

    invoke-direct {v0, v1}, Landroid/webkit/WebViewCore;->webkitSelectionControlDraw(I)V

    goto/16 :goto_0

    .line 2238
    .end local v15           #needInvalidate:Z
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    move v2, v0

    if-lez v2, :cond_7

    .line 2239
    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    move v2, v0

    move/from16 v0, p1

    move v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .restart local v3       #width:I
    goto/16 :goto_1

    .line 2241
    .end local v3           #width:I
    :cond_7
    move/from16 v3, p3

    .restart local v3       #width:I
    goto/16 :goto_1

    .line 2244
    :cond_8
    int-to-float v2, v3

    move/from16 v0, p2

    int-to-float v0, v0

    move v4, v0

    mul-float/2addr v2, v4

    move/from16 v0, p1

    int-to-float v0, v0

    move v4, v0

    div-float/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    move v4, v2

    goto/16 :goto_2

    .line 2251
    :cond_9
    const/4 v2, 0x0

    move v15, v2

    goto/16 :goto_3
.end method

.method private webkitDraw()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const-string/jumbo v4, "webcore"

    .line 2330
    iput-boolean v5, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2331
    new-instance v0, Landroid/webkit/WebViewCore$DrawData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$DrawData;-><init>()V

    .line 2347
    .local v0, draw:Landroid/webkit/WebViewCore$DrawData;
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "webcore"

    const-string/jumbo v1, "webkitDraw start"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2348
    :cond_0
    iget-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    invoke-direct {p0, v1, v2}, Landroid/webkit/WebViewCore;->nativeRecordContent(Landroid/graphics/Region;Landroid/graphics/Point;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2350
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "webcore"

    const-string/jumbo v1, "webkitDraw abort"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    :cond_1
    :goto_0
    return-void

    .line 2353
    :cond_2
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 2356
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeFocusBoundsChanged()Z

    move-result v1

    iput-boolean v1, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    .line 2357
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    iget v3, p0, Landroid/webkit/WebViewCore;->mCurrentViewHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    .line 2358
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v1}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2359
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_7

    const/16 v1, 0x320

    :goto_1
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetContentMinPrefWidth()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    .line 2365
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    if-eqz v1, :cond_4

    .line 2366
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    iput-object v1, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2367
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/webkit/WebViewCore;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    .line 2369
    :cond_4
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "webcore"

    const-string/jumbo v1, "webkitDraw NEW_PICTURE_MSG_ID"

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    :cond_5
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x69

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2372
    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    if-nez v1, :cond_6

    iget v1, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    if-eqz v1, :cond_1

    .line 2374
    :cond_6
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    iget v3, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    iget v4, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    invoke-static {v1, v2, v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2377
    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollY:I

    iput v5, p0, Landroid/webkit/WebViewCore;->mWebkitScrollX:I

    goto :goto_0

    .line 2359
    :cond_7
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    if-nez v1, :cond_8

    iget v1, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    goto :goto_1

    :cond_8
    iget v1, p0, Landroid/webkit/WebViewCore;->mViewportWidth:I

    goto :goto_1
.end method

.method private webkitSelectionControlDraw(I)V
    .locals 10
    .parameter "selectionController"

    .prologue
    const/16 v6, 0x8c

    const-string/jumbo v9, "top "

    const-string/jumbo v8, "right "

    const-string v7, "bottom "

    const-string/jumbo v5, "webcore"

    .line 874
    new-instance v0, Landroid/webkit/WebViewCore$SelectionCopiedData;

    invoke-direct {v0}, Landroid/webkit/WebViewCore$SelectionCopiedData;-><init>()V

    .line 875
    .local v0, Data:Landroid/webkit/WebViewCore$SelectionCopiedData;
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v1, :cond_0

    .line 876
    const-string/jumbo v1, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw start"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    :cond_0
    iget-object v1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget-object v3, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v4, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    invoke-direct {p0, v1, v2, v3, v4}, Landroid/webkit/WebViewCore;->nativeRecordSelectionCopiedData(Landroid/graphics/Region;Landroid/graphics/Rect;Landroid/graphics/Rect;I)Z

    move-result v1

    if-nez v1, :cond_2

    .line 881
    const-string/jumbo v1, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw Selection unable to select"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-static {v1, v6, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 901
    :cond_1
    :goto_0
    return-void

    .line 886
    :cond_2
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectionGranularity()I

    move-result v1

    iput v1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    .line 887
    iput p1, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectionController:I

    .line 889
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    if-eqz v1, :cond_1

    .line 891
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v1, :cond_3

    .line 892
    const-string/jumbo v1, "webcore"

    const-string/jumbo v1, "webkitSelctionControlDraw UPDATE_SLECTION_MSG_ID"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const-string/jumbo v1, "webcore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webkitSelctionControlDraw Value Start Rect left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "top "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "right "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bottom "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    const-string/jumbo v1, "webcore"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "webkitSelctionControlDraw Value End Rect left"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "top "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "right "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "bottom "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    :cond_3
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    iget-object v1, v1, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    invoke-static {v1, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0
.end method


# virtual methods
.method protected addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 1
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 343
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/CallbackProxy;->addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V

    .line 344
    return-void
.end method

.method contentDraw()V
    .locals 3

    .prologue
    .line 2498
    iget v0, p0, Landroid/webkit/WebViewCore;->mCurrentViewWidth:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-nez v0, :cond_1

    .line 2511
    :cond_0
    :goto_0
    return-void

    .line 2501
    :cond_1
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->firstLayoutDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2505
    monitor-enter p0

    .line 2506
    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    if-eqz v0, :cond_2

    monitor-exit p0

    goto :goto_0

    .line 2510
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 2507
    :cond_2
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsScheduled:Z

    .line 2508
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->mDrawIsPaused:Z

    if-eqz v0, :cond_3

    monitor-exit p0

    goto :goto_0

    .line 2509
    :cond_3
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/16 v2, 0x82

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2510
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method declared-synchronized copyContentPicture()Landroid/graphics/Picture;
    .locals 2

    .prologue
    .line 2420
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/graphics/Picture;

    invoke-direct {v0}, Landroid/graphics/Picture;-><init>()V

    .line 2421
    .local v0, result:Landroid/graphics/Picture;
    iget v1, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-eqz v1, :cond_0

    .line 2422
    invoke-direct {p0, v0}, Landroid/webkit/WebViewCore;->nativeCopyContentToPicture(Landroid/graphics/Picture;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2424
    :cond_0
    monitor-exit p0

    return-object v0

    .line 2420
    .end local v0           #result:Landroid/graphics/Picture;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method destroy()V
    .locals 6

    .prologue
    .line 2116
    iget-object v2, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    monitor-enter v2

    .line 2120
    :try_start_0
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x6e

    #calls: Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;I)Z

    move-result v1

    .line 2121
    .local v1, hasResume:Z
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/16 v4, 0x6d

    #calls: Landroid/webkit/WebViewCore$EventHub;->hasMessages(I)Z
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9800(Landroid/webkit/WebViewCore$EventHub;I)Z

    move-result v0

    .line 2122
    .local v0, hasPause:Z
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$9700(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2123
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2125
    if-eqz v0, :cond_0

    .line 2126
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0x6d

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2129
    :cond_0
    if-eqz v1, :cond_1

    .line 2130
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v4, 0x0

    const/16 v5, 0x6e

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v3, v4}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2133
    :cond_1
    iget-object v3, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->blockMessages()V
    invoke-static {v3}, Landroid/webkit/WebViewCore$EventHub;->access$9900(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2134
    monitor-exit v2

    .line 2135
    return-void

    .line 2134
    .end local v0           #hasPause:Z
    .end local v1           #hasResume:Z
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method drawContentPicture(Landroid/graphics/Canvas;IZZ)V
    .locals 3
    .parameter "canvas"
    .parameter "color"
    .parameter "animatingZoom"
    .parameter "animatingScroll"

    .prologue
    .line 2400
    const/4 v0, 0x0

    .line 2401
    .local v0, df:Landroid/graphics/DrawFilter;
    if-eqz p3, :cond_2

    .line 2402
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mZoomFilter:Landroid/graphics/DrawFilter;

    .line 2406
    :cond_0
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2407
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeDrawContent(Landroid/graphics/Canvas;I)Z

    move-result v1

    .line 2408
    .local v1, tookTooLong:Z
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 2409
    if-eqz v1, :cond_1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    if-nez v2, :cond_1

    .line 2410
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/webkit/WebViewCore;->mSplitPictureIsScheduled:Z

    .line 2411
    const/16 v2, 0x85

    invoke-virtual {p0, v2}, Landroid/webkit/WebViewCore;->sendMessage(I)V

    .line 2413
    :cond_1
    return-void

    .line 2403
    .end local v1           #tookTooLong:Z
    :cond_2
    if-eqz p4, :cond_0

    .line 2404
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mScrollFilter:Landroid/graphics/DrawFilter;

    goto :goto_0
.end method

.method protected exceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJ)V
    .locals 10
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"

    .prologue
    .line 402
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v7

    new-instance v9, Landroid/webkit/WebViewCore$1;

    invoke-direct {v9, p0}, Landroid/webkit/WebViewCore$1;-><init>(Landroid/webkit/WebViewCore;)V

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    invoke-virtual/range {v0 .. v9}, Landroid/webkit/CallbackProxy;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 409
    return-void
.end method

.method protected geolocationPermissionsHidePrompt()V
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsHidePrompt()V

    .line 459
    return-void
.end method

.method protected geolocationPermissionsShowPrompt(Ljava/lang/String;)V
    .locals 2
    .parameter "origin"

    .prologue
    .line 441
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    new-instance v1, Landroid/webkit/WebViewCore$4;

    invoke-direct {v1, p0}, Landroid/webkit/WebViewCore$4;-><init>(Landroid/webkit/WebViewCore;)V

    invoke-virtual {v0, p1, v1}, Landroid/webkit/CallbackProxy;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    .line 452
    return-void
.end method

.method getBrowserFrame()Landroid/webkit/BrowserFrame;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method protected getBrowserSessionPageID()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Landroid/webkit/WebViewCore;->mbrowserSessionPageID:I

    return v0
.end method

.method public getReLoadStatus()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2036
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "iqagent_logging"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v3

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebViewCore;->bLoggingEnableCIQ:Z

    .line 2037
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->bLoggingEnableCIQ:Z

    if-eqz v0, :cond_0

    .line 2038
    const-string v0, "BROWSER CIQ"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WebViewCore.java, ReLoadstatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/webkit/WebViewCore;->reLoad:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    :cond_0
    iget-boolean v0, p0, Landroid/webkit/WebViewCore;->reLoad:Z

    return v0

    :cond_1
    move v0, v2

    .line 2036
    goto :goto_0
.end method

.method declared-synchronized getSelectedText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2429
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativeGetSelectedText()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 2430
    .local v0, str:Ljava/lang/String;
    monitor-exit p0

    return-object v0

    .line 2429
    .end local v0           #str:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mSettings:Landroid/webkit/WebSettings;

    return-object v0
.end method

.method getWebView()Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 2631
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mWebView:Landroid/webkit/WebView;

    return-object v0
.end method

.method initializeSubwindow()V
    .locals 2

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/webkit/WebViewCore;->initialize()V

    .line 280
    sget-object v0, Landroid/webkit/WebViewCore;->sWebCoreHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 281
    return-void
.end method

.method public isEditableSupport()Z
    .locals 1

    .prologue
    .line 322
    invoke-virtual {p0}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getEditableSupport()Z

    move-result v0

    return v0
.end method

.method protected jsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 351
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsAlert(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method protected jsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 467
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected jsInterrupt()Z
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onJsTimeout()Z

    move-result v0

    return v0
.end method

.method protected jsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    .line 478
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected jsUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "url"
    .parameter "message"

    .prologue
    .line 489
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method native nativeGetWebFeedLinks()[Landroid/webkit/WebFeedLink;
.end method

.method declared-synchronized pictureReady()Z
    .locals 1

    .prologue
    .line 2416
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebViewCore;->mNativeClass:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->nativePictureReady()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected populateVisitedLinks()V
    .locals 2

    .prologue
    .line 426
    new-instance v0, Landroid/webkit/WebViewCore$3;

    invoke-direct {v0, p0}, Landroid/webkit/WebViewCore$3;-><init>(Landroid/webkit/WebViewCore;)V

    .line 431
    .local v0, callback:Landroid/webkit/ValueCallback;
    iget-object v1, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    .line 432
    return-void
.end method

.method protected reachedMaxAppCacheSize(J)V
    .locals 6
    .parameter "spaceNeeded"

    .prologue
    .line 417
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-direct {p0}, Landroid/webkit/WebViewCore;->getUsedQuota()J

    move-result-wide v3

    new-instance v5, Landroid/webkit/WebViewCore$2;

    invoke-direct {v5, p0}, Landroid/webkit/WebViewCore$2;-><init>(Landroid/webkit/WebViewCore;)V

    move-wide v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/CallbackProxy;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    .line 423
    return-void
.end method

.method removeMessages()V
    .locals 1

    .prologue
    .line 2105
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages()V
    invoke-static {v0}, Landroid/webkit/WebViewCore$EventHub;->access$9700(Landroid/webkit/WebViewCore$EventHub;)V

    .line 2106
    return-void
.end method

.method removeMessages(I)V
    .locals 1
    .parameter "what"

    .prologue
    .line 2101
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->removeMessages(I)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$9600(Landroid/webkit/WebViewCore$EventHub;I)V

    .line 2102
    return-void
.end method

.method public saveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "strUrl"
    .parameter "strPath"

    .prologue
    .line 2192
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebViewCore;->nativeSaveCachedImageToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method sendMessage(I)V
    .locals 2
    .parameter "what"

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2067
    return-void
.end method

.method sendMessage(II)V
    .locals 3
    .parameter "what"
    .parameter "arg1"

    .prologue
    .line 2075
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2076
    return-void
.end method

.method sendMessage(III)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 2079
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2080
    return-void
.end method

.method sendMessage(IIILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 2088
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2, p3, p4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2089
    return-void
.end method

.method sendMessage(IILjava/lang/Object;)V
    .locals 3
    .parameter "what"
    .parameter "arg1"
    .parameter "obj"

    .prologue
    .line 2084
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, p1, p2, v2, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2085
    return-void
.end method

.method sendMessage(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2070
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2071
    return-void
.end method

.method sendMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 2062
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessage(Landroid/os/Message;)V
    invoke-static {v0, p1}, Landroid/webkit/WebViewCore$EventHub;->access$9300(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2063
    return-void
.end method

.method sendMessageAtFrontOfQueue(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2092
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageAtFrontOfQueue(Landroid/os/Message;)V
    invoke-static {v0, v1}, Landroid/webkit/WebViewCore$EventHub;->access$9400(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;)V

    .line 2094
    return-void
.end method

.method sendMessageDelayed(ILjava/lang/Object;J)V
    .locals 2
    .parameter "what"
    .parameter "obj"
    .parameter "delay"

    .prologue
    .line 2097
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mEventHub:Landroid/webkit/WebViewCore$EventHub;

    const/4 v1, 0x0

    invoke-static {v1, p1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebViewCore$EventHub;->sendMessageDelayed(Landroid/os/Message;J)V
    invoke-static {v0, v1, p3, p4}, Landroid/webkit/WebViewCore$EventHub;->access$9500(Landroid/webkit/WebViewCore$EventHub;Landroid/os/Message;J)V

    .line 2098
    return-void
.end method

.method signalRepaintDone()V
    .locals 1

    .prologue
    .line 2609
    const/4 v0, 0x0

    sput-boolean v0, Landroid/webkit/WebViewCore;->mRepaintScheduled:Z

    .line 2610
    return-void
.end method

.method stopLoading()V
    .locals 2

    .prologue
    .line 2049
    sget-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "webcore"

    const-string v1, "CORE stopLoading"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    :cond_0
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    if-eqz v0, :cond_1

    .line 2051
    iget-object v0, p0, Landroid/webkit/WebViewCore;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    invoke-virtual {v0}, Landroid/webkit/BrowserFrame;->stopLoading()V

    .line 2053
    :cond_1
    return-void
.end method
