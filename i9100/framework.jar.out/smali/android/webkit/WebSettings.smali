.class public Landroid/webkit/WebSettings;
.super Ljava/lang/Object;
.source "WebSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/WebSettings$1;,
        Landroid/webkit/WebSettings$EventHandler;,
        Landroid/webkit/WebSettings$PluginState;,
        Landroid/webkit/WebSettings$RenderPriority;,
        Landroid/webkit/WebSettings$ZoomDensity;,
        Landroid/webkit/WebSettings$TextSize;,
        Landroid/webkit/WebSettings$LayoutAlgorithm;
    }
.end annotation


# static fields
.field private static final DESKTOP_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

.field private static final DOUBLE_TAP_TOAST_COUNT:Ljava/lang/String; = "double_tap_toast_count"

.field private static final IPHONE_USERAGENT:Ljava/lang/String; = "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

.field public static final LOAD_CACHE_ELSE_NETWORK:I = 0x1

.field public static final LOAD_CACHE_ONLY:I = 0x3

.field public static final LOAD_DEFAULT:I = -0x1

.field public static final LOAD_NORMAL:I = 0x0

.field public static final LOAD_NO_CACHE:I = 0x2

.field private static final PREF_FILE:Ljava/lang/String; = "WebViewSettings"

.field private static mDoubleTapToastCount:I

.field private static sLocale:Ljava/util/Locale;

.field private static sLockForLocaleSettings:Ljava/lang/Object;


# instance fields
.field private mAcceptLanguage:Ljava/lang/String;

.field private mAdvanceTextSelection:Z

.field private mAllowContentAccess:Z

.field private mAllowFileAccess:Z

.field private mAppCacheEnabled:Z

.field private mAppCacheMaxSize:J

.field private mAppCachePath:Ljava/lang/String;

.field private mBlockNetworkImage:Z

.field private mBlockNetworkLoads:Z

.field private mBrowserFrame:Landroid/webkit/BrowserFrame;

.field private mBuiltInZoomControls:Z

.field private mContext:Landroid/content/Context;

.field private mCursiveFontFamily:Ljava/lang/String;

.field private mDatabaseEnabled:Z

.field private mDatabasePath:Ljava/lang/String;

.field private mDatabasePathHasBeenSet:Z

.field private mDebugCache:Z

.field private mDebugInfo:Z

.field private mDebugNetwork:Z

.field private mDebugVervose:Z

.field private mDefaultFixedFontSize:I

.field private mDefaultFontSize:I

.field private mDefaultTextEncoding:Ljava/lang/String;

.field private mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

.field private mDomStorageEnabled:Z

.field private mEditableSupport:Z

.field private final mEventHandler:Landroid/webkit/WebSettings$EventHandler;

.field private mFantasyFontFamily:Ljava/lang/String;

.field private mFixedFontFamily:Ljava/lang/String;

.field private mGeolocationDatabasePath:Ljava/lang/String;

.field private mGeolocationEnabled:Z

.field private mJavaScriptCanOpenWindowsAutomatically:Z

.field private mJavaScriptEnabled:Z

.field private mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

.field private mLightTouchEnabled:Z

.field private mLoadWithOverviewMode:Z

.field private mLoadsImagesAutomatically:Z

.field private mMinimumFontSize:I

.field private mMinimumLogicalFontSize:I

.field private mNavDump:Z

.field private mNeedInitialFocus:Z

.field private mOverrideCacheMode:I

.field private mPageCacheCapacity:I

.field private mPluginState:Landroid/webkit/WebSettings$PluginState;

.field private mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

.field private mSansSerifFontFamily:Ljava/lang/String;

.field private mSaveFormData:Z

.field private mSavePassword:Z

.field private mSerifFontFamily:Ljava/lang/String;

.field private mShrinksStandaloneImagesToFit:Z

.field private mStandardFontFamily:Ljava/lang/String;

.field private mSupportMultipleWindows:Z

.field private mSupportZoom:Z

.field private mSupportZoomWithoutControls:Z

.field private mSyncPending:Z

.field private mTextSize:Landroid/webkit/WebSettings$TextSize;

.field private mUseDefaultUserAgent:Z

.field private mUseDoubleTree:Z

.field private mUseWebViewBackgroundOverscrollBackground:Z

.field private mUseWideViewport:Z

.field private mUserAgent:Ljava/lang/String;

.field private mWebView:Landroid/webkit/WebView;

.field private mWorkersEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x3

    sput v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 6
    .parameter "context"
    .parameter "webview"

    .prologue
    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string/jumbo v3, "sans-serif"

    const-string v2, ""

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 154
    sget-object v0, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 156
    sget-object v0, Landroid/webkit/WebSettings$TextSize;->NORMAL:Landroid/webkit/WebSettings$TextSize;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    .line 157
    const-string/jumbo v0, "sans-serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 158
    const-string/jumbo v0, "monospace"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 159
    const-string/jumbo v0, "sans-serif"

    iput-object v3, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 160
    const-string/jumbo v0, "serif"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 161
    const-string v0, "cursive"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 162
    const-string v0, "fantasy"

    iput-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 167
    iput v1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 168
    iput v1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 169
    const/16 v0, 0x10

    iput v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 170
    const/16 v0, 0xd

    iput v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 171
    iput v4, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 172
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 173
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 175
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 176
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->OFF:Landroid/webkit/WebSettings$PluginState;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 177
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 178
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mUseDoubleTree:Z

    .line 179
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 180
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    .line 181
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    .line 182
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    .line 183
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    .line 184
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 185
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 187
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 188
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 189
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 190
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 191
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 193
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 194
    const-string v0, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 195
    const-string v0, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 198
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 199
    const-string v0, ""

    iput-object v2, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 203
    sget-object v0, Landroid/webkit/WebSettings$ZoomDensity;->MEDIUM:Landroid/webkit/WebSettings$ZoomDensity;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 204
    sget-object v0, Landroid/webkit/WebSettings$RenderPriority;->NORMAL:Landroid/webkit/WebSettings$RenderPriority;

    iput-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 205
    const/4 v0, -0x1

    iput v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 206
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 207
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 208
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 209
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 210
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 211
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 212
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 214
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mSupportZoomWithoutControls:Z

    .line 216
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 217
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 218
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 219
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundOverscrollBackground:Z

    .line 221
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    .line 225
    iput-boolean v4, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    .line 327
    new-instance v0, Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/webkit/WebSettings$EventHandler;-><init>(Landroid/webkit/WebSettings;Landroid/webkit/WebSettings$1;)V

    iput-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    .line 328
    iput-object p1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    .line 329
    iput-object p2, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    .line 330
    const v0, 0x10400b0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 333
    sget-object v0, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    .line 335
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 337
    :cond_0
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 338
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 339
    iput-boolean v5, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 341
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 344
    return-void

    :cond_1
    move v0, v4

    .line 341
    goto :goto_0
.end method

.method static synthetic access$000(Landroid/webkit/WebSettings;)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    return-object v0
.end method

.method static synthetic access$100(Landroid/webkit/WebSettings;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    return-void
.end method

.method static synthetic access$202(Landroid/webkit/WebSettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 38
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    return p1
.end method

.method static synthetic access$400(Landroid/webkit/WebSettings;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 38
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method static synthetic access$600(Landroid/webkit/WebSettings;)Landroid/webkit/WebSettings$RenderPriority;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    return-object v0
.end method

.method private getCurrentAcceptLanguage()Ljava/lang/String;
    .locals 7

    .prologue
    const-string v6, "-"

    .line 352
    sget-object v5, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v5

    .line 353
    :try_start_0
    sget-object v3, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 354
    .local v3, locale:Ljava/util/Locale;
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 356
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 357
    .local v2, language:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, country:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 361
    const-string v5, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    .end local v1           #country:Ljava/lang/String;
    :cond_0
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 366
    const-string v5, ", "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 368
    .local v4, us:Ljava/util/Locale;
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 369
    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 370
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 371
    .restart local v1       #country:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 372
    const-string v5, "-"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 378
    .end local v1           #country:Ljava/lang/String;
    .end local v4           #us:Ljava/util/Locale;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 354
    .end local v0           #buffer:Ljava/lang/StringBuffer;
    .end local v2           #language:Ljava/lang/String;
    .end local v3           #locale:Ljava/util/Locale;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private declared-synchronized getCurrentUserAgent()Ljava/lang/String;
    .locals 10

    .prologue
    const-string v8, "; "

    .line 387
    monitor-enter p0

    :try_start_0
    sget-object v8, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 388
    :try_start_1
    sget-object v5, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 389
    .local v5, locale:Ljava/util/Locale;
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 390
    :try_start_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 392
    .local v1, buffer:Ljava/lang/StringBuffer;
    sget-object v7, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 393
    .local v7, version:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_3

    .line 394
    invoke-virtual {v1, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 399
    :goto_0
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 400
    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 401
    .local v4, language:Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 402
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 403
    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, country:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 405
    const-string v8, "-"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 406
    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 413
    .end local v2           #country:Ljava/lang/String;
    :cond_0
    :goto_1
    const-string v8, "REL"

    sget-object v9, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 414
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 415
    .local v6, model:Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 416
    const-string v8, "; "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 417
    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 420
    .end local v6           #model:Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/os/Build;->ID:Ljava/lang/String;

    .line 421
    .local v3, id:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_2

    .line 422
    const-string v8, " Build/"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 423
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 425
    :cond_2
    iget-object v8, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x1040350

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 427
    .local v0, base:Ljava/lang/String;
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    invoke-static {v0, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v8

    monitor-exit p0

    return-object v8

    .line 389
    .end local v0           #base:Ljava/lang/String;
    .end local v1           #buffer:Ljava/lang/StringBuffer;
    .end local v3           #id:Ljava/lang/String;
    .end local v4           #language:Ljava/lang/String;
    .end local v5           #locale:Ljava/util/Locale;
    .end local v7           #version:Ljava/lang/String;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 387
    :catchall_1
    move-exception v8

    monitor-exit p0

    throw v8

    .line 397
    .restart local v1       #buffer:Ljava/lang/StringBuffer;
    .restart local v5       #locale:Ljava/util/Locale;
    .restart local v7       #version:Ljava/lang/String;
    :cond_3
    :try_start_5
    const-string v8, "1.0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 410
    .restart local v4       #language:Ljava/lang/String;
    :cond_4
    const-string v8, "en"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1
.end method

.method private native nativeSync(I)V
.end method

.method private pin(I)I
    .locals 2
    .parameter "size"

    .prologue
    const/16 v1, 0x48

    const/4 v0, 0x1

    .line 1595
    if-ge p1, v0, :cond_0

    .line 1600
    :goto_0
    return v0

    .line 1597
    :cond_0
    if-le p1, v1, :cond_1

    move v0, v1

    .line 1598
    goto :goto_0

    :cond_1
    move v0, p1

    .line 1600
    goto :goto_0
.end method

.method private declared-synchronized postSync()V
    .locals 3

    .prologue
    .line 1606
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    if-nez v0, :cond_0

    .line 1607
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mSyncPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1610
    :cond_0
    monitor-exit p0

    return-void

    .line 1606
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private verifyNetworkAccess()V
    .locals 4

    .prologue
    .line 1143
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-nez v0, :cond_0

    .line 1144
    iget-object v0, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1147
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied - application missing INTERNET permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1152
    :cond_0
    return-void
.end method


# virtual methods
.method declared-synchronized getAcceptLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1474
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1475
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1476
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1477
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1478
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1480
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1481
    :try_start_2
    iget-object v1, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object v1

    .line 1480
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1474
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getAdvancedCopyPasteFeature()Z
    .locals 1

    .prologue
    .line 660
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAllowContentAccess()Z
    .locals 1

    .prologue
    .line 521
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    return v0
.end method

.method public getAllowFileAccess()Z
    .locals 1

    .prologue
    .line 503
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    return v0
.end method

.method public declared-synchronized getBlockNetworkImage()Z
    .locals 1

    .prologue
    .line 1114
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getBlockNetworkLoads()Z
    .locals 1

    .prologue
    .line 1138
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getBuiltInZoomControls()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    return v0
.end method

.method public getCacheMode()I
    .locals 1

    .prologue
    .line 1534
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    return v0
.end method

.method public declared-synchronized getCursiveFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 953
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabaseEnabled()Z
    .locals 1

    .prologue
    .line 1313
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDatabasePath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1305
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFixedFontSize()I
    .locals 1

    .prologue
    .line 1056
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultFontSize()I
    .locals 1

    .prologue
    .line 1035
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDefaultTextEncodingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1418
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDefaultZoom()Landroid/webkit/WebSettings$ZoomDensity;
    .locals 1

    .prologue
    .line 626
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    return-object v0
.end method

.method public declared-synchronized getDomStorageEnabled()Z
    .locals 1

    .prologue
    .line 1296
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDoubleTapToastCount()I
    .locals 1

    .prologue
    .line 1552
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    return v0
.end method

.method public getEditableSupport()Z
    .locals 1

    .prologue
    .line 677
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    return v0
.end method

.method public declared-synchronized getFantasyFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 972
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFixedFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 896
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptCanOpenWindowsAutomatically()Z
    .locals 1

    .prologue
    .line 1399
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getJavaScriptEnabled()Z
    .locals 1

    .prologue
    .line 1346
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLayoutAlgorithm()Landroid/webkit/WebSettings$LayoutAlgorithm;
    .locals 1

    .prologue
    .line 858
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLightTouchEnabled()Z
    .locals 1

    .prologue
    .line 640
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    return v0
.end method

.method public getLoadWithOverviewMode()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    return v0
.end method

.method public declared-synchronized getLoadsImagesAutomatically()Z
    .locals 1

    .prologue
    .line 1090
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumFontSize()I
    .locals 1

    .prologue
    .line 993
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMinimumLogicalFontSize()I
    .locals 1

    .prologue
    .line 1014
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNavDump()Z
    .locals 1

    .prologue
    .line 441
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    return v0
.end method

.method getNeedInitialFocus()Z
    .locals 1

    .prologue
    .line 1498
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    return v0
.end method

.method public declared-synchronized getPluginState()Landroid/webkit/WebSettings$PluginState;
    .locals 1

    .prologue
    .line 1364
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPluginsEnabled()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1356
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    sget-object v1, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

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

.method public declared-synchronized getPluginsPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1376
    monitor-enter p0

    :try_start_0
    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSansSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 915
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSaveFormData()Z
    .locals 1

    .prologue
    .line 566
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    return v0
.end method

.method public getSavePassword()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    return v0
.end method

.method public declared-synchronized getSerifFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getStandardFontFamily()Ljava/lang/String;
    .locals 1

    .prologue
    .line 877
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupportZoomWithoutControls()Z
    .locals 1

    .prologue
    .line 486
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoomWithoutControls:Z

    return v0
.end method

.method public declared-synchronized getTextSize()Landroid/webkit/WebSettings$TextSize;
    .locals 1

    .prologue
    .line 603
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUseDoubleTree()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 696
    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return v0
.end method

.method public getUseWebViewBackgroundForOverscrollBackground()Z
    .locals 1

    .prologue
    .line 552
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundOverscrollBackground:Z

    return v0
.end method

.method public declared-synchronized getUseWideViewPort()Z
    .locals 1

    .prologue
    .line 761
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgent()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    monitor-enter p0

    :try_start_0
    const-string v0, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 738
    const/4 v0, 0x1

    .line 744
    :goto_0
    monitor-exit p0

    return v0

    .line 739
    :cond_0
    :try_start_1
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    const/4 v0, 0x2

    goto :goto_0

    .line 741
    :cond_1
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    .line 742
    const/4 v0, 0x0

    goto :goto_0

    .line 744
    :cond_2
    const/4 v0, -0x1

    goto :goto_0

    .line 737
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUserAgentString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1450
    monitor-enter p0

    :try_start_0
    const-string v2, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    if-nez v2, :cond_1

    .line 1453
    :cond_0
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1469
    :goto_0
    monitor-exit p0

    return-object v2

    .line 1456
    :cond_1
    const/4 v1, 0x0

    .line 1457
    .local v1, doPostSync:Z
    :try_start_1
    sget-object v2, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1458
    :try_start_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1459
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v3, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1460
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1461
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1462
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1463
    const/4 v1, 0x1

    .line 1465
    :cond_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1466
    if-eqz v1, :cond_3

    .line 1467
    :try_start_3
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1469
    :cond_3
    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1465
    .end local v0           #currentLocale:Ljava/util/Locale;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1450
    .end local v1           #doPostSync:Z
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method declared-synchronized onDestroyed()V
    .locals 0

    .prologue
    .line 1591
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setAdvancedCopyPasteFeature(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 649
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    if-eq v0, p1, :cond_0

    .line 650
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAdvanceTextSelection:Z

    .line 651
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :cond_0
    monitor-exit p0

    return-void

    .line 649
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setAllowContentAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 513
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowContentAccess:Z

    .line 514
    return-void
.end method

.method public setAllowFileAccess(Z)V
    .locals 0
    .parameter "allow"

    .prologue
    .line 496
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAllowFileAccess:Z

    .line 497
    return-void
.end method

.method public declared-synchronized setAppCacheEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1236
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1237
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mAppCacheEnabled:Z

    .line 1238
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1240
    :cond_0
    monitor-exit p0

    return-void

    .line 1236
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCacheMaxSize(J)V
    .locals 2
    .parameter "appCacheMaxSize"

    .prologue
    .line 1261
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1262
    iput-wide p1, p0, Landroid/webkit/WebSettings;->mAppCacheMaxSize:J

    .line 1263
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1265
    :cond_0
    monitor-exit p0

    return-void

    .line 1261
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setAppCachePath(Ljava/lang/String;)V
    .locals 1
    .parameter "appCachePath"

    .prologue
    .line 1250
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1251
    iput-object p1, p0, Landroid/webkit/WebSettings;->mAppCachePath:Ljava/lang/String;

    .line 1252
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1254
    :cond_0
    monitor-exit p0

    return-void

    .line 1250
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkImage(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1102
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    if-eq v0, p1, :cond_0

    .line 1103
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkImage:Z

    .line 1104
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    :cond_0
    monitor-exit p0

    return-void

    .line 1102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBlockNetworkLoads(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1126
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    if-eq v0, p1, :cond_0

    .line 1127
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBlockNetworkLoads:Z

    .line 1128
    invoke-direct {p0}, Landroid/webkit/WebSettings;->verifyNetworkAccess()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1130
    :cond_0
    monitor-exit p0

    return-void

    .line 1126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 463
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mBuiltInZoomControls:Z

    .line 464
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 465
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 1524
    iget v0, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    if-eq p1, v0, :cond_0

    .line 1525
    iput p1, p0, Landroid/webkit/WebSettings;->mOverrideCacheMode:I

    .line 1527
    :cond_0
    return-void
.end method

.method public declared-synchronized setCursiveFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 942
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 943
    iput-object p1, p0, Landroid/webkit/WebSettings;->mCursiveFontFamily:Ljava/lang/String;

    .line 944
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 946
    :cond_0
    monitor-exit p0

    return-void

    .line 942
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabaseEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1273
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1274
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDatabaseEnabled:Z

    .line 1275
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :cond_0
    monitor-exit p0

    return-void

    .line 1273
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1209
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    if-nez v0, :cond_0

    .line 1210
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDatabasePath:Ljava/lang/String;

    .line 1211
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/WebSettings;->mDatabasePathHasBeenSet:Z

    .line 1212
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1214
    :cond_0
    monitor-exit p0

    return-void

    .line 1209
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugCache(Z)V
    .locals 1
    .parameter "setDebugCache"

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    if-eq v0, p1, :cond_0

    .line 766
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    .line 768
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->CACHE_MANAGER:Z

    .line 769
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->COOKIE_MANAGER:Z

    .line 770
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugCache:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->COOKIE_SYNC_MANAGER:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    :cond_0
    monitor-exit p0

    return-void

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugInfo(Z)V
    .locals 1
    .parameter "setDebugInfo"

    .prologue
    .line 802
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    if-eq v0, p1, :cond_0

    .line 803
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    .line 805
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_SETTINGS:Z

    .line 806
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_TEXT_VIEW:Z

    .line 807
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW:Z

    .line 808
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_VIEW_CORE:Z

    .line 809
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugInfo:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_BACK_FORWARD_LIST:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 812
    :cond_0
    monitor-exit p0

    return-void

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugNetwork(Z)V
    .locals 1
    .parameter "setDebugNetwork"

    .prologue
    .line 776
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    if-eq v0, p1, :cond_0

    .line 777
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    .line 779
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->LOAD_LISTENER:Z

    .line 780
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->NETWORK:Z

    .line 781
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->SSL_ERROR_HANDLER:Z

    .line 782
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugNetwork:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->FRAME_LOADER:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 785
    :cond_0
    monitor-exit p0

    return-void

    .line 776
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDebugVervose(Z)V
    .locals 1
    .parameter "setDebugVervose"

    .prologue
    .line 788
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    if-eq v0, p1, :cond_0

    .line 789
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    .line 791
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->BROWSER_FRAME:Z

    .line 792
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->CALLBACK_PROXY:Z

    .line 793
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->WEB_SYNC_MANAGER:Z

    .line 794
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->DRAG_TRACKER:Z

    .line 795
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->STREAM_LOADER:Z

    .line 796
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDebugVervose:Z

    sput-boolean v0, Landroid/webkit/DebugFlags;->URL_UTIL:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    :cond_0
    monitor-exit p0

    return-void

    .line 788
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFixedFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1044
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1045
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    if-eq v0, p1, :cond_0

    .line 1046
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFixedFontSize:I

    .line 1047
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :cond_0
    monitor-exit p0

    return-void

    .line 1044
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1023
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1024
    iget v0, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    if-eq v0, p1, :cond_0

    .line 1025
    iput p1, p0, Landroid/webkit/WebSettings;->mDefaultFontSize:I

    .line 1026
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    :cond_0
    monitor-exit p0

    return-void

    .line 1023
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setDefaultTextEncodingName(Ljava/lang/String;)V
    .locals 1
    .parameter "encoding"

    .prologue
    .line 1407
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1408
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultTextEncoding:Ljava/lang/String;

    .line 1409
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1411
    :cond_0
    monitor-exit p0

    return-void

    .line 1407
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setDefaultZoom(Landroid/webkit/WebSettings$ZoomDensity;)V
    .locals 2
    .parameter "zoom"

    .prologue
    .line 613
    iget-object v0, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    if-eq v0, p1, :cond_0

    .line 614
    iput-object p1, p0, Landroid/webkit/WebSettings;->mDefaultZoom:Landroid/webkit/WebSettings$ZoomDensity;

    .line 615
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget v1, p1, Landroid/webkit/WebSettings$ZoomDensity;->value:I

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateDefaultZoomDensity(I)V

    .line 617
    :cond_0
    return-void
.end method

.method public declared-synchronized setDomStorageEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1285
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1286
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mDomStorageEnabled:Z

    .line 1287
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1289
    :cond_0
    monitor-exit p0

    return-void

    .line 1285
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setDoubleTapToastCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1556
    sget v0, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-eq v0, p1, :cond_0

    .line 1557
    sput p1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1559
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z

    .line 1562
    :cond_0
    return-void
.end method

.method public setEditableSupport(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 669
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mEditableSupport:Z

    .line 670
    return-void
.end method

.method public declared-synchronized setFantasyFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 961
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFantasyFontFamily:Ljava/lang/String;

    .line 963
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 965
    :cond_0
    monitor-exit p0

    return-void

    .line 961
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setFixedFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 885
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iput-object p1, p0, Landroid/webkit/WebSettings;->mFixedFontFamily:Ljava/lang/String;

    .line 887
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 889
    :cond_0
    monitor-exit p0

    return-void

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationDatabasePath(Ljava/lang/String;)V
    .locals 1
    .parameter "databasePath"

    .prologue
    .line 1224
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1226
    iput-object p1, p0, Landroid/webkit/WebSettings;->mGeolocationDatabasePath:Ljava/lang/String;

    .line 1227
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1229
    :cond_0
    monitor-exit p0

    return-void

    .line 1224
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGeolocationEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1335
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1336
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mGeolocationEnabled:Z

    .line 1337
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1339
    :cond_0
    monitor-exit p0

    return-void

    .line 1335
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptCanOpenWindowsAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1386
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1387
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptCanOpenWindowsAutomatically:Z

    .line 1388
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1390
    :cond_0
    monitor-exit p0

    return-void

    .line 1386
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setJavaScriptEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1159
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1160
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mJavaScriptEnabled:Z

    .line 1161
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1163
    :cond_0
    monitor-exit p0

    return-void

    .line 1159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V
    .locals 1
    .parameter "l"

    .prologue
    .line 845
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    if-eq v0, p1, :cond_0

    .line 846
    iput-object p1, p0, Landroid/webkit/WebSettings;->mLayoutAlgorithm:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 847
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 849
    :cond_0
    monitor-exit p0

    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setLightTouchEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 633
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLightTouchEnabled:Z

    .line 634
    return-void
.end method

.method public setLoadWithOverviewMode(Z)V
    .locals 0
    .parameter "overview"

    .prologue
    .line 528
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadWithOverviewMode:Z

    .line 529
    return-void
.end method

.method public declared-synchronized setLoadsImagesAutomatically(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1078
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    if-eq v0, p1, :cond_0

    .line 1079
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mLoadsImagesAutomatically:Z

    .line 1080
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1082
    :cond_0
    monitor-exit p0

    return-void

    .line 1078
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 981
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 982
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    if-eq v0, p1, :cond_0

    .line 983
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumFontSize:I

    .line 984
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    :cond_0
    monitor-exit p0

    return-void

    .line 981
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMinimumLogicalFontSize(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1002
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/webkit/WebSettings;->pin(I)I

    move-result p1

    .line 1003
    iget v0, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    if-eq v0, p1, :cond_0

    .line 1004
    iput p1, p0, Landroid/webkit/WebSettings;->mMinimumLogicalFontSize:I

    .line 1005
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1007
    :cond_0
    monitor-exit p0

    return-void

    .line 1002
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNavDump(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 434
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNavDump:Z

    .line 435
    return-void
.end method

.method public setNeedInitialFocus(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1491
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    if-eq v0, p1, :cond_0

    .line 1492
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mNeedInitialFocus:Z

    .line 1494
    :cond_0
    return-void
.end method

.method public declared-synchronized setPageCacheCapacity(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1065
    monitor-enter p0

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1066
    :cond_0
    const/16 v0, 0x14

    if-le p1, v0, :cond_1

    const/16 p1, 0x14

    .line 1067
    :cond_1
    :try_start_0
    iget v0, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    if-eq v0, p1, :cond_2

    .line 1068
    iput p1, p0, Landroid/webkit/WebSettings;->mPageCacheCapacity:I

    .line 1069
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1071
    :cond_2
    monitor-exit p0

    return-void

    .line 1065
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 1184
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    if-eq v0, p1, :cond_0

    .line 1185
    iput-object p1, p0, Landroid/webkit/WebSettings;->mPluginState:Landroid/webkit/WebSettings$PluginState;

    .line 1186
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1188
    :cond_0
    monitor-exit p0

    return-void

    .line 1184
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsEnabled(Z)V
    .locals 1
    .parameter "flag"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1173
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1174
    monitor-exit p0

    return-void

    .line 1173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setPluginsPath(Ljava/lang/String;)V
    .locals 0
    .parameter "pluginsPath"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1199
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V
    .locals 3
    .parameter "priority"

    .prologue
    .line 1508
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    if-eq v0, p1, :cond_0

    .line 1509
    iput-object p1, p0, Landroid/webkit/WebSettings;->mRenderPriority:Landroid/webkit/WebSettings$RenderPriority;

    .line 1510
    iget-object v0, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    #calls: Landroid/webkit/WebSettings$EventHandler;->sendMessage(Landroid/os/Message;)Z
    invoke-static {v0, v1}, Landroid/webkit/WebSettings$EventHandler;->access$800(Landroid/webkit/WebSettings$EventHandler;Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1513
    :cond_0
    monitor-exit p0

    return-void

    .line 1508
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSansSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 904
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 905
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSansSerifFontFamily:Ljava/lang/String;

    .line 906
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 908
    :cond_0
    monitor-exit p0

    return-void

    .line 904
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSaveFormData(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 559
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSaveFormData:Z

    .line 560
    return-void
.end method

.method public setSavePassword(Z)V
    .locals 0
    .parameter "save"

    .prologue
    .line 573
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSavePassword:Z

    .line 574
    return-void
.end method

.method public declared-synchronized setSerifFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 923
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 924
    iput-object p1, p0, Landroid/webkit/WebSettings;->mSerifFontFamily:Ljava/lang/String;

    .line 925
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    :cond_0
    monitor-exit p0

    return-void

    .line 923
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setShrinksStandaloneImagesToFit(Z)V
    .locals 1
    .parameter "shrink"

    .prologue
    .line 1545
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    if-eq v0, p1, :cond_0

    .line 1546
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mShrinksStandaloneImagesToFit:Z

    .line 1547
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V

    .line 1549
    :cond_0
    return-void
.end method

.method public declared-synchronized setStandardFontFamily(Ljava/lang/String;)V
    .locals 1
    .parameter "font"

    .prologue
    .line 866
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 867
    iput-object p1, p0, Landroid/webkit/WebSettings;->mStandardFontFamily:Ljava/lang/String;

    .line 868
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    :cond_0
    monitor-exit p0

    return-void

    .line 866
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSupportMultipleWindows(Z)V
    .locals 1
    .parameter "support"

    .prologue
    .line 821
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    if-eq v0, p1, :cond_0

    .line 822
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z

    .line 823
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 825
    :cond_0
    monitor-exit p0

    return-void

    .line 821
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setSupportZoom(Z)V
    .locals 2
    .parameter "support"

    .prologue
    .line 448
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    .line 449
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 450
    return-void
.end method

.method public setSupportZoomWithoutControls(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 478
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mSupportZoomWithoutControls:Z

    .line 479
    iget-object v0, p0, Landroid/webkit/WebSettings;->mWebView:Landroid/webkit/WebView;

    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->updateMultiTouchSupport(Landroid/content/Context;)V

    .line 480
    return-void
.end method

.method public declared-synchronized setTextSize(Landroid/webkit/WebSettings$TextSize;)V
    .locals 4
    .parameter "t"

    .prologue
    .line 589
    monitor-enter p0

    :try_start_0
    sget-boolean v0, Landroid/webkit/WebView;->mLogEvent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    if-eq v0, p1, :cond_0

    .line 590
    const v0, 0x11207

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    iget v3, v3, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p1, Landroid/webkit/WebSettings$TextSize;->value:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 593
    :cond_0
    iput-object p1, p0, Landroid/webkit/WebSettings;->mTextSize:Landroid/webkit/WebSettings$TextSize;

    .line 594
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 595
    monitor-exit p0

    return-void

    .line 589
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUseDoubleTree(Z)V
    .locals 0
    .parameter "use"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 687
    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public setUseWebViewBackgroundForOverscrollBackground(Z)V
    .locals 0
    .parameter "view"

    .prologue
    .line 544
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWebViewBackgroundOverscrollBackground:Z

    .line 545
    return-void
.end method

.method public declared-synchronized setUseWideViewPort(Z)V
    .locals 1
    .parameter "use"

    .prologue
    .line 751
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    if-eq v0, p1, :cond_0

    .line 752
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mUseWideViewport:Z

    .line 753
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    :cond_0
    monitor-exit p0

    return-void

    .line 751
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setUserAgent(I)V
    .locals 3
    .parameter "ua"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 708
    monitor-enter p0

    const/4 v0, 0x0

    .line 709
    .local v0, uaString:Ljava/lang/String;
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    .line 710
    :try_start_0
    const-string v1, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 725
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 713
    :cond_1
    :try_start_1
    const-string v0, "Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10_5_7; en-us) AppleWebKit/530.17 (KHTML, like Gecko) Version/4.0 Safari/530.17"

    .line 724
    :cond_2
    :goto_1
    invoke-virtual {p0, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 708
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 715
    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_4

    .line 716
    :try_start_2
    const-string v1, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"

    iget-object v2, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 719
    const-string v0, "Mozilla/5.0 (iPhone; U; CPU iPhone OS 3_0 like Mac OS X; en-us) AppleWebKit/528.18 (KHTML, like Gecko) Version/4.0 Mobile/7A341 Safari/528.16"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 721
    :cond_4
    if-eqz p1, :cond_2

    goto :goto_0
.end method

.method public declared-synchronized setUserAgentString(Ljava/lang/String;)V
    .locals 3
    .parameter "ua"

    .prologue
    .line 1426
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    .line 1427
    :cond_0
    sget-object v1, Landroid/webkit/WebSettings;->sLockForLocaleSettings:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1428
    :try_start_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1429
    .local v0, currentLocale:Ljava/util/Locale;
    sget-object v2, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1430
    sput-object v0, Landroid/webkit/WebSettings;->sLocale:Ljava/util/Locale;

    .line 1431
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentAcceptLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/WebSettings;->mAcceptLanguage:Ljava/lang/String;

    .line 1433
    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1434
    :try_start_2
    invoke-direct {p0}, Landroid/webkit/WebSettings;->getCurrentUserAgent()Ljava/lang/String;

    move-result-object p1

    .line 1435
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z

    .line 1440
    .end local v0           #currentLocale:Ljava/util/Locale;
    :goto_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1441
    iput-object p1, p0, Landroid/webkit/WebSettings;->mUserAgent:Ljava/lang/String;

    .line 1442
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1444
    :cond_2
    monitor-exit p0

    return-void

    .line 1433
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1426
    :catchall_1
    move-exception v1

    monitor-exit p0

    throw v1

    .line 1437
    :cond_3
    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mUseDefaultUserAgent:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0
.end method

.method public declared-synchronized setWorkersEnabled(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 1324
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1325
    iput-boolean p1, p0, Landroid/webkit/WebSettings;->mWorkersEnabled:Z

    .line 1326
    invoke-direct {p0}, Landroid/webkit/WebSettings;->postSync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    :cond_0
    monitor-exit p0

    return-void

    .line 1324
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized supportMultipleWindows()Z
    .locals 1

    .prologue
    .line 833
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportMultipleWindows:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public supportZoom()Z
    .locals 1

    .prologue
    .line 456
    iget-boolean v0, p0, Landroid/webkit/WebSettings;->mSupportZoom:Z

    return v0
.end method

.method declared-synchronized syncSettingsAndCreateHandler(Landroid/webkit/BrowserFrame;)V
    .locals 4
    .parameter "frame"

    .prologue
    const/4 v2, 0x0

    .line 1570
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/webkit/WebSettings;->mBrowserFrame:Landroid/webkit/BrowserFrame;

    .line 1571
    sget-boolean v1, Landroid/webkit/DebugFlags;->WEB_SETTINGS:Z

    if-eqz v1, :cond_0

    .line 1572
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljunit/framework/Assert;->assertTrue(Z)V

    .line 1575
    :cond_0
    iget-object v1, p0, Landroid/webkit/WebSettings;->mContext:Landroid/content/Context;

    const-string v2, "WebViewSettings"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1577
    .local v0, sp:Landroid/content/SharedPreferences;
    sget v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    if-lez v1, :cond_1

    .line 1578
    const-string v1, "double_tap_toast_count"

    sget v2, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Landroid/webkit/WebSettings;->mDoubleTapToastCount:I

    .line 1581
    :cond_1
    iget v1, p1, Landroid/webkit/BrowserFrame;->mNativeFrame:I

    invoke-direct {p0, v1}, Landroid/webkit/WebSettings;->nativeSync(I)V

    .line 1582
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/WebSettings;->mSyncPending:Z

    .line 1583
    iget-object v1, p0, Landroid/webkit/WebSettings;->mEventHandler:Landroid/webkit/WebSettings$EventHandler;

    #calls: Landroid/webkit/WebSettings$EventHandler;->createHandler()V
    invoke-static {v1}, Landroid/webkit/WebSettings$EventHandler;->access$900(Landroid/webkit/WebSettings$EventHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1584
    monitor-exit p0

    return-void

    .end local v0           #sp:Landroid/content/SharedPreferences;
    :cond_2
    move v1, v2

    .line 1572
    goto :goto_0

    .line 1570
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
