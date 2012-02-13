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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    new-instance v0, Lcom/android/server/WifiWatchdogService$2;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$2;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContentResolver:Landroid/content/ContentResolver;

    iput-object p2, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->createThread()V

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForSettingsChanges()V

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/WifiWatchdogService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isWatchdogEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->registerForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleSleep(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleIdle()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleDisconnected()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->handleReset()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WifiWatchdogService;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->onConnected(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onDisconnected()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->quit()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->onEnabled()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/WifiWatchdogService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/server/WifiWatchdogService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->isBackgroundCheckEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/WifiWatchdogService;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getBackgroundCheckDelayMs()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/WifiWatchdogService;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleNetworkChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/WifiWatchdogService;Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    return-void
.end method

.method private backgroundCheckDnsConnectivity()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()I

    move-result v0

    .local v0, dns:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

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
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->addToBlacklist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

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
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    return-void
.end method

.method private checkDnsConnectivity()Z
    .locals 14

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getDns()I

    move-result v1

    .local v1, dns:I
    const/4 v11, -0x1

    if-ne v1, v11, :cond_0

    const/4 v11, 0x0

    :goto_0
    return v11

    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getInitialIgnoredPingCount()I

    move-result v5

    .local v5, numInitialIgnoredPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingCount()I

    move-result v6

    .local v6, numPings:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingDelayMs()I

    move-result v9

    .local v9, pingDelay:I
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getAcceptablePacketLossPercentage()I

    move-result v0

    .local v0, acceptableLoss:I
    const/4 v4, 0x0

    .local v4, ignoredPingCounter:I
    const/4 v8, 0x0

    .local v8, pingCounter:I
    const/4 v10, 0x0

    .local v10, successCounter:I
    if-nez v6, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    .local v2, dnsAlive:Z
    :cond_1
    int-to-long v11, v9

    :try_start_0
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    .end local v2           #dnsAlive:Z
    :cond_2
    if-ge v4, v5, :cond_6

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_3

    const/4 v11, 0x0

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v2

    .restart local v2       #dnsAlive:Z
    if-eqz v2, :cond_4

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    :cond_4
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_1

    const/4 v11, 0x0

    goto :goto_0

    :catch_0
    move-exception v3

    .local v3, e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v2           #dnsAlive:Z
    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_5
    int-to-long v11, v9

    :try_start_1
    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    add-int/lit8 v8, v8, 0x1

    :cond_6
    if-ge v8, v6, :cond_9

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_7

    const/4 v11, 0x0

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getPingTimeoutMs()I

    move-result v11

    invoke-static {v1, v11}, Lcom/android/server/WifiWatchdogService$DnsPinger;->isDnsReachable(II)Z

    move-result v11

    if-eqz v11, :cond_8

    add-int/lit8 v10, v10, 0x1

    :cond_8
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v11

    if-eqz v11, :cond_5

    const/4 v11, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    .restart local v3       #e:Ljava/lang/InterruptedException;
    const-string v11, "WifiWatchdogService"

    const-string v12, "Interrupted while pausing between pings"

    invoke-static {v11, v12, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .end local v3           #e:Ljava/lang/InterruptedException;
    :cond_9
    sub-int v11, v6, v10

    mul-int/lit8 v11, v11, 0x64

    div-int v7, v11, v6

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
    new-instance v0, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-direct {v0, p0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;-><init>(Lcom/android/server/WifiWatchdogService;)V

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mThread:Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogThread;->start()V

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->waitForHandlerCreation()V

    return-void
.end method

.method private getAcceptablePacketLossPercentage()I
    .locals 3

    .prologue
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
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    .local v0, addressInfo:Landroid/net/DhcpInfo;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/net/DhcpInfo;->dns1:I

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method private getInitialIgnoredPingCount()I
    .locals 3

    .prologue
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
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

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

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0
.end method

.method private handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 2
    .parameter "ap"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SWITCHING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

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

    iget-object v0, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->blacklistAp(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reassociate()Z

    goto :goto_0
.end method

.method private handleBackgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 4
    .parameter "ap"

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v3, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v2, v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

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

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/WifiWatchdogService$AccessPoint;->bssid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->backgroundCheckDnsConnectivity()Z

    move-result v1

    .local v1, isApAlive:Z
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->shouldCancel()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->backgroundCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0

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

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v2, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0
.end method

.method private handleCheckAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V
    .locals 3
    .parameter "ap"

    .prologue
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v2, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v1, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->CHECKING_AP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v1, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    iget v1, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getMaxApChecks()I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->sleep(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->checkDnsConnectivity()Z

    move-result v0

    .local v0, isApAlive:Z
    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApAlive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->handleApUnresponsive(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    goto :goto_0
.end method

.method private handleDisconnected()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    return-void
.end method

.method private handleIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-ne v0, v1, :cond_0

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

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    goto :goto_0
.end method

.method private handleNetworkChanged(Ljava/lang/String;)V
    .locals 1
    .parameter "ssid"

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    return-void
.end method

.method private handleReset()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->clearBlacklist()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/WifiWatchdogService;->setIdleState(Z)V

    return-void
.end method

.method private handleSleep(Ljava/lang/String;)V
    .locals 2
    .parameter "ssid"

    .prologue
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

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

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->clearBlacklist()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method private hasRequiredNumberOfAps(Ljava/lang/String;)Z
    .locals 8
    .parameter "ssid"

    .prologue
    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-nez v4, :cond_0

    move v6, v7

    :goto_0
    return v6

    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getApCount()I

    move-result v2

    .local v2, numApsRequired:I
    const/4 v1, 0x0

    .local v1, numApsFound:I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    .local v5, resultsSize:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v5, :cond_3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    .local v3, result:Landroid/net/wifi/ScanResult;
    if-nez v3, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-lt v1, v2, :cond_1

    const/4 v6, 0x1

    goto :goto_0

    .end local v3           #result:Landroid/net/wifi/ScanResult;
    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method private isBackgroundCheckEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

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

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->getWatchList()Ljava/lang/String;

    move-result-object v5

    .local v5, watchList:Ljava/lang/String;
    if-nez v5, :cond_1

    .end local v5           #watchList:Ljava/lang/String;
    :cond_0
    move v6, v7

    :goto_0
    return v6

    .restart local v5       #watchList:Ljava/lang/String;
    :cond_1
    const-string v6, " *, *"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

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

    .local v4, name:Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #name:Ljava/lang/String;
    :cond_3
    move v6, v7

    goto :goto_0
.end method

.method private isWatchdogEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

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

    return-void
.end method

.method private static myLogV(Ljava/lang/String;)V
    .locals 3
    .parameter "message"

    .prologue
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

    return-void
.end method

.method private onConnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const-string v2, " ("

    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchNetworkChanged(Ljava/lang/String;)V

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiWatchdogService;->requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

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

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    new-instance v1, Lcom/android/server/WifiWatchdogService$AccessPoint;

    invoke-direct {v1, p1, p2}, Lcom/android/server/WifiWatchdogService$AccessPoint;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->checkAp(Lcom/android/server/WifiWatchdogService$AccessPoint;)V

    :goto_0
    return-void

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

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    goto :goto_0
.end method

.method private onDisconnected()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->dispatchDisconnected()V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->idle()V

    return-void
.end method

.method private onEnabled()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->cancelCurrentAction()V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->reset()V

    return-void
.end method

.method private quit()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiWatchdogService;->unregisterForWifiBroadcasts()V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    #calls: Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->removeAllActions()V
    invoke-static {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->access$400(Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;)V

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;

    invoke-virtual {v0}, Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method

.method private registerForSettingsChanges()V
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

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

    return-void
.end method

.method private registerForWifiBroadcasts()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private requiresWatchdog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .local v0, info:Landroid/net/wifi/WifiInfo;
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->isOnWatchList(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/WifiWatchdogService;->hasRequiredNumberOfAps(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private setIdleState(Z)V
    .locals 2
    .parameter "forceIdleState"

    .prologue
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    sget-object v1, Lcom/android/server/WifiWatchdogService$WatchdogState;->SLEEP:Lcom/android/server/WifiWatchdogService$WatchdogState;

    if-eq v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcom/android/server/WifiWatchdogService$WatchdogState;->IDLE:Lcom/android/server/WifiWatchdogService$WatchdogState;

    iput-object v0, p0, Lcom/android/server/WifiWatchdogService;->mState:Lcom/android/server/WifiWatchdogService$WatchdogState;

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/WifiWatchdogService;->mNumApsChecked:I

    return-void
.end method

.method private shouldCancel()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WifiWatchdogService;->mShouldCancel:Z

    return v0
.end method

.method private unregisterForWifiBroadcasts()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiWatchdogService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private waitForHandlerCreation()V
    .locals 3

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiWatchdogService;->mHandler:Lcom/android/server/WifiWatchdogService$WifiWatchdogHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v1, "WifiWatchdogService"

    const-string v2, "Interrupted while waiting on handler."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

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

    return-void
.end method
