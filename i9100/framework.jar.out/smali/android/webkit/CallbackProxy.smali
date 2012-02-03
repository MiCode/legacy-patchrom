.class Landroid/webkit/CallbackProxy;
.super Landroid/os/Handler;
.source "CallbackProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/CallbackProxy$11;,
        Landroid/webkit/CallbackProxy$UploadFile;,
        Landroid/webkit/CallbackProxy$ResultTransport;
    }
.end annotation


# static fields
.field private static final ADD_HISTORY_ITEM:I = 0x87

.field private static final ADD_MESSAGE_TO_CONSOLE:I = 0x81

.field private static final ASYNC_KEYEVENTS:I = 0x74

.field private static final AUTH_CREDENTIALS:I = 0x89

.field private static final AUTH_REQUEST:I = 0x68

.field private static final CLOSE_WINDOW:I = 0x6e

.field private static final CREATE_WINDOW:I = 0x6d

.field private static final DOWNLOAD_FILE:I = 0x76

.field private static final EXCEEDED_DATABASE_QUOTA:I = 0x7e

.field private static final GEOLOCATION_PERMISSIONS_HIDE_PROMPT:I = 0x83

.field private static final GEOLOCATION_PERMISSIONS_SHOW_PROMPT:I = 0x82

.field private static final GET_VISITED_HISTORY:I = 0x85

.field private static final HISTORY_INDEX_CHANGED:I = 0x88

.field private static final JS_ALERT:I = 0x70

.field private static final JS_CONFIRM:I = 0x71

.field private static final JS_PROMPT:I = 0x72

.field private static final JS_TIMEOUT:I = 0x80

.field private static final JS_UNLOAD:I = 0x73

.field private static final LOAD_RESOURCE:I = 0x6c

.field private static final LOGTAG:Ljava/lang/String; = "CallbackProxy"

.field private static final NOTIFY:I = 0xc8

.field private static final OPEN_FILE_CHOOSER:I = 0x86

.field private static final OVERRIDE_URL:I = 0x67

.field private static final PAGE_FINISHED:I = 0x79

.field private static final PAGE_STARTED:I = 0x64

.field private static final PERF_PROBE:Z = false

.field private static final PROGRESS:I = 0x6a

.field private static final REACHED_APPCACHE_MAXSIZE:I = 0x7f

.field private static final RECEIVED_CERTIFICATE:I = 0x7c

.field private static final RECEIVED_ICON:I = 0x65

.field private static final RECEIVED_TITLE:I = 0x66

.field private static final RECEIVED_TOUCH_ICON_URL:I = 0x84

.field private static final REPORT_ERROR:I = 0x77

.field private static final REQUEST_FOCUS:I = 0x7a

.field private static final RESEND_POST_DATA:I = 0x78

.field private static final SAVE_PASSWORD:I = 0x6f

.field private static final SCALE_CHANGED:I = 0x7b

.field private static final SSL_ERROR:I = 0x69

.field private static final SWITCH_OUT_HISTORY:I = 0x7d

.field private static final UPDATE_VISITED:I = 0x6b


# instance fields
.field private final mBackForwardList:Landroid/webkit/WebBackForwardList;

.field private final mContext:Landroid/content/Context;

.field private volatile mDownloadListener:Landroid/webkit/DownloadListener;

.field private volatile mLatestProgress:I

.field public mNoNetworkFlag:Z

.field private mProgressUpdatePending:Z

.field private volatile mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

.field private volatile mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mWebCoreIdleTime:J

.field private mWebCoreThreadTime:J

.field private mWebFeedLinks:[Landroid/webkit/WebFeedLink;

.field private final mWebView:Landroid/webkit/WebView;

.field private volatile mWebViewClient:Landroid/webkit/WebViewClient;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "context"
    .parameter "w"

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 70
    const/16 v0, 0x64

    iput v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 148
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    .line 149
    iput-object p2, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    .line 150
    new-instance v0, Landroid/webkit/WebBackForwardList;

    invoke-direct {v0, p0}, Landroid/webkit/WebBackForwardList;-><init>(Landroid/webkit/CallbackProxy;)V

    iput-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    .line 155
    return-void
.end method

.method private getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "url"

    .prologue
    .line 810
    move-object v1, p1

    .line 811
    .local v1, title:Ljava/lang/String;
    invoke-static {p1}, Landroid/webkit/URLUtil;->isDataUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 813
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x1040352

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 824
    :goto_0
    return-object v1

    .line 816
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, aUrl:Ljava/net/URL;
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    const v3, 0x1040351

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 820
    .end local v0           #aUrl:Ljava/net/URL;
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addMessageToConsole(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 3
    .parameter "message"
    .parameter "lineNumber"
    .parameter "sourceID"
    .parameter "msgLevel"

    .prologue
    .line 1462
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1472
    :goto_0
    return-void

    .line 1466
    :cond_0
    const/16 v1, 0x81

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1467
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "message"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1468
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "sourceID"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1469
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lineNumber"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1470
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "msgLevel"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1471
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public createWindow(ZZ)Landroid/webkit/BrowserFrame;
    .locals 10
    .parameter "dialog"
    .parameter "userGesture"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "CallbackProxy"

    .line 1171
    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v5, :cond_0

    move-object v5, v9

    .line 1200
    :goto_0
    return-object v5

    .line 1175
    :cond_0
    new-instance v3, Landroid/webkit/WebView$WebViewTransport;

    iget-object v5, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v5}, Landroid/webkit/WebView$WebViewTransport;-><init>(Landroid/webkit/WebView;)V

    .line 1176
    .local v3, transport:Landroid/webkit/WebView$WebViewTransport;
    const/16 v5, 0xc8

    invoke-virtual {p0, v5}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1177
    .local v2, msg:Landroid/os/Message;
    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1178
    monitor-enter p0

    .line 1179
    const/16 v5, 0x6d

    if-eqz p1, :cond_2

    move v6, v8

    :goto_1
    if-eqz p2, :cond_1

    move v7, v8

    :cond_1
    :try_start_0
    invoke-virtual {p0, v5, v6, v7, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1182
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1188
    :goto_2
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1190
    invoke-virtual {v3}, Landroid/webkit/WebView$WebViewTransport;->getWebView()Landroid/webkit/WebView;

    move-result-object v4

    .line 1191
    .local v4, w:Landroid/webkit/WebView;
    if-eqz v4, :cond_3

    .line 1192
    invoke-virtual {v4}, Landroid/webkit/WebView;->getWebViewCore()Landroid/webkit/WebViewCore;

    move-result-object v0

    .line 1195
    .local v0, core:Landroid/webkit/WebViewCore;
    if-eqz v0, :cond_3

    .line 1196
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->initializeSubwindow()V

    .line 1197
    invoke-virtual {v0}, Landroid/webkit/WebViewCore;->getBrowserFrame()Landroid/webkit/BrowserFrame;

    move-result-object v5

    goto :goto_0

    .end local v0           #core:Landroid/webkit/WebViewCore;
    .end local v4           #w:Landroid/webkit/WebView;
    :cond_2
    move v6, v7

    .line 1179
    goto :goto_1

    .line 1183
    :catch_0
    move-exception v1

    .line 1184
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v5, "CallbackProxy"

    const-string v6, "Caught exception while waiting for createWindow"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1186
    const-string v5, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1188
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    .restart local v4       #w:Landroid/webkit/WebView;
    :cond_3
    move-object v5, v9

    .line 1200
    goto :goto_0
.end method

.method public doUpdateVisitedHistory(Ljava/lang/String;Z)V
    .locals 3
    .parameter "url"
    .parameter "isReload"

    .prologue
    const/4 v2, 0x0

    .line 1013
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1017
    :goto_0
    return-void

    .line 1016
    :cond_0
    const/16 v0, 0x6b

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public getBackForwardList()Landroid/webkit/WebBackForwardList;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    return v0
.end method

.method public getVisitedHistory(Landroid/webkit/ValueCallback;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<[",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1494
    .local p1, callback:Landroid/webkit/ValueCallback;,"Landroid/webkit/ValueCallback<[Ljava/lang/String;>;"
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1500
    :goto_0
    return-void

    .line 1497
    :cond_0
    const/16 v1, 0x85

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1498
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1499
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method getWebBackForwardListClient()Landroid/webkit/WebBackForwardListClient;
    .locals 1

    .prologue
    .line 212
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    return-object v0
.end method

.method public getWebChromeClient()Landroid/webkit/WebChromeClient;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getWebFeedLinks()[Landroid/webkit/WebFeedLink;
    .locals 1

    .prologue
    .line 1149
    monitor-enter p0

    .line 1150
    :try_start_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebFeedLinks:[Landroid/webkit/WebFeedLink;

    monitor-exit p0

    return-object v0

    .line 1151
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getWebViewClient()Landroid/webkit/WebViewClient;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 60
    .parameter "msg"

    .prologue
    .line 263
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 793
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 271
    .restart local p0
    .restart local p1
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v8, "url"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v6, v7, v8, v5}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 278
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string/jumbo v7, "url"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Landroid/webkit/OnPinchZoomListener;->onPageStarted(Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :sswitch_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v36, v0

    check-cast v36, Ljava/lang/String;

    .line 287
    .local v36, finishedUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->onPageFinished(Ljava/lang/String;)V

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 292
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    invoke-interface {v5}, Landroid/webkit/OnPinchZoomListener;->status()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPinchZoomListener:Landroid/webkit/OnPinchZoomListener;

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-interface {v0, v1}, Landroid/webkit/OnPinchZoomListener;->onPageFinished(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 300
    .end local v36           #finishedUrl:Ljava/lang/String;
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebChromeClient;->onReceivedIcon(Landroid/webkit/WebView;Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 306
    .restart local p0
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_1
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebChromeClient;->onReceivedTouchIconUrl(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v7, 0x0

    goto :goto_1

    .line 313
    .restart local p0
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 320
    .restart local p0
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 321
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 322
    .local v52, reasonCode:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "description"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 323
    .local v32, description:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "failingUrl"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 324
    .local v35, failUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v52

    move-object/from16 v3, v32

    move-object/from16 v4, v35

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    .end local v32           #description:Ljava/lang/String;
    .end local v35           #failUrl:Ljava/lang/String;
    .end local v52           #reasonCode:I
    :sswitch_6
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "resend"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v53

    check-cast v53, Landroid/os/Message;

    .line 336
    .local v53, resend:Landroid/os/Message;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "dontResend"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v33

    check-cast v33, Landroid/os/Message;

    .line 338
    .local v33, dontResend:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v33

    move-object/from16 v3, v53

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClient;->onFormResubmission(Landroid/webkit/WebView;Landroid/os/Message;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 342
    :cond_4
    invoke-virtual/range {v33 .. v33}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 347
    .end local v33           #dontResend:Landroid/os/Message;
    .end local v53           #resend:Landroid/os/Message;
    :sswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    .line 348
    .local v49, overrideUrl:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy;->uiOverrideUrlLoading(Ljava/lang/String;)Z

    move-result v48

    .line 349
    .local v48, override:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v54, v0

    check-cast v54, Landroid/webkit/CallbackProxy$ResultTransport;

    .line 351
    .local v54, result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    monitor-enter p0

    .line 352
    :try_start_0
    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object/from16 v0, v54

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/webkit/CallbackProxy$ResultTransport;->setResult(Ljava/lang/Object;)V

    .line 353
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 354
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 358
    .end local v48           #override:Z
    .end local v49           #overrideUrl:Ljava/lang/String;
    .end local v54           #result:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 359
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/webkit/HttpAuthHandler;

    .line 360
    .local v37, handler:Landroid/webkit/HttpAuthHandler;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 361
    .local v38, host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "realm"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 362
    .local v51, realm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v37

    move-object/from16 v3, v38

    move-object/from16 v4, v51

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebViewClient;->onReceivedHttpAuthRequest(Landroid/webkit/WebView;Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 368
    .end local v37           #handler:Landroid/webkit/HttpAuthHandler;
    .end local v38           #host:Ljava/lang/String;
    .end local v51           #realm:Ljava/lang/String;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 369
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/HashMap;

    .line 371
    .local v43, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    const-string v7, "handler"

    move-object/from16 v0, v43

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/webkit/SslErrorHandler;

    const-string v7, "error"

    move-object/from16 v0, v43

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/net/http/SslError;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClient;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V

    goto/16 :goto_0

    .line 381
    .end local v43           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p0
    .restart local p1
    :sswitch_a
    monitor-enter p0

    .line 382
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebChromeClient;->onProgressChanged(Landroid/webkit/WebView;I)V

    .line 386
    :cond_5
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 387
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v5

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5

    .line 391
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_2
    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/webkit/WebViewClient;->doUpdateVisitedHistory(Landroid/webkit/WebView;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    .line 398
    .restart local p0
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 404
    .restart local p0
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 405
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 406
    .local v6, url:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v7, "userAgent"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 407
    .local v7, userAgent:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v8, "contentDisposition"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 409
    .local v8, contentDisposition:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v9, "mimetype"

    invoke-virtual {v5, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 410
    .local v9, mimetype:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v10, "contentLength"

    invoke-virtual {v5, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v31

    .line 412
    .local v31, contentLength:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    move-object v5, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-interface/range {v5 .. v11}, Landroid/webkit/DownloadListener;->onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_0

    .line 418
    .end local v6           #url:Ljava/lang/String;
    .end local v7           #userAgent:Ljava/lang/String;
    .end local v8           #contentDisposition:Ljava/lang/String;
    .end local v9           #mimetype:Ljava/lang/String;
    .end local v31           #contentLength:Ljava/lang/Long;
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    const/4 v7, 0x1

    :goto_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    const/4 v9, 0x1

    if-ne v8, v9, :cond_9

    const/4 v8, 0x1

    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    move-object v0, v5

    move-object v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebChromeClient;->onCreateWindow(Landroid/webkit/WebView;ZZLandroid/os/Message;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 422
    monitor-enter p0

    .line 423
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 424
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 426
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->dismissZoomControl()V

    goto/16 :goto_0

    .line 419
    .restart local p1
    :cond_8
    const/4 v7, 0x0

    goto :goto_3

    :cond_9
    const/4 v8, 0x0

    goto :goto_4

    .line 424
    .end local p1
    :catchall_2
    move-exception v5

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v5

    .line 431
    .restart local p1
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebChromeClient;->onRequestFocus(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 437
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebView;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->onCloseWindow(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 443
    .restart local p0
    :sswitch_11
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v29

    .line 444
    .local v29, bundle:Landroid/os/Bundle;
    const-string v5, "host"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v55

    .line 445
    .local v55, schemePlusHost:Ljava/lang/String;
    const-string/jumbo v5, "username"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 446
    .local v57, username:Ljava/lang/String;
    const-string/jumbo v5, "password"

    move-object/from16 v0, v29

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 449
    .local v50, password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/os/Message;

    move-object v0, v5

    move-object/from16 v1, v55

    move-object/from16 v2, v57

    move-object/from16 v3, v50

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 451
    monitor-enter p0

    .line 452
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 453
    monitor-exit p0

    goto/16 :goto_0

    :catchall_3
    move-exception v5

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v5

    .line 458
    .end local v29           #bundle:Landroid/os/Bundle;
    .end local v50           #password:Ljava/lang/String;
    .end local v55           #schemePlusHost:Ljava/lang/String;
    .end local v57           #username:Ljava/lang/String;
    .restart local p1
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/view/KeyEvent;

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewClient;->onUnhandledKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)V

    goto/16 :goto_0

    .line 465
    .restart local p0
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 466
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/HashMap;

    .line 468
    .restart local v43       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "databaseIdentifier"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 470
    .local v12, databaseIdentifier:Ljava/lang/String;
    const-string/jumbo v5, "url"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 471
    .restart local v6       #url:Ljava/lang/String;
    const-string v5, "currentQuota"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 473
    .local v13, currentQuota:J
    const-string/jumbo v5, "totalUsedQuota"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 475
    .local v17, totalUsedQuota:J
    const-string v5, "estimatedSize"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    .line 477
    .local v15, estimatedSize:J
    const-string/jumbo v5, "quotaUpdater"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 480
    .local v19, quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v10, v0

    move-object v11, v6

    invoke-virtual/range {v10 .. v19}, Landroid/webkit/WebChromeClient;->onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 487
    .end local v6           #url:Ljava/lang/String;
    .end local v12           #databaseIdentifier:Ljava/lang/String;
    .end local v13           #currentQuota:J
    .end local v15           #estimatedSize:J
    .end local v17           #totalUsedQuota:J
    .end local v19           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v43           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 488
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/HashMap;

    .line 490
    .restart local v43       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "spaceNeeded"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v21

    .line 492
    .local v21, spaceNeeded:J
    const-string/jumbo v5, "totalUsedQuota"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v17

    .line 494
    .restart local v17       #totalUsedQuota:J
    const-string/jumbo v5, "quotaUpdater"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/webkit/WebStorage$QuotaUpdater;

    .line 497
    .restart local v19       #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v20, v0

    move-wide/from16 v23, v17

    move-object/from16 v25, v19

    invoke-virtual/range {v20 .. v25}, Landroid/webkit/WebChromeClient;->onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V

    goto/16 :goto_0

    .line 503
    .end local v17           #totalUsedQuota:J
    .end local v19           #quotaUpdater:Landroid/webkit/WebStorage$QuotaUpdater;
    .end local v21           #spaceNeeded:J
    .end local v43           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local p1
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 504
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v43, v0

    check-cast v43, Ljava/util/HashMap;

    .line 506
    .restart local v43       #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v5, "origin"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v47

    check-cast v47, Ljava/lang/String;

    .line 507
    .local v47, origin:Ljava/lang/String;
    const-string v5, "callback"

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/webkit/GeolocationPermissions$Callback;

    .line 510
    .local v30, callback:Landroid/webkit/GeolocationPermissions$Callback;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v47

    move-object/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V

    goto/16 :goto_0

    .line 516
    .end local v30           #callback:Landroid/webkit/GeolocationPermissions$Callback;
    .end local v43           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v47           #origin:Ljava/lang/String;
    :sswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 517
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebChromeClient;->onGeolocationPermissionsHidePrompt()V

    goto/16 :goto_0

    .line 522
    :sswitch_17
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 523
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/JsResult;

    .line 524
    .local v28, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 525
    .local v26, message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 526
    .restart local v6       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v26

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebChromeClient;->onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 528
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .end local v6           #url:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Landroid/webkit/CallbackProxy$1;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$1;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 542
    :cond_a
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 547
    .end local v26           #message:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsResult;
    :sswitch_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 548
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/JsResult;

    .line 549
    .restart local v28       #res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 550
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 551
    .restart local v6       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v26

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebChromeClient;->onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 553
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .end local v6           #url:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Landroid/webkit/CallbackProxy$5;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$5;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Landroid/webkit/CallbackProxy$4;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$4;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Landroid/webkit/CallbackProxy$3;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$3;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Landroid/webkit/CallbackProxy$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$2;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 595
    :cond_b
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 600
    .end local v26           #message:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsResult;
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 601
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/JsPromptResult;

    .line 602
    .local v28, res:Landroid/webkit/JsPromptResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 603
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 604
    .local v27, defaultVal:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 605
    .restart local v6       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object/from16 v24, v0

    move-object/from16 v25, v6

    invoke-virtual/range {v23 .. v28}, Landroid/webkit/WebChromeClient;->onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v34

    .line 609
    .local v34, factory:Landroid/view/LayoutInflater;
    const v5, 0x1090030

    const/4 v7, 0x0

    move-object/from16 v0, v34

    move v1, v5

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v59

    .line 611
    .local v59, view:Landroid/view/View;
    const v5, 0x10201d7

    move-object/from16 v0, v59

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v58

    check-cast v58, Landroid/widget/EditText;

    .line 613
    .local v58, v:Landroid/widget/EditText;
    move-object/from16 v0, v58

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 614
    const v5, 0x102000b

    move-object/from16 v0, v59

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/widget/TextView;

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object v7, v0

    invoke-direct {v5, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/webkit/CallbackProxy;->getJsDialogTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .end local v6           #url:Ljava/lang/String;
    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Landroid/webkit/CallbackProxy$8;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    move-object/from16 v3, v58

    invoke-direct {v0, v1, v2, v3}, Landroid/webkit/CallbackProxy$8;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Landroid/webkit/CallbackProxy$7;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$7;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Landroid/webkit/CallbackProxy$6;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$6;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsPromptResult;)V

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 647
    .end local v34           #factory:Landroid/view/LayoutInflater;
    .end local v58           #v:Landroid/widget/EditText;
    .end local v59           #view:Landroid/view/View;
    :cond_c
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsPromptResult;->setReady()V

    goto/16 :goto_0

    .line 652
    .end local v26           #message:Ljava/lang/String;
    .end local v27           #defaultVal:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsPromptResult;
    .restart local p1
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 653
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/JsResult;

    .line 654
    .local v28, res:Landroid/webkit/JsResult;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 655
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 656
    .restart local v6       #url:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v5

    move-object v1, v7

    move-object v2, v6

    move-object/from16 v3, v26

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebChromeClient;->onJsBeforeUnload(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object v5, v0

    const v6, 0x1040353

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .end local v6           #url:Ljava/lang/String;
    const/4 v8, 0x0

    aput-object v26, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    .line 660
    .local v42, m:Ljava/lang/String;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    move-object v6, v0

    invoke-direct {v5, v6}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, v42

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x104000a

    new-instance v7, Landroid/webkit/CallbackProxy$10;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$10;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const/high16 v6, 0x104

    new-instance v7, Landroid/webkit/CallbackProxy$9;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/webkit/CallbackProxy$9;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/JsResult;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 680
    .end local v42           #m:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 685
    .end local v26           #message:Ljava/lang/String;
    .end local v28           #res:Landroid/webkit/JsResult;
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 686
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/webkit/JsResult;

    .line 687
    .restart local v28       #res:Landroid/webkit/JsResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebChromeClient;->onJsTimeout()Z

    move-result v5

    if-eqz v5, :cond_e

    .line 688
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsResult;->confirm()V

    .line 692
    :goto_5
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsResult;->setReady()V

    goto/16 :goto_0

    .line 690
    :cond_e
    invoke-virtual/range {v28 .. v28}, Landroid/webkit/JsResult;->cancel()V

    goto :goto_5

    .line 697
    .end local v28           #res:Landroid/webkit/JsResult;
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/net/http/SslCertificate;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto/16 :goto_0

    .line 701
    .restart local p0
    :sswitch_1d
    monitor-enter p0

    .line 702
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->notify()V

    .line 703
    monitor-exit p0

    goto/16 :goto_0

    :catchall_4
    move-exception v5

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v5

    .line 707
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "old"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string/jumbo v9, "new"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewClient;->onScaleChanged(Landroid/webkit/WebView;FF)V

    goto/16 :goto_0

    .line 714
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->switchOutDrawHistory()V

    goto/16 :goto_0

    .line 718
    :sswitch_20
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "message"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    .line 719
    .restart local v26       #message:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "sourceID"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v56

    .line 720
    .local v56, sourceID:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "lineNumber"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v39

    .line 721
    .local v39, lineNumber:I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "msgLevel"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v45

    .line 722
    .local v45, msgLevel:I
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    move-object v0, v5

    array-length v0, v0

    move/from16 v46, v0

    .line 724
    .local v46, numberOfMessageLevels:I
    if-ltz v45, :cond_f

    move/from16 v0, v45

    move/from16 v1, v46

    if-lt v0, v1, :cond_10

    .line 725
    :cond_f
    const/16 v45, 0x0

    .line 728
    :cond_10
    invoke-static {}, Landroid/webkit/ConsoleMessage$MessageLevel;->values()[Landroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v5

    aget-object v44, v5, v45

    .line 731
    .local v44, messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    new-instance v6, Landroid/webkit/ConsoleMessage;

    move-object v0, v6

    move-object/from16 v1, v26

    move-object/from16 v2, v56

    move/from16 v3, v39

    move-object/from16 v4, v44

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/webkit/ConsoleMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ILandroid/webkit/ConsoleMessage$MessageLevel;)V

    invoke-virtual {v5, v6}, Landroid/webkit/WebChromeClient;->onConsoleMessage(Landroid/webkit/ConsoleMessage;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 735
    const-string v41, "Web Console"

    .line 736
    .local v41, logTag:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    .line 738
    .local v40, logMessage:Ljava/lang/String;
    sget-object v5, Landroid/webkit/CallbackProxy$11;->$SwitchMap$android$webkit$ConsoleMessage$MessageLevel:[I

    invoke-virtual/range {v44 .. v44}, Landroid/webkit/ConsoleMessage$MessageLevel;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_0

    .line 740
    :pswitch_0
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 743
    :pswitch_1
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 746
    :pswitch_2
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 749
    :pswitch_3
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 752
    :pswitch_4
    move-object/from16 v0, v41

    move-object/from16 v1, v40

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 760
    .end local v26           #message:Ljava/lang/String;
    .end local v39           #lineNumber:I
    .end local v40           #logMessage:Ljava/lang/String;
    .end local v41           #logTag:Ljava/lang/String;
    .end local v44           #messageLevel:Landroid/webkit/ConsoleMessage$MessageLevel;
    .end local v45           #msgLevel:I
    .end local v46           #numberOfMessageLevels:I
    .end local v56           #sourceID:Ljava/lang/String;
    :sswitch_21
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/ValueCallback;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->getVisitedHistory(Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 766
    .restart local p0
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 767
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/CallbackProxy$UploadFile;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebChromeClient;->openFileChooser(Landroid/webkit/ValueCallback;)V

    goto/16 :goto_0

    .line 772
    .restart local p0
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebHistoryItem;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebBackForwardListClient;->onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V

    goto/16 :goto_0

    .line 779
    .restart local p0
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebHistoryItem;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebBackForwardListClient;->onIndexChanged(Landroid/webkit/WebHistoryItem;I)V

    goto/16 :goto_0

    .line 785
    .restart local p0
    :sswitch_25
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "host"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    .line 786
    .restart local v38       #host:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "realm"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v51

    .line 787
    .restart local v51       #realm:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "username"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v57

    .line 788
    .restart local v57       #username:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string/jumbo v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v50

    .line 789
    .restart local v50       #password:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v38

    move-object/from16 v2, v51

    move-object/from16 v3, v57

    move-object/from16 v4, v50

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_2
        0x66 -> :sswitch_4
        0x67 -> :sswitch_7
        0x68 -> :sswitch_8
        0x69 -> :sswitch_9
        0x6a -> :sswitch_a
        0x6b -> :sswitch_b
        0x6c -> :sswitch_c
        0x6d -> :sswitch_e
        0x6e -> :sswitch_10
        0x6f -> :sswitch_11
        0x70 -> :sswitch_17
        0x71 -> :sswitch_18
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1a
        0x74 -> :sswitch_12
        0x76 -> :sswitch_d
        0x77 -> :sswitch_5
        0x78 -> :sswitch_6
        0x79 -> :sswitch_1
        0x7a -> :sswitch_f
        0x7b -> :sswitch_1e
        0x7c -> :sswitch_1c
        0x7d -> :sswitch_1f
        0x7e -> :sswitch_13
        0x7f -> :sswitch_14
        0x80 -> :sswitch_1b
        0x81 -> :sswitch_20
        0x82 -> :sswitch_15
        0x83 -> :sswitch_16
        0x84 -> :sswitch_3
        0x85 -> :sswitch_21
        0x86 -> :sswitch_22
        0x87 -> :sswitch_23
        0x88 -> :sswitch_24
        0x89 -> :sswitch_25
        0xc8 -> :sswitch_1d
    .end sparse-switch

    .line 738
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onCloseWindow(Landroid/webkit/WebView;)V
    .locals 1
    .parameter "window"

    .prologue
    .line 1216
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1220
    :goto_0
    return-void

    .line 1219
    :cond_0
    const/16 v0, 0x6e

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 3
    .parameter "url"
    .parameter "userAgent"
    .parameter "contentDisposition"
    .parameter "mimetype"
    .parameter "contentLength"

    .prologue
    .line 1062
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    if-nez v2, :cond_0

    .line 1064
    const/4 v2, 0x0

    .line 1075
    :goto_0
    return v2

    .line 1067
    :cond_0
    const/16 v2, 0x76

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1068
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1069
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "url"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1070
    const-string/jumbo v2, "userAgent"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1071
    const-string/jumbo v2, "mimetype"

    invoke-virtual {v0, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1072
    const-string v2, "contentLength"

    invoke-virtual {v0, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1073
    const-string v2, "contentDisposition"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1074
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1075
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public onExceededDatabaseQuota(Ljava/lang/String;Ljava/lang/String;JJJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "url"
    .parameter "databaseIdentifier"
    .parameter "currentQuota"
    .parameter "estimatedSize"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1372
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1373
    invoke-interface {p9, p3, p4}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1387
    :goto_0
    return-void

    .line 1377
    :cond_0
    const/16 v2, 0x7e

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1378
    .local v0, exceededQuota:Landroid/os/Message;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1379
    .local v1, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "databaseIdentifier"

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    const-string v2, "currentQuota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1382
    const-string v2, "estimatedSize"

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1383
    const-string/jumbo v2, "totalUsedQuota"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1384
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v1, v2, p9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1385
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1386
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onFormResubmission(Landroid/os/Message;Landroid/os/Message;)V
    .locals 3
    .parameter "dontResend"
    .parameter "resend"

    .prologue
    .line 928
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 929
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 938
    :goto_0
    return-void

    .line 933
    :cond_0
    const/16 v2, 0x78

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 934
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 935
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "resend"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 936
    const-string v2, "dontResend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 937
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsHidePrompt()V
    .locals 2

    .prologue
    .line 1442
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_0

    .line 1448
    :goto_0
    return-void

    .line 1446
    :cond_0
    const/16 v1, 0x83

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1447
    .local v0, hideMessage:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onGeolocationPermissionsShowPrompt(Ljava/lang/String;Landroid/webkit/GeolocationPermissions$Callback;)V
    .locals 3
    .parameter "origin"
    .parameter "callback"

    .prologue
    .line 1424
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1435
    :goto_0
    return-void

    .line 1428
    :cond_0
    const/16 v2, 0x82

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1430
    .local v1, showMessage:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1431
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "origin"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1432
    const-string v2, "callback"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1434
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onIndexChanged(Landroid/webkit/WebHistoryItem;I)V
    .locals 3
    .parameter "item"
    .parameter "index"

    .prologue
    .line 1547
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1552
    :goto_0
    return-void

    .line 1550
    :cond_0
    const/16 v1, 0x88

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, v2, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1551
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onJsAlert(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const-string v3, "CallbackProxy"

    .line 1267
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1283
    :goto_0
    return-void

    .line 1270
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1271
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x70

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1272
    .local v0, alert:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1273
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1274
    monitor-enter p0

    .line 1275
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1277
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1282
    :goto_1
    :try_start_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1278
    :catch_0
    move-exception v1

    .line 1279
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsAlert"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onJsBeforeUnload(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v4, 0x1

    const-string v3, "CallbackProxy"

    .line 1333
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    move v3, v4

    .line 1349
    :goto_0
    return v3

    .line 1336
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v4}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1337
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x73

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1338
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    monitor-enter p0

    .line 1341
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1343
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1348
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1349
    invoke-virtual {v2}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v1

    .line 1345
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsUnload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1348
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsConfirm(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "url"
    .parameter "message"

    .prologue
    const/4 v4, 0x0

    const-string v3, "CallbackProxy"

    .line 1288
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    move v3, v4

    .line 1304
    :goto_0
    return v3

    .line 1291
    :cond_0
    new-instance v2, Landroid/webkit/JsResult;

    invoke-direct {v2, p0, v4}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1292
    .local v2, result:Landroid/webkit/JsResult;
    const/16 v3, 0x71

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1293
    .local v0, confirm:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1295
    monitor-enter p0

    .line 1296
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1298
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1303
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1304
    invoke-virtual {v2}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1299
    :catch_0
    move-exception v1

    .line 1300
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsConfirm"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1303
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "url"
    .parameter "message"
    .parameter "defaultValue"

    .prologue
    const-string v3, "CallbackProxy"

    .line 1310
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    .line 1311
    const/4 v3, 0x0

    .line 1327
    :goto_0
    return-object v3

    .line 1313
    :cond_0
    new-instance v2, Landroid/webkit/JsPromptResult;

    invoke-direct {v2, p0}, Landroid/webkit/JsPromptResult;-><init>(Landroid/webkit/CallbackProxy;)V

    .line 1314
    .local v2, result:Landroid/webkit/JsPromptResult;
    const/16 v3, 0x72

    invoke-virtual {p0, v3, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1315
    .local v1, prompt:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "message"

    invoke-virtual {v3, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "default"

    invoke-virtual {v3, v4, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1317
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1318
    monitor-enter p0

    .line 1319
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1321
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1326
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1327
    invoke-virtual {v2}, Landroid/webkit/JsPromptResult;->getStringResult()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1322
    :catch_0
    move-exception v0

    .line 1323
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsPrompt"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1326
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onJsTimeout()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "CallbackProxy"

    .line 1476
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    move v3, v4

    .line 1490
    :goto_0
    return v3

    .line 1479
    :cond_0
    new-instance v1, Landroid/webkit/JsResult;

    invoke-direct {v1, p0, v4}, Landroid/webkit/JsResult;-><init>(Landroid/webkit/CallbackProxy;Z)V

    .line 1480
    .local v1, result:Landroid/webkit/JsResult;
    const/16 v3, 0x80

    invoke-virtual {p0, v3, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1481
    .local v2, timeout:Landroid/os/Message;
    monitor-enter p0

    .line 1482
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1484
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1489
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1490
    invoke-virtual {v1}, Landroid/webkit/JsResult;->getResult()Z

    move-result v3

    goto :goto_0

    .line 1485
    :catch_0
    move-exception v0

    .line 1486
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for jsUnload"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1489
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public onLoadResource(Ljava/lang/String;)V
    .locals 1
    .parameter "url"

    .prologue
    .line 1022
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1026
    :goto_0
    return-void

    .line 1025
    :cond_0
    const/16 v0, 0x6c

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onNewHistoryItem(Landroid/webkit/WebHistoryItem;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 1539
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    if-nez v1, :cond_0

    .line 1544
    :goto_0
    return-void

    .line 1542
    :cond_0
    const/16 v1, 0x87

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1543
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onPageFinished(Ljava/lang/String;)V
    .locals 2
    .parameter "url"

    .prologue
    .line 899
    const/16 v1, 0x79

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 900
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 901
    return-void
.end method

.method public onPageStarted(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "favicon"

    .prologue
    .line 872
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 887
    :goto_0
    return-void

    .line 883
    :cond_0
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 884
    .local v0, msg:Landroid/os/Message;
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 885
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "url"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onProgressChanged(I)V
    .locals 1
    .parameter "newProgress"

    .prologue
    .line 1128
    monitor-enter p0

    .line 1129
    :try_start_0
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    if-ne v0, p1, :cond_1

    .line 1130
    :cond_0
    monitor-exit p0

    .line 1138
    :goto_0
    return-void

    .line 1132
    :cond_1
    iput p1, p0, Landroid/webkit/CallbackProxy;->mLatestProgress:I

    .line 1133
    iget-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    if-nez v0, :cond_2

    .line 1134
    const/16 v0, 0x6a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    .line 1135
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/CallbackProxy;->mProgressUpdatePending:Z

    .line 1137
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onReachedMaxAppCacheSize(JJLandroid/webkit/WebStorage$QuotaUpdater;)V
    .locals 4
    .parameter "spaceNeeded"
    .parameter "totalUsedQuota"
    .parameter "quotaUpdater"

    .prologue
    .line 1401
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v2, :cond_0

    .line 1402
    const-wide/16 v2, 0x0

    invoke-interface {p5, v2, v3}, Landroid/webkit/WebStorage$QuotaUpdater;->updateQuota(J)V

    .line 1413
    :goto_0
    return-void

    .line 1406
    :cond_0
    const/16 v2, 0x7f

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1407
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1408
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v2, "spaceNeeded"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1409
    const-string/jumbo v2, "totalUsedQuota"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1410
    const-string/jumbo v2, "quotaUpdater"

    invoke-virtual {v0, v2, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1411
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1412
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedCertificate(Landroid/net/http/SslCertificate;)V
    .locals 1
    .parameter "certificate"

    .prologue
    .line 1003
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1008
    :goto_0
    return-void

    .line 1007
    :cond_0
    const/16 v0, 0x7c

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedError(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    .line 913
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 922
    :goto_0
    return-void

    .line 917
    :cond_0
    const/16 v1, 0x77

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 918
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 919
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "description"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "failingUrl"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedHttpAuthCredentials(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "host"
    .parameter "realm"
    .parameter "username"
    .parameter "password"

    .prologue
    .line 1114
    const/16 v1, 0x89

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1115
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1117
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "username"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "password"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1119
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 1120
    return-void
.end method

.method public onReceivedHttpAuthRequest(Landroid/webkit/HttpAuthHandler;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "handler"
    .parameter "hostName"
    .parameter "realmName"

    .prologue
    .line 966
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v1, :cond_0

    .line 967
    invoke-virtual {p1}, Landroid/webkit/HttpAuthHandler;->cancel()V

    .line 974
    :goto_0
    return-void

    .line 970
    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 971
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "host"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "realm"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedIcon(Landroid/graphics/Bitmap;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 1225
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1226
    .local v0, i:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_0

    .line 1227
    invoke-virtual {v0, p1}, Landroid/webkit/WebHistoryItem;->setFavicon(Landroid/graphics/Bitmap;)V

    .line 1231
    :cond_0
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_1

    .line 1235
    :goto_0
    return-void

    .line 1234
    :cond_1
    const/16 v1, 0x65

    invoke-virtual {p0, v1, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedSslError(Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 3
    .parameter "handler"
    .parameter "error"

    .prologue
    .line 983
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 984
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 994
    :goto_0
    return-void

    .line 987
    :cond_0
    const/16 v2, 0x69

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 989
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 990
    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "handler"

    invoke-virtual {v0, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 991
    const-string v2, "error"

    invoke-virtual {v0, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 993
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onReceivedTitle(Ljava/lang/String;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 1258
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1262
    :goto_0
    return-void

    .line 1261
    :cond_0
    const/16 v0, 0x66

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method onReceivedTouchIconUrl(Ljava/lang/String;Z)V
    .locals 4
    .parameter "url"
    .parameter "precomposed"

    .prologue
    const/4 v3, 0x0

    .line 1240
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mBackForwardList:Landroid/webkit/WebBackForwardList;

    invoke-virtual {v1}, Landroid/webkit/WebBackForwardList;->getCurrentItem()Landroid/webkit/WebHistoryItem;

    move-result-object v0

    .line 1241
    .local v0, i:Landroid/webkit/WebHistoryItem;
    if-eqz v0, :cond_1

    .line 1242
    if-nez p2, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebHistoryItem;->getTouchIconUrl()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1243
    :cond_0
    invoke-virtual {v0, p1}, Landroid/webkit/WebHistoryItem;->setTouchIconUrl(Ljava/lang/String;)V

    .line 1248
    :cond_1
    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v1, :cond_2

    .line 1253
    :goto_0
    return-void

    .line 1251
    :cond_2
    const/16 v1, 0x84

    if-eqz p2, :cond_3

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {p0, v1, v2, v3, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onRequestFocus()V
    .locals 1

    .prologue
    .line 1206
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v0, :cond_0

    .line 1211
    :goto_0
    return-void

    .line 1210
    :cond_0
    const/16 v0, 0x7a

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public onSavePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Z
    .locals 5
    .parameter "schemePlusHost"
    .parameter "username"
    .parameter "password"
    .parameter "resumeMsg"

    .prologue
    const-string v3, "CallbackProxy"

    .line 1088
    sget-boolean v3, Landroid/webkit/DebugFlags;->CALLBACK_PROXY:Z

    if-eqz v3, :cond_0

    .line 1089
    invoke-static {p4}, Ljunit/framework/Assert;->assertNull(Ljava/lang/Object;)V

    .line 1091
    :cond_0
    const/16 v3, 0xc8

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object p4

    .line 1093
    const/16 v3, 0x6f

    invoke-virtual {p0, v3, p4}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 1094
    .local v2, msg:Landroid/os/Message;
    invoke-virtual {v2}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1095
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "host"

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1096
    const-string/jumbo v3, "username"

    invoke-virtual {v0, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    const-string/jumbo v3, "password"

    invoke-virtual {v0, v3, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    monitor-enter p0

    .line 1099
    :try_start_0
    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1101
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1107
    :goto_0
    :try_start_2
    monitor-exit p0

    .line 1109
    const/4 v3, 0x0

    return v3

    .line 1102
    :catch_0
    move-exception v1

    .line 1103
    .local v1, e:Ljava/lang/InterruptedException;
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for onSavePassword"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const-string v3, "CallbackProxy"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1107
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method public onScaleChanged(FF)V
    .locals 3
    .parameter "oldScale"
    .parameter "newScale"

    .prologue
    .line 1040
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v2, :cond_0

    .line 1048
    :goto_0
    return-void

    .line 1043
    :cond_0
    const/16 v2, 0x7b

    invoke-virtual {p0, v2}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1044
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 1045
    .local v0, bundle:Landroid/os/Bundle;
    const-string/jumbo v2, "old"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1046
    const-string/jumbo v2, "new"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 1047
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public onTooManyRedirects(Landroid/os/Message;Landroid/os/Message;)V
    .locals 0
    .parameter "cancelMsg"
    .parameter "continueMsg"

    .prologue
    .line 907
    return-void
.end method

.method public onUnhandledKeyEvent(Landroid/view/KeyEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-nez v0, :cond_0

    .line 1035
    :goto_0
    return-void

    .line 1034
    :cond_0
    const/16 v0, 0x74

    invoke-virtual {p0, v0, p1}, Landroid/webkit/CallbackProxy;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method openFileChooser()Landroid/net/Uri;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "CallbackProxy"

    .line 1519
    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    if-nez v3, :cond_0

    move-object v3, v4

    .line 1535
    :goto_0
    return-object v3

    .line 1522
    :cond_0
    const/16 v3, 0x86

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1523
    .local v1, myMessage:Landroid/os/Message;
    new-instance v2, Landroid/webkit/CallbackProxy$UploadFile;

    invoke-direct {v2, p0, v4}, Landroid/webkit/CallbackProxy$UploadFile;-><init>(Landroid/webkit/CallbackProxy;Landroid/webkit/CallbackProxy$1;)V

    .line 1524
    .local v2, uploadFile:Landroid/webkit/CallbackProxy$UploadFile;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1525
    monitor-enter p0

    .line 1526
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1528
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1534
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1535
    invoke-virtual {v2}, Landroid/webkit/CallbackProxy$UploadFile;->getResult()Landroid/net/Uri;

    move-result-object v3

    goto :goto_0

    .line 1529
    :catch_0
    move-exception v0

    .line 1530
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for openFileChooser"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1534
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public setDownloadListener(Landroid/webkit/DownloadListener;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 196
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mDownloadListener:Landroid/webkit/DownloadListener;

    .line 197
    return-void
.end method

.method setWebBackForwardListClient(Landroid/webkit/WebBackForwardListClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 208
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebBackForwardListClient:Landroid/webkit/WebBackForwardListClient;

    .line 209
    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 180
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 181
    return-void
.end method

.method public setWebFeedLinks([Landroid/webkit/WebFeedLink;)V
    .locals 1
    .parameter "links"

    .prologue
    .line 1163
    monitor-enter p0

    .line 1164
    :try_start_0
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebFeedLinks:[Landroid/webkit/WebFeedLink;

    .line 1165
    monitor-exit p0

    .line 1166
    return-void

    .line 1165
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0
    .parameter "client"

    .prologue
    .line 162
    iput-object p1, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    .line 163
    return-void
.end method

.method public shouldOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 5
    .parameter "url"

    .prologue
    const-string v3, "CallbackProxy"

    .line 946
    new-instance v2, Landroid/webkit/CallbackProxy$ResultTransport;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/webkit/CallbackProxy$ResultTransport;-><init>(Ljava/lang/Object;)V

    .line 947
    .local v2, res:Landroid/webkit/CallbackProxy$ResultTransport;,"Landroid/webkit/CallbackProxy$ResultTransport<Ljava/lang/Boolean;>;"
    const/16 v3, 0x67

    invoke-virtual {p0, v3}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 948
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "url"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 949
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 950
    monitor-enter p0

    .line 951
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 953
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 958
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 959
    invoke-virtual {v2}, Landroid/webkit/CallbackProxy$ResultTransport;->getResult()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    return v3

    .line 954
    .restart local p0
    :catch_0
    move-exception v0

    .line 955
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v3, "CallbackProxy"

    const-string v4, "Caught exception while waiting for overrideUrl"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 956
    const-string v3, "CallbackProxy"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 958
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method switchOutDrawHistory()V
    .locals 1

    .prologue
    .line 806
    const/16 v0, 0x7d

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/webkit/CallbackProxy;->sendMessage(Landroid/os/Message;)Z

    .line 807
    return-void
.end method

.method public uiOverrideKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 251
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v0, :cond_0

    .line 252
    iget-object v0, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v1, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1, p1}, Landroid/webkit/WebViewClient;->shouldOverrideKeyEvent(Landroid/webkit/WebView;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 254
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public uiOverrideUrlLoading(Ljava/lang/String;)Z
    .locals 4
    .parameter "overrideUrl"

    .prologue
    .line 220
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 221
    :cond_0
    const/4 v2, 0x0

    .line 244
    :goto_0
    return v2

    .line 223
    :cond_1
    const/4 v1, 0x0

    .line 224
    .local v1, override:Z
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    if-eqz v2, :cond_2

    .line 225
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mWebViewClient:Landroid/webkit/WebViewClient;

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v2, v3, p1}, Landroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z

    move-result v1

    :goto_1
    move v2, v1

    .line 244
    goto :goto_0

    .line 228
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 230
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    const-string v2, "com.android.browser.application_id"

    iget-object v3, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 237
    :try_start_0
    iget-object v2, p0, Landroid/webkit/CallbackProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    const/4 v1, 0x1

    goto :goto_1

    .line 239
    :catch_0
    move-exception v2

    goto :goto_1
.end method
