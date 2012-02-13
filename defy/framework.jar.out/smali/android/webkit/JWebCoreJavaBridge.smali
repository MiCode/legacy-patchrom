.class final Landroid/webkit/JWebCoreJavaBridge;
.super Landroid/os/Handler;
.source "JWebCoreJavaBridge.java"


# static fields
.field private static final FUNCPTR_MESSAGE:I = 0x2

.field private static final LOGTAG:Ljava/lang/String; = "webkit-timers"

.field static final REFRESH_PLUGINS:I = 0x64

.field private static final TIMER_MESSAGE:I = 0x1

.field private static sCurrentMainWebView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHasDeferredTimers:Z

.field private mHasInstantTimer:Z

.field private mNativeBridge:I

.field private mPauseTimerRefCount:I

.field private mTimerPaused:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeConstructor()V

    return-void
.end method

.method private cookies(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "url"

    .prologue
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cookiesEnabled()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->acceptCookie()Z

    move-result v0

    return v0
.end method

.method private fireSharedTimer()V
    .locals 2

    .prologue
    new-instance v0, Landroid/webkit/PerfChecker;

    invoke-direct {v0}, Landroid/webkit/PerfChecker;-><init>()V

    .local v0, checker:Landroid/webkit/PerfChecker;
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->sharedTimerFired()V

    const-string v1, "sharedTimer"

    invoke-virtual {v0, v1}, Landroid/webkit/PerfChecker;->responseAlert(Ljava/lang/String;)V

    return-void
.end method

.method private getKeyStrengthList()[Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Landroid/webkit/CertTool;->getKeyStrengthList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginDirectories()[Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPluginSharedDataDirectory()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginSharedDataDirectory()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized getSignedPublicKey(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "index"
    .parameter "challenge"
    .parameter "url"

    .prologue
    monitor-enter p0

    :try_start_0
    sget-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .local v0, current:Landroid/webkit/WebView;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1, p2}, Landroid/webkit/CertTool;->getSignedPublicKey(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "webkit-timers"

    const-string v2, "There is no active WebView for getSignedPublicKey"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #current:Landroid/webkit/WebView;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private native nativeConstructor()V
.end method

.method private native nativeFinalize()V
.end method

.method private native nativeServiceFuncPtrQueue()V
.end method

.method private native nativeUpdatePluginDirectories([Ljava/lang/String;Z)V
.end method

.method static declared-synchronized removeActiveWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    const-class v0, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eq v1, p0, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static declared-synchronized setActiveWebView(Landroid/webkit/WebView;)V
    .locals 2
    .parameter "webview"

    .prologue
    const-class v0, Landroid/webkit/JWebCoreJavaBridge;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/webkit/JWebCoreJavaBridge;->sCurrentMainWebView:Ljava/lang/ref/WeakReference;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private setCookies(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "url"
    .parameter "value"

    .prologue
    const/4 v7, -0x1

    const-string v6, "\r"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "\n"

    invoke-virtual {p2, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v0, buffer:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-eq v1, v7, :cond_6

    if-ge v1, v5, :cond_6

    const/16 v6, 0xd

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .local v3, ir:I
    const/16 v6, 0xa

    invoke-virtual {p2, v6, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .local v2, in:I
    if-ne v3, v7, :cond_2

    move v4, v2

    .local v4, newi:I
    :goto_1
    if-le v4, v1, :cond_5

    invoke-virtual {p2, v1, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    .end local v4           #newi:I
    :cond_2
    if-ne v2, v7, :cond_3

    move v4, v3

    goto :goto_1

    :cond_3
    if-ge v3, v2, :cond_4

    move v4, v3

    goto :goto_1

    :cond_4
    move v4, v2

    goto :goto_1

    .restart local v4       #newi:I
    :cond_5
    if-ne v4, v7, :cond_1

    invoke-virtual {p2, v1, v5}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .end local v2           #in:I
    .end local v3           #ir:I
    .end local v4           #newi:I
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .end local v0           #buffer:Ljava/lang/StringBuilder;
    .end local v1           #i:I
    .end local v5           #size:I
    :cond_7
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v6

    invoke-virtual {v6, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setSharedTimer(J)V
    .locals 4
    .parameter "timemillis"

    .prologue
    const/4 v3, 0x1

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-gtz v1, :cond_1

    iget-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v3, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .restart local v0       #msg:Landroid/os/Message;
    invoke-virtual {p0, v0, p1, p2}, Landroid/webkit/JWebCoreJavaBridge;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private native sharedTimerFired()V
.end method

.method private signalServiceFuncPtrQueue()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/webkit/JWebCoreJavaBridge;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private stopSharedTimer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/webkit/JWebCoreJavaBridge;->removeMessages(I)V

    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasInstantTimer:Z

    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    return-void
.end method


# virtual methods
.method public native addPackageName(Ljava/lang/String;)V
.end method

.method public native addPackageNames(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeFinalize()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->nativeServiceFuncPtrQueue()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/webkit/PluginManager;->getInstance(Landroid/content/Context;)Landroid/webkit/PluginManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/PluginManager;->getPluginDirectories()[Ljava/lang/String;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v1, v0}, Landroid/webkit/JWebCoreJavaBridge;->nativeUpdatePluginDirectories([Ljava/lang/String;Z)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    if-nez v0, :cond_0

    iput-boolean v1, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    :cond_0
    return-void
.end method

.method public native removePackageName(Ljava/lang/String;)V
.end method

.method public resume()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mPauseTimerRefCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mTimerPaused:Z

    iget-boolean v0, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Landroid/webkit/JWebCoreJavaBridge;->mHasDeferredTimers:Z

    invoke-direct {p0}, Landroid/webkit/JWebCoreJavaBridge;->fireSharedTimer()V

    :cond_0
    return-void
.end method

.method public native setCacheSize(I)V
.end method

.method public native setNetworkOnLine(Z)V
.end method

.method public native setNetworkType(Ljava/lang/String;Ljava/lang/String;)V
.end method
