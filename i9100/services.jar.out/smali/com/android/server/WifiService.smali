.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$11;,
        Lcom/android/server/WifiService$Multicaster;,
        Lcom/android/server/WifiService$DeathRecipient;,
        Lcom/android/server/WifiService$LockList;,
        Lcom/android/server/WifiService$WifiLock;,
        Lcom/android/server/WifiService$WifiHandler;,
        Lcom/android/server/WifiService$DriverAction;
    }
.end annotation


# static fields
.field private static final ACTION_DEVICE_IDLE:Ljava/lang/String; = "com.android.server.WifiManager.action.DEVICE_IDLE"

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MILLIS:J = 0xdbba0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final DHCP_DEFAULT_RANGE1_START:Ljava/lang/String; = "192.168.43.2"

.field private static final DHCP_DEFAULT_RANGE1_STOP:Ljava/lang/String; = "192.168.43.254"

.field private static final DHCP_DEFAULT_RANGE2_START:Ljava/lang/String; = "192.168.44.2"

.field private static final DHCP_DEFAULT_RANGE2_STOP:Ljava/lang/String; = "192.168.44.254"

.field private static final IDLE_REQUEST:I = 0x0

.field private static final MESSAGE_CREATE_GO:I = 0x19

.field private static final MESSAGE_DESTROY_GO:I = 0x1a

.field private static final MESSAGE_DISABLE_WIFI:I = 0x1

.field private static final MESSAGE_DISCONNECT_WIFIDIRECT:I = 0x1b

.field private static final MESSAGE_ENABLE_NETWORKS:I = 0x9

.field private static final MESSAGE_ENABLE_RSSI_POLLING:I = 0xc

.field private static final MESSAGE_ENABLE_WIFI:I = 0x0

.field private static final MESSAGE_PROVISION_REQUEST:I = 0x17

.field private static final MESSAGE_PROVISION_RESPONSE:I = 0x18

.field private static final MESSAGE_READ_WIFI_AP_CONFIG:I = 0xe

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_REPORT_WORKSOURCE:I = 0xb

.field private static final MESSAGE_SET_CHANNELS:I = 0x8

.field private static final MESSAGE_START_ACCESS_POINT:I = 0x6

.field private static final MESSAGE_START_SCAN:I = 0xa

.field private static final MESSAGE_START_WIFI:I = 0x3

.field private static final MESSAGE_START_WIFIDIRECT:I = 0x15

.field private static final MESSAGE_STOP_ACCESS_POINT:I = 0x7

.field private static final MESSAGE_STOP_WIFI:I = 0x2

.field private static final MESSAGE_STOP_WIFIDIRECT:I = 0x16

.field private static final MESSAGE_UPDATE_STATE:I = 0x5

.field private static final MESSAGE_WRITE_WIFI_AP_CONFIG:I = 0xd

.field private static final SCAN_RESULT_BUFFER_SIZE:I = 0x200

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final SOFTAP_IFACE:Ljava/lang/String; = "wl0.1"

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "WifiService"

.field private static final WIFIAP_CONFIG_FILE:Ljava/lang/String; = null

.field private static final WIFIAP_CONFIG_VERSION:I = 0x1

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sValidRegulatoryChannelCounts:[I

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private allowWifi:Z

.field private allowWifiAp:Z

.field private mAirplaneModeOverwridden:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDeviceIdle:Z

.field private mDhcpRange:[Ljava/lang/String;

.field private mDirectRegexs:[Ljava/lang/String;

.field private mEnabledAccessPointListDialog:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mLastApEnableUid:I

.field private mLastDirectEnableUid:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedReconfig:Z

.field private mPluggedType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field private final mScanResultCache:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOff:Z

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

.field private final mWifiApConfigLock:Ljava/lang/Object;

.field private mWifiApState:I

.field private mWifiEnabledSoon:Z

.field private final mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

.field private mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    .line 263
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    .line 268
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/misc/wifi/softap.conf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->WIFIAP_CONFIG_FILE:Ljava/lang/String;

    return-void

    .line 263
    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .locals 11
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v10, "WifiService"

    .line 282
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 143
    iput-boolean v8, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    .line 150
    new-instance v4, Lcom/android/server/WifiService$LockList;

    invoke-direct {v4, p0, v9}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    .line 159
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    .line 168
    iput-object v9, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    .line 242
    new-instance v4, Landroid/os/WorkSource;

    invoke-direct {v4}, Landroid/os/WorkSource;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    .line 247
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 252
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    .line 257
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastDirectEnableUid:I

    .line 272
    new-instance v4, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v4}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 273
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiApConfigLock:Ljava/lang/Object;

    .line 277
    iput-boolean v7, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 278
    iput-boolean v7, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 2978
    new-instance v4, Lcom/android/server/WifiService$10;

    invoke-direct {v4, p0}, Lcom/android/server/WifiService$10;-><init>(Lcom/android/server/WifiService;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 283
    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    .line 284
    iput-object p2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    .line 285
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    .line 286
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 288
    const-string v4, "network_management"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 289
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    .line 291
    new-instance v4, Lcom/android/server/WifiService$1;

    const/16 v5, 0x50

    const/high16 v6, 0x3f40

    invoke-direct {v4, p0, v5, v6, v7}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;IFZ)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    .line 302
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "WifiService"

    invoke-direct {v3, v10}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 303
    .local v3, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 304
    new-instance v4, Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/WifiService$WifiHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    .line 306
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, v7}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    .line 307
    iput v7, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 309
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/AlarmManager;

    iput-object v4, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 310
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v1, v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    .local v1, idleIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v4, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    .line 313
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 314
    .local v2, powerManager:Landroid/os/PowerManager;
    const-string v4, "WifiService"

    invoke-virtual {v2, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 315
    const-string v4, "WifiService"

    invoke-virtual {v2, v7, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    sput-object v4, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 319
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v5, "device_policy"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/admin/DevicePolicyManager;

    iput-object v4, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 322
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$2;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 337
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$3;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 357
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$4;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.CREATE_LINK_COMPLETE"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 390
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$5;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.GO_READY"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 403
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$6;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.GO_STOP"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 415
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$7;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$7;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.DIRECT_LINK_DOWN"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 430
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/server/WifiService$8;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$8;-><init>(Lcom/android/server/WifiService;)V

    new-instance v6, Landroid/content/IntentFilter;

    const-string v7, "android.net.wifidirect.DIRECT_LINK_ADDED"

    invoke-direct {v6, v7}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 451
    return-void
.end method

.method private ConfigureDirectInterface()V
    .locals 11

    .prologue
    const-string v10, "WifiService"

    .line 570
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 572
    const/4 v6, 0x0

    .line 573
    .local v6, wifiTethered:Z
    const/4 v5, 0x0

    .line 575
    .local v5, wifiAvailable:Z
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 576
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 579
    .local v4, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v7

    if-nez v7, :cond_0

    .line 580
    const-string v7, "WifiService"

    const-string v8, "[updateDirectState][Direct Client is Created.] "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :goto_0
    return-void

    .line 584
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 585
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    const-string v7, "[Configure Interface] Error configuring interface "

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 589
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v8, 0x1040487

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 591
    .local v3, intf:Ljava/lang/String;
    const/4 v2, 0x0

    .line 593
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 594
    if-eqz v2, :cond_1

    .line 596
    const v7, -0x3f57d4ff

    iput v7, v2, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 597
    const/16 v7, -0x100

    iput v7, v2, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 598
    const-string v7, "up"

    iput-object v7, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 600
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 605
    :cond_1
    :goto_1
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/String;

    iput-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    .line 606
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "192.168.43.2"

    aput-object v9, v7, v8

    .line 607
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x1

    const-string v9, "192.168.43.254"

    aput-object v9, v7, v8

    .line 608
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x2

    const-string v9, "192.168.44.2"

    aput-object v9, v7, v8

    .line 609
    iget-object v7, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    const/4 v8, 0x3

    const-string v9, "192.168.44.254"

    aput-object v9, v7, v8

    .line 611
    :try_start_2
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v8, p0, Lcom/android/server/WifiService;->mDhcpRange:[Ljava/lang/String;

    invoke-interface {v7, v8}, Landroid/os/INetworkManagementService;->startTethering([Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 612
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 613
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error startTethering "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 602
    .end local v1           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v7

    move-object v1, v7

    .line 603
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error configuring interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private DisableDnsmasq()V
    .locals 8

    .prologue
    const-string v7, "WifiService"

    .line 618
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 620
    const/4 v4, 0x0

    .line 621
    .local v4, wifiTethered:Z
    const/4 v3, 0x0

    .line 623
    .local v3, wifiAvailable:Z
    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 624
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v2

    .line 627
    .local v2, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v5}, Landroid/os/INetworkManagementService;->stopTethering()V

    .line 628
    const-string v5, "WifiService"

    const-string v6, "[DisableDnsmasq] "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 632
    :goto_0
    return-void

    .line 629
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 630
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error startTethering "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->ConfigureDirectInterface()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendEnableNetworksMessage()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->handleSecurityPolicy()V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/WifiService;ZZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object p1
.end method

.method static synthetic access$2600()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->doUpdateWifiState()V

    return-void
.end method

.method static synthetic access$2900()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    .line 121
    sget-object v0, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3000(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->setNumAllowedChannelsBlocking(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->writeWifiApConfigBlocked(Landroid/net/wifi/WifiConfiguration;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->readWifiApConfigBlocked()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiDirectEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->DisableDnsmasq()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 121
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Landroid/os/INetworkManagementService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 3717
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3719
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$4300(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    .line 3721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3723
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3724
    iget v3, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 3738
    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    .line 3740
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3741
    const/4 v3, 0x1

    .line 3745
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return v3

    .line 3726
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3742
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 3743
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    .line 3745
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 3729
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 3745
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 3732
    :pswitch_2
    :try_start_3
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 3724
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

    .line 2090
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private doUpdateWifiState()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3240
    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v4

    .line 3241
    .local v4, wifiEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v7, :cond_3

    move v0, v10

    .line 3244
    .local v0, airplaneMode:Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7

    .line 3245
    :try_start_0
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$2200(Lcom/android/server/WifiService$LockList;)Z

    move-result v1

    .line 3246
    .local v1, lockHeld:Z
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3248
    const/4 v2, 0x1

    .line 3249
    .local v2, strongestLockMode:I
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    move v5, v10

    .line 3250
    .local v5, wifiShouldBeEnabled:Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v7, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    move v6, v10

    .line 3252
    .local v6, wifiShouldBeStarted:Z
    :goto_2
    if-eqz v1, :cond_1

    .line 3253
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$2300(Lcom/android/server/WifiService$LockList;)I

    move-result v2

    .line 3256
    :cond_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v7, :cond_2

    if-ne v2, v11, :cond_2

    .line 3257
    const/4 v2, 0x1

    .line 3260
    :cond_2
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v7

    .line 3261
    :try_start_1
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v8

    if-ne v8, v11, :cond_6

    if-nez v0, :cond_6

    .line 3262
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3298
    :goto_3
    return-void

    .end local v0           #airplaneMode:Z
    .end local v1           #lockHeld:Z
    .end local v2           #strongestLockMode:I
    .end local v5           #wifiShouldBeEnabled:Z
    .end local v6           #wifiShouldBeStarted:Z
    :cond_3
    move v0, v9

    .line 3241
    goto :goto_0

    .line 3246
    .restart local v0       #airplaneMode:Z
    :catchall_0
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v8

    .restart local v1       #lockHeld:Z
    .restart local v2       #strongestLockMode:I
    :cond_4
    move v5, v9

    .line 3249
    goto :goto_1

    .restart local v5       #wifiShouldBeEnabled:Z
    :cond_5
    move v6, v9

    .line 3250
    goto :goto_2

    .line 3266
    .restart local v6       #wifiShouldBeStarted:Z
    :cond_6
    if-eqz v0, :cond_8

    :try_start_3
    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v8, v11, :cond_7

    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    .line 3268
    :cond_7
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3269
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 3272
    :cond_8
    if-eqz v5, :cond_b

    .line 3273
    if-eqz v6, :cond_a

    .line 3274
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3275
    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 3276
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3277
    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->sendStartMessage(I)V

    .line 3297
    :cond_9
    :goto_4
    monitor-exit v7

    goto :goto_3

    :catchall_1
    move-exception v8

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v8

    .line 3278
    :cond_a
    :try_start_4
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v8

    if-nez v8, :cond_9

    .line 3279
    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_mobile_data_transition_wakelock_timeout_ms"

    const/16 v10, 0x1f40

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 3289
    .local v3, wakeLockTimeout:I
    sget-object v8, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3290
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    .line 3291
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x4

    int-to-long v10, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 3294
    .end local v3           #wakeLockTimeout:I
    :cond_b
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3295
    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 1392
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1400
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1406
    return-void
.end method

.method private getPersistedWifiEnabled()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 648
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 650
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    .line 655
    :goto_0
    return v2

    :cond_0
    move v2, v3

    .line 650
    goto :goto_0

    .line 651
    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    move v2, v3

    .line 655
    goto :goto_0
.end method

.method private getWifiDirectConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .prologue
    const/4 v9, 0x4

    const-string v10, "direct_ssid"

    const-string v12, "direct_password"

    .line 1188
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1189
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1190
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v6, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v6}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1192
    .local v6, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    const-string v7, "direct_ssid"

    invoke-static {v0, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1193
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v7, :cond_0

    .line 1194
    const-string v7, "gsm.sim.msisdn"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1195
    .local v2, mNumber:Ljava/lang/String;
    const-string v5, "AndroidP2P"

    .line 1197
    .local v5, tempSSID:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v7, v9, :cond_2

    .line 1198
    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v9

    invoke-static {v7, v8, v9}, Ljava/lang/String;->copyValueOf([CII)Ljava/lang/String;

    move-result-object v1

    .line 1199
    .local v1, mLast4digitNum:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1206
    .end local v1           #mLast4digitNum:Ljava/lang/String;
    :goto_0
    const-string v7, "direct_ssid"

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v10, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1209
    .end local v2           #mNumber:Ljava/lang/String;
    .end local v5           #tempSSID:Ljava/lang/String;
    :cond_0
    const-string v7, "direct_password"

    invoke-static {v0, v12}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1210
    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-nez v7, :cond_1

    .line 1211
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 1212
    .local v3, rnd:Ljava/util/Random;
    const-string v7, "%08d"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    const v10, 0x55d2370

    invoke-virtual {v3, v10}, Ljava/util/Random;->nextInt(I)I

    move-result v10

    const v11, 0x989680

    add-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1213
    const-string v7, "direct_password"

    iget-object v7, v6, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v12, v7}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1216
    .end local v3           #rnd:Ljava/util/Random;
    :cond_1
    return-object v6

    .line 1202
    .restart local v2       #mNumber:Ljava/lang/String;
    .restart local v5       #tempSSID:Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/util/Random;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-direct {v3, v7, v8}, Ljava/util/Random;-><init>(J)V

    .line 1203
    .restart local v3       #rnd:Ljava/util/Random;
    const/16 v7, 0x2327

    invoke-virtual {v3, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    add-int/lit16 v4, v7, 0x3e8

    .line 1204
    .local v4, sequence:I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0
.end method

.method private handleSecurityPolicy()V
    .locals 9

    .prologue
    const/high16 v7, 0x1000

    const/high16 v6, 0x80

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "com.android.settings"

    .line 3149
    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 3150
    iget-object v1, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 3151
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSecurityPolicy()     allowWifi ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")     allowWifiAp ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3152
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v1, :cond_0

    .line 3153
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiEnabledState()I

    move-result v1

    if-eq v1, v5, :cond_0

    .line 3154
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 3155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3156
    .local v0, startDialogIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSecurityChangeDialog"

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3157
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3158
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3159
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3163
    .end local v0           #startDialogIntent:Landroid/content/Intent;
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v1, :cond_1

    .line 3164
    iget v1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v1, v5, :cond_1

    .line 3165
    const/4 v1, 0x0

    invoke-virtual {p0, v4, v1}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 3166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 3167
    .restart local v0       #startDialogIntent:Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiApSecurityChangeDialog"

    invoke-virtual {v0, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 3168
    invoke-virtual {v0, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3169
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3170
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 3175
    .end local v0           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3333
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneSensitive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private isAirplaneSensitive()Z
    .locals 3

    .prologue
    .line 3314
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3316
    .local v0, airplaneModeRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isAirplaneToggleable()Z
    .locals 3

    .prologue
    .line 3321
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3323
    .local v0, toggleableRadios:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static lookupString(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 4
    .parameter "string"
    .parameter "strings"

    .prologue
    .line 2426
    array-length v1, p1

    .line 2428
    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 2430
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2431
    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    .line 2441
    :goto_1
    return v2

    .line 2430
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2441
    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    .line 2406
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 2407
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .line 2411
    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    .line 2413
    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2414
    aget-object v2, p1, v1

    const/16 v3, 0x5f

    const/16 v4, 0x2d

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 2418
    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    .line 2419
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 2422
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3687
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 3699
    :goto_0
    return-void

    .line 3689
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3693
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3696
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3687
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3702
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 3714
    :goto_0
    return-void

    .line 3704
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3708
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3711
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 3702
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseP2PScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 18
    .parameter "line"

    .prologue
    .line 2730
    const/4 v2, 0x0

    .line 2731
    .local v2, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    .line 2736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    move-object v14, v0

    monitor-enter v14

    .line 2737
    :try_start_0
    sget-object v15, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v12

    .line 2738
    .local v12, result:[Ljava/lang/String;
    const/4 v15, 0x5

    move-object v0, v12

    array-length v0, v0

    move/from16 v16, v0

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    array-length v15, v12

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_7

    .line 2739
    const/4 v15, 0x0

    aget-object v4, v12, v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2745
    .local v4, bssid:Ljava/lang/String;
    const/4 v15, 0x1

    :try_start_1
    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 2746
    .local v7, frequency:I
    const/4 v15, 0x2

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 2750
    .local v6, level:I
    if-lez v6, :cond_0

    .line 2751
    add-int/lit16 v6, v6, -0x100

    .line 2752
    :cond_0
    const/4 v15, 0x3

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    .line 2770
    .local v8, devType:I
    :goto_0
    :try_start_2
    array-length v15, v12

    const/16 v16, 0x5

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_3

    .line 2771
    const/4 v15, 0x4

    aget-object v15, v12, v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->charAt(I)C

    move-result v15

    const/16 v16, 0x5b

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_2

    .line 2772
    const/4 v15, 0x4

    aget-object v5, v12, v15

    .line 2773
    .local v5, flags:Ljava/lang/String;
    const-string v3, ""

    .line 2774
    .local v3, ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2797
    .local v9, status:I
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2798
    .local v11, key:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    move-object v15, v0

    invoke-virtual {v15, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2799
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .local v13, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v13, :cond_6

    .line 2800
    :try_start_3
    iput v6, v13, Landroid/net/wifi/ScanResult;->level:I

    .line 2801
    iput-object v3, v13, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2802
    iput-object v5, v13, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2803
    iput v7, v13, Landroid/net/wifi/ScanResult;->frequency:I

    .line 2804
    iput v8, v13, Landroid/net/wifi/ScanResult;->primaryDev:I

    .line 2805
    iput v9, v13, Landroid/net/wifi/ScanResult;->status:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v2, v13

    .line 2819
    .end local v3           #ssid:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v6           #level:I
    .end local v7           #frequency:I
    .end local v8           #devType:I
    .end local v9           #status:I
    .end local v11           #key:Ljava/lang/String;
    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v14

    .line 2822
    .end local v12           #result:[Ljava/lang/String;
    :cond_1
    return-object v2

    .line 2753
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v12       #result:[Ljava/lang/String;
    :catch_0
    move-exception v15

    move-object v10, v15

    .line 2754
    .local v10, e:Ljava/lang/NumberFormatException;
    const/4 v7, 0x0

    .line 2755
    .restart local v7       #frequency:I
    const/4 v6, 0x0

    .line 2756
    .restart local v6       #level:I
    const/4 v8, 0x0

    .restart local v8       #devType:I
    goto :goto_0

    .line 2776
    .end local v10           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v5, ""

    .line 2777
    .restart local v5       #flags:Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v3, v12, v15

    .line 2778
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto :goto_1

    .line 2780
    .end local v3           #ssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v9           #status:I
    :cond_3
    array-length v15, v12

    const/16 v16, 0x6

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_4

    .line 2781
    const/4 v15, 0x4

    aget-object v5, v12, v15

    .line 2782
    .restart local v5       #flags:Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v3, v12, v15

    .line 2783
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto :goto_1

    .line 2784
    .end local v3           #ssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v9           #status:I
    :cond_4
    array-length v15, v12

    const/16 v16, 0x7

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 2785
    const/4 v15, 0x4

    aget-object v5, v12, v15

    .line 2786
    .restart local v5       #flags:Ljava/lang/String;
    const/4 v15, 0x5

    aget-object v3, v12, v15

    .line 2787
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v15, 0x6

    aget-object v15, v12, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .restart local v9       #status:I
    goto :goto_1

    .line 2791
    .end local v3           #ssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v9           #status:I
    :cond_5
    const-string v5, ""

    .line 2792
    .restart local v5       #flags:Ljava/lang/String;
    const-string v3, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2793
    .restart local v3       #ssid:Ljava/lang/String;
    const/4 v9, 0x0

    .restart local v9       #status:I
    goto :goto_1

    .line 2808
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_6
    :try_start_5
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_8

    .line 2809
    new-instance v2, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v2 .. v9}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIII)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2812
    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    move-object v15, v0

    invoke-virtual {v15, v11, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2819
    .end local v3           #ssid:Ljava/lang/String;
    .end local v4           #bssid:Ljava/lang/String;
    .end local v5           #flags:Ljava/lang/String;
    .end local v6           #level:I
    .end local v7           #frequency:I
    .end local v8           #devType:I
    .end local v9           #status:I
    .end local v11           #key:Ljava/lang/String;
    .end local v12           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v15

    :goto_3
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v15

    .line 2816
    .restart local v12       #result:[Ljava/lang/String;
    :cond_7
    :try_start_7
    const-string v15, "WifiService"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Misformatted scan result text with "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v12

    array-length v0, v0

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " fields: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 2819
    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v3       #ssid:Ljava/lang/String;
    .restart local v4       #bssid:Ljava/lang/String;
    .restart local v5       #flags:Ljava/lang/String;
    .restart local v6       #level:I
    .restart local v7       #frequency:I
    .restart local v8       #devType:I
    .restart local v9       #status:I
    .restart local v11       #key:Ljava/lang/String;
    .restart local v13       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v15

    move-object v2, v13

    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v2           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v13       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_8
    move-object v2, v13

    .end local v13           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v2       #scanResult:Landroid/net/wifi/ScanResult;
    goto/16 :goto_2
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 14
    .parameter "line"

    .prologue
    .line 2594
    const/4 v0, 0x0

    .line 2595
    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    .line 2600
    iget-object v10, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    monitor-enter v10

    .line 2601
    :try_start_0
    sget-object v11, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .line 2602
    .local v8, result:[Ljava/lang/String;
    const/4 v11, 0x3

    array-length v12, v8

    if-gt v11, v12, :cond_6

    array-length v11, v8

    const/4 v12, 0x5

    if-gt v11, v12, :cond_6

    .line 2603
    const/4 v11, 0x0

    aget-object v2, v8, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2608
    .local v2, bssid:Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_1
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 2609
    .local v5, frequency:I
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .line 2613
    .local v4, level:I
    if-lez v4, :cond_0

    add-int/lit16 v4, v4, -0x100

    .line 2629
    :cond_0
    :goto_0
    :try_start_2
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    .line 2630
    const/4 v11, 0x3

    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_2

    .line 2631
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 2632
    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

    .line 2648
    .local v1, ssid:Ljava/lang/String;
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2649
    .local v7, key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2650
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_5

    .line 2651
    :try_start_3
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    .line 2652
    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    .line 2653
    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    .line 2654
    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v9

    .line 2668
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :goto_2
    :try_start_4
    monitor-exit v10

    .line 2671
    .end local v8           #result:[Ljava/lang/String;
    :cond_1
    return-object v0

    .line 2614
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v6, v11

    .line 2615
    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .line 2616
    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_0

    .line 2634
    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, ""

    .line 2635
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2637
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_3
    array-length v11, v8

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    .line 2638
    const/4 v11, 0x3

    aget-object v3, v8, v11

    .line 2639
    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2643
    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .line 2644
    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .line 2657
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_5
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_7

    .line 2658
    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2661
    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 2668
    .end local v1           #ssid:Ljava/lang/String;
    .end local v2           #bssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    .end local v4           #level:I
    .end local v5           #frequency:I
    .end local v7           #key:Ljava/lang/String;
    .end local v8           #result:[Ljava/lang/String;
    :catchall_0
    move-exception v11

    :goto_3
    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v11

    .line 2665
    .restart local v8       #result:[Ljava/lang/String;
    :cond_6
    :try_start_7
    const-string v11, "WifiService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Misformatted scan result text with "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    array-length v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " fields: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .line 2668
    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v1       #ssid:Ljava/lang/String;
    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v3       #flags:Ljava/lang/String;
    .restart local v4       #level:I
    .restart local v5       #frequency:I
    .restart local v7       #key:Ljava/lang/String;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :catchall_1
    move-exception v11

    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_3

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v9       #scanResult:Landroid/net/wifi/ScanResult;
    :cond_7
    move-object v0, v9

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    goto :goto_2
.end method

.method private persistWifiEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 660
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 661
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 662
    return-void

    .line 661
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private preventDirectEnable()Z
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "direct_use_hide_my_device"

    .line 1077
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1078
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    move v3, v5

    .line 1096
    :goto_0
    return v3

    .line 1080
    :cond_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1081
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    .line 1083
    .local v2, mDirectDisable:I
    :try_start_0
    const-string v3, "direct_use_hide_my_device"

    const/16 v4, 0x64

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1085
    if-ne v2, v7, :cond_1

    .line 1087
    const/4 v2, 0x1

    .line 1088
    :try_start_1
    const-string v3, "direct_use_hide_my_device"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1096
    :cond_1
    :goto_1
    if-ne v2, v6, :cond_2

    move v3, v6

    goto :goto_0

    .line 1089
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/NumberFormatException;
    move v3, v5

    .line 1090
    goto :goto_0

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    move v3, v5

    .line 1096
    goto :goto_0

    .line 1093
    :catch_1
    move-exception v3

    goto :goto_1
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .parameter "config"

    .prologue
    .line 1889
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 1890
    .local v6, netId:I
    if-gez v6, :cond_1

    .line 2082
    :cond_0
    return-void

    .line 1900
    :cond_1
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1901
    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1902
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1907
    :goto_0
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "bssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1908
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 1909
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    .line 1914
    :goto_1
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "priority"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1915
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    .line 1916
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1918
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1923
    :cond_2
    :goto_2
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "scan_ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1924
    const/4 v10, 0x0

    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 1925
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 1927
    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_7

    const/4 v10, 0x1

    :goto_3
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1932
    :cond_3
    :goto_4
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wep_tx_keyidx"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1933
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    .line 1934
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1936
    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1945
    :cond_4
    :goto_5
    const/4 v2, 0x0

    .local v2, i:I
    :goto_6
    const/4 v10, 0x4

    if-ge v2, v10, :cond_9

    .line 1946
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1947
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 1948
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    .line 1945
    :goto_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1904
    .end local v2           #i:I
    :cond_5
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_0

    .line 1911
    :cond_6
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto :goto_1

    .line 1927
    :cond_7
    const/4 v10, 0x0

    goto :goto_3

    .line 1950
    .restart local v2       #i:I
    :cond_8
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v10, v2

    goto :goto_7

    .line 1958
    :cond_9
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "psk"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1959
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_b

    .line 1960
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1965
    :goto_8
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "proto"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1967
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 1968
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1969
    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_9
    if-ge v3, v5, :cond_c

    aget-object v7, v0, v3

    .line 1970
    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1972
    .local v4, index:I
    if-ltz v4, :cond_a

    .line 1973
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1969
    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 1962
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_b
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_8

    .line 1978
    :cond_c
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "key_mgmt"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1980
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_e

    .line 1981
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1982
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_a
    if-ge v3, v5, :cond_e

    aget-object v7, v0, v3

    .line 1983
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1985
    .restart local v4       #index:I
    if-ltz v4, :cond_d

    .line 1986
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1982
    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1991
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_e
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "auth_alg"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1993
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_10

    .line 1994
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 1995
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_b
    if-ge v3, v5, :cond_10

    aget-object v7, v0, v3

    .line 1996
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 1998
    .restart local v4       #index:I
    if-ltz v4, :cond_f

    .line 1999
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 1995
    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 2004
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_10
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "pairwise"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2006
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_12

    .line 2007
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2008
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_c
    if-ge v3, v5, :cond_12

    aget-object v7, v0, v3

    .line 2009
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2011
    .restart local v4       #index:I
    if-ltz v4, :cond_11

    .line 2012
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 2008
    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2017
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_12
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "group"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2019
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_14

    .line 2020
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 2021
    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v5, :cond_14

    aget-object v7, v0, v3

    .line 2022
    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .line 2024
    .restart local v4       #index:I
    if-ltz v4, :cond_13

    .line 2025
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    .line 2021
    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 2030
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_14
    const-string v10, "WifiService"

    const-string v11, "***WAPI : readNetworkVariables testing for WAPI"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_18

    .line 2033
    const-string v10, "WifiService"

    const-string v11, "***WAPI : readNetworkVariables WAPI_PSK"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2035
    const-string v10, "psk_key_type"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2036
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I

    .line 2037
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_PSK type = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2038
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    .line 2040
    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 2074
    :cond_15
    :goto_e
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_f
    if-ge v3, v5, :cond_0

    aget-object v1, v0, v3

    .line 2075
    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2077
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_17

    .line 2078
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_16

    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2079
    :cond_16
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    .line 2074
    :cond_17
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 2044
    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_18
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_15

    .line 2045
    const-string v10, "WifiService"

    const-string v11, "***WAPI : readNetworkVariables WAPI_CERT"

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    const-string v10, "cert_index"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2048
    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    .line 2049
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT index "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_19

    .line 2052
    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    .line 2056
    :cond_19
    :goto_10
    const-string v10, "wapi_as_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2057
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT as cert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2058
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    .line 2059
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    .line 2063
    :goto_11
    const-string v10, "wapi_user_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 2064
    const-string v10, "WifiService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "***WAPI : readNetworkVariables WAPI_CERT user cert "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    .line 2066
    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_e

    .line 2061
    :cond_1a
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_11

    .line 2068
    :cond_1b
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_e

    .line 2053
    :catch_0
    move-exception v10

    goto :goto_10

    .line 2041
    :catch_1
    move-exception v10

    goto/16 :goto_e

    .line 1937
    .end local v2           #i:I
    :catch_2
    move-exception v10

    goto/16 :goto_5

    .line 1928
    :catch_3
    move-exception v10

    goto/16 :goto_4

    .line 1919
    :catch_4
    move-exception v10

    goto/16 :goto_2
.end method

.method private readWifiApConfigBlocked()V
    .locals 9

    .prologue
    .line 1646
    const/4 v3, 0x0

    .line 1648
    .local v3, in:Ljava/io/DataInputStream;
    :try_start_0
    new-instance v1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1649
    .local v1, config:Landroid/net/wifi/WifiConfiguration;
    new-instance v4, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/BufferedInputStream;

    new-instance v7, Ljava/io/FileInputStream;

    sget-object v8, Lcom/android/server/WifiService;->WIFIAP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    .line 1652
    .end local v3           #in:Ljava/io/DataInputStream;
    .local v4, in:Ljava/io/DataInputStream;
    :try_start_1
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    .line 1653
    .local v5, version:I
    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    .line 1654
    const-string v6, "WifiService"

    const-string v7, "Bad version on hotspot configuration file, set defaults"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    invoke-direct {p0}, Lcom/android/server/WifiService;->setDefaultWifiApConfiguration()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1675
    if-eqz v4, :cond_0

    .line 1677
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_0
    move-object v3, v4

    .line 1681
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :cond_1
    :goto_1
    return-void

    .line 1658
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :cond_2
    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1659
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 1660
    .local v0, authType:I
    iget-object v6, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->set(I)V

    .line 1661
    if-eqz v0, :cond_3

    .line 1662
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1669
    :cond_3
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiApConfigLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1670
    :try_start_4
    iput-object v1, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1671
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1675
    if-eqz v4, :cond_5

    .line 1677
    :try_start_5
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    move-object v3, v4

    .line 1678
    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1671
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_0
    move-exception v7

    :try_start_6
    monitor-exit v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1672
    .end local v0           #authType:I
    .end local v5           #version:I
    :catch_0
    move-exception v6

    move-object v2, v6

    move-object v3, v4

    .line 1673
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .local v2, ignore:Ljava/io/IOException;
    .restart local v3       #in:Ljava/io/DataInputStream;
    :goto_2
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/WifiService;->setDefaultWifiApConfiguration()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1675
    if-eqz v3, :cond_1

    .line 1677
    :try_start_9
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1

    .line 1678
    :catch_1
    move-exception v6

    goto :goto_1

    .end local v2           #ignore:Ljava/io/IOException;
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v0       #authType:I
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :catch_2
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1

    .line 1675
    .end local v0           #authType:I
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v5           #version:I
    :catchall_1
    move-exception v6

    :goto_3
    if-eqz v3, :cond_4

    .line 1677
    :try_start_a
    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    .line 1678
    :cond_4
    :goto_4
    throw v6

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :catch_3
    move-exception v6

    goto :goto_0

    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #in:Ljava/io/DataInputStream;
    .end local v5           #version:I
    .restart local v3       #in:Ljava/io/DataInputStream;
    :catch_4
    move-exception v7

    goto :goto_4

    .line 1675
    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    :catchall_2
    move-exception v6

    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_3

    .line 1672
    .end local v1           #config:Landroid/net/wifi/WifiConfiguration;
    :catch_5
    move-exception v6

    move-object v2, v6

    goto :goto_2

    .end local v3           #in:Ljava/io/DataInputStream;
    .restart local v0       #authType:I
    .restart local v1       #config:Landroid/net/wifi/WifiConfiguration;
    .restart local v4       #in:Ljava/io/DataInputStream;
    .restart local v5       #version:I
    :cond_5
    move-object v3, v4

    .end local v4           #in:Ljava/io/DataInputStream;
    .restart local v3       #in:Ljava/io/DataInputStream;
    goto :goto_1
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 3301
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 3302
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3303
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3304
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3305
    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3306
    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3308
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 3310
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 3311
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 3786
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$4500(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .line 3788
    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .line 3792
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3794
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 3795
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3796
    iget v4, v3, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 3810
    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3817
    :goto_2
    return v0

    .line 3790
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 3798
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3812
    :catch_0
    move-exception v4

    .line 3814
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2

    .line 3801
    :pswitch_1
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 3814
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 3804
    :pswitch_2
    :try_start_3
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 3796
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const/4 v2, 0x1

    .line 2085
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

    .line 2086
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removeMulticasterLocked(II)V
    .locals 5
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 3923
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 3925
    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    .line 3926
    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 3928
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 3929
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    .line 3932
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3934
    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3937
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3939
    :goto_0
    return-void

    .line 3935
    :catch_0
    move-exception v2

    .line 3937
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private reportStartWorkSource()V
    .locals 4

    .prologue
    .line 3222
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    .line 3223
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    .line 3224
    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    .line 3225
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3226
    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    .line 3225
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3229
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    .line 3230
    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3231
    monitor-exit v2

    .line 3232
    return-void

    .line 3231
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "uid"

    .prologue
    .line 3193
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3196
    return-void

    .line 3193
    :cond_0
    const/4 v1, 0x7

    goto :goto_0
.end method

.method private sendEnableMessage(ZZI)V
    .locals 5
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3182
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    if-eqz p2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v2, v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .line 3185
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3186
    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    move v2, v4

    .line 3182
    goto :goto_0
.end method

.method private sendEnableNetworksMessage()V
    .locals 2

    .prologue
    .line 3199
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3200
    return-void
.end method

.method private sendEnableRssiPollingMessage(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    .line 3207
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xc

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3208
    return-void

    :cond_0
    move v2, v3

    .line 3207
    goto :goto_0
.end method

.method private sendGroupFormationMessage(ZLjava/lang/String;)V
    .locals 2
    .parameter "enable"
    .parameter "mSSID"

    .prologue
    .line 3217
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/16 v1, 0x19

    :goto_0
    invoke-static {v0, v1, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3219
    return-void

    .line 3217
    :cond_0
    const/16 v1, 0x1a

    goto :goto_0
.end method

.method private sendReportWorkSourceMessage()V
    .locals 2

    .prologue
    .line 3203
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3204
    return-void
.end method

.method private sendStartMessage(I)V
    .locals 3
    .parameter "lockMode"

    .prologue
    .line 3189
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3190
    return-void
.end method

.method private sendWiFiDirectMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    .locals 3
    .parameter "enable"
    .parameter "wifiConfig"
    .parameter "intent"

    .prologue
    .line 3211
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/16 v1, 0x15

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3214
    return-void

    .line 3211
    :cond_0
    const/16 v1, 0x16

    goto :goto_0
.end method

.method private setDefaultWifiApConfiguration()V
    .locals 6

    .prologue
    .line 1600
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiApConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1601
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v4, 0x10403bf

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1602
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1603
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1605
    .local v0, randomUUID:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    const/16 v5, 0x8

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x9

    const/16 v5, 0xd

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1609
    monitor-exit v1

    .line 1610
    return-void

    .line 1609
    .end local v0           #randomUUID:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setNumAllowedChannelsBlocking(IZ)Z
    .locals 2
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    .line 2926
    if-eqz p2, :cond_0

    .line 2927
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_allowed_channels"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2931
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z

    move-result v0

    return v0
.end method

.method private setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 10
    .parameter "enable"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    const/4 v4, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v6, 0x0

    const-string v7, "WifiService"

    .line 1694
    if-eqz p1, :cond_0

    move v2, v4

    .line 1696
    .local v2, eventualWifiApState:I
    :goto_0
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v3, v2, :cond_2

    .line 1698
    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    .line 1700
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wl0.1"

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1702
    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v9

    .line 1779
    :goto_1
    return v3

    .end local v2           #eventualWifiApState:I
    :cond_0
    move v2, v9

    .line 1694
    goto :goto_0

    .line 1704
    .restart local v2       #eventualWifiApState:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 1705
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in nwService during AP restart"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :try_start_1
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1711
    :goto_2
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1712
    goto :goto_1

    .line 1708
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 1709
    .local v1, ee:Ljava/lang/Exception;
    const-string v3, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not stop AP, :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    :cond_1
    move v3, v9

    .line 1715
    goto :goto_1

    .line 1722
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    if-ne v3, v4, :cond_3

    if-eqz p1, :cond_3

    .line 1723
    const-string v3, "WifiService"

    const-string v3, "WiFi is Enabled, Mobile AP could not turn on."

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1724
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1725
    goto :goto_1

    .line 1728
    :cond_3
    if-eqz p1, :cond_5

    const/4 v3, 0x2

    :goto_3
    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v3, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .line 1731
    if-eqz p1, :cond_8

    .line 1734
    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    .line 1736
    :cond_4
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v3

    if-nez v3, :cond_6

    .line 1737
    const-string v3, "WifiService"

    const-string v3, "Failed to load Wi-Fi driver for AP mode"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1739
    goto :goto_1

    :cond_5
    move v3, v6

    .line 1728
    goto :goto_3

    .line 1743
    :cond_6
    :try_start_2
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "wl0.1"

    invoke-interface {v3, p3, v4, v5}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1755
    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    .line 1778
    :cond_7
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v2, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v9

    .line 1779
    goto/16 :goto_1

    .line 1749
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 1750
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in startAccessPoint()"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1751
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1752
    goto/16 :goto_1

    .line 1760
    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v3, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v3}, Landroid/os/INetworkManagementService;->stopAccessPoint()V

    .line 1763
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 1771
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v3

    if-nez v3, :cond_7

    .line 1772
    const-string v3, "WifiService"

    const-string v3, "Failed to unload Wi-Fi driver for AP mode"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1773
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1774
    goto/16 :goto_1

    .line 1765
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 1766
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v3, "WifiService"

    const-string v3, "Exception in stopAccessPoint()"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    sget-object v3, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v3, v6

    .line 1768
    goto/16 :goto_1
.end method

.method private setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V
    .locals 7
    .parameter "wifiAPState"
    .parameter "uid"
    .parameter "flag"

    .prologue
    .line 1796
    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiApEnabledState  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1797
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 1802
    .local v3, previousWifiApState:I
    iget v4, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    if-ne p3, v4, :cond_0

    .line 1803
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    .line 1806
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1808
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    .line 1809
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1815
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1819
    :goto_1
    iput p1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .line 1822
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1823
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1824
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1825
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1826
    const-string v4, "wifi_enable_soon"

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1827
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    .line 1828
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1829
    return-void

    .line 1810
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    .line 1811
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1813
    :catch_0
    move-exception v4

    .line 1815
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setWifiDirectEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 6
    .parameter "enable"
    .parameter "intent"
    .parameter "config"

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "WifiService"

    .line 991
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 992
    const-string v1, "WifiService"

    const-string v1, "setWifiDirectEnabledBlocking is called. But, wifi interface is down. Skip."

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1018
    :goto_0
    return v1

    .line 995
    :cond_0
    if-eqz p1, :cond_1

    .line 997
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1, p3, p2}, Landroid/os/INetworkManagementService;->startWifiDirect(Landroid/net/wifi/WifiConfiguration;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v1, v5

    .line 1018
    goto :goto_0

    .line 999
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1000
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in startWifiDirect()"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1001
    goto :goto_0

    .line 1006
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isGOCreated()Z

    move-result v1

    if-ne v1, v5, :cond_2

    .line 1007
    invoke-direct {p0}, Lcom/android/server/WifiService;->DisableDnsmasq()V

    .line 1009
    :cond_2
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopWifiDirect()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 1012
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 1013
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in stopWifiDirect()"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1014
    goto :goto_0
.end method

.method private setWifiEnabledBlocking(ZZI)Z
    .locals 11
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    .line 855
    if-eqz p1, :cond_0

    const/4 v6, 0x3

    move v2, v6

    .line 856
    .local v2, eventualWifiState:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v5

    .line 858
    .local v5, wifiState:I
    if-ne v5, v2, :cond_1

    .line 859
    const/4 v6, 0x1

    .line 978
    :goto_1
    return v6

    .line 855
    .end local v2           #eventualWifiState:I
    .end local v5           #wifiState:I
    :cond_0
    const/4 v6, 0x1

    move v2, v6

    goto :goto_0

    .line 861
    .restart local v2       #eventualWifiState:I
    .restart local v5       #wifiState:I
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v6, :cond_2

    .line 862
    const/4 v6, 0x0

    goto :goto_1

    .line 872
    :cond_2
    const/4 v6, 0x4

    if-ne v5, v6, :cond_3

    if-nez p1, :cond_3

    .line 873
    const/4 v6, 0x0

    goto :goto_1

    .line 881
    :cond_3
    iget v6, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_4

    if-eqz p1, :cond_4

    .line 882
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 883
    const/4 v6, 0x0

    goto :goto_1

    .line 886
    :cond_4
    if-eqz p1, :cond_5

    const/4 v6, 0x2

    :goto_2
    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 888
    if-eqz p1, :cond_a

    .line 889
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v6

    if-nez v6, :cond_6

    .line 890
    const-string v6, "WifiService"

    const-string v7, "Failed to load Wi-Fi driver."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 892
    const/4 v6, 0x0

    goto :goto_1

    .line 886
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 901
    :cond_6
    invoke-direct {p0}, Lcom/android/server/WifiService;->getWifiDirectConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 902
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "direct_intent"

    const/16 v8, 0xa

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 904
    .local v4, intent:I
    const/4 v6, 0x1

    invoke-virtual {p0, v6, v0, v4}, Lcom/android/server/WifiService;->setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z

    .line 906
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->startSupplicant()Z

    move-result v6

    if-nez v6, :cond_7

    .line 907
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    .line 908
    const-string v6, "WifiService"

    const-string v7, "Failed to start supplicant daemon."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 910
    const/4 v6, 0x0

    goto :goto_1

    .line 914
    :cond_7
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    .line 916
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->startEventLoop()V

    .line 974
    .end local v0           #directConfig:Landroid/net/wifi/WifiConfiguration;
    .end local v4           #intent:I
    :cond_8
    if-eqz p2, :cond_9

    .line 975
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    .line 977
    :cond_9
    invoke-direct {p0, v2, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 978
    const/4 v6, 0x1

    goto/16 :goto_1

    .line 921
    :cond_a
    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v6, v7}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 924
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    .line 932
    :try_start_0
    const-string v6, "WifiService"

    const-string v7, "Start  ----- stopWifiDirect"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    invoke-virtual {p0}, Lcom/android/server/WifiService;->isGOCreated()Z

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_b

    .line 934
    invoke-direct {p0}, Lcom/android/server/WifiService;->DisableDnsmasq()V

    .line 937
    :cond_b
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/WifiService;->setWifiDirectSetting(Z)Z

    .line 938
    iget-object v6, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v6}, Landroid/os/INetworkManagementService;->stopWifiDirect()Z

    .line 940
    const-string v6, "WifiService"

    const-string v7, "End    ----- stopWifiDirect"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    const/4 v3, 0x0

    .line 948
    .local v3, failedToStopSupplicantOrUnloadDriver:Z
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->stopSupplicant()Z

    move-result v6

    if-nez v6, :cond_c

    .line 949
    const-string v6, "WifiService"

    const-string v7, "Failed to stop supplicant daemon."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 951
    const/4 v3, 0x1

    .line 958
    :cond_c
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    .line 960
    iget-object v6, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v6}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v6

    if-nez v6, :cond_d

    .line 961
    const-string v6, "WifiService"

    const-string v7, "Failed to unload Wi-Fi driver."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    if-nez v3, :cond_d

    .line 963
    const/4 v6, 0x4

    invoke-direct {p0, v6, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    .line 964
    const/4 v3, 0x1

    .line 968
    :cond_d
    if-eqz v3, :cond_8

    .line 969
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 941
    .end local v3           #failedToStopSupplicantOrUnloadDriver:Z
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 942
    .local v1, e:Ljava/lang/Exception;
    const-string v6, "WifiService"

    const-string v7, "Exception in stopWifiDirect()"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private setWifiEnabledState(II)V
    .locals 5
    .parameter "wifiState"
    .parameter "uid"

    .prologue
    .line 1023
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    .line 1025
    .local v3, previousWifiState:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1027
    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    .line 1028
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1034
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1038
    :goto_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    .line 1041
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1042
    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1043
    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1044
    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1045
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1046
    return-void

    .line 1029
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    .line 1030
    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1032
    :catch_0
    move-exception v4

    .line 1034
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 1
    .parameter "wifiState"

    .prologue
    .line 3562
    packed-switch p0, :pswitch_data_0

    .line 3574
    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    .line 3564
    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    .line 3566
    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    .line 3568
    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    .line 3570
    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    .line 3572
    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

    .line 3562
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private testAndClearWifiSavedState()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v2, "wifi_saved_state"

    .line 635
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 636
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 638
    .local v1, wifiSavedState:I
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    .line 639
    if-ne v1, v4, :cond_0

    .line 640
    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 644
    :cond_0
    :goto_0
    if-ne v1, v4, :cond_1

    move v2, v4

    :goto_1
    return v2

    :cond_1
    move v2, v5

    goto :goto_1

    .line 641
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 20
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 478
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 479
    .local v16, wifiTethered:Z
    const/4 v15, 0x0

    .line 481
    .local v15, wifiAvailable:Z
    const-string v17, "network_management"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .line 482
    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v14

    .line 484
    .local v14, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const-string v18, "connectivity"

    invoke-virtual/range {v17 .. v18}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    .line 487
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 488
    .local v11, intf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    move-object v4, v0

    .local v4, arr$:[Ljava/lang/String;
    array-length v12, v4

    .local v12, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v12, :cond_0

    aget-object v13, v4, v9

    .line 489
    .local v13, regex:Ljava/lang/String;
    invoke-virtual {v11, v13}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 491
    const/4 v10, 0x0

    .line 493
    .local v10, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    invoke-interface {v14, v11}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v10

    .line 494
    if-eqz v10, :cond_1

    .line 496
    const v17, -0x3f57d4ff

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    .line 497
    const/16 v17, -0x100

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Landroid/net/InterfaceConfiguration;->netmask:I

    .line 498
    const-string v17, "up"

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 500
    invoke-interface {v14, v11, v10}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 513
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v17

    if-eqz v17, :cond_0

    .line 514
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error tethering "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 502
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 503
    .local v6, e:Ljava/lang/Exception;
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error configuring interface "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Landroid/os/INetworkManagementService;->stopAccessPoint()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 509
    :goto_2
    const/16 v17, 0x4

    const/16 v18, 0x0

    sget-object v19, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .line 520
    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #e:Ljava/lang/Exception;
    .end local v9           #i$:I
    .end local v10           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v11           #intf:Ljava/lang/String;
    .end local v12           #len$:I
    .end local v13           #regex:Ljava/lang/String;
    :cond_2
    return-void

    .line 506
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #e:Ljava/lang/Exception;
    .restart local v9       #i$:I
    .restart local v10       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v11       #intf:Ljava/lang/String;
    .restart local v12       #len$:I
    .restart local v13       #regex:Ljava/lang/String;
    :catch_1
    move-exception v17

    move-object/from16 v7, v17

    .line 507
    .local v7, ee:Ljava/lang/Exception;
    const-string v17, "WifiService"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Could not stop AP, :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 488
    .end local v6           #e:Ljava/lang/Exception;
    .end local v7           #ee:Ljava/lang/Exception;
    .end local v10           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1
.end method

.method private updateWifiState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3236
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3237
    return-void
.end method

.method private writeWifiApConfigBlocked(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "wifiConfig"

    .prologue
    .line 1613
    const/4 v1, 0x0

    .line 1615
    .local v1, out:Ljava/io/DataOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/BufferedOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v5, Lcom/android/server/WifiService;->WIFIAP_CONFIG_FILE:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 1618
    .end local v1           #out:Ljava/io/DataOutputStream;
    .local v2, out:Ljava/io/DataOutputStream;
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1619
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1620
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1621
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 1622
    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 1631
    :goto_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiApConfigLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1632
    :try_start_2
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    .line 1633
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1637
    if-eqz v2, :cond_3

    .line 1639
    :try_start_3
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v1, v2

    .line 1643
    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :cond_0
    :goto_1
    return-void

    .line 1624
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_1
    const/4 v3, 0x0

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 1634
    :catch_0
    move-exception v3

    move-object v0, v3

    move-object v1, v2

    .line 1635
    .end local v2           #out:Ljava/io/DataOutputStream;
    .local v0, e:Ljava/io/IOException;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :goto_2
    :try_start_5
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error writing hotspot configuration"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1637
    if-eqz v1, :cond_0

    .line 1639
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 1640
    :catch_1
    move-exception v3

    goto :goto_1

    .line 1633
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v4

    :try_start_7
    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 1637
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    :goto_3
    if-eqz v1, :cond_2

    .line 1639
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1640
    :cond_2
    :goto_4
    throw v3

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :catch_2
    move-exception v3

    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1

    :catch_3
    move-exception v4

    goto :goto_4

    .line 1637
    :catchall_2
    move-exception v3

    goto :goto_3

    .line 1634
    :catch_4
    move-exception v3

    move-object v0, v3

    goto :goto_2

    .end local v1           #out:Ljava/io/DataOutputStream;
    .restart local v2       #out:Ljava/io/DataOutputStream;
    :cond_3
    move-object v1, v2

    .end local v2           #out:Ljava/io/DataOutputStream;
    .restart local v1       #out:Ljava/io/DataOutputStream;
    goto :goto_1
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 3883
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3885
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v2

    .line 3886
    :try_start_0
    iget v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    .line 3887
    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3892
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->stopPacketFiltering()Z

    .line 3893
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3895
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3896
    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 3898
    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3901
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3903
    :goto_0
    return-void

    .line 3893
    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 3899
    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catch_0
    move-exception v2

    .line 3901
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 3663
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3664
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 3667
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3669
    const/4 v1, 0x0

    .line 3682
    :goto_0
    return v1

    .line 3671
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 3672
    const/4 p4, 0x0

    .line 3674
    :cond_1
    if-eqz p4, :cond_2

    .line 3675
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 3677
    :cond_2
    if-nez p4, :cond_3

    .line 3678
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 3680
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 3681
    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    .line 3682
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 3683
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 23
    .parameter "config"

    .prologue
    .line 2099
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2108
    if-nez p1, :cond_0

    .line 2109
    const/16 v20, -0x1

    .line 2402
    :goto_0
    return v20

    .line 2112
    :cond_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    .line 2113
    .local v16, netId:I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    const/16 v20, 0x1

    move/from16 v17, v20

    .line 2114
    .local v17, newNetwork:Z
    :goto_1
    const/4 v10, 0x0

    .line 2116
    .local v10, doReconfig:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    monitor-enter v20

    .line 2117
    if-eqz v17, :cond_3

    .line 2118
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiStateTracker;->addNetwork()I

    move-result v16

    .line 2119
    if-gez v16, :cond_2

    .line 2123
    const/16 v21, -0x1

    monitor-exit v20

    move/from16 v20, v21

    goto :goto_0

    .line 2113
    .end local v10           #doReconfig:Z
    .end local v17           #newNetwork:Z
    :cond_1
    const/16 v20, 0x0

    move/from16 v17, v20

    goto :goto_1

    .line 2125
    .restart local v10       #doReconfig:Z
    .restart local v17       #newNetwork:Z
    :cond_2
    const/4 v10, 0x1

    .line 2127
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    move/from16 v21, v0

    if-nez v21, :cond_4

    if-eqz v10, :cond_7

    :cond_4
    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 2128
    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2137
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "ssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_8

    .line 2394
    :cond_5
    :goto_3
    if-eqz v17, :cond_6

    .line 2395
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService;->removeNetwork(I)Z

    .line 2402
    :cond_6
    const/16 v20, -0x1

    goto :goto_0

    .line 2127
    :cond_7
    const/16 v21, 0x0

    goto :goto_2

    .line 2128
    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    .line 2148
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "bssid"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2159
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2161
    .local v6, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "key_mgmt"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2173
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2175
    .local v8, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proto"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2187
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_11

    .line 2188
    const-string v20, "WifiService"

    const-string v21, "***WAPI:addOrUpdateNetwork WAPI PSK"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2189
    const-string v20, "psk_key_type"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPSKKeyType:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2202
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_c

    const-string v20, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2266
    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2268
    .local v7, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "pairwise"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2280
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2282
    .local v5, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "group"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2296
    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_f

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2307
    :cond_f
    const/4 v12, 0x0

    .line 2308
    .local v12, hasSetKey:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_14

    .line 2309
    const/4 v13, 0x0

    .local v13, i:I
    :goto_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    move v0, v13

    move/from16 v1, v20

    if-ge v0, v1, :cond_14

    .line 2312
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    if-eqz v20, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

    .line 2313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v21, v21, v13

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v22, v0

    aget-object v22, v22, v13

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2324
    const/4 v12, 0x1

    .line 2309
    :cond_10
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 2212
    .end local v5           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v7           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v12           #hasSetKey:Z
    .end local v13           #i:I
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_13

    .line 2213
    const-string v20, "WifiService"

    const-string v21, "***WAPI:addOrUpdateNetwork WAPI CERT"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    const-string v20, "cert_index"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2227
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_12

    const-string v20, "wapi_as_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2238
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_c

    const-string v20, "wapi_user_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    goto/16 :goto_3

    .line 2249
    :cond_13
    const-string v20, "WifiService"

    const-string v21, "***WAPI:addOrUpdateNetwork rest"

    invoke-static/range {v20 .. v21}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2253
    .local v4, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "auth_alg"

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_c

    goto/16 :goto_3

    .line 2329
    .end local v4           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .restart local v5       #allowedGroupCiphersString:Ljava/lang/String;
    .restart local v7       #allowedPairwiseCiphersString:Ljava/lang/String;
    .restart local v12       #hasSetKey:Z
    :cond_14
    if-eqz v12, :cond_15

    .line 2330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wep_tx_keyidx"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2343
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "priority"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2354
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v20, v0

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_19

    const/16 v22, 0x1

    :goto_5
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2366
    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object v9, v0

    .local v9, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_6
    if-ge v14, v15, :cond_1b

    aget-object v11, v9, v14

    .line 2367
    .local v11, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v19

    .line 2368
    .local v19, varName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v18

    .line 2369
    .local v18, value:Ljava/lang/String;
    if-eqz v18, :cond_18

    .line 2370
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_17

    .line 2371
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1a

    const-string v20, "NULL"

    move-object/from16 v18, v20

    .line 2373
    :cond_17
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v19

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_5

    .line 2366
    :cond_18
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 2354
    .end local v9           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_19
    const/16 v22, 0x0

    goto :goto_5

    .line 2371
    .restart local v9       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v11       #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #value:Ljava/lang/String;
    .restart local v19       #varName:Ljava/lang/String;
    :cond_1a
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    goto :goto_7

    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_1b
    move/from16 v20, v16

    .line 2385
    goto/16 :goto_0
.end method

.method public configureDirectPeerInterface()V
    .locals 10

    .prologue
    const-string v9, "WifiService"

    .line 523
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 525
    const/4 v6, 0x0

    .line 526
    .local v6, wifiTethered:Z
    const/4 v5, 0x0

    .line 528
    .local v5, wifiAvailable:Z
    const-string v7, "network_management"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 529
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v4

    .line 532
    .local v4, service:Landroid/os/INetworkManagementService;
    :try_start_0
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    .line 533
    const-string v7, "WifiService"

    const-string v8, "[configureDirectPeerInterface][Direct Client is Created.] "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :goto_0
    return-void

    .line 537
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 538
    .local v1, e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    const-string v7, "[configureDirectPeerInterface] Error configuring interface "

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v1           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    .line 542
    iget-object v7, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v8, 0x1040487

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 544
    .local v3, intf:Ljava/lang/String;
    const-string v7, "WifiService"

    const-string v7, "[1][ConfigureDirectPeerInterface] "

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/4 v2, 0x0

    .line 547
    .local v2, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v2

    .line 548
    if-eqz v2, :cond_1

    .line 549
    const-string v7, "up"

    iput-object v7, v2, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    .line 550
    const-string v7, "WifiService"

    const-string v8, "[2][ConfigureDirectPeerInterface ------ ] "

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    iget-object v7, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v7, v3, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 557
    :cond_1
    :goto_1
    const-string v7, "WifiService"

    const-string v7, "[3][ConfigureDirectPeerInterface ------ ] "

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 554
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 555
    .restart local v1       #e:Ljava/lang/Exception;
    const-string v7, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[2-1]Error configuring interface "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "macAddr"
    .parameter "pin"

    .prologue
    const-string v1, "WifiService"

    .line 1336
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1338
    :try_start_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start    ----- connectPeerWithProvision : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1, p2}, Landroid/os/INetworkManagementService;->connectPeerWithProvision(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    const-string v2, "WifiService"

    const-string v3, "end    ----- connectPeerWithProvision"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    :try_start_1
    monitor-exit v1

    .line 1346
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1341
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1342
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in connectPeerWithProvision() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1343
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1345
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public connectToP2PNetwork(Ljava/lang/String;)Z
    .locals 5
    .parameter "DevAddr"

    .prologue
    const-string v1, "WifiService"

    .line 1322
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1324
    :try_start_0
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start, connectToP2PNetwork : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->connectPeer(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1330
    :try_start_1
    monitor-exit v1

    .line 1331
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1326
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1327
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in connectToP2PNetwork() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1330
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public disableNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    .line 2482
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2484
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    .line 1499
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1501
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    move-result v0

    return v0
.end method

.method public disconnectWifiDirectPeer(Ljava/lang/String;)Z
    .locals 3
    .parameter "macAddr"

    .prologue
    .line 1283
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disconnectWifiDirectPeer...... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1286
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1290
    :goto_0
    return v0

    .line 1288
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x1b

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1290
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    const-string v10, " scan"

    const-string v9, " full, "

    const-string v8, " full high perf, "

    .line 3520
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 3522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3559
    :goto_0
    return-void

    .line 3527
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v4

    invoke-static {v4}, Lcom/android/server/WifiService;->stateName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3528
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3531
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3533
    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3534
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 3535
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3536
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3537
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 3538
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 3539
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3540
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 3541
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v3, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v5, v4, v7

    const/4 v5, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v6, :cond_1

    const-string v6, ""

    :goto_2
    aput-object v6, v4, v5

    invoke-virtual {p2, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 3549
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3550
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3553
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3556
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 3557
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3558
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$3600(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 3
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 2464
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2466
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .line 2467
    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    .line 2468
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateTracker;->enableNetwork(IZ)Z

    move-result v1

    .line 2469
    .local v1, result:Z
    if-nez v1, :cond_0

    .line 2470
    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    .line 2472
    :cond_0
    return v1
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 3655
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 3660
    :goto_0
    return-void

    .line 3658
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, -0x1

    const/4 v9, 0x3

    .line 1836
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1845
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->listNetworks()Ljava/lang/String;

    move-result-object v4

    .line 1847
    .local v4, listStr:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1849
    .local v5, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_1

    .line 1877
    :cond_0
    return-object v5

    .line 1852
    :cond_1
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1854
    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    .line 1855
    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 1857
    .local v6, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1859
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    array-length v7, v6

    if-le v7, v9, :cond_4

    .line 1864
    aget-object v7, v6, v9

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    .line 1865
    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    .line 1873
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    .line 1874
    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1854
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1860
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 1861
    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_2

    .line 1866
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    aget-object v7, v6, v9

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_3

    .line 1867
    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 1869
    :cond_3
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    .line 1871
    :cond_4
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 2492
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2497
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceInfoLists()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "WifiService"

    .line 1249
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1251
    :try_start_0
    const-string v1, "WifiService"

    const-string v2, "Start  ----- getDeviceInfoLists"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getDeviceInfoLists()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1255
    :goto_0
    return-object v1

    .line 1253
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1254
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in getDeviceInfoLists()"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    .line 2974
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2975
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDirectWpsPin()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "WifiService"

    .line 1260
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1262
    :try_start_0
    const-string v1, "WifiService"

    const-string v2, "Start  ----- getDirectWpsPin"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->getDirectWpsPin()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1266
    :goto_0
    return-object v1

    .line 1264
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1265
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in getDirectWpsPin()"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    const/4 v1, 0x0

    goto :goto_0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getNumAllowedChannels()I
    .locals 4

    .prologue
    .line 2942
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2949
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->getNumAllowedChannels()I

    move-result v0

    .line 2950
    .local v0, numChannels:I
    if-gez v0, :cond_0

    .line 2951
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_num_allowed_channels"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 2955
    :cond_0
    return v0
.end method

.method public getNumberOfWAPIASCertificate()I
    .locals 1

    .prologue
    .line 3950
    invoke-static {}, Landroid/net/wifi/WifiNative;->getWAPIASCertCount()I

    move-result v0

    return v0
.end method

.method public getNumberOfWAPIUserCertificate()I
    .locals 1

    .prologue
    .line 3958
    invoke-static {}, Landroid/net/wifi/WifiNative;->getWAPIUserCertCount()I

    move-result v0

    return v0
.end method

.method public getP2PScanResults()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    .line 2682
    iget-object v9, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v9

    .line 2685
    :try_start_0
    iget-object v10, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v10}, Landroid/os/INetworkManagementService;->getDeviceInfoLists()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 2692
    .local v5, reply:Ljava/lang/String;
    :try_start_1
    monitor-exit v9

    .line 2693
    if-nez v5, :cond_0

    move-object v9, v12

    .line 2719
    .end local v5           #reply:Ljava/lang/String;
    :goto_0
    return-object v9

    .line 2688
    :catch_0
    move-exception v10

    move-object v0, v10

    .line 2689
    .local v0, e:Ljava/lang/Exception;
    const-string v10, "WifiService"

    const-string v11, "Exception in getP2PScanResults()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2690
    monitor-exit v9

    move-object v9, v12

    goto :goto_0

    .line 2692
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 2697
    .restart local v5       #reply:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2700
    .local v7, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v3, 0x0

    .line 2701
    .local v3, lineCount:I
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    .line 2703
    .local v6, replyLen:I
    const/4 v2, 0x0

    .local v2, lineBeg:I
    const/4 v4, 0x0

    .local v4, lineEnd:I
    :goto_1
    if-gt v4, v6, :cond_4

    .line 2704
    if-eq v4, v6, :cond_1

    invoke-virtual {v5, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_3

    .line 2705
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 2707
    if-le v4, v2, :cond_2

    .line 2708
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2709
    .local v1, line:Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/server/WifiService;->parseP2PScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v8

    .line 2710
    .local v8, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v8, :cond_2

    .line 2711
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2716
    .end local v1           #line:Ljava/lang/String;
    .end local v8           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_2
    add-int/lit8 v2, v4, 0x1

    .line 2703
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move-object v9, v7

    .line 2719
    goto :goto_0
.end method

.method public getPER()I
    .locals 1

    .prologue
    .line 1427
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1428
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPerCommand()I

    move-result v0

    return v0
.end method

.method public getRoamDelta()I
    .locals 1

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1464
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRoamDeltaCommand()I

    move-result v0

    return v0
.end method

.method public getRoamScanPeriod()I
    .locals 1

    .prologue
    .line 1481
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1482
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRoamScanPeriodCommand()I

    move-result v0

    return v0
.end method

.method public getRoamTrigger()I
    .locals 1

    .prologue
    .line 1445
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1446
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRoamTriggerCommand()I

    move-result v0

    return v0
.end method

.method public getScanResults()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2547
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2550
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->scanResults()Ljava/lang/String;

    move-result-object v4

    .line 2551
    .local v4, reply:Ljava/lang/String;
    if-nez v4, :cond_0

    .line 2552
    const/4 v8, 0x0

    .line 2585
    :goto_0
    return-object v8

    .line 2555
    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2557
    .local v6, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .line 2559
    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .line 2562
    .local v5, replyLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v5, :cond_5

    .line 2563
    if-eq v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    .line 2564
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 2568
    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    .line 2569
    add-int/lit8 v1, v3, 0x1

    .line 2562
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2572
    :cond_3
    if-le v3, v1, :cond_4

    .line 2573
    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2574
    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v7

    .line 2575
    .local v7, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_4

    .line 2576
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2581
    .end local v0           #line:Ljava/lang/String;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    .line 2584
    :cond_5
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateTracker;->setScanResultsList(Ljava/util/List;)V

    move-object v8, v6

    .line 2585
    goto :goto_0
.end method

.method public getValidChannelCounts()[I
    .locals 1

    .prologue
    .line 2964
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 2965
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-object v0
.end method

.method public getWAPIASCertificateName(I)Ljava/lang/String;
    .locals 1
    .parameter "iIndex"

    .prologue
    .line 3954
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->getWAPIASCertName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWAPIUserCertificateName(I)Ljava/lang/String;
    .locals 1
    .parameter "iIndex"

    .prologue
    .line 3962
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->getWAPIUserCertName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 4

    .prologue
    .line 1566
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1567
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiApConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1568
    :try_start_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 1569
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 1570
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1571
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    .line 1583
    :goto_0
    return-object v1

    .line 1572
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1573
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 1574
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 1583
    :goto_1
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 1576
    :cond_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    goto :goto_1

    .line 1584
    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 1791
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1792
    iget v0, p0, Lcom/android/server/WifiService;->mWifiApState:I

    return v0
.end method

.method public getWifiDirectSetting()Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "direct_on"

    .line 1117
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1119
    const/4 v2, 0x0

    .line 1120
    .local v2, mDirect:I
    const/16 v3, 0x64

    .line 1123
    .local v3, mDirectDefault:I
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1124
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "direct_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    .line 1126
    if-ne v2, v3, :cond_0

    .line 1128
    const/4 v2, 0x0

    .line 1129
    :try_start_1
    const-string v4, "direct_on"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1130
    const-string v4, "WifiService"

    const-string v5, "---- getWifiDirectSetting.....set.... ........."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1138
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    if-ne v2, v7, :cond_1

    move v4, v7

    :goto_1
    return v4

    .line 1131
    .restart local v0       #cr:Landroid/content/ContentResolver;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/NumberFormatException;
    move v4, v6

    .line 1132
    goto :goto_1

    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_1
    move v4, v6

    .line 1138
    goto :goto_1

    .line 1135
    :catch_1
    move-exception v4

    goto :goto_0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 1417
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1418
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 3870
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3872
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 3874
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 3875
    monitor-exit v0

    .line 3880
    :goto_0
    return-void

    .line 3877
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    .line 3879
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isDirectConnected()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1176
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGOCreated()Z

    move-result v1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGcCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    move v1, v2

    .line 1183
    :goto_0
    return v1

    :cond_1
    move v1, v3

    .line 1179
    goto :goto_0

    .line 1181
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1182
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[Direct, isConnected]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 1183
    goto :goto_0
.end method

.method public isDirectInitialized()Z
    .locals 3

    .prologue
    .line 1149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isDirectInitialized()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1152
    :goto_0
    return v1

    .line 1150
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1151
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[isDirectInitialized Error]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1152
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGOCreated()Z
    .locals 3

    .prologue
    .line 1158
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGOCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1161
    :goto_0
    return v1

    .line 1159
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1160
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[isGOCreated Error]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isGcCreated()Z
    .locals 3

    .prologue
    .line 1167
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isGcCreated()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1170
    :goto_0
    return v1

    .line 1168
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1169
    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "WifiService"

    const-string v2, "[isGcCreated Error]"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 3942
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 3944
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    .line 3945
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 3946
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isShowingAccessPointListDialog()Z
    .locals 3

    .prologue
    .line 841
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isShowingAccessPointListDialog():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    return v0
.end method

.method parseScanFlags(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .parameter "flags"

    .prologue
    .line 2834
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 2836
    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 2837
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 2840
    :cond_0
    return-object v0
.end method

.method public pingSupplicant()Z
    .locals 1

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 675
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->ping()Z

    move-result v0

    return v0
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    .line 1519
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1521
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reassociate()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    .line 1509
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1511
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    move-result v0

    return v0
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 3906
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    .line 3908
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3909
    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 3910
    :try_start_0
    iget v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    .line 3911
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 3912
    .local v2, size:I
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 3913
    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .line 3914
    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 3915
    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    .line 3912
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3918
    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v4

    .line 3919
    return-void

    .line 3918
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3778
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v0

    .line 3779
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 3780
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    .line 2451
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2453
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()Z
    .locals 5

    .prologue
    .line 2849
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2851
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v3

    .line 2852
    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->saveConfig()Z

    move-result v2

    .line 2853
    .local v2, result:Z
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    if-eqz v4, :cond_0

    .line 2854
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    .line 2855
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->reloadConfig()Z

    move-result v2

    .line 2857
    if-eqz v2, :cond_0

    .line 2858
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2859
    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 2862
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2864
    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 2866
    .local v0, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_1

    .line 2868
    :try_start_1
    const-string v3, "com.android.providers.settings"

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2873
    :cond_1
    :goto_0
    return v2

    .line 2862
    .end local v0           #ibm:Landroid/app/backup/IBackupManager;
    .end local v2           #result:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 2869
    .restart local v0       #ibm:Landroid/app/backup/IBackupManager;
    .restart local v2       #result:Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendProvisionRequest(ILjava/lang/String;)Z
    .locals 4
    .parameter "provision_method"
    .parameter "macAddr"

    .prologue
    const/4 v3, 0x0

    .line 1294
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendProvisionRequest to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1297
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    move v0, v3

    .line 1301
    :goto_0
    return v0

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x17

    invoke-static {v0, v1, p1, v3, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1301
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public sendProvisionResponse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6
    .parameter "cfgMethod"
    .parameter "macAddr"
    .parameter "mPin"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1305
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendProvisionRequest to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1308
    const/4 v1, 0x3

    new-array v0, v1, [Ljava/lang/String;

    .line 1309
    .local v0, provRespConfig:[Ljava/lang/String;
    aput-object p1, v0, v4

    .line 1310
    aput-object p2, v0, v5

    .line 1311
    const/4 v1, 0x2

    aput-object p3, v0, v1

    .line 1313
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v1, :cond_0

    move v1, v4

    .line 1317
    :goto_0
    return v1

    .line 1315
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v2, 0x18

    invoke-static {v1, v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    move v1, v5

    .line 1317
    goto :goto_0
.end method

.method public setDeviceDiscoveryEnabled(ZZ)Z
    .locals 7
    .parameter "enable"
    .parameter "bListenOnly"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "WifiService"

    .line 1221
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1222
    if-eqz p1, :cond_1

    .line 1225
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/WifiService;->setSupplicantAutoScan(Z)Z

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v2

    sget-object v3, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v2, v3}, Landroid/net/wifi/SupplicantState;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1227
    .local v1, isWifiConnected:Z
    if-ne v1, v5, :cond_0

    .line 1228
    invoke-virtual {p0}, Lcom/android/server/WifiService;->disconnect()Z

    .line 1231
    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p2}, Landroid/os/INetworkManagementService;->startDirectDeviceDiscovery(Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #isWifiConnected:Z
    :goto_0
    move v2, v5

    .line 1245
    :goto_1
    return v2

    .line 1232
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1233
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    const-string v2, "Exception in startDeviceDiscovery()"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1234
    goto :goto_1

    .line 1238
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2}, Landroid/os/INetworkManagementService;->stopDirectDeviceDiscovery()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1239
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 1240
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    const-string v2, "Exception in stopDeviceDiscovery()"

    invoke-static {v6, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1241
    goto :goto_1
.end method

.method public setDirectAPEnabled(ZLjava/lang/String;)Z
    .locals 2
    .parameter "enable"
    .parameter "mSSID"

    .prologue
    .line 1142
    const-string v0, "WifiService"

    const-string v1, "setDirectApEnabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1143
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->sendGroupFormationMessage(ZLjava/lang/String;)V

    .line 1144
    const/4 v0, 0x1

    return v0
.end method

.method public setNumAllowedChannels(IZ)Z
    .locals 10
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2889
    const-string v5, "WifiService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiService trying to setNumAllowed to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " with persist set to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2891
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2899
    const/4 v1, 0x0

    .line 2900
    .local v1, found:Z
    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    .local v0, arr$:[I
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 2901
    .local v4, validChan:I
    if-ne v4, p1, :cond_1

    .line 2902
    const/4 v1, 0x1

    .line 2906
    .end local v4           #validChan:I
    :cond_0
    if-nez v1, :cond_2

    move v5, v8

    .line 2915
    :goto_1
    return v5

    .line 2900
    .restart local v4       #validChan:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2910
    .end local v4           #validChan:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v5, :cond_3

    move v5, v8

    goto :goto_1

    .line 2912
    :cond_3
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v6, 0x8

    if-eqz p2, :cond_4

    move v7, v9

    :goto_2
    invoke-static {v5, v6, p1, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    move v5, v9

    .line 2915
    goto :goto_1

    :cond_4
    move v7, v8

    .line 2912
    goto :goto_2
.end method

.method public setRoamBand(I)Z
    .locals 1
    .parameter "roamBand"

    .prologue
    .line 1490
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1491
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamBandCommand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamDelta(I)Z
    .locals 1
    .parameter "roamDelta"

    .prologue
    .line 1454
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1455
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamDeltaCommand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamScanPeriod(I)Z
    .locals 1
    .parameter "roamScanPeriod"

    .prologue
    .line 1472
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1473
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamScanPeriodCommand(I)Z

    move-result v0

    return v0
.end method

.method public setRoamTrigger(I)Z
    .locals 1
    .parameter "roamTrigger"

    .prologue
    .line 1436
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1437
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setRoamTriggerCommand(I)Z

    move-result v0

    return v0
.end method

.method public setShowAccessPointListDialog(Z)Z
    .locals 3
    .parameter "setEnable"

    .prologue
    .line 835
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    .line 836
    const-string v0, "WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowAccessPointListDialog():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/WifiService;->mEnabledAccessPointListDialog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x1

    return v0
.end method

.method public setSupplicantAutoConn(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1376
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1377
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->SetAutoConn(Z)Z

    move-result v0

    return v0
.end method

.method public setSupplicantAutoScan(Z)Z
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1381
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1382
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->SetAutoScan(Z)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 1588
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1589
    if-nez p1, :cond_0

    .line 1592
    :goto_0
    return-void

    .line 1591
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xd

    invoke-static {v0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    .line 1533
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1534
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 1562
    :goto_0
    return v3

    .line 1537
    :cond_0
    if-eqz p2, :cond_1

    .line 1538
    iget-object v3, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/admin/DevicePolicyManager;->getAllowInternetSharing(Landroid/content/ComponentName;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 1539
    iget-boolean p2, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    .line 1540
    const-string v3, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiApEnabled: allowWifiAp: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    iget-boolean v3, p0, Lcom/android/server/WifiService;->allowWifiAp:Z

    if-nez v3, :cond_1

    .line 1542
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 1543
    .local v2, startDialogIntent:Landroid/content/Intent;
    const-string v3, "com.android.settings"

    const-string v4, "com.android.settings.wifi.WifiApSecurityChangeDialog"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1544
    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1545
    const/high16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1546
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v3, v6

    .line 1548
    goto :goto_0

    .line 1552
    .end local v2           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v3

    .line 1554
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1555
    .local v0, ident:J
    sget-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1556
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1558
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    .line 1559
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-direct {p0, p2, p1, v4}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 1560
    monitor-exit v3

    move v3, v6

    .line 1562
    goto :goto_0

    .line 1560
    .end local v0           #ident:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public setWifiDirectEnabled(ZLandroid/net/wifi/WifiConfiguration;I)Z
    .locals 6
    .parameter "enable"
    .parameter "config"
    .parameter "intent"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1055
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1056
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v2, :cond_0

    move v2, v4

    .line 1073
    :goto_0
    return v2

    .line 1058
    :cond_0
    if-ne p1, v5, :cond_1

    .line 1059
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiDirectSetting()Z

    move-result v2

    if-eq v2, v5, :cond_1

    .line 1060
    const-string v2, "WifiService"

    const-string v3, "---- Check wifi direct setting. It is unchecked."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    .line 1061
    goto :goto_0

    .line 1065
    :cond_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->getWifiDirectConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1066
    .local v0, directConfig:Landroid/net/wifi/WifiConfiguration;
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "direct_intent"

    const/16 v4, 0xa

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 1069
    .local v1, directintent:I
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v2

    .line 1070
    :try_start_0
    sget-object v3, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1071
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/WifiService;->sendWiFiDirectMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    .line 1072
    monitor-exit v2

    move v2, v5

    .line 1073
    goto :goto_0

    .line 1072
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public setWifiDirectPassword(Ljava/lang/String;)I
    .locals 5
    .parameter "mPassword"

    .prologue
    const-string v1, "WifiService"

    .line 1363
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1365
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setWifiDirectPassword(Ljava/lang/String;)I

    .line 1366
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish    ----- setWifiDirectPassword"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1371
    :try_start_1
    monitor-exit v1

    .line 1372
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1367
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1368
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setWifiDirectPassword() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1369
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1371
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setWifiDirectSSID(Ljava/lang/String;)I
    .locals 5
    .parameter "mSssid"

    .prologue
    const-string v1, "WifiService"

    .line 1350
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    monitor-enter v1

    .line 1352
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v2, p1}, Landroid/os/INetworkManagementService;->setWifiDirectSSID(Ljava/lang/String;)I

    .line 1353
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Finish    ----- setWifiDirectSSID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1358
    :try_start_1
    monitor-exit v1

    .line 1359
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1354
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1355
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in setWifiDirectSSID() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const/4 v2, 0x0

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1358
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setWifiDirectSetting(Z)Z
    .locals 5
    .parameter "bDirect"

    .prologue
    const/4 v4, 0x1

    .line 1100
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 1102
    const/4 v2, 0x0

    .line 1105
    .local v2, mDirectSetting:I
    if-ne p1, v4, :cond_0

    .line 1106
    const/4 v2, 0x1

    .line 1108
    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1109
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "direct_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 1113
    .end local v0           #cr:Landroid/content/ContentResolver;
    :goto_0
    return v3

    .line 1110
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1111
    .local v1, e:Ljava/lang/NumberFormatException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setWifiEnabled(Z)Z
    .locals 10
    .parameter "enable"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v9, "WifiService"

    .line 697
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "wifi_enabled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    .line 699
    const-string v4, "WifiService"

    const-string v5, "WiFi is Disabled"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v8

    .line 735
    :goto_0
    return v4

    .line 702
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 704
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 705
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v4, :cond_1

    move v4, v8

    goto :goto_0

    .line 707
    :cond_1
    if-eqz p1, :cond_2

    .line 708
    const-string v4, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    iget-object v4, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 710
    iget-boolean p1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 711
    const-string v4, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "****************setWifiEnabled(), allowWifi****************"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-boolean v4, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v4, :cond_2

    .line 713
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 714
    .local v3, startDialogIntent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v5, "com.android.settings.wifi.WifiSecurityChangeDialog"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 715
    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 716
    const/high16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 717
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v7

    .line 718
    goto :goto_0

    .line 723
    .end local v3           #startDialogIntent:Landroid/content/Intent;
    :cond_2
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v4

    .line 725
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 726
    .local v1, ident:J
    sget-object v5, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 727
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 729
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 731
    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    :goto_1
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    .line 732
    const/4 v5, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, p1, v5, v6}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 733
    monitor-exit v4

    move v4, v7

    .line 735
    goto/16 :goto_0

    :cond_3
    move v5, v8

    .line 731
    goto :goto_1

    .line 733
    .end local v1           #ident:J
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public setWifiEnabledDialog(Z)Z
    .locals 12
    .parameter "enable"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    const-string v8, "WifiService"

    .line 777
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 778
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v5, :cond_0

    move v5, v10

    .line 831
    :goto_0
    return v5

    .line 781
    :cond_0
    if-eqz p1, :cond_1

    .line 782
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiEnabledDialog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    iget-object v5, p0, Lcom/android/server/WifiService;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v5, v11}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 784
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "****************setWifiEnabledDialog(), allowWifi****************"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/WifiService;->allowWifi:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-boolean p1, p0, Lcom/android/server/WifiService;->allowWifi:Z

    .line 786
    iget-boolean v5, p0, Lcom/android/server/WifiService;->allowWifi:Z

    if-nez v5, :cond_1

    .line 787
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 788
    .local v3, startDialogIntent:Landroid/content/Intent;
    const-string v5, "com.android.settings"

    const-string v6, "com.android.settings.wifi.WifiSecurityChangeDialog"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 789
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 790
    const/high16 v5, 0x80

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 791
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 792
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, v9, v5}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v9

    .line 793
    goto :goto_0

    .line 801
    .end local v3           #startDialogIntent:Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "wifi_enabled"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_2

    .line 803
    const-string v5, "WifiService"

    const-string v6, "WiFi is Disabled"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v10

    .line 804
    goto :goto_0

    .line 806
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 808
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v4

    .line 809
    .local v4, wifiApState:I
    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 811
    :cond_3
    iput-boolean v9, p0, Lcom/android/server/WifiService;->mWifiEnabledSoon:Z

    .line 812
    const-string v5, "WifiService"

    const-string v5, "setWifiEnabledDialog, Mobile AP will be disabled"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    invoke-virtual {p0, v11, v10}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 816
    :cond_4
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v5

    .line 818
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 819
    .local v1, ident:J
    sget-object v6, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 820
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 822
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    iput v6, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 824
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v9

    :goto_1
    iput-boolean v6, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/server/WifiService;->setShowAccessPointListDialog(Z)Z

    .line 827
    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 828
    const-string v6, "WifiService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setWifiEnabledDialog(): "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    monitor-exit v5

    move v5, v9

    .line 831
    goto/16 :goto_0

    :cond_5
    move v6, v10

    .line 824
    goto :goto_1

    .line 829
    .end local v1           #ident:J
    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public shutdown()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const-string v5, "WifiService"

    .line 742
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 743
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    move v3, v4

    .line 766
    :goto_0
    return v3

    .line 746
    :cond_0
    const-string v3, "WifiService"

    const-string v3, "shutdown() is called"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApEnabledState()I

    move-result v2

    .line 750
    .local v2, wifiApState:I
    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 752
    :cond_1
    const-string v3, "WifiService"

    const-string v3, "Mobile AP will be disabled"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/WifiService;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 756
    :cond_2
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v3

    .line 758
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 759
    .local v0, ident:J
    sget-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 760
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 762
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    .line 763
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {p0, v4, v5, v6}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    .line 764
    monitor-exit v3

    .line 766
    const/4 v3, 0x1

    goto :goto_0

    .line 764
    .end local v0           #ident:J
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public startScan(Z)V
    .locals 4
    .parameter "forceActive"

    .prologue
    const/4 v3, 0x0

    .line 682
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 683
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    .line 686
    :goto_0
    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xa

    if-eqz p1, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1
.end method

.method public startWifi()V
    .locals 5

    .prologue
    .line 461
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v2, 0x1

    move v1, v2

    .line 466
    .local v1, wifiEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v3, "device_policy"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 467
    .local v0, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager;->getAllowWifi(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    const/4 v1, 0x0

    .line 471
    :cond_1
    const-string v2, "WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService starting up with Wi-Fi "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v1, :cond_3

    const-string v4, "enabled"

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    invoke-virtual {p0, v1}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    .line 474
    return-void

    .line 461
    .end local v0           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v1           #wifiEnabled:Z
    :cond_2
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 471
    .restart local v0       #mDPM:Landroid/app/admin/DevicePolicyManager;
    .restart local v1       #wifiEnabled:Z
    :cond_3
    const-string v4, "disabled"

    goto :goto_1
.end method

.method public stopWifiDirectWps()Z
    .locals 4

    .prologue
    const-string v3, "WifiService"

    .line 1271
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    .line 1273
    :try_start_0
    const-string v1, "WifiService"

    const-string v2, "Start  ----- stopWifiDirectWps"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->stopWifiDirectWps()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1279
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 1275
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1276
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v1, "Exception in stopWifiDirectWps()"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 3750
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 3751
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3752
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 3753
    const/4 p2, 0x0

    .line 3755
    :cond_0
    if-eqz p2, :cond_1

    .line 3756
    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    .line 3758
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3760
    .local v0, ident:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3761
    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v7, p1}, Lcom/android/server/WifiService$LockList;->access$4400(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 3762
    .local v2, index:I
    if-gez v2, :cond_2

    .line 3763
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 3769
    .end local v2           #index:I
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 3770
    :catch_0
    move-exception v6

    .line 3772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3774
    :goto_0
    return-void

    .line 3765
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .line 3766
    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3767
    if-eqz p2, :cond_3

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v7, v5, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    .line 3768
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    .line 3769
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 3767
    :cond_3
    :try_start_4
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 3772
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method

.method public wpsCommandCancel()Z
    .locals 2

    .prologue
    .line 2530
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2531
    const-string v0, "WifiService"

    const-string v1, "WifiService: wpsCommandCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2532
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->wpsCommandCancel()Z

    move-result v0

    return v0
.end method

.method public wpsPbcConnect()Z
    .locals 2

    .prologue
    .line 2508
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2509
    const-string v0, "WifiService"

    const-string v1, "WifiService: wpsPbcConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->wpsPbcConnect()Z

    move-result v0

    return v0
.end method

.method public wpsPinConnect(Ljava/lang/String;)I
    .locals 2
    .parameter "bssid"

    .prologue
    .line 2519
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    .line 2520
    const-string v0, "WifiService"

    const-string v1, "wpsPinConnect()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->wpsPinConnect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
