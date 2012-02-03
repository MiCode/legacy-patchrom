.class public Lcom/android/server/WifiWatchdogService;
.super Ljava/lang/Object;
.source "WifiWatchdogService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiWatchdogService$3;,
        Lcom/android/server/WifiWatchdogService$DnsPinger;,
        Lcom/android/server/WifiWatchdogService$AccessPoint;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;,
        Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;,
        Lcom/android/server/WifiWatchdogService$WatchdogState;
    }
.end annotation


# static fields
.field private static final D:Z = true

.field private static final TAG:Ljava/lang/String; = "WifiWatchdogService"

.field private static final V:Z


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

.field private mNumApsChecked:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldCancel:Z

.field private mSsid:Ljava/lang/String;

.field private mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

.field private mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .locals 1
    .parameter "context"
    .parameter "wifiStateTracker"

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 1111
    new-instance v0, Lcom/android/server/WifiWatchdogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$2;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 112
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    .line 114
    iput-object p2, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 115
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 117
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->createThread()V

    .line 120
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForSettingsChanges()V

    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    .line 128
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiWatchdogService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleSleep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleIdle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleDisconnected()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleReset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WifiWatchdogService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onDisconnected()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->quit()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/WifiWatchdogService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isBackgroundCheckEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiWatchdogService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckDelayMs()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleNetworkChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method private backgroundCheckDnsConnectivity()Z
    .locals 2

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()I

    move-result v0

    .line 430
    .local v0, dns:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 434
    const/4 v1, 0x0

    .line 437
    :goto_0
    return v1

    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckTimeoutMs()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v1

    goto :goto_0
.end method

.method private blacklistAp(Ljava/lang/String;)V
    .locals 2
    .parameter "bssid"

    .prologue
    .line 758
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 763
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 765
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->addToBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 771
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Blacklisting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cancelCurrentAction()V
    .locals 1

    .prologue
    .line 444
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 445
    return-void
.end method

.method private checkDnsConnectivity()Z
    .locals 14

    .prologue
    .line 335
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()I

    move-result v1

    .line 336
    .local v1, dns:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    .line 340
    const/4 v11, 0x0

    .line 420
    :goto_0
    return v11

    .line 348
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getInitialIgnoredPingCount()I

    move-result v5

    .line 349
    .local v5, numInitialIgnoredPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingCount()I

    move-result v6

    .line 350
    .local v6, numPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingDelayMs()I

    move-result v9

    .line 351
    .local v9, pingDelay:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getAcceptablePacketLossPercentage()I

    move-result v0

    .line 354
    .local v0, acceptableLoss:I
    const/4 v4, 0x0

    .line 355
    .local v4, ignoredPingCounter:I
    const/4 v8, 0x0

    .line 356
    .local v8, pingCounter:I
    const/4 v10, 0x0

    .line 359
    .local v10, successCounter:I
    if-nez v6, :cond_2

    .line 360
    const/4 v11, 0x1

    goto :goto_0

    .line 384
    .local v2, dnsAlive:Z
    :cond_1
    int-to-long v11, v9

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 364
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .end local v2           #dnsAlive:Z
    :cond_2
    if-ge v4, v5, :cond_6

    .line 365
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    .line 367
    :cond_3
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v2

    .line 368
    .restart local v2       #dnsAlive:Z
    if-eqz v2, :cond_4

    .line 373
    add-int/lit8 v8, v8, 0x1

    .line 374
    add-int/lit8 v10, v10, 0x1

    .line 381
    :cond_4
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    .line 385
    :catch_0
    move-exception v3

    .line 386
    .local v3, e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 408
    .end local v2           #dnsAlive:Z
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_5
    int-to-long v11, v9

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 391
    :goto_2
    add-int/lit8 v8, v8, 0x1

    :cond_6
    if-ge v8, v6, :cond_9

    .line 392
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_0

    .line 394
    :cond_7
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 395
    add-int/lit8 v10, v10, 0x1

    .line 405
    :cond_8
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    .line 409
    :catch_1
    move-exception v3

    .line 410
    .restart local v3       #e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 414
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_9
    sub-int v11, v6, v10

    mul-int/lit8 v11, v11, 0x64

    div-int v7, v11, v6

    .line 416
    .local v7, packetLossPercentage:I
    const-string v11, "WifiWatchdogService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "% packet loss (acceptable is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "%)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-nez v11, :cond_a

    if-gt v7, v0, :cond_a

    const/4 v11, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method private createThread()V
    .locals 1

    .prologue
    .line 270
    new-instance v0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    .line 271
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->start()V

    .line 272
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->waitForHandlerCreation()V

    .line 273
    return-void
.end method

.method private getAcceptablePacketLossPercentage()I
    .locals 3

    .prologue
    .line 203
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_acceptable_packet_loss_percentage"

    const/16 v2, 0x19

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getApCount()I
    .locals 3

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ap_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundCheckDelayMs()I
    .locals 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_delay_ms"

    const v2, 0xea60

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getBackgroundCheckTimeoutMs()I
    .locals 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_timeout_ms"

    const/16 v2, 0x3e8

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getDns()I
    .locals 2

    .prologue
    .line 320
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .line 321
    .local v0, addressInfo:Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    .line 322
    iget v1, v0, Landroid/net/DhcpInfo;->dns1:I

    .line 324
    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getInitialIgnoredPingCount()I
    .locals 3

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_initial_ignored_ping_count"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getMaxApChecks()I
    .locals 3

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_max_ap_checks"

    const/4 v2, 0x7

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingCount()I
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_count"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingDelayMs()I
    .locals 3

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_delay_ms"

    const/16 v2, 0xfa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getPingTimeoutMs()I
    .locals 3

    .prologue
    .line 187
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_ping_timeout_ms"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private getWatchList()Ljava/lang/String;
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_watch_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 2
    .parameter "ap"

    .prologue
    .line 724
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 734
    :goto_0
    return-void

    .line 726
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP is alive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 733
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0
.end method

.method private handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 2
    .parameter "ap"

    .prologue
    .line 743
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 755
    :goto_0
    return-void

    .line 745
    :cond_0
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AP is dead: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 752
    iget-object v0, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->blacklistAp(Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reassociate()Z

    goto :goto_0
.end method

.method private handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 4
    .parameter "ap"

    .prologue
    .line 785
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 792
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v3, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v2, v3, :cond_1

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 801
    .local v0, info:Landroid/net/wifi/WifiInfo;
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->ssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 809
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 818
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->backgroundCheckDnsConnectivity()Z

    move-result v1

    .line 824
    .local v1, isApAlive:Z
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v2

    if-nez v2, :cond_0

    .line 829
    if-eqz v1, :cond_2

    .line 831
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0

    .line 835
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Background check failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/server/WifiWatchdogService$AccessPoint;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 839
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0
.end method

.method private handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 3
    .parameter "ap"

    .prologue
    .line 672
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 679
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v2, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v1, v2, :cond_0

    .line 715
    :goto_0
    return-void

    .line 686
    :cond_0
    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 692
    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    .line 693
    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getMaxApChecks()I

    move-result v2

    if-le v1, v2, :cond_1

    .line 698
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sleep(Ljava/lang/String;)V

    goto :goto_0

    .line 703
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->checkDnsConnectivity()Z

    move-result v0

    .line 710
    .local v0, isApAlive:Z
    if-eqz v0, :cond_2

    .line 711
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0

    .line 713
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0
.end method

.method private handleDisconnected()V
    .locals 1

    .prologue
    .line 892
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 893
    return-void
.end method

.method private handleIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 901
    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    .line 908
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v0, v1, :cond_0

    .line 909
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Sleeping (in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), so returning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    :goto_0
    return-void

    .line 914
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    goto :goto_0
.end method

.method private handleNetworkChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "ssid"

    .prologue
    .line 660
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    .line 662
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 663
    return-void
.end method

.method private handleReset()V
    .locals 1

    .prologue
    .line 937
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->clearBlacklist()Z

    .line 938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    .line 939
    return-void
.end method

.method private handleSleep(Ljava/lang/String;)V
    .locals 2
    .parameter "ssid"

    .prologue
    .line 851
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 852
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Going to sleep for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 863
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->clearBlacklist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 872
    :cond_0
    return-void
.end method

.method private hasRequiredNumberOfAps(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    .line 619
    iget-object v6, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .line 620
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v4, :cond_0

    move v6, v7

    .line 650
    :goto_0
    return v6

    .line 627
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getApCount()I

    move-result v2

    .line 628
    .local v2, numApsRequired:I
    const/4 v1, 0x0

    .line 629
    .local v1, numApsFound:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .line 630
    .local v5, resultsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_3

    .line 631
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .line 632
    .local v3, result:Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_2

    .line 630
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 633
    :cond_2
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 635
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 636
    add-int/lit8 v1, v1, 0x1

    .line 638
    if-lt v1, v2, :cond_1

    .line 642
    const/4 v6, 0x1

    goto :goto_0

    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_3
    move v6, v7

    .line 650
    goto :goto_0
.end method

.method private isBackgroundCheckEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 219
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_background_check_enabled"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isOnWatchList(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    .line 597
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getWatchList()Ljava/lang/String;

    move-result-object v5

    .local v5, watchList:Ljava/lang/String;
    if-nez v5, :cond_1

    .end local v5           #watchList:Ljava/lang/String;
    :cond_0
    move v6, v7

    .line 609
    :goto_0
    return v6

    .line 601
    .restart local v5       #watchList:Ljava/lang/String;
    :cond_1
    const-string v6, " *, *"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 603
    .local v3, list:[Ljava/lang/String;
    move-object v0, v3

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_3

    aget-object v4, v0, v1

    .line 604
    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 605
    const/4 v6, 0x1

    goto :goto_0

    .line 603
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #name:Ljava/lang/String;
    :cond_3
    move v6, v7

    .line 609
    goto :goto_0
.end method

.method private isWatchdogEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "wifi_watchdog_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static myLogD(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 311
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    return-void
.end method

.method private static myLogV(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 307
    const-string v0, "WifiWatchdogService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return-void
.end method

.method private onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const-string v2, " ("

    .line 478
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 480
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchNetworkChanged(Ljava/lang/String;)V

    .line 488
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") requires the watchdog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 494
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    new-instance v1, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/WifiWatchdogService$AccessPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    .line 504
    :goto_0
    return-void

    .line 498
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") does not require the watchdog"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/WifiWatchdogService;->myLogD(Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    goto :goto_0
.end method

.method private onDisconnected()V
    .locals 1

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 529
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchDisconnected()V

    .line 531
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    .line 532
    return-void
.end method

.method private onEnabled()V
    .locals 1

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    .line 512
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->reset()V

    .line 513
    return-void
.end method

.method private quit()V
    .locals 2

    .prologue
    .line 279
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V

    .line 280
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 281
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    #calls: Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->access$400(Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)V

    .line 282
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 283
    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 5

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 135
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "wifi_watchdog_on"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/WifiWatchdogService$1;

    iget-object v4, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-direct {v3, p0, v4}, Lcom/android/server/WifiWatchdogService$1;-><init>(Lcom/android/server/WifiWatchdogService;Landroid/os/Handler;)V

    iput-object v3, p0, Lcom/android/server/WifiWatchdogService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 150
    return-void
.end method

.method private registerForWifiBroadcasts()V
    .locals 3

    .prologue
    .line 252
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 253
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 255
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 256
    return-void
.end method

.method private requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const/4 v2, 0x0

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-nez p1, :cond_0

    .line 553
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 554
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    .line 555
    if-nez p1, :cond_0

    move v1, v2

    .line 591
    :goto_0
    return v1

    .line 564
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 566
    if-nez v0, :cond_1

    .line 567
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    .line 569
    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p2

    .line 570
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    .line 575
    goto :goto_0

    .line 579
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->isOnWatchList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    .line 583
    goto :goto_0

    .line 587
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->hasRequiredNumberOfAps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    .line 588
    goto :goto_0

    .line 591
    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setIdleState(Z)V
    .locals 2
    .parameter "forceIdleState"

    .prologue
    .line 926
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-eq v0, v1, :cond_1

    .line 927
    :cond_0
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    .line 929
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    .line 930
    return-void
.end method

.method private shouldCancel()Z
    .locals 1

    .prologue
    .line 457
    iget-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    return v0
.end method

.method private unregisterForWifiBroadcasts()V
    .locals 2

    .prologue
    .line 262
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 263
    return-void
.end method

.method private waitForHandlerCreation()V
    .locals 3

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 293
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "WifiWatchdogService"

    const-string v2, "Interrupted while waiting on handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 298
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 299
    return-void
.end method
