.class Landroid/webkit/BrowserFrame;
.super Landroid/os/Handler;
.source "BrowserFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/BrowserFrame$ConfigCallback;
    }
.end annotation


# static fields
.field private static final DRAWABLEDIR:I = 0x3

.field private static final FILE_UPLOAD_LABEL:I = 0x4

.field static final FRAME_COMPLETED:I = 0x3e9

.field static final FRAME_LOADTYPE_BACK:I = 0x1

.field static final FRAME_LOADTYPE_FORWARD:I = 0x2

.field static final FRAME_LOADTYPE_INDEXEDBACKFORWARD:I = 0x3

.field static final FRAME_LOADTYPE_REDIRECT:I = 0x7

.field static final FRAME_LOADTYPE_RELOAD:I = 0x4

.field static final FRAME_LOADTYPE_RELOADALLOWINGSTALEDATA:I = 0x5

.field static final FRAME_LOADTYPE_REPLACE:I = 0x8

.field static final FRAME_LOADTYPE_SAME:I = 0x6

.field static final FRAME_LOADTYPE_STANDARD:I = 0x0

.field private static final LOADERROR:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit"

.field private static final MAX_OUTSTANDING_REQUESTS:I = 0x12c

.field private static final NODOMAIN:I = 0x1

.field static final ORIENTATION_CHANGED:I = 0x3ea

.field static final POLICY_FUNCTION:I = 0x3eb

.field static final POLICY_IGNORE:I = 0x2

.field static final POLICY_USE:I = 0x0

.field private static final RESET_LABEL:I = 0x5

.field private static final SUBMIT_LABEL:I = 0x6

.field private static final TRANSITION_SWITCH_THRESHOLD:I = 0x4b

.field static sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

.field static sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;


# instance fields
.field private mBlockMessages:Z

.field private final mCallbackProxy:Landroid/webkit/CallbackProxy;

.field private mCommitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mDatabase:Landroid/webkit/WebViewDatabase;

.field private mFirstLayoutDone:Z

.field private mHadRSSContent:Z

.field private mIsMainFrame:Z

.field private mJSInterfaceMap:Ljava/util/Map;
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

.field mLoadInitFromJava:Z

.field private mLoadType:I

.field mNativeFrame:I

.field private mOrientation:I

.field private mRSSLinks:[Landroid/webkit/MotoRSSLink;

.field private final mSettings:Landroid/webkit/WebSettings;

.field private final mWebViewCore:Landroid/webkit/WebViewCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebViewCore;Landroid/webkit/CallbackProxy;Landroid/webkit/WebSettings;Ljava/util/Map;)V
    .locals 4
    .parameter "context"
    .parameter "w"
    .parameter "proxy"
    .parameter "settings"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/webkit/WebViewCore;",
            "Landroid/webkit/CallbackProxy;",
            "Landroid/webkit/WebSettings;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p5, javascriptInterfaces:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    iput-boolean v2, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    const/4 v2, -0x1

    iput v2, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mRSSLinks:[Landroid/webkit/MotoRSSLink;

    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mHadRSSContent:Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .local v1, appContext:Landroid/content/Context;
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    if-nez v2, :cond_0

    new-instance v2, Landroid/webkit/JWebCoreJavaBridge;

    invoke-direct {v2}, Landroid/webkit/JWebCoreJavaBridge;-><init>()V

    sput-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const-string v2, "activity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v2

    const/16 v3, 0x10

    if-le v2, v3, :cond_2

    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    :goto_0
    invoke-static {v1}, Landroid/webkit/CacheManager;->init(Landroid/content/Context;)V

    invoke-static {v1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {v1}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    .end local v0           #am:Landroid/app/ActivityManager;
    :cond_0
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    if-nez v2, :cond_1

    new-instance v3, Landroid/webkit/BrowserFrame$ConfigCallback;

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-direct {v3, v2}, Landroid/webkit/BrowserFrame$ConfigCallback;-><init>(Landroid/view/WindowManager;)V

    sput-object v3, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-static {v2}, Landroid/view/ViewRoot;->addConfigCallback(Landroid/content/ComponentCallbacks;)V

    :cond_1
    sget-object v2, Landroid/webkit/BrowserFrame;->sConfigCallback:Landroid/webkit/BrowserFrame$ConfigCallback;

    invoke-virtual {v2, p0}, Landroid/webkit/BrowserFrame$ConfigCallback;->addHandler(Landroid/os/Handler;)V

    iput-object p5, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    iput-object p4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    iput-object p1, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    iput-object p3, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-static {v1}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v2

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    iput-object p2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .local v0, am:Landroid/content/res/AssetManager;
    invoke-virtual {p3}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-direct {p0, p2, v0, v2}, Landroid/webkit/BrowserFrame;->nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V

    return-void

    .local v0, am:Landroid/app/ActivityManager;
    :cond_2
    sget-object v2, Landroid/webkit/BrowserFrame;->sJavaBridge:Landroid/webkit/JWebCoreJavaBridge;

    const/high16 v3, 0x40

    invoke-virtual {v2, v3}, Landroid/webkit/JWebCoreJavaBridge;->setCacheSize(I)V

    goto :goto_0
.end method

.method private RSSLinksAvailable([Ljava/lang/String;)V
    .locals 8
    .parameter "links"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    .local v2, len:I
    div-int/lit8 v5, v2, 0x2

    new-array v3, v5, [Landroid/webkit/MotoRSSLink;

    .local v3, rssLinks:[Landroid/webkit/MotoRSSLink;
    if-eqz v3, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    div-int/lit8 v5, v2, 0x2

    if-ge v0, v5, :cond_2

    if-ge v1, v2, :cond_2

    new-instance v5, Landroid/webkit/MotoRSSLink;

    aget-object v6, p1, v1

    add-int/lit8 v7, v1, 0x1

    aget-object v7, p1, v7

    invoke-direct {v5, v6, v7}, Landroid/webkit/MotoRSSLink;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_2
    iput-object v3, p0, Landroid/webkit/BrowserFrame;->mRSSLinks:[Landroid/webkit/MotoRSSLink;

    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .local v4, wv:Landroid/webkit/WebView;
    iget-object v5, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v5, v4}, Landroid/webkit/CallbackProxy;->onRSSLinksAvailable(Landroid/webkit/WebView;)V

    goto :goto_0
.end method

.method private RSSPageLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/webkit/BrowserFrame;->mHadRSSContent:Z

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .local v0, wv:Landroid/webkit/WebView;
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v1, v0}, Landroid/webkit/CallbackProxy;->onRSSOrAtomPageLoading(Landroid/webkit/WebView;)V

    return-void
.end method

.method private closeWindow(Landroid/webkit/WebViewCore;)V
    .locals 2
    .parameter "w"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {p1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onCloseWindow(Landroid/webkit/WebView;)V

    return-void
.end method

.method private createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 1
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->createWindow(ZZ)Landroid/webkit/BrowserFrame;

    move-result-object v0

    return-object v0
.end method

.method private decidePolicyForFormResubmission(I)V
    .locals 4
    .parameter "policyFunction"

    .prologue
    const/16 v3, 0x3eb

    const/4 v2, 0x2

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .local v0, dontResend:Landroid/os/Message;
    const/4 v2, 0x0

    invoke-virtual {p0, v3, p1, v2}, Landroid/webkit/BrowserFrame;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .local v1, resend:Landroid/os/Message;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, v0, v1}, Landroid/webkit/CallbackProxy;->onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V

    return-void
.end method

.method private density()F
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0
.end method

.method private didReceiveIcon(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "icon"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedIcon(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private didReceiveTouchIconUrl(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "precomposed"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->onReceivedTouchIconUrl(Ljava/lang/String;Z)V

    return-void
.end method

.method private native documentAsText()Ljava/lang/String;
.end method

.method private native externalRepresentation()Ljava/lang/String;
.end method

.method private getFile(Ljava/lang/String;[BII)I
    .locals 7
    .parameter "uri"
    .parameter "buffer"
    .parameter "offset"
    .parameter "expectedSize"

    .prologue
    const-string v6, "webkit"

    const/4 v2, 0x0

    .local v2, size:I
    :try_start_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .local v3, stream:Ljava/io/InputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v2, p4, :cond_0

    if-eqz p2, :cond_0

    array-length v4, p2

    sub-int/2addr v4, p3

    if-lt v4, v2, :cond_0

    invoke-virtual {v3, p2, p3, v2}, Ljava/io/InputStream;->read([BII)I

    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v3           #stream:Ljava/io/InputStream;
    :goto_1
    return v2

    .restart local v3       #stream:Ljava/io/InputStream;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .end local v3           #stream:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/io/FileNotFoundException;
    const-string v4, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FileNotFoundException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, e2:Ljava/io/IOException;
    const-string v4, "webkit"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "IOException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v0, 0x0

    .local v0, size:I
    :try_start_0
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .local v1, stream:Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #stream:Ljava/io/InputStream;
    :goto_0
    return v0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private native getFormTextData()Ljava/util/HashMap;
.end method

.method private native getUsernamePassword()[Ljava/lang/String;
.end method

.method private native hasPasswordField()Z
.end method

.method private loadFinished(Ljava/lang/String;IZ)V
    .locals 1
    .parameter "url"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    if-nez p3, :cond_0

    if-nez p2, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onPageFinished(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private loadStarted(Ljava/lang/String;Landroid/graphics/Bitmap;IZ)V
    .locals 4
    .parameter "url"
    .parameter "favicon"
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    const/4 v3, 0x0

    iput-boolean p4, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/webkit/BrowserFrame;->mRSSLinks:[Landroid/webkit/MotoRSSLink;

    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mHadRSSContent:Z

    if-nez p4, :cond_0

    if-nez p3, :cond_2

    :cond_0
    iput p3, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    if-eqz p4, :cond_1

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2, p1, p2}, Landroid/webkit/CallbackProxy;->onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    iput-boolean v3, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/webkit/WebViewCore;->removeMessages(I)V

    :cond_1
    if-nez p3, :cond_2

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getSaveFormData()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v2}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v1

    .local v1, h:Landroid/webkit/WebHistoryItem;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v0

    .local v0, currentUrl:Ljava/lang/String;
    if-eqz v0, :cond_2

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->getFormTextData()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/webkit/WebViewDatabase;->setFormData(Ljava/lang/String;Ljava/util/HashMap;)V

    .end local v0           #currentUrl:Ljava/lang/String;
    .end local v1           #h:Landroid/webkit/WebHistoryItem;
    :cond_2
    return-void
.end method

.method private native nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V
.end method

.method private native nativeCallPolicyFunction(II)V
.end method

.method private native nativeCreateFrame(Landroid/webkit/WebViewCore;Landroid/content/res/AssetManager;Landroid/webkit/WebBackForwardList;)V
.end method

.method private native nativeGoBackOrForward(I)V
.end method

.method private native nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V
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
.end method

.method private native nativeOrientationChanged(I)V
.end method

.method private native nativePostUrl(Ljava/lang/String;[B)V
.end method

.method private native nativeStopLoading()V
.end method

.method private reportError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/CallbackProxy;->onReceivedError(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestFocus()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->onRequestFocus()V

    return-void
.end method

.method private resetLoadingStates()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return-void
.end method

.method private native setCacheDisabled(Z)V
.end method

.method private setProgress(I)V
    .locals 3
    .parameter "newProgress"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onProgressChanged(I)V

    const/16 v0, 0x64

    if-ne p1, v0, :cond_0

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x64

    invoke-virtual {p0, v0, v1, v2}, Landroid/webkit/BrowserFrame;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x4b

    if-le p1, v0, :cond_1

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0}, Landroid/webkit/CallbackProxy;->switchOutDrawHistory()V

    :cond_1
    return-void
.end method

.method private setTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedTitle(Ljava/lang/String;)V

    return-void
.end method

.method private native setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private startLoadingResource(ILjava/lang/String;Ljava/lang/String;Ljava/util/HashMap;[BJIZZZLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;
    .locals 25
    .parameter "loaderHandle"
    .parameter "url"
    .parameter "method"
    .parameter "headers"
    .parameter "postData"
    .parameter "postDataIdentifier"
    .parameter "cacheMode"
    .parameter "mainResource"
    .parameter "userGesture"
    .parameter "synchronous"
    .parameter "username"
    .parameter "password"

    .prologue
    new-instance v17, Landroid/webkit/PerfChecker;

    invoke-direct/range {v17 .. v17}, Landroid/webkit/PerfChecker;-><init>()V

    .local v17, checker:Landroid/webkit/PerfChecker;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getCacheMode()I

    move-result p8

    :cond_0
    const-string v5, "POST"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-nez p8, :cond_1

    const/16 p8, 0x2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v5

    if-eqz v5, :cond_2

    :try_start_0
    new-instance v24, Landroid/net/WebAddress;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v24, uri:Landroid/net/WebAddress;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .local v23, schemePlusHost:Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Landroid/webkit/BrowserFrame;->getUsernamePassword()[Ljava/lang/String;

    move-result-object v21

    .local v21, ret:[Ljava/lang/String;
    if-eqz v21, :cond_2

    if-eqz p5, :cond_2

    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_2

    new-instance v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p5

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .local v20, postString:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    aget-object v5, v21, v5

    invoke-static {v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v22

    .local v22, saved:[Ljava/lang/String;
    if-eqz v22, :cond_3

    const/4 v5, 0x0

    aget-object v5, v22, v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    const/4 v7, 0x1

    aget-object v7, v21, v7

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v20           #postString:Ljava/lang/String;
    .end local v21           #ret:[Ljava/lang/String;
    .end local v22           #saved:[Ljava/lang/String;
    .end local v23           #schemePlusHost:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/WebAddress;
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    move v10, v0

    .local v10, isMainFramePage:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v5, v0

    move-object/from16 v6, p0

    move-object/from16 v7, p2

    move/from16 v8, p1

    move/from16 v9, p11

    move/from16 v11, p9

    move/from16 v12, p10

    move-wide/from16 v13, p6

    move-object/from16 v15, p12

    move-object/from16 v16, p13

    invoke-static/range {v5 .. v16}, Landroid/webkit/LoadListener;->getLoadListener(Landroid/content/Context;Landroid/webkit/BrowserFrame;Ljava/lang/String;IZZZZJLjava/lang/String;Ljava/lang/String;)Landroid/webkit/LoadListener;

    move-result-object v18

    .local v18, loadListener:Landroid/webkit/LoadListener;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->onLoadResource(Ljava/lang/String;)V

    invoke-static {}, Landroid/webkit/LoadListener;->getNativeLoaderCount()I

    move-result v5

    const/16 v6, 0x12c

    if-le v5, v6, :cond_4

    const/4 v5, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    move-object v6, v0

    const v7, 0x1040120

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/LoadListener;->error(ILjava/lang/String;)V

    move-object/from16 v5, v18

    :goto_1
    return-object v5

    .end local v10           #isMainFramePage:Z
    .end local v18           #loadListener:Landroid/webkit/LoadListener;
    .restart local v20       #postString:Ljava/lang/String;
    .restart local v21       #ret:[Ljava/lang/String;
    .restart local v22       #saved:[Ljava/lang/String;
    .restart local v23       #schemePlusHost:Ljava/lang/String;
    .restart local v24       #uri:Landroid/net/WebAddress;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    move-object v5, v0

    const/4 v6, 0x0

    aget-object v6, v21, v6

    const/4 v7, 0x1

    aget-object v7, v21, v7

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v23

    move-object v2, v6

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/CallbackProxy;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/net/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .end local v20           #postString:Ljava/lang/String;
    .end local v21           #ret:[Ljava/lang/String;
    .end local v22           #saved:[Ljava/lang/String;
    .end local v23           #schemePlusHost:Ljava/lang/String;
    .end local v24           #uri:Landroid/net/WebAddress;
    :catch_0
    move-exception v5

    goto :goto_0

    .restart local v10       #isMainFramePage:Z
    .restart local v18       #loadListener:Landroid/webkit/LoadListener;
    :cond_4
    new-instance v19, Landroid/webkit/FrameLoader;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move-object v2, v5

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/FrameLoader;-><init>(Landroid/webkit/LoadListener;Landroid/webkit/WebSettings;Ljava/lang/String;)V

    .local v19, loader:Landroid/webkit/FrameLoader;
    move-object/from16 v0, v19

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setHeaders(Ljava/util/HashMap;)V

    move-object/from16 v0, v19

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setPostData([B)V

    const-string v5, "If-Modified-Since"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "If-None-Match"

    move-object/from16 v0, p4

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    const/4 v5, 0x2

    :goto_2
    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/FrameLoader;->setCacheMode(I)V

    invoke-virtual/range {v19 .. v19}, Landroid/webkit/FrameLoader;->executeLoad()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "startLoadingResource fail"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    :cond_6
    const-string v5, "startLoadingResource succeed"

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    if-nez p11, :cond_8

    move-object/from16 v5, v18

    goto :goto_1

    :cond_7
    move/from16 v5, p8

    goto :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private transitionToCommitted(IZ)V
    .locals 1
    .parameter "loadType"
    .parameter "isMainFrame"

    .prologue
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    iget-object v0, v0, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v0}, Landroid/webkit/ViewManager;->postResetStateAll()V

    :cond_0
    return-void
.end method

.method private updateVisitedHistory(Ljava/lang/String;Z)V
    .locals 1
    .parameter "url"
    .parameter "isReload"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CallbackProxy;->doUpdateVisitedHistory(Ljava/lang/String;Z)V

    return-void
.end method

.method private windowObjectCleared(I)V
    .locals 3
    .parameter "nativeFramePointer"

    .prologue
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .local v0, interfaceName:Ljava/lang/String;
    iget-object v2, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, p1, v2, v0}, Landroid/webkit/BrowserFrame;->nativeAddJavascriptInterface(ILjava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #interfaceName:Ljava/lang/String;
    .end local v1           #iter:Ljava/util/Iterator;
    :cond_0
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .parameter "obj"
    .parameter "interfaceName"

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mJSInterfaceMap:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public native cacheDisabled()Z
.end method

.method certificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->onReceivedCertificate(Landroid/net/http/SslCertificate;)V

    :cond_0
    return-void
.end method

.method public native clearCache()V
.end method

.method committed()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mCommitted:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->nativeDestroyFrame()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method didFirstLayout()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->contentDraw()V

    :cond_0
    return-void
.end method

.method public documentAsText(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->documentAsText()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public native documentHasImages()Z
.end method

.method public externalRepresentation(Landroid/os/Message;)V
    .locals 1
    .parameter "callback"

    .prologue
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->externalRepresentation()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method firstLayoutDone()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mFirstLayoutDone:Z

    return v0
.end method

.method getCallbackProxy()Landroid/webkit/CallbackProxy;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    return-object v0
.end method

.method public getRSSLinks()[Landroid/webkit/MotoRSSLink;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mRSSLinks:[Landroid/webkit/MotoRSSLink;

    return-object v0
.end method

.method getRawResFilename(I)Ljava/lang/String;
    .locals 8
    .parameter "id"

    .prologue
    const-string v7, "webkit"

    const-string v6, ""

    packed-switch p1, :pswitch_data_0

    const-string v4, "webkit"

    const-string v4, "getRawResFilename got incompatible resource ID"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    move-object v4, v6

    :goto_0
    return-object v4

    :pswitch_0
    const v2, 0x10c0002

    .local v2, resid:I
    :goto_1
    new-instance v3, Landroid/util/TypedValue;

    invoke-direct {v3}, Landroid/util/TypedValue;-><init>()V

    .local v3, value:Landroid/util/TypedValue;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v2, v3, v5}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, path:Ljava/lang/String;
    const/16 v4, 0x2f

    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .local v0, index:I
    if-gez v0, :cond_0

    const-string v4, "webkit"

    const-string v4, "Can\'t find drawable directory."

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, ""

    move-object v4, v6

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    .end local v2           #resid:I
    .end local v3           #value:Landroid/util/TypedValue;
    :pswitch_1
    const v2, 0x10c0001

    .restart local v2       #resid:I
    goto :goto_1

    .end local v2           #resid:I
    :pswitch_2
    const v2, 0x10800c5

    .restart local v2       #resid:I
    goto :goto_1

    .end local v2           #resid:I
    :pswitch_3
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040389

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_4
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104038a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_5
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104038b

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .restart local v0       #index:I
    .restart local v1       #path:Ljava/lang/String;
    .restart local v2       #resid:I
    .restart local v3       #value:Landroid/util/TypedValue;
    :cond_0
    const/4 v4, 0x0

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .end local v0           #index:I
    .end local v1           #path:Ljava/lang/String;
    :cond_1
    iget-object v4, v3, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method getRequestInterceptor()Landroid/webkit/MotoRequestInterceptor;
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    if-nez v1, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Landroid/webkit/BrowserFrame;->mWebViewCore:Landroid/webkit/WebViewCore;

    invoke-virtual {v1}, Landroid/webkit/WebViewCore;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    .local v0, wv:Landroid/webkit/WebView;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/webkit/WebView;->getRequestInterceptor()Landroid/webkit/MotoRequestInterceptor;

    move-result-object v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    goto :goto_0
.end method

.method getUserAgentString()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public goBackOrForward(I)V
    .locals 1
    .parameter "steps"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    invoke-direct {p0, p1}, Landroid/webkit/BrowserFrame;->nativeGoBackOrForward(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    iget-boolean v4, p0, Landroid/webkit/BrowserFrame;->mBlockMessages:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mSettings:Landroid/webkit/WebSettings;

    invoke-virtual {v4}, Landroid/webkit/WebSettings;->getSavePassword()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->hasPasswordField()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v4}, Landroid/webkit/CallbackProxy;->getBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .local v0, item:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_2

    new-instance v3, Landroid/net/WebAddress;

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getUrl()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .local v3, uri:Landroid/net/WebAddress;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v3, Landroid/net/WebAddress;->mScheme:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/net/WebAddress;->mHost:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, schemePlusHost:Ljava/lang/String;
    iget-object v4, p0, Landroid/webkit/BrowserFrame;->mDatabase:Landroid/webkit/WebViewDatabase;

    invoke-virtual {v4, v1}, Landroid/webkit/WebViewDatabase;->getUsernamePassword(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .local v2, up:[Ljava/lang/String;
    if-eqz v2, :cond_2

    aget-object v4, v2, v6

    if-eqz v4, :cond_2

    aget-object v4, v2, v6

    const/4 v5, 0x1

    aget-object v5, v2, v5

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0           #item:Landroid/webkit/WebHistoryItem;
    .end local v1           #schemePlusHost:Ljava/lang/String;
    .end local v2           #up:[Ljava/lang/String;
    .end local v3           #uri:Landroid/net/WebAddress;
    :cond_2
    invoke-static {}, Landroid/webkit/WebViewWorker;->getHandler()Landroid/webkit/WebViewWorker;

    move-result-object v4

    const/16 v5, 0x6c

    invoke-virtual {v4, v5}, Landroid/webkit/WebViewWorker;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v4, v5}, Landroid/webkit/BrowserFrame;->nativeCallPolicyFunction(II)V

    goto :goto_0

    :pswitch_2
    iget v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v5, :cond_0

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, p0, Landroid/webkit/BrowserFrame;->mOrientation:I

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v4}, Landroid/webkit/BrowserFrame;->nativeOrientationChanged(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public handleUrl(Ljava/lang/String;)Z
    .locals 3
    .parameter "url"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-ne v0, v2, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/webkit/BrowserFrame;->mCallbackProxy:Landroid/webkit/CallbackProxy;

    invoke-virtual {v0, p1}, Landroid/webkit/CallbackProxy;->shouldOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/webkit/BrowserFrame;->didFirstLayout()V

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public hasRSSOrAtomContent()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mHadRSSContent:Z

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "baseUrl"
    .parameter "data"
    .parameter "mimeType"
    .parameter "encoding"
    .parameter "historyUrl"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p5, "about:blank"

    :cond_1
    if-nez p2, :cond_2

    const-string p2, ""

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const-string p1, "about:blank"

    :cond_4
    if-eqz p3, :cond_5

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    const-string p3, "text/html"

    :cond_6
    invoke-direct/range {p0 .. p5}, Landroid/webkit/BrowserFrame;->nativeLoadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    return-void
.end method

.method loadType()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/webkit/BrowserFrame;->mLoadType:I

    return v0
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    invoke-static {p1}, Landroid/webkit/URLUtil;->isJavaScriptUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "javascript:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/BrowserFrame;->stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativeLoadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0
.end method

.method public native nativeDestroyFrame()V
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .locals 1
    .parameter "url"
    .parameter "data"

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    invoke-direct {p0, p1, p2}, Landroid/webkit/BrowserFrame;->nativePostUrl(Ljava/lang/String;[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/BrowserFrame;->mLoadInitFromJava:Z

    return-void
.end method

.method public native reload(Z)V
.end method

.method public stopLoading()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/webkit/BrowserFrame;->mIsMainFrame:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->resetLoadingStates()V

    :cond_0
    invoke-direct {p0}, Landroid/webkit/BrowserFrame;->nativeStopLoading()V

    return-void
.end method

.method public native stringByEvaluatingJavaScriptFromString(Ljava/lang/String;)Ljava/lang/String;
.end method
