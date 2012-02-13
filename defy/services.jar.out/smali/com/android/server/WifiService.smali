.class public Lcom/android/server/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/WifiService$7;,
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

.field private static final ACTION_GAN_LITE:Ljava/lang/String; = "com.android.kineto.GanState"

.field private static final ACTION_GAN_LITE_GAN_STATE_EXTRA:Ljava/lang/String; = "GanState"

.field private static final ACTION_GAN_LITE_QOS_EXTRA:Ljava/lang/String; = "QoS"

.field private static final AP_ENABLE:Ljava/lang/String; = "AP_ENABLE"

.field private static final DBG:Z = false

.field private static final DEFAULT_IDLE_MILLIS:J = 0xdbba0L

.field private static final DEFAULT_WAKELOCK_TIMEOUT:I = 0x1f40

.field private static final IDLE_REQUEST:I = 0x0

.field private static final MESSAGE_DISABLE_WIFI:I = 0x1

.field private static final MESSAGE_ENABLE_NETWORKS:I = 0x9

.field private static final MESSAGE_ENABLE_RSSI_POLLING:I = 0xc

.field private static final MESSAGE_ENABLE_WIFI:I = 0x0

.field private static final MESSAGE_RELEASE_WAKELOCK:I = 0x4

.field private static final MESSAGE_REPORT_WORKSOURCE:I = 0xb

.field private static final MESSAGE_SET_CHANNELS:I = 0x8

.field private static final MESSAGE_START_ACCESS_POINT:I = 0x6

.field private static final MESSAGE_START_SCAN:I = 0xa

.field private static final MESSAGE_START_WIFI:I = 0x3

.field private static final MESSAGE_STOP_ACCESS_POINT:I = 0x7

.field private static final MESSAGE_STOP_WIFI:I = 0x2

.field private static final MESSAGE_UPDATE_STATE:I = 0x5

.field private static final PNO_ENABLED:Z = true

.field private static final SCAN_RESULT_BUFFER_SIZE:I = 0x200

.field private static final SCAN_RESULT_CACHE_SIZE:I = 0x50

.field private static final TAG:Ljava/lang/String; = "WifiService"

.field private static final WAKELOCK_TAG:Ljava/lang/String; = "*wifi*"

.field private static final clientMacInfoPattern:Ljava/util/regex/Pattern;

.field private static mSoftapIface:Ljava/lang/String;

.field private static mWAPIConfig:Z

.field private static sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static sValidRegulatoryChannelCounts:[I

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;

.field private static final scanResultPattern:Ljava/util/regex/Pattern;


# instance fields
.field private mAirplaneModeOverwridden:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mApEntitlement:Lcom/motorola/android/wifi/ApEntitlement;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field mCm:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDeviceIdle:Z

.field private mDoEntitlementCheck:Z

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mGanActiveFlag:Z

.field private mIdleIntent:Landroid/app/PendingIntent;

.field private mLastApEnableUid:I

.field private mLastEnableUid:I

.field private final mLocks:Lcom/android/server/WifiService$LockList;

.field private mMotWifiScan:Landroid/net/wifi/MotWifiScan;

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

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

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

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mWifiApState:I

.field private final mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

.field private mWifiRegexs:[Ljava/lang/String;

.field private final mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

.field private mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

.field private nwService:Landroid/os/INetworkManagementService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "\t+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    const-string v0, " "

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/server/WifiService;->clientMacInfoPattern:Ljava/util/regex/Pattern;

    return-void

    nop

    :array_0
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0xdt 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V
    .locals 12
    .parameter "context"
    .parameter "tracker"

    .prologue
    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const-string v11, "*wifi*"

    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    new-instance v5, Lcom/android/server/WifiService$LockList;

    invoke-direct {v5, p0, v10}, Lcom/android/server/WifiService$LockList;-><init>(Lcom/android/server/WifiService;Lcom/android/server/WifiService$1;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    iput-object v10, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5}, Landroid/os/WorkSource;-><init>()V

    iput-object v5, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    iput v5, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    iput-boolean v8, p0, Lcom/android/server/WifiService;->mGanActiveFlag:Z

    new-instance v5, Lcom/android/server/WifiService$1;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$1;-><init>(Lcom/android/server/WifiService;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v5, Lcom/android/server/WifiService$6;

    invoke-direct {v5, p0}, Lcom/android/server/WifiService$6;-><init>(Lcom/android/server/WifiService;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateTracker;->enableRssiPolling(Z)V

    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    const-string v5, "network_management"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    new-instance v5, Lcom/android/server/WifiService$2;

    const/16 v6, 0x50

    const/high16 v7, 0x3f40

    invoke-direct {v5, p0, v6, v7, v9}, Lcom/android/server/WifiService$2;-><init>(Lcom/android/server/WifiService;IFZ)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "entitlement_check"

    invoke-static {v5, v6, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_0

    move v5, v9

    :goto_0
    iput-boolean v5, p0, Lcom/android/server/WifiService;->mDoEntitlementCheck:Z

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "AP_ENABLE"

    invoke-static {v5, v6, v8}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v4, Landroid/os/HandlerThread;

    const-string v5, "WifiService"

    invoke-direct {v4, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v4, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v4}, Landroid/os/HandlerThread;->start()V

    new-instance v5, Lcom/android/server/WifiService$WifiHandler;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/server/WifiService$WifiHandler;-><init>(Lcom/android/server/WifiService;Landroid/os/Looper;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5, v9}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    iput v9, p0, Lcom/android/server/WifiService;->mWifiApState:I

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AlarmManager;

    iput-object v5, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-direct {v2, v5, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .local v2, idleIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v5, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    .local v3, powerManager:Landroid/os/PowerManager;
    const-string v5, "*wifi*"

    invoke-virtual {v3, v9, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v5, "*wifi*"

    invoke-virtual {v3, v9, v11}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    sput-object v5, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v5, "softap.interface"

    const-string v6, "tiwlan0"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0035

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/WifiService;->mWAPIConfig:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$3;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$3;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$4;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$4;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.intent.action.SCREEN_ON"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/WifiService$5;

    invoke-direct {v6, p0}, Lcom/android/server/WifiService$5;-><init>(Lcom/android/server/WifiService;)V

    new-instance v7, Landroid/content/IntentFilter;

    const-string v8, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v5, "phone"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    iput-object v5, p0, Lcom/android/server/WifiService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/server/WifiService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/server/WifiService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v5, v6, v9}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v5, Landroid/net/wifi/MotWifiScan;

    iget-object v6, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-direct {v5, v6, v7}, Landroid/net/wifi/MotWifiScan;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateTracker;)V

    iput-object v5, p0, Lcom/android/server/WifiService;->mMotWifiScan:Landroid/net/wifi/MotWifiScan;

    return-void

    .end local v2           #idleIntent:Landroid/content/Intent;
    .end local v3           #powerManager:Landroid/os/PowerManager;
    .end local v4           #wifiThread:Landroid/os/HandlerThread;
    :cond_0
    move v5, v8

    goto/16 :goto_0

    .restart local v2       #idleIntent:Landroid/content/Intent;
    .restart local v3       #powerManager:Landroid/os/PowerManager;
    .restart local v4       #wifiThread:Landroid/os/HandlerThread;
    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    sput-boolean v8, Lcom/android/server/WifiService;->mWAPIConfig:Z

    goto :goto_1
.end method

.method static synthetic access$100(Lcom/android/server/WifiService;)Landroid/net/wifi/WifiStateTracker;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mScreenOff:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/WifiService;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->sendEnableRssiPollingMessage(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendEnableNetworksMessage()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return v0
.end method

.method static synthetic access$1702(Lcom/android/server/WifiService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/server/WifiService;->mPluggedType:I

    return p1
.end method

.method static synthetic access$1800(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/WifiService;->mGanActiveFlag:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mGanActiveFlag:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateRegulatoryDomain()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/WifiService;ZZI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiEnabledBlocking(ZZI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/WifiService;)Lcom/android/server/WifiWatchdogService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/server/WifiService;Lcom/android/server/WifiWatchdogService;)Lcom/android/server/WifiWatchdogService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/WifiService;->mWifiWatchdogService:Lcom/android/server/WifiWatchdogService;

    return-object p1
.end method

.method static synthetic access$2400()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->reportStartWorkSource()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->doUpdateWifiState()V

    return-void
.end method

.method static synthetic access$2700()Landroid/os/PowerManager$WakeLock;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/WifiService;ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/WifiService;->setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(Lcom/android/server/WifiService;IZ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->setNumAllowedChannelsBlocking(IZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/WifiService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/server/WifiService;)Lcom/android/server/WifiService$LockList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$3400(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/server/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/WifiService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/WifiService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/WifiService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/WifiService;)Landroid/app/PendingIntent;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mIdleIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/WifiService;)Landroid/app/AlarmManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z
    .locals 4
    .parameter "wifiLock"

    .prologue
    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->addLock(Lcom/android/server/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/WifiService$LockList;->access$3700(Lcom/android/server/WifiService$LockList;Lcom/android/server/WifiService$WifiLock;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    iget v3, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v3, :pswitch_data_0

    :goto_0
    invoke-direct {p0}, Lcom/android/server/WifiService;->sendReportWorkSourceMessage()V

    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static convertToIpAddr(Ljava/lang/String;)I
    .locals 8
    .parameter "addrString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    :try_start_0
    const-string v6, "\\."

    invoke-virtual {p0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .local v5, parts:[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v5           #parts:[Ljava/lang/String;
    :catch_0
    move-exception v6

    move-object v4, v6

    .local v4, ex:Ljava/lang/NumberFormatException;
    new-instance v6, Ljava/net/UnknownHostException;

    invoke-direct {v6, p0}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v6

    .end local v4           #ex:Ljava/lang/NumberFormatException;
    .restart local v5       #parts:[Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v0, v6, 0x18

    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x10

    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x8

    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v3

    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private static convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "string"

    .prologue
    const-string v2, "\""

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

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v4

    .local v4, wifiEnabled:Z
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v7, :cond_3

    move v0, v10

    .local v0, airplaneMode:Z
    :goto_0
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v7

    :try_start_0
    iget-object v8, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->hasLocks()Z
    invoke-static {v8}, Lcom/android/server/WifiService$LockList;->access$2000(Lcom/android/server/WifiService$LockList;)Z

    move-result v1

    .local v1, lockHeld:Z
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    .local v2, strongestLockMode:I
    if-eqz v4, :cond_4

    if-nez v0, :cond_4

    move v5, v10

    .local v5, wifiShouldBeEnabled:Z
    :goto_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v7, :cond_0

    if-eqz v1, :cond_5

    :cond_0
    move v6, v10

    .local v6, wifiShouldBeStarted:Z
    :goto_2
    if-eqz v1, :cond_1

    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->getStrongestLockMode()I
    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$2100(Lcom/android/server/WifiService$LockList;)I

    move-result v2

    :cond_1
    iget-boolean v7, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-nez v7, :cond_2

    if-ne v2, v11, :cond_2

    const/4 v2, 0x1

    :cond_2
    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v7

    :try_start_1
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v8

    if-ne v8, v11, :cond_6

    if-nez v0, :cond_6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_3
    return-void

    .end local v0           #airplaneMode:Z
    .end local v1           #lockHeld:Z
    .end local v2           #strongestLockMode:I
    .end local v5           #wifiShouldBeEnabled:Z
    .end local v6           #wifiShouldBeStarted:Z
    :cond_3
    move v0, v9

    goto :goto_0

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

    goto :goto_1

    .restart local v5       #wifiShouldBeEnabled:Z
    :cond_5
    move v6, v9

    goto :goto_2

    .restart local v6       #wifiShouldBeStarted:Z
    :cond_6
    if-eqz v0, :cond_8

    :try_start_3
    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-eq v8, v11, :cond_7

    iget v8, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_8

    :cond_7
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    :cond_8
    if-eqz v5, :cond_b

    if-eqz v6, :cond_a

    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-direct {p0, v8, v9, v10}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-direct {p0, v2}, Lcom/android/server/WifiService;->sendStartMessage(I)V

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

    :cond_a
    :try_start_4
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v8

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "wifi_mobile_data_transition_wakelock_timeout_ms"

    const/16 v10, 0x1f40

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .local v3, wakeLockTimeout:I
    sget-object v8, Lcom/android/server/WifiService;->sDriverStopWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessage(I)Z

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v9, 0x4

    int-to-long v10, v3

    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/WifiService$WifiHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .end local v3           #wakeLockTimeout:I
    :cond_b
    sget-object v8, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v8}, Landroid/os/PowerManager$WakeLock;->acquire()V

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
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private getDhcpDevList()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->listDhcpDevices()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPersistedWifiEnabled()Z
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "wifi_on"

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v2, "wifi_on"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v4

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v2

    move-object v1, v2

    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "wifi_on"

    invoke-static {v0, v5, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v2, v3

    goto :goto_0
.end method

.method private getStaNetworkInfo()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaNetworkInfo;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->getDhcpDevList()Ljava/lang/String;

    move-result-object v0

    .local v0, buf:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    new-instance v1, Lcom/motorola/android/wifi/StaNetworkInfo;

    invoke-direct {v1}, Lcom/motorola/android/wifi/StaNetworkInfo;-><init>()V

    .local v1, staNetworkInfo:Lcom/motorola/android/wifi/StaNetworkInfo;
    invoke-virtual {v1, v0}, Lcom/motorola/android/wifi/StaNetworkInfo;->parseNetworkInfoList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    goto :goto_0
.end method

.method private isAirplaneModeOn()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

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
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_toggleable_radios"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
    array-length v1, p1

    .local v1, size:I
    const/16 v2, 0x2d

    const/16 v3, 0x5f

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_1
.end method

.method private static makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "set"
    .parameter "strings"

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v1, -0x1

    .local v1, nextSetBit:I
    const/4 v2, 0x0

    array-length v3, p1

    invoke-virtual {p0, v2, v3}, Ljava/util/BitSet;->get(II)Ljava/util/BitSet;

    move-result-object p0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

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

    :cond_0
    invoke-virtual {p0}, Ljava/util/BitSet;->cardinality()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

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
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

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
    iget v0, p1, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteScanWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;
    .locals 14
    .parameter "line"

    .prologue
    const/4 v0, 0x0

    .local v0, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz p1, :cond_1

    iget-object v10, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    monitor-enter v10

    :try_start_0
    sget-object v11, Lcom/android/server/WifiService;->scanResultPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v11, p1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v8

    .local v8, result:[Ljava/lang/String;
    const/4 v11, 0x3

    array-length v12, v8

    if-gt v11, v12, :cond_6

    array-length v11, v8

    const/4 v12, 0x5

    if-gt v11, v12, :cond_6

    const/4 v11, 0x0

    aget-object v2, v8, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, bssid:Ljava/lang/String;
    const/4 v11, 0x1

    :try_start_1
    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .local v5, frequency:I
    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    .local v4, level:I
    if-lez v4, :cond_0

    add-int/lit16 v4, v4, -0x100

    :cond_0
    :goto_0
    :try_start_2
    array-length v11, v8

    const/4 v12, 0x4

    if-ne v11, v12, :cond_3

    const/4 v11, 0x3

    aget-object v11, v8, v11

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x5b

    if-ne v11, v12, :cond_2

    const/4 v11, 0x3

    aget-object v3, v8, v11

    .local v3, flags:Ljava/lang/String;
    const-string v1, ""

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

    .local v7, key:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/wifi/ScanResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0           #scanResult:Landroid/net/wifi/ScanResult;
    .local v9, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v9, :cond_5

    :try_start_3
    iput v4, v9, Landroid/net/wifi/ScanResult;->level:I

    iput-object v1, v9, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v3, v9, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    iput v5, v9, Landroid/net/wifi/ScanResult;->frequency:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v9

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

    .end local v8           #result:[Ljava/lang/String;
    :cond_1
    return-object v0

    .restart local v2       #bssid:Ljava/lang/String;
    .restart local v8       #result:[Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v6, v11

    .local v6, e:Ljava/lang/NumberFormatException;
    const/4 v5, 0x0

    .restart local v5       #frequency:I
    const/4 v4, 0x0

    .restart local v4       #level:I
    goto :goto_0

    .end local v6           #e:Ljava/lang/NumberFormatException;
    :cond_2
    const-string v3, ""

    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x3

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_3
    array-length v11, v8

    const/4 v12, 0x5

    if-ne v11, v12, :cond_4

    const/4 v11, 0x3

    aget-object v3, v8, v11

    .restart local v3       #flags:Ljava/lang/String;
    const/4 v11, 0x4

    aget-object v1, v8, v11

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

    .end local v1           #ssid:Ljava/lang/String;
    .end local v3           #flags:Ljava/lang/String;
    :cond_4
    const-string v3, ""

    .restart local v3       #flags:Ljava/lang/String;
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .restart local v1       #ssid:Ljava/lang/String;
    goto :goto_1

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

    new-instance v0, Landroid/net/wifi/ScanResult;

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/ScanResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .end local v9           #scanResult:Landroid/net/wifi/ScanResult;
    .restart local v0       #scanResult:Landroid/net/wifi/ScanResult;
    :try_start_6
    iget-object v11, p0, Lcom/android/server/WifiService;->mScanResultCache:Ljava/util/LinkedHashMap;

    invoke-virtual {v11, v7, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

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
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "wifi_on"

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V
    .locals 13
    .parameter "config"

    .prologue
    iget v6, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .local v6, netId:I
    if-gez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .local v9, value:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    :goto_1
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "bssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_7

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :goto_2
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "mode"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->networkMode:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_9

    :cond_1
    :goto_3
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "frequency"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    :try_start_1
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_8

    :cond_2
    :goto_4
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "priority"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    :try_start_2
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->priority:I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_7

    :cond_3
    :goto_5
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "scan_ssid"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    :try_start_3
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    :goto_6
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_4
    :goto_7
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wep_tx_keyidx"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    :try_start_4
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wepTxKeyIndex:I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_5

    :cond_5
    :goto_8
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    const/4 v10, 0x4

    if-ge v2, v10, :cond_a

    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    sget-object v11, Landroid/net/wifi/WifiConfiguration;->wepKeyVarNames:[Ljava/lang/String;

    aget-object v11, v11, v2

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_9

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v9, v10, v2

    :goto_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .end local v2           #i:I
    :cond_6
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto/16 :goto_1

    :cond_7
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    .restart local v2       #i:I
    :cond_9
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    const/4 v11, 0x0

    aput-object v11, v10, v2

    goto :goto_a

    :cond_a
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "psk"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_c

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    :goto_b
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "proto"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_d

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .local v8, vals:[Ljava/lang/String;
    move-object v0, v8

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_c
    if-ge v3, v5, :cond_d

    aget-object v7, v0, v3

    .local v7, val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .local v4, index:I
    if-ltz v4, :cond_b

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_c
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_b

    :cond_d
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "key_mgmt"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_f

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_d
    if-ge v3, v5, :cond_f

    aget-object v7, v0, v3

    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .restart local v4       #index:I
    if-ltz v4, :cond_e

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    :cond_e
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_f
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "auth_alg"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_11

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_e
    if-ge v3, v5, :cond_11

    aget-object v7, v0, v3

    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .restart local v4       #index:I
    if-ltz v4, :cond_10

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_11
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "pairwise"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_13

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_f
    if-ge v3, v5, :cond_13

    aget-object v7, v0, v3

    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .restart local v4       #index:I
    if-ltz v4, :cond_12

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_13
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "group"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_15

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .restart local v8       #vals:[Ljava/lang/String;
    move-object v0, v8

    .restart local v0       #arr$:[Ljava/lang/String;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_10
    if-ge v3, v5, :cond_15

    aget-object v7, v0, v3

    .restart local v7       #val:Ljava/lang/String;
    sget-object v10, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static {v7, v10}, Lcom/android/server/WifiService;->lookupString(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    .restart local v4       #index:I
    if-ltz v4, :cond_14

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v10, v4}, Ljava/util/BitSet;->set(I)V

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .end local v0           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #index:I
    .end local v5           #len$:I
    .end local v7           #val:Ljava/lang/String;
    .end local v8           #vals:[Ljava/lang/String;
    :cond_15
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-static {}, Landroid/net/wifi/WifiStateTracker;->isWapiForOlympus()Z

    move-result v10

    if-nez v10, :cond_1c

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_19

    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget v11, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const-string v12, "wapi_psk_mode"

    invoke-virtual {v10, v11, v12}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    :try_start_5
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_16
    :goto_11
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    .local v0, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v5, v0

    .restart local v5       #len$:I
    const/4 v3, 0x0

    .restart local v3       #i$:I
    :goto_12
    if-ge v3, v5, :cond_21

    aget-object v1, v0, v3

    .local v1, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_18

    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    if-eq v1, v10, :cond_17

    invoke-static {v9}, Lcom/android/server/WifiService;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    :cond_17
    invoke-virtual {v1, v9}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->setValue(Ljava/lang/String;)V

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v1           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :cond_19
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_16

    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wapi_as_cert"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1a

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    :goto_13
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "wapi_user_cert"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1b

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto :goto_11

    :cond_1a
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_13

    :cond_1b
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto :goto_11

    :cond_1c
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_1d

    const-string v10, "wapiPskMode"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_16

    :try_start_6
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_11

    :catch_0
    move-exception v10

    goto :goto_11

    :cond_1d
    iget-object v10, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v11, 0x5

    invoke-virtual {v10, v11}, Ljava/util/BitSet;->get(I)Z

    move-result v10

    if-eqz v10, :cond_16

    const-string v10, "cert_index"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, -0x1

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1e

    :try_start_7
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertIndex:I
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_1e
    :goto_14
    const-string v10, "wapi_as_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1f

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    :goto_15
    const-string v10, "wapi_user_cert"

    invoke-static {v6, v10}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_20

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_11

    :cond_1f
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    goto :goto_15

    :cond_20
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    goto/16 :goto_11

    .restart local v0       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v3       #i$:I
    .restart local v5       #len$:I
    :cond_21
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "proxy_enabled"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->proxyEnabled:Z

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_22

    :try_start_8
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    if-eqz v10, :cond_24

    const/4 v10, 0x1

    :goto_16
    iput-boolean v10, p1, Landroid/net/wifi/WifiConfiguration;->proxyEnabled:Z
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_2

    :cond_22
    :goto_17
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "proxy_host"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_25

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->proxyHost:Ljava/lang/String;

    :goto_18
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "proxy_port"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_23

    :try_start_9
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    iput v10, p1, Landroid/net/wifi/WifiConfiguration;->proxyPort:I
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_23
    :goto_19
    iget-object v10, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    const-string v11, "proxy_exceptions"

    invoke-virtual {v10, v6, v11}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_26

    iput-object v9, p1, Landroid/net/wifi/WifiConfiguration;->proxyExceptions:Ljava/lang/String;

    goto/16 :goto_0

    :cond_24
    const/4 v10, 0x0

    goto :goto_16

    :cond_25
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->proxyHost:Ljava/lang/String;

    goto :goto_18

    :cond_26
    const/4 v10, 0x0

    iput-object v10, p1, Landroid/net/wifi/WifiConfiguration;->proxyExceptions:Ljava/lang/String;

    goto/16 :goto_0

    :catch_1
    move-exception v10

    goto :goto_19

    :catch_2
    move-exception v10

    goto :goto_17

    .end local v0           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v3           #i$:I
    .end local v5           #len$:I
    :catch_3
    move-exception v10

    goto/16 :goto_14

    :catch_4
    move-exception v10

    goto/16 :goto_11

    .end local v2           #i:I
    :catch_5
    move-exception v10

    goto/16 :goto_8

    :catch_6
    move-exception v10

    goto/16 :goto_7

    :catch_7
    move-exception v10

    goto/16 :goto_5

    :catch_8
    move-exception v10

    goto/16 :goto_4

    :catch_9
    move-exception v10

    goto/16 :goto_3
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.kineto.GanState"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "lock"

    .prologue
    iget-object v4, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/WifiService$LockList;->access$3900(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/WifiService$WifiLock;

    move-result-object v3

    .local v3, wifiLock:Lcom/android/server/WifiService$WifiLock;
    if-eqz v3, :cond_1

    const/4 v4, 0x1

    move v0, v4

    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    iget v4, v3, Lcom/android/server/WifiService$DeathRecipient;->mMode:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-direct {p0}, Lcom/android/server/WifiService;->updateWifiState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullLocksReleased:I

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :pswitch_1
    iget v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

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

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v0, ""

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
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .local v1, removed:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->unlinkDeathRecipient()V

    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, ident:Ljava/lang/Long;
    :try_start_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method private reportStartWorkSource()V
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1}, Landroid/os/WorkSource;->clear()V

    iget-boolean v1, p0, Lcom/android/server/WifiService;->mDeviceIdle:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$1900(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v1}, Lcom/android/server/WifiService$LockList;->access$1900(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$WifiLock;

    iget-object v1, v1, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v3, v1}, Landroid/os/WorkSource;->add(Landroid/os/WorkSource;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    sget-object v1, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v3, p0, Lcom/android/server/WifiService;->mTmpWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    monitor-exit v2

    return-void

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
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_0

    const/4 v1, 0x6

    :goto_0
    const/4 v2, 0x0

    invoke-static {v0, v1, p3, v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

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

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-eqz p1, :cond_1

    move v2, v3

    :goto_0
    if-eqz p2, :cond_0

    move v3, v4

    :cond_0
    invoke-static {v1, v2, v3, p3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    .end local v0           #msg:Landroid/os/Message;
    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method private sendEnableNetworksMessage()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendEnableRssiPollingMessage(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xc

    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private sendReportWorkSourceMessage()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/16 v1, 0xb

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendStartMessage(I)V
    .locals 3
    .parameter "lockMode"

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private setNumAllowedChannelsBlocking(IZ)Z
    .locals 2
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_num_allowed_channels"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z

    move-result v0

    return v0
.end method

.method private setWifiApEnabledBlocking(ZILandroid/net/wifi/WifiConfiguration;)Z
    .locals 11
    .parameter "enable"
    .parameter "uid"
    .parameter "wifiConfig"

    .prologue
    const/4 v5, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string v9, "WifiService"

    if-eqz p1, :cond_0

    move v2, v5

    .local v2, eventualWifiApState:I
    :goto_0
    const-string v3, "tiwlan"

    .local v3, tiIface:Ljava/lang/String;
    iget v4, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v4, v2, :cond_2

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface {v4, p3, v5, v6}, Landroid/os/INetworkManagementService;->setAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v10

    :goto_1
    return v4

    .end local v2           #eventualWifiApState:I
    .end local v3           #tiIface:Ljava/lang/String;
    :cond_0
    move v2, v10

    goto :goto_0

    .restart local v2       #eventualWifiApState:I
    .restart local v3       #tiIface:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    const-string v4, "Exception in nwService during AP restart"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    sget-object v5, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v7

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, ee:Ljava/lang/Exception;
    const-string v4, "WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not stop AP, :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #ee:Ljava/lang/Exception;
    :cond_1
    move v4, v10

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v4

    if-ne v4, v5, :cond_3

    if-eqz p1, :cond_3

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v7

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_5

    const/4 v4, 0x2

    :goto_3
    sget-object v5, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v4, p2, v5}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    if-eqz p1, :cond_8

    if-nez p3, :cond_4

    invoke-virtual {p0}, Lcom/android/server/WifiService;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p3

    if-nez p3, :cond_4

    new-instance p3, Landroid/net/wifi/WifiConfiguration;

    .end local p3
    invoke-direct {p3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .restart local p3
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const v5, 0x1040333

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, p3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v7}, Ljava/util/BitSet;->set(I)V

    :cond_4
    sget-object v4, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    const-string v5, "tiwlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "WifiService"

    const-string v4, "Failed to load Wi-Fi driver for AP mode"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v7

    goto/16 :goto_1

    :cond_5
    move v4, v7

    goto :goto_3

    :cond_6
    :try_start_2
    iget-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface {v4, p3, v5, v6}, Landroid/os/INetworkManagementService;->startAccessPoint(Landroid/net/wifi/WifiConfiguration;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    invoke-virtual {p0, p3}, Lcom/android/server/WifiService;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    :cond_7
    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v2, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v10

    goto/16 :goto_1

    :catch_2
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    const-string v4, "Exception in startAccessPoint()"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v7

    goto/16 :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_8
    :try_start_3
    iget-object v4, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    sget-object v5, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface {v4, v5}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v4, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    const-string v5, "tiwlan"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "WifiService"

    const-string v4, "Failed to unload Wi-Fi driver for AP mode"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v7

    goto/16 :goto_1

    :catch_3
    move-exception v4

    move-object v0, v4

    .restart local v0       #e:Ljava/lang/Exception;
    const-string v4, "WifiService"

    const-string v4, "Exception in stopAccessPoint()"

    invoke-static {v9, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v8, p2, v4}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    move v4, v7

    goto/16 :goto_1
.end method

.method private setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V
    .locals 6
    .parameter "wifiAPState"
    .parameter "uid"
    .parameter "flag"

    .prologue
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    .local v3, previousWifiApState:I
    iget v4, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    sget-object v4, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    if-ne p3, v4, :cond_0

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iput p1, p0, Lcom/android/server/WifiService;->mWifiApState:I

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const/4 v4, 0x1

    if-ne p1, v4, :cond_1

    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private setWifiEnabledBlocking(ZZI)Z
    .locals 11
    .parameter "enable"
    .parameter "persist"
    .parameter "uid"

    .prologue
    const/4 v6, 0x3

    const/4 v10, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string v9, "WifiService"

    if-eqz p1, :cond_0

    move v1, v6

    .local v1, eventualWifiState:I
    :goto_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v4

    .local v4, wifiState:I
    if-ne v4, v1, :cond_1

    move v5, v10

    :goto_1
    return v5

    .end local v1           #eventualWifiState:I
    .end local v4           #wifiState:I
    :cond_0
    move v1, v10

    goto :goto_0

    .restart local v1       #eventualWifiState:I
    .restart local v4       #wifiState:I
    :cond_1
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-boolean v5, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    if-nez v5, :cond_2

    move v5, v7

    goto :goto_1

    :cond_2
    if-ne v4, v8, :cond_3

    if-nez p1, :cond_3

    move v5, v7

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/server/WifiService;->mWifiApState:I

    if-ne v5, v6, :cond_4

    if-eqz p1, :cond_4

    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v7

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    const/4 v5, 0x2

    :goto_2
    invoke-direct {p0, v5, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    if-eqz p1, :cond_b

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->loadDriver()Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "WifiService"

    const-string v5, "Failed to load Wi-Fi driver."

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v7

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    .local v3, ifname:Ljava/lang/String;
    invoke-static {v3}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to enable Wi-Fi interface: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v7

    goto :goto_1

    :cond_7
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->startSupplicant()Z

    move-result v5

    if-nez v5, :cond_8

    invoke-static {v3}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    const-string v5, "WifiService"

    const-string v5, "Failed to start supplicant daemon."

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v7

    goto/16 :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/server/WifiService;->registerForBroadcasts()V

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->startEventLoop()V

    .end local v3           #ifname:Ljava/lang/String;
    :cond_9
    if-eqz p2, :cond_a

    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->persistWifiEnabled(Z)V

    :cond_a
    invoke-direct {p0, v1, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    move v5, v10

    goto/16 :goto_1

    :cond_b
    :try_start_0
    iget-object v5, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5, v7, v7, v7, v7}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    const/4 v2, 0x0

    .local v2, failedToStopSupplicantOrUnloadDriver:Z
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->stopSupplicant()Z

    move-result v5

    if-nez v5, :cond_c

    const-string v5, "WifiService"

    const-string v5, "Failed to stop supplicant daemon."

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    const/4 v2, 0x1

    :cond_c
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5, v10}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->unloadDriver()Z

    move-result v5

    if-nez v5, :cond_d

    const-string v5, "WifiService"

    const-string v5, "Failed to unload Wi-Fi driver."

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_d

    invoke-direct {p0, v8, p3}, Lcom/android/server/WifiService;->setWifiEnabledState(II)V

    const/4 v2, 0x1

    :cond_d
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateTracker;->cancelAdhocNotification()V

    if-eqz v2, :cond_9

    move v5, v7

    goto/16 :goto_1

    .end local v2           #failedToStopSupplicantOrUnloadDriver:Z
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, e:Ljava/lang/Exception;
    const-string v5, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception caught to unregisterReceiver: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private setWifiEnabledState(II)V
    .locals 5
    .parameter "wifiState"
    .parameter "uid"

    .prologue
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v3

    .local v3, previousWifiState:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    const/4 v4, 0x3

    if-ne p1, v4, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4, p1}, Landroid/net/wifi/WifiStateTracker;->setWifiState(I)V

    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "wifi_state"

    invoke-virtual {v2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "previous_wifi_state"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void

    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    const/4 v4, 0x1

    if-ne p1, v4, :cond_0

    :try_start_1
    iget-object v4, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v4}, Lcom/android/internal/app/IBatteryStats;->noteWifiOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0

    :catchall_0
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method private static stateName(I)Ljava/lang/String;
    .locals 1
    .parameter "wifiState"

    .prologue
    packed-switch p0, :pswitch_data_0

    const-string v0, "[invalid state]"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "disabling"

    goto :goto_0

    :pswitch_1
    const-string v0, "disabled"

    goto :goto_0

    :pswitch_2
    const-string v0, "enabling"

    goto :goto_0

    :pswitch_3
    const-string v0, "enabled"

    goto :goto_0

    :pswitch_4
    const-string v0, "unknown state"

    goto :goto_0

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

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .local v1, wifiSavedState:I
    :try_start_0
    const-string v2, "wifi_saved_state"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v4, :cond_0

    const-string v2, "wifi_saved_state"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-ne v1, v4, :cond_1

    move v2, v4

    :goto_1
    return v2

    :cond_1
    move v2, v5

    goto :goto_1

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private updateRegulatoryDomain()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    iget-object v1, p0, Lcom/android/server/WifiService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setRegulatoryDomainCountry(Ljava/lang/String;)V

    return-void
.end method

.method private updateTetherState(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 25
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
    .local p1, available:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v21, 0x0

    .local v21, wifiTethered:Z
    const/16 v20, 0x0

    .local v20, wifiAvailable:Z
    const-string v22, "network_management"

    invoke-static/range {v22 .. v22}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    .local v5, b:Landroid/os/IBinder;
    invoke-static {v5}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v19

    .local v19, service:Landroid/os/INetworkManagementService;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    const-string v23, "connectivity"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .end local p2           #tethered:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast p2, Landroid/net/ConnectivityManager;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    .local v6, cr:Landroid/content/ContentResolver;
    const-string v9, "192.168.43.1"

    .local v9, gateway:Ljava/lang/String;
    const-string v16, "255.255.255.0"

    .local v16, netmask:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .local v14, intf:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiRegexs:[Ljava/lang/String;

    move-object v4, v0

    .local v4, arr$:[Ljava/lang/String;
    array-length v15, v4

    .local v15, len$:I
    const/4 v12, 0x0

    .local v12, i$:I
    :goto_1
    if-ge v12, v15, :cond_0

    aget-object v18, v4, v12

    .local v18, regex:Ljava/lang/String;
    move-object v0, v14

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_7

    const/4 v13, 0x0

    .local v13, ifcg:Landroid/net/InterfaceConfiguration;
    :try_start_0
    move-object/from16 v0, v19

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/os/INetworkManagementService;->getInterfaceConfig(Ljava/lang/String;)Landroid/net/InterfaceConfiguration;

    move-result-object v13

    if-eqz v13, :cond_3

    const-string v22, "wifi_ap_gateway"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .local v10, gw:Ljava/lang/String;
    if-eqz v10, :cond_1

    const-string v22, "0.0.0.0"

    move-object v0, v10

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_4

    const-string v22, "WifiService"

    const-string v23, "Gateway not set"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    const-string v22, "wifi_ap_netmask"

    move-object v0, v6

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .local v17, nm:Ljava/lang/String;
    if-eqz v17, :cond_2

    const-string v22, "0.0.0.0"

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v22

    if-nez v22, :cond_5

    const-string v22, "WifiService"

    const-string v23, "netmask not set"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_3
    :try_start_1
    invoke-static {v9}, Lcom/android/server/WifiService;->convertToIpAddr(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object v1, v13

    iput v0, v1, Landroid/net/InterfaceConfiguration;->ipAddr:I

    invoke-static/range {v16 .. v16}, Lcom/android/server/WifiService;->convertToIpAddr(Ljava/lang/String;)I

    move-result v22

    move/from16 v0, v22

    move-object v1, v13

    iput v0, v1, Landroid/net/InterfaceConfiguration;->netmask:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    :try_start_2
    const-string v22, "up"

    move-object/from16 v0, v22

    move-object v1, v13

    iput-object v0, v1, Landroid/net/InterfaceConfiguration;->interfaceFlags:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v14

    move-object v2, v13

    invoke-interface {v0, v1, v2}, Landroid/os/INetworkManagementService;->setInterfaceConfig(Ljava/lang/String;Landroid/net/InterfaceConfiguration;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v10           #gw:Ljava/lang/String;
    .end local v17           #nm:Ljava/lang/String;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mCm:Landroid/net/ConnectivityManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object v1, v14

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->tether(Ljava/lang/String;)I

    move-result v22

    if-eqz v22, :cond_0

    const-string v22, "WifiService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error tethering "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .restart local v10       #gw:Ljava/lang/String;
    :cond_4
    move-object v9, v10

    goto :goto_2

    .restart local v17       #nm:Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v17

    goto :goto_3

    .end local v10           #gw:Ljava/lang/String;
    .end local v17           #nm:Ljava/lang/String;
    :catch_0
    move-exception v22

    move-object/from16 v7, v22

    .local v7, e:Ljava/lang/Exception;
    const-string v22, "WifiService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Error configuring interface "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface/range {v22 .. v23}, Landroid/os/INetworkManagementService;->stopAccessPoint(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :goto_5
    const/16 v22, 0x4

    const/16 v23, 0x0

    sget-object v24, Lcom/android/server/WifiService$DriverAction;->DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    move-object/from16 v0, p0

    move/from16 v1, v22

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v7           #e:Ljava/lang/Exception;
    .end local v12           #i$:I
    .end local v13           #ifcg:Landroid/net/InterfaceConfiguration;
    .end local v14           #intf:Ljava/lang/String;
    .end local v15           #len$:I
    .end local v18           #regex:Ljava/lang/String;
    :cond_6
    return-void

    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v7       #e:Ljava/lang/Exception;
    .restart local v12       #i$:I
    .restart local v13       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v14       #intf:Ljava/lang/String;
    .restart local v15       #len$:I
    .restart local v18       #regex:Ljava/lang/String;
    :catch_1
    move-exception v22

    move-object/from16 v8, v22

    .local v8, ee:Ljava/lang/Exception;
    const-string v22, "WifiService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Could not stop AP, :"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v7           #e:Ljava/lang/Exception;
    .end local v8           #ee:Ljava/lang/Exception;
    .end local v13           #ifcg:Landroid/net/InterfaceConfiguration;
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .restart local v10       #gw:Ljava/lang/String;
    .restart local v13       #ifcg:Landroid/net/InterfaceConfiguration;
    .restart local v17       #nm:Ljava/lang/String;
    :catch_2
    move-exception v22

    goto/16 :goto_4
.end method

.method private updateWifiState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    const/4 v1, 0x5

    invoke-static {v0, v1, v2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "binder"
    .parameter "tag"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    iget-object v2, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/WifiService;->mMulticastEnabled:I

    iget-object v3, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v4, Lcom/android/server/WifiService$Multicaster;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/server/WifiService$Multicaster;-><init>(Lcom/android/server/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->stopPacketFiltering()Z

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .local v1, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .local v0, ident:Ljava/lang/Long;
    :try_start_1
    iget-object v2, p0, Lcom/android/server/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .end local v0           #ident:Ljava/lang/Long;
    .end local v1           #uid:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v0       #ident:Ljava/lang/Long;
    .restart local v1       #uid:I
    :catchall_1
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :catch_0
    move-exception v2

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

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

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p4, 0x0

    :cond_1
    if-eqz p4, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    :cond_2
    if-nez p4, :cond_3

    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/WifiService$WifiLock;-><init>(Lcom/android/server/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .local v0, wifiLock:Lcom/android/server/WifiService$WifiLock;
    iget-object v1, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->acquireWifiLockLocked(Lcom/android/server/WifiService$WifiLock;)Z

    move-result v2

    monitor-exit v1

    move v1, v2

    goto :goto_0

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
    invoke-direct/range {p0 .. p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    move/from16 v16, v0

    .local v16, netId:I
    const/16 v20, -0x1

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    const/16 v20, 0x1

    move/from16 v17, v20

    .local v17, newNetwork:Z
    :goto_0
    const/4 v10, 0x0

    .local v10, doReconfig:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    monitor-enter v20

    if-eqz v17, :cond_2

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/wifi/WifiStateTracker;->addNetwork()I

    move-result v16

    if-gez v16, :cond_1

    const/16 v21, -0x1

    monitor-exit v20

    move/from16 v20, v21

    :goto_1
    return v20

    .end local v10           #doReconfig:Z
    .end local v17           #newNetwork:Z
    :cond_0
    const/16 v20, 0x0

    move/from16 v17, v20

    goto :goto_0

    .restart local v10       #doReconfig:Z
    .restart local v17       #newNetwork:Z
    :cond_1
    const/4 v10, 0x1

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    move/from16 v21, v0

    if-nez v21, :cond_3

    if-eqz v10, :cond_6

    :cond_3
    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/WifiService;->mNeedReconfig:Z

    monitor-exit v20
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

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

    if-nez v20, :cond_7

    :cond_4
    :goto_3
    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/WifiService;->removeNetwork(I)Z

    :cond_5
    const/16 v20, -0x1

    goto :goto_1

    :cond_6
    const/16 v21, 0x0

    goto :goto_2

    :catchall_0
    move-exception v21

    :try_start_1
    monitor-exit v20
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21

    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

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

    if-eqz v20, :cond_4

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "mode"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "frequency"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->frequency:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$KeyMgmt;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, allowedKeyManagementString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_9

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

    if-eqz v20, :cond_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    invoke-static {}, Landroid/net/wifi/WifiStateTracker;->isWapiForOlympus()Z

    move-result v20

    if-nez v20, :cond_14

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_12

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_a

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

    if-eqz v20, :cond_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wapi_psk_mode"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$Protocol;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .local v8, allowedProtocolsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_c

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

    if-eqz v20, :cond_4

    :cond_c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$AuthAlgorithm;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, allowedAuthAlgorithmsString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_d

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

    if-eqz v20, :cond_4

    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$PairwiseCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, allowedPairwiseCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_e

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

    if-eqz v20, :cond_4

    :cond_e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    sget-object v21, Landroid/net/wifi/WifiConfiguration$GroupCipher;->strings:[Ljava/lang/String;

    invoke-static/range {v20 .. v21}, Lcom/android/server/WifiService;->makeString(Ljava/util/BitSet;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, allowedGroupCiphersString:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/BitSet;->cardinality()I

    move-result v20

    if-eqz v20, :cond_f

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

    if-eqz v20, :cond_4

    :cond_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_10

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_10

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

    if-eqz v20, :cond_4

    :cond_10
    const/4 v12, 0x0

    .local v12, hasSetKey:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_17

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

    if-ge v0, v1, :cond_17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    if-eqz v20, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_11

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

    if-eqz v20, :cond_4

    const/4 v12, 0x1

    :cond_11
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .end local v4           #allowedAuthAlgorithmsString:Ljava/lang/String;
    .end local v5           #allowedGroupCiphersString:Ljava/lang/String;
    .end local v7           #allowedPairwiseCiphersString:Ljava/lang/String;
    .end local v8           #allowedProtocolsString:Ljava/lang/String;
    .end local v12           #hasSetKey:Z
    .end local v13           #i:I
    :cond_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wapi_as_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "wapi_user_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    goto/16 :goto_3

    :cond_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x4

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_15

    const-string v20, "wapiPskMode"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiPskMode:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v20, v0

    const-string v21, "*"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_b

    const-string v20, "psk"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    move-object/from16 v20, v0

    const/16 v21, 0x5

    invoke-virtual/range {v20 .. v21}, Ljava/util/BitSet;->get(I)Z

    move-result v20

    if-eqz v20, :cond_b

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

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_16

    const-string v20, "wapi_as_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiAsCert:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_b

    const-string v20, "wapi_user_cert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->wapiUserCert:Ljava/lang/String;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-nez v20, :cond_b

    goto/16 :goto_3

    .restart local v4       #allowedAuthAlgorithmsString:Ljava/lang/String;
    .restart local v5       #allowedGroupCiphersString:Ljava/lang/String;
    .restart local v7       #allowedPairwiseCiphersString:Ljava/lang/String;
    .restart local v8       #allowedProtocolsString:Ljava/lang/String;
    .restart local v12       #hasSetKey:Z
    :cond_17
    if-eqz v12, :cond_18

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

    if-eqz v20, :cond_4

    :cond_18
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

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v20, v0

    if-eqz v20, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "scan_ssid"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    move/from16 v22, v0

    if-eqz v22, :cond_1b

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

    if-eqz v20, :cond_4

    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseFields:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object v9, v0

    .local v9, arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    array-length v15, v9

    .local v15, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_6
    if-ge v14, v15, :cond_1f

    aget-object v11, v9, v14

    .local v11, field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->varName()Ljava/lang/String;

    move-result-object v19

    .local v19, varName:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/net/wifi/WifiConfiguration$EnterpriseField;->value()Ljava/lang/String;

    move-result-object v18

    .local v18, value:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->password:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1c

    if-eqz v18, :cond_1c

    const-string v20, "*"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_1c

    :cond_1a
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .end local v9           #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v14           #i$:I
    .end local v15           #len$:I
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_1b
    const/16 v22, 0x0

    goto :goto_5

    .restart local v9       #arr$:[Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v11       #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .restart local v14       #i$:I
    .restart local v15       #len$:I
    .restart local v18       #value:Ljava/lang/String;
    .restart local v19       #varName:Ljava/lang/String;
    :cond_1c
    if-eqz v18, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->eap:Landroid/net/wifi/WifiConfiguration$EnterpriseField;

    move-object/from16 v20, v0

    move-object v0, v11

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_1d

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v20

    if-nez v20, :cond_1e

    const-string v20, "NULL"

    move-object/from16 v18, v20

    :cond_1d
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

    if-nez v20, :cond_1a

    goto/16 :goto_3

    :cond_1e
    invoke-static/range {v18 .. v18}, Lcom/android/server/WifiService;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v18, v20

    goto :goto_7

    .end local v11           #field:Landroid/net/wifi/WifiConfiguration$EnterpriseField;
    .end local v18           #value:Ljava/lang/String;
    .end local v19           #varName:Ljava/lang/String;
    :cond_1f
    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->isProxyUpdated:Z

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proxy_enabled"

    move-object/from16 v0, p1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->proxyEnabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_22

    const/16 v22, 0x1

    :goto_8
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxyHost:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proxy_host"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxyHost:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proxy_port"

    move-object/from16 v0, p1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->proxyPort:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxyExceptions:Ljava/lang/String;

    move-object/from16 v20, v0

    if-eqz v20, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    move-object/from16 v20, v0

    const-string v21, "proxy_exceptions"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->proxyExceptions:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v16

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v20

    if-eqz v20, :cond_4

    :cond_21
    move/from16 v20, v16

    goto/16 :goto_1

    :cond_22
    const/16 v22, 0x0

    goto :goto_8
.end method

.method public disableNetwork(I)Z
    .locals 1
    .parameter "netId"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->disableNetwork(I)Z

    move-result v0

    return v0
.end method

.method public disconnect()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    move-result v0

    return v0
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

    iget-object v3, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

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

    :goto_0
    return-void

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

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Internal state:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v2

    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

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

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/WifiService$LockList;->access$3000(Lcom/android/server/WifiService$LockList;Ljava/io/PrintWriter;)V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 3
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateTracker;->getInterfaceName()Ljava/lang/String;

    move-result-object v0

    .local v0, ifname:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/NetworkUtils;->enableInterface(Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateTracker;->enableNetwork(IZ)Z

    move-result v1

    .local v1, result:Z
    if-nez v1, :cond_0

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    :cond_0
    return v1
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    :goto_0
    return-void

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

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v7, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v7}, Landroid/net/wifi/WifiStateTracker;->listNetworks()Ljava/lang/String;

    move-result-object v4

    .local v4, listStr:Ljava/lang/String;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-nez v4, :cond_1

    :cond_0
    return-object v5

    :cond_1
    const-string v7, "\n"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, lines:[Ljava/lang/String;
    const/4 v2, 0x1

    .local v2, i:I
    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_0

    aget-object v7, v3, v2

    const-string v8, "\t"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, result:[Ljava/lang/String;
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    array-length v7, v6

    if-le v7, v9, :cond_4

    aget-object v7, v6, v9

    const-string v8, "[CURRENT]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_2

    iput v11, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->readNetworkVariables(Landroid/net/wifi/WifiConfiguration;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/NumberFormatException;
    goto :goto_2

    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    aget-object v7, v6, v9

    const-string v8, "[DISABLED]"

    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v10, :cond_3

    const/4 v7, 0x1

    iput v7, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    :cond_3
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1

    :cond_4
    iput v12, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    goto :goto_1
.end method

.method public getConnectedDevList()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/motorola/android/wifi/StaInfo;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .local v5, staInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaInfo;>;"
    const/4 v7, 0x0

    .local v7, staStr:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, macList:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/WifiService;->getStaNetworkInfo()Ljava/util/List;

    move-result-object v6

    .local v6, staNetworkInfo:Ljava/util/List;,"Ljava/util/List<Lcom/motorola/android/wifi/StaNetworkInfo;>;"
    :try_start_0
    iget-object v8, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    sget-object v9, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroid/os/INetworkManagementService;->getConnectedDevList(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v8, Lcom/android/server/WifiService;->clientMacInfoPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v2}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v3

    .local v3, result:[Ljava/lang/String;
    const-string v8, "WifiManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getStaNetworkInfo:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v3

    if-ge v1, v8, :cond_0

    new-instance v4, Lcom/motorola/android/wifi/StaInfo;

    invoke-direct {v4}, Lcom/motorola/android/wifi/StaInfo;-><init>()V

    .local v4, staInfo:Lcom/motorola/android/wifi/StaInfo;
    aget-object v8, v3, v1

    iput-object v8, v4, Lcom/motorola/android/wifi/StaInfo;->mac:Ljava/lang/String;

    invoke-virtual {v4, v6}, Lcom/motorola/android/wifi/StaInfo;->fillNetworkInfo(Ljava/util/List;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v3           #result:[Ljava/lang/String;
    .end local v4           #staInfo:Lcom/motorola/android/wifi/StaInfo;
    :catch_0
    move-exception v8

    move-object v0, v8

    .local v0, e:Ljava/lang/Exception;
    const-string v8, "WifiService"

    const-string v9, "Exception in getConnectedDevList"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-object v5
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getDhcpInfo()Landroid/net/DhcpInfo;

    move-result-object v0

    return-object v0
.end method

.method getNetworkStateTracker()Landroid/net/NetworkStateTracker;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    return-object v0
.end method

.method public getNumAllowedChannels()I
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->getNumAllowedChannels()I

    move-result v0

    .local v0, numChannels:I
    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_num_allowed_channels"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    :cond_0
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
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8}, Landroid/net/wifi/WifiStateTracker;->scanResults()Ljava/lang/String;

    move-result-object v4

    .local v4, reply:Ljava/lang/String;
    if-nez v4, :cond_0

    const/4 v8, 0x0

    :goto_0
    return-object v8

    :cond_0
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .local v6, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    const/4 v2, 0x0

    .local v2, lineCount:I
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    .local v5, replyLen:I
    const/4 v1, 0x0

    .local v1, lineBeg:I
    const/4 v3, 0x0

    .local v3, lineEnd:I
    :goto_1
    if-gt v3, v5, :cond_5

    if-eq v3, v5, :cond_1

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0xa

    if-ne v8, v9, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    const/4 v8, 0x1

    if-ne v2, v8, :cond_3

    add-int/lit8 v1, v3, 0x1

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    if-le v3, v1, :cond_4

    invoke-virtual {v4, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .local v0, line:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/WifiService;->parseScanResult(Ljava/lang/String;)Landroid/net/wifi/ScanResult;

    move-result-object v7

    .local v7, scanResult:Landroid/net/wifi/ScanResult;
    if-eqz v7, :cond_4

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v0           #line:Ljava/lang/String;
    .end local v7           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    add-int/lit8 v1, v3, 0x1

    goto :goto_2

    :cond_5
    iget-object v8, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v8, v6}, Landroid/net/wifi/WifiStateTracker;->setScanResultsList(Ljava/util/List;)V

    move-object v8, v6

    goto :goto_0
.end method

.method public getValidChannelCounts()[I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    sget-object v0, Lcom/android/server/WifiService;->sValidRegulatoryChannelCounts:[I

    return-object v0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 9

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "WifiService"

    const-string v7, "AP settings not found, returning"

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v3}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v3, wifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_start_0
    const-string v4, "wifi_ap_ssid"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    if-nez v4, :cond_0

    move-object v4, v5

    :goto_0
    return-object v4

    :cond_0
    const-string v4, "wifi_ap_security"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .local v0, authType:I
    iget-object v4, v3, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v4, v0}, Ljava/util/BitSet;->set(I)V

    const-string v4, "wifi_ap_passwd"

    invoke-static {v1, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string v4, "wifi_ap_max_scb"

    invoke-static {v1, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    const-string v4, "wifi_ap_frequency"

    invoke-static {v1, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/wifi/WifiConfiguration;->frequency:I

    const-string v4, "wifi_ap_hidden"

    invoke-static {v1, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v4

    if-ne v4, v6, :cond_1

    move v4, v6

    :goto_1
    iput-boolean v4, v3, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v4, v3

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .end local v0           #authType:I
    :catch_0
    move-exception v4

    move-object v2, v4

    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "WifiService"

    const-string v4, "AP settings not found, returning"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_0

    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :catch_1
    move-exception v4

    move-object v2, v4

    .local v2, e:Lcom/motorola/android/provider/MotorolaSettings$SettingNotFoundException;
    const-string v4, "WifiService"

    const-string v4, "AP settings not found, returning"

    invoke-static {v8, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    goto :goto_0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget v0, p0, Lcom/android/server/WifiService;->mWifiApState:I

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->getWifiState()I

    move-result v0

    return v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v1}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceAccessPermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v0

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

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public manageSta(Ljava/util/List;Z)V
    .locals 3
    .parameter
    .parameter "disableOthers"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p1, devList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/server/WifiService;->nwService:Landroid/os/INetworkManagementService;

    sget-object v2, Lcom/android/server/WifiService;->mSoftapIface:Ljava/lang/String;

    invoke-interface {v1, p1, p2, v2}, Landroid/os/INetworkManagementService;->manageSta(Ljava/util/List;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiService"

    const-string v2, "Exception in manageSta"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyDriverPNO()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/WifiService;->mMotWifiScan:Landroid/net/wifi/MotWifiScan;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/WifiService;->mMotWifiScan:Landroid/net/wifi/MotWifiScan;

    invoke-virtual {v0}, Landroid/net/wifi/MotWifiScan;->notifyDriverPNO()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const-string v0, "WifiService"

    const-string v1, "rec driver PNO event, but MotWifiScan is not running!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseScanFlags(Ljava/lang/String;)Landroid/net/wifi/WifiConfiguration;
    .locals 3
    .parameter "flags"

    .prologue
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    return-object v0
.end method

.method public pingSupplicant()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->ping()Z

    move-result v0

    return v0
.end method

.method public reassociate()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reassociate()Z

    move-result v0

    return v0
.end method

.method public reconnect()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    move-result v0

    return v0
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceMulticastChangePermission()V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .local v3, uid:I
    iget-object v4, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    :try_start_0
    iget v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/server/WifiService;->mMulticastDisabled:I

    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .local v2, size:I
    const/4 v5, 0x1

    sub-int v0, v2, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v5, p0, Lcom/android/server/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/WifiService$Multicaster;

    .local v1, m:Lcom/android/server/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/WifiService$Multicaster;->getUid()I

    move-result v5

    if-ne v5, v3, :cond_0

    invoke-direct {p0, v0, v3}, Lcom/android/server/WifiService;->removeMulticasterLocked(II)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1           #m:Lcom/android/server/WifiService$Multicaster;
    :cond_1
    monitor-exit v4

    return-void

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
    iget-object v0, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v1

    monitor-exit v0

    return v1

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
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateTracker;->removeNetwork(I)Z

    move-result v0

    return v0
.end method

.method public saveConfiguration()Z
    .locals 5

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->saveConfig()Z

    move-result v2

    .local v2, result:Z
    if-eqz v2, :cond_0

    iget-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/WifiService;->mNeedReconfig:Z

    iget-object v4, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateTracker;->reloadConfig()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.net.wifi.NETWORK_IDS_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "backup"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .local v0, ibm:Landroid/app/backup/IBackupManager;
    if-eqz v0, :cond_1

    :try_start_1
    const-string v3, "com.android.providers.settings"

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->dataChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return v2

    .end local v0           #ibm:Landroid/app/backup/IBackupManager;
    .end local v2           #result:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v0       #ibm:Landroid/app/backup/IBackupManager;
    .restart local v2       #result:Z
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public setNumAllowedChannels(IZ)Z
    .locals 10
    .parameter "numChannels"
    .parameter "persist"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

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

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    const/4 v1, 0x0

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

    .local v4, validChan:I
    if-ne v4, p1, :cond_1

    const/4 v1, 0x1

    .end local v4           #validChan:I
    :cond_0
    if-nez v1, :cond_2

    move v5, v8

    :goto_1
    return v5

    .restart local v4       #validChan:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #validChan:I
    :cond_2
    iget-object v5, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v5, :cond_3

    move v5, v8

    goto :goto_1

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

    goto :goto_1

    :cond_4
    move v7, v8

    goto :goto_2
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 6
    .parameter "wifiConfig"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v2, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    if-nez p1, :cond_0

    const-string v2, "WifiService"

    const-string v3, "wifiConfig == null returning"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v2, "wifi_ap_ssid"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .local v1, isWpa:Z
    const-string v2, "wifi_ap_security"

    if-eqz v1, :cond_2

    move v3, v4

    :goto_1
    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-eqz v1, :cond_1

    const-string v2, "wifi_ap_passwd"

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    const-string v2, "wifi_ap_max_scb"

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->max_scb:I

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "wifi_ap_frequency"

    iget v3, p1, Landroid/net/wifi/WifiConfiguration;->frequency:I

    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "wifi_ap_hidden"

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v3, :cond_3

    move v3, v4

    :goto_2
    invoke-static {v0, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v5

    goto :goto_2
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z
    .locals 7
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    return v2

    :cond_0
    iget-object v2, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    sget-object v3, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    iput v3, p0, Lcom/android/server/WifiService;->mLastApEnableUid:I

    iget-boolean v3, p0, Lcom/android/server/WifiService;->mDoEntitlementCheck:Z

    if-eqz v3, :cond_5

    if-eqz p2, :cond_2

    new-instance v3, Lcom/motorola/android/wifi/ApEntitlement;

    iget-object v4, p0, Lcom/android/server/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/motorola/android/wifi/ApEntitlement;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/server/WifiService;->mApEntitlement:Lcom/motorola/android/wifi/ApEntitlement;

    iget-object v3, p0, Lcom/android/server/WifiService;->mApEntitlement:Lcom/motorola/android/wifi/ApEntitlement;

    invoke-virtual {v3, p1}, Lcom/motorola/android/wifi/ApEntitlement;->CheckEntitlement(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    :cond_1
    :goto_1
    monitor-exit v2

    move v2, v6

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    iget v3, p0, Lcom/android/server/WifiService;->mWifiApState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V

    goto :goto_1

    .end local v0           #ident:J
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #ident:J
    :cond_4
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    sget-object v5, Lcom/android/server/WifiService$DriverAction;->NO_DRIVER_UNLOAD:Lcom/android/server/WifiService$DriverAction;

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/WifiService;->setWifiApEnabledState(IILcom/android/server/WifiService$DriverAction;)V

    goto :goto_1

    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-direct {p0, p2, p1, v3}, Lcom/android/server/WifiService;->sendAccessPointMessage(ZLandroid/net/wifi/WifiConfiguration;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setWifiEnabled(Z)Z
    .locals 8
    .parameter "enable"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v4, "WifiService"

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    return v3

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v3, "/data/misc/wifi/provision"

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v0, f:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateTracker;->isPhoneProvisioned()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "WifiService"

    const-string v3, "!! Phone not provisioned - so Wifi not enabled"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .local v1, ident:J
    sget-object v4, Lcom/android/server/WifiService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    iput v4, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneToggleable()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v7

    :goto_1
    iput-boolean v4, p0, Lcom/android/server/WifiService;->mAirplaneModeOverwridden:Z

    const/4 v4, 0x1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-direct {p0, p1, v4, v5}, Lcom/android/server/WifiService;->sendEnableMessage(ZZI)V

    const-string v4, "WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setWifiEnabled enable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", persist=true, pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/WifiService;->mLastEnableUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    move v3, v7

    goto/16 :goto_0

    :cond_2
    move v4, v5

    goto :goto_1

    .end local v1           #ident:J
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

    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiHandler:Lcom/android/server/WifiService$WifiHandler;

    if-nez v0, :cond_0

    :goto_0
    return-void

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
    .locals 4

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->isAirplaneModeOn()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/WifiService;->getPersistedWifiEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/WifiService;->testAndClearWifiSavedState()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .local v0, wifiEnabled:Z
    :goto_0
    const-string v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v0, :cond_2

    const-string v3, "enabled"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/WifiService;->setWifiEnabled(Z)Z

    return-void

    .end local v0           #wifiEnabled:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .restart local v0       #wifiEnabled:Z
    :cond_2
    const-string v3, "disabled"

    goto :goto_1
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateTracker;->startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public startWpsPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "ssid"
    .parameter "bssid"
    .parameter "pin"

    .prologue
    invoke-direct {p0}, Lcom/android/server/WifiService;->enforceChangePermission()V

    iget-object v0, p0, Lcom/android/server/WifiService;->mWifiStateTracker:Landroid/net/wifi/WifiStateTracker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker;->startWpsPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    const/4 p2, 0x0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/WifiService;->enforceWakeSourcePermission(II)V

    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .local v0, ident:J
    :try_start_0
    iget-object v6, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #calls: Lcom/android/server/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v7, p1}, Lcom/android/server/WifiService$LockList;->access$3800(Lcom/android/server/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .local v2, index:I
    if-gez v2, :cond_2

    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

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

    :catch_0
    move-exception v6

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v7, p0, Lcom/android/server/WifiService;->mLocks:Lcom/android/server/WifiService$LockList;

    #getter for: Lcom/android/server/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v7}, Lcom/android/server/WifiService$LockList;->access$1900(Lcom/android/server/WifiService$LockList;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/WifiService$WifiLock;

    .local v5, wl:Lcom/android/server/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteReleaseWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    if-eqz p2, :cond_3

    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v7, v5, Lcom/android/server/WifiService$DeathRecipient;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v5}, Lcom/android/server/WifiService;->noteAcquireWifiLock(Lcom/android/server/WifiService$WifiLock;)V

    monitor-exit v6

    goto :goto_0

    :cond_3
    new-instance v7, Landroid/os/WorkSource;

    invoke-direct {v7, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
