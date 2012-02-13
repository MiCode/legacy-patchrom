.class public Landroid/net/wifi/WifiStateTracker;
.super Landroid/net/NetworkStateTracker;
.source "WifiStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;,
        Landroid/net/wifi/WifiStateTracker$SettingsObserver;,
        Landroid/net/wifi/WifiStateTracker$DhcpHandler;,
        Landroid/net/wifi/WifiStateTracker$WapiCertReqest;,
        Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;,
        Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    }
.end annotation


# static fields
.field private static final ADHOC_POWER_CONSUMPTION_PROMPT:I = 0x1

.field private static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "XX"

.field private static final DEFAULT_MAX_AUTH_RETRIES:I = 0x5

.field private static final DEFAULT_MAX_DHCP_RETRIES:I = 0x9

.field private static final DISCONNECT_DELAY_MSECS:I = 0x1388

.field private static final DRIVER_HUNG:I = 0x2

.field private static final DRIVER_PNO:I = 0x3

.field private static final DRIVER_POWER_MODE_ACTIVE:I = 0x1

.field private static final DRIVER_POWER_MODE_AUTO:I = 0x0

.field private static final DRIVER_RX_STREAMING_INTERVAL:I = 0x28

.field private static final DRIVER_STARTED:I = 0x0

.field private static final DRIVER_STOPPED:I = 0x1

.field private static final EVENTLOG_DRIVER_STATE_CHANGED:I = 0xc367

.field private static final EVENTLOG_INTERFACE_CONFIGURATION_STATE_CHANGED:I = 0xc368

.field private static final EVENTLOG_NETWORK_STATE_CHANGED:I = 0xc365

.field private static final EVENTLOG_SUPPLICANT_CONNECTION_STATE_CHANGED:I = 0xc369

.field private static final EVENTLOG_SUPPLICANT_STATE_CHANGED:I = 0xc366

.field private static final EVENT_DEFERRED_DISCONNECT:I = 0xa

.field private static final EVENT_DEFERRED_RECONNECT:I = 0xb

.field private static final EVENT_DHCP_START:I = 0x9

.field private static final EVENT_DRIVER_STATE_CHANGED:I = 0xc

.field private static final EVENT_INTERFACE_CONFIGURATION_FAILED:I = 0x7

.field private static final EVENT_INTERFACE_CONFIGURATION_SUCCEEDED:I = 0x6

.field private static final EVENT_MAYBE_START_SCAN_POST_DISCONNECT:I = 0xe

.field private static final EVENT_NETWORK_STATE_CHANGED:I = 0x4

.field private static final EVENT_PASSWORD_KEY_MAY_BE_INCORRECT:I = 0xd

.field private static final EVENT_POLL_INTERVAL:I = 0x8

.field private static final EVENT_SCAN_RESULTS_AVAILABLE:I = 0x5

.field private static final EVENT_SUPPLICANT_CONNECTION:I = 0x1

.field private static final EVENT_SUPPLICANT_DISCONNECT:I = 0x2

.field private static final EVENT_SUPPLICANT_STATE_CHANGED:I = 0x3

.field private static final EVENT_WAPI_CERT_REQUEST:I = 0x10

.field private static final EVENT_WIFI_PROTECTED_SETUP:I = 0xf

#the value of this static final field might be set in the static constructor
.field private static final HOTSPOT_ENABLED:Z = false

.field private static final ICON_NETWORKS_AVAILABLE:I = 0x10802db

.field private static final KICKSTART_SCANNING_DELAY_MSECS:I = 0x3a98

.field private static final LOCAL_LOGD:Z = true

.field private static LS:Ljava/lang/String; = null

.field private static final MAX_DHCP_POLL_COUNT:I = 0x1

.field private static final MAX_SUPPLICANT_LOOP_ITERATIONS:I = 0x4

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x1

.field private static final PNO_DBG:Z = false

.field private static final PNO_TAG:Ljava/lang/String; = "WifiStateTracker_PNO"

.field private static final POLL_STATUS_INTERVAL_MSECS:I = 0xbb8

.field private static final RECONNECT_DELAY_MSECS:I = 0x7d0

.field private static final RUN_STATE_RUNNING:I = 0x2

.field private static final RUN_STATE_STARTING:I = 0x1

.field private static final RUN_STATE_STOPPED:I = 0x4

.field private static final RUN_STATE_STOPPING:I = 0x3

.field public static final SUPPL_SCAN_HANDLING_LIST_ONLY:I = 0x2

.field public static final SUPPL_SCAN_HANDLING_NORMAL:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WifiStateTracker"

.field private static final mRunStateNames:[Ljava/lang/String;

.field private static sDnsPropNames:[Ljava/lang/String;


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final UNACTIVATED_MIN2_VALUE:Ljava/lang/String;

.field private final UNACTIVATED_MIN_VALUE:Ljava/lang/String;

.field private mAdhocNotification:Landroid/app/Notification;

.field private mAuthRetryCount:I

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private mCertManager:Landroid/net/wifi/WapiCertificateManager;

.field private mContext:Landroid/content/Context;

.field private mDhcpInfo:Landroid/net/DhcpInfo;

.field private mDhcpStateCount:I

.field private mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

.field private mDisableBluetoothCoExistenceMode:Z

.field private mDisconnectExpected:Z

.field private mDisconnectPending:Z

.field private mDisconnectedNetworkId:I

.field private mEnableRssiPolling:Z

.field private mHaveIpAddress:Z

.field private mInterfaceName:Ljava/lang/String;

.field private mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsHighPerfEnabled:Z

.field private mIsScanModeActive:Z

.field private mIsScanOnly:Z

.field private mLastBssid:Ljava/lang/String;

.field private mLastDhcpState:I

.field private mLastNetworkId:I

.field private final mLastRunningWifiUids:Landroid/os/WorkSource;

.field private mLastSignalLevel:I

.field private mLastSsid:Ljava/lang/String;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

.field private mNotificationMgr:Landroid/app/NotificationManager;

.field private mNotificationRepeatTime:J

.field private mNotificationSecuredEnabled:Z

.field private mNotificationShown:Z

.field private mNumAllowedChannels:I

.field private mNumScansSinceNetworkStateChange:I

.field private mNumSupplicantLoopIterations:I

.field private mNumSupplicantStateChanges:I

.field private mObtainingIpAddress:Z

.field private mOptimizationsDisabledRefCount:I

.field private mPacketStopFilter:Z

.field private mPasswordKeyMayBeIncorrect:Z

.field private mPendingCountryCode:Ljava/lang/String;

.field private mPhoneProvisioned:Z

.field private mPowerModeRefCount:I

.field private mProvisionSettingObserver:Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;

.field private mReconnectCount:I

.field private mReportedRunning:Z

.field private mRunState:I

.field private final mRunningWifiUids:Landroid/os/WorkSource;

.field private mScanResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

.field private mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

.field private mTornDownByConnMgr:Z

.field private mUseAutoIp:Z

.field private mUseStaticIp:Z

.field private mWM:Landroid/net/wifi/WifiManager;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiMonitor:Landroid/net/wifi/WifiMonitor;

.field private final mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWisprTarget:Landroid/net/wifi/WifiWisprClient;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v0, "ro.mot.wifi.hotspot"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Starting"

    aput-object v1, v0, v2

    const-string v1, "Running"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "Stopping"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Stopped"

    aput-object v2, v0, v1

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    const-string v0, "line.separator"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 11
    .parameter "context"
    .parameter "target"

    .prologue
    const/high16 v10, 0x1000

    const/4 v9, 0x2

    const/4 v8, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "WIFI"

    const-string v6, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkStateTracker;-><init>(Landroid/content/Context;Landroid/os/Handler;IILjava/lang/String;Ljava/lang/String;)V

    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mUseAutoIp:Z

    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    iput v4, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mDisableBluetoothCoExistenceMode:Z

    const-string v0, "000000"

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->UNACTIVATED_MIN2_VALUE:Ljava/lang/String;

    const-string v0, "1111110111"

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->UNACTIVATED_MIN_VALUE:Ljava/lang/String;

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/net/wifi/WifiInfo;

    invoke-direct {v0}, Landroid/net/wifi/WifiInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    new-instance v0, Landroid/net/wifi/WifiMonitor;

    invoke-direct {v0, p0}, Landroid/net/wifi/WifiMonitor;-><init>(Landroid/net/wifi/WifiStateTracker;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-direct {p0, v4}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;

    new-instance v0, Landroid/net/DhcpInfo;

    invoke-direct {v0}, Landroid/net/DhcpInfo;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    iput v3, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_networks_available_repeat_delay"

    const/16 v2, 0x384

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v5, 0x3e8

    mul-long/2addr v0, v5

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    new-instance v0, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabledSettingObserver:Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$NotificationEnabledSettingObserver;->register()V

    new-instance v0, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mProvisionSettingObserver:Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mProvisionSettingObserver:Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateTracker$ProvisionSettingObserver;->register()V

    sget-boolean v0, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/net/wifi/WifiWisprClient;->getPersistedHotSpotAutoConnect(Landroid/content/Context;)Z

    :cond_0
    new-instance v0, Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/WifiStateTracker$SettingsObserver;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSettingsObserver:Landroid/net/wifi/WifiStateTracker$SettingsObserver;

    const-string v0, "wifi.interface"

    const-string v1, "tiwlan0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dhcp."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".dns2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sput-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    new-instance v0, Landroid/net/wifi/WapiCertificateManager;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/net/wifi/WapiCertificateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mCertManager:Landroid/net/wifi/WapiCertificateManager;

    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationMgr:Landroid/app/NotificationManager;

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/Notification;->when:J

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    iput v9, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    const v1, 0x108008a

    iput v1, v0, Landroid/app/Notification;->icon:I

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {v7, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/high16 v0, 0x400

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "com.android.settings"

    const-string v1, "com.android.settings.wifi.WifiSettings"

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    invoke-static {p1, v4, v7, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    const v1, 0x10400c1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const v2, 0x10400c2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    iget-object v3, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/wifi/WifiStateTracker;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/net/wifi/WifiStateTracker;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/net/wifi/WifiStateTracker;)Landroid/net/NetworkInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/net/wifi/WifiStateTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1200(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return v0
.end method

.method static synthetic access$1202(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic access$1300(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    return-void
.end method

.method static synthetic access$1500(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mPhoneProvisioned:Z

    return v0
.end method

.method static synthetic access$1502(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mPhoneProvisioned:Z

    return p1
.end method

.method static synthetic access$1600(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$200(Landroid/net/wifi/WifiStateTracker;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Landroid/net/wifi/WifiStateTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mUseAutoIp:Z

    return p1
.end method

.method static synthetic access$400(Landroid/net/wifi/WifiStateTracker;)Landroid/net/DhcpInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method static synthetic access$500(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisableBluetoothCoExistenceMode:Z

    return v0
.end method

.method static synthetic access$600(Landroid/net/wifi/WifiStateTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    return v0
.end method

.method static synthetic access$700(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    return-void
.end method

.method static synthetic access$800(Landroid/net/wifi/WifiStateTracker;)Landroid/net/wifi/WifiInfo;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method static synthetic access$900(Landroid/net/wifi/WifiStateTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    return-void
.end method

.method private cancelDisconnect()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->removeMessages(I)V

    return-void
.end method

.method private checkIsBluetoothPlaying()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .local v3, isBluetoothPlaying:Z
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothA2dp;->getConnectedSinks()Ljava/util/Set;

    move-result-object v0

    .local v0, connected:Ljava/util/Set;,"Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .local v1, device:Landroid/bluetooth/BluetoothDevice;
    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v4, v1}, Landroid/bluetooth/BluetoothA2dp;->getSinkState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    .end local v1           #device:Landroid/bluetooth/BluetoothDevice;
    :cond_1
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiStateTracker;->setBluetoothScanMode(Z)V

    return-void
.end method

.method private declared-synchronized checkPollTimer()V
    .locals 3

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private checkUseStaticIp()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .local v1, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "wifi_use_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v3

    move-object v2, v3

    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_0

    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_1
    :try_start_1
    const-string v3, "wifi_static_ip"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, addr:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->ipAddress:I

    const-string v3, "wifi_static_gateway"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->gateway:I

    const-string v3, "wifi_static_netmask"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->netmask:I

    const-string v3, "wifi_static_dns1"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns1:I

    const-string v3, "wifi_static_dns2"

    invoke-static {v1, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->stringToIpAddr(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    goto :goto_0

    :cond_2
    :try_start_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    const/4 v4, 0x0

    iput v4, v3, Landroid/net/DhcpInfo;->dns2:I
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .end local v0           #addr:Ljava/lang/String;
    :catch_1
    move-exception v3

    move-object v2, v3

    .local v2, e:Ljava/net/UnknownHostException;
    goto :goto_0
.end method

.method private configureInterface()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v3, "WifiStateTracker"

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    const/4 v1, -0x1

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "WifiStateTracker"

    const-string v1, "Deleting default route"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->removeHostRoutes(Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/NetworkUtils;->removeDefaultRoute(Ljava/lang/String;)I

    :cond_1
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-nez v1, :cond_3

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->sendEmptyMessage(I)Z

    :cond_2
    monitor-exit p0

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_4
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-static {v1, v2}, Landroid/net/NetworkUtils;->configureInterface(Ljava/lang/String;Landroid/net/DhcpInfo;)Z

    move-result v1

    if-eqz v1, :cond_5

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    const/4 v0, 0x6

    .local v0, event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration succeeded"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    goto :goto_0

    .end local v0           #event:I
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    const/4 v0, 0x7

    .restart local v0       #event:I
    const-string v1, "WifiStateTracker"

    const-string v1, "Static IP configuration failed"

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private createNetworkDetectedDialogIntent()Landroid/app/PendingIntent;
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "wifi_prefnetworks_warning"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .local v2, wifiprefwarning:I
    if-nez v2, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    :goto_0
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v3, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, pi:Landroid/app/PendingIntent;
    return-object v1

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #pi:Landroid/app/PendingIntent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.net.wifi.WIFI_NETWORK_PREFERRED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0
.end method

.method private findWpsApBssidInScanResults(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "ssid"

    .prologue
    const-string v8, "WifiStateTracker"

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    const/4 v0, 0x0

    .local v0, bssid:Ljava/lang/String;
    const-string v4, "WifiStateTracker"

    const-string v4, "Latest scan results:"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v3

    .local v3, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v3, :cond_4

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "WifiStateTracker"

    const-string v4, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult;

    .local v2, r:Landroid/net/wifi/ScanResult;
    const-string v4, "WifiStateTracker"

    const-string v4, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget v7, v2, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget v7, v2, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v7, :cond_2

    const-string v7, ""

    :goto_2
    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, v2, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v5, "WPS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "WifiStateTracker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Matched WPS ap found in scan results, bssid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " by ssid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_3

    iget-object v0, v2, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object v7, v2, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Landroid/net/wifi/ScanResult;
    :cond_4
    move-object v4, v0

    goto/16 :goto_0
.end method

.method private getMaxDhcpRetries()I
    .locals 3

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_max_dhcp_retry_count"

    const/16 v2, 0x9

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V
    .locals 4
    .parameter "newState"
    .parameter "disableInterface"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    :cond_0
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setIPAddressCommand(I)Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    iput-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    iput-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastDhcpState:I

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpStateCount:I

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private handleWISPRLoginFailed(I)V
    .locals 6
    .parameter "notifType"

    .prologue
    const/4 v4, 0x1

    const-string v5, "WifiStateTracker"

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiWisprClient;->setHotSpotNotification(IZ)V

    iput-boolean v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x15f90

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    invoke-virtual {p0, v4}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "WifiStateTracker"

    const-string v0, "Reconnecting"

    invoke-static {v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z

    monitor-exit p0

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    const-string v0, "WifiStateTracker"

    const-string v0, "Disconnecting Hot Spot"

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z

    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z
    .locals 2
    .parameter "newSupplicantState"

    .prologue
    sget-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-gt v0, v1, :cond_2

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    if-eq v0, p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v1}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    :cond_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mSupplicantLoopState:Landroid/net/wifi/SupplicantState;

    :cond_1
    :goto_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    sget-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-eq p1, v0, :cond_3

    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    if-ne p1, v0, :cond_1

    :cond_3
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isWapiForOlympus()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, isOlympus:Z
    const-string v2, "ro.product.product_name"

    const-string v3, "none"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, product_name:Ljava/lang/String;
    const-string v2, "olympus_china"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V
    .locals 19
    .parameter "info"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->status()Ljava/lang/String;

    move-result-object v14

    .local v14, reply:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, SSID:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, BSSID:Ljava/lang/String;
    const/4 v15, 0x0

    .local v15, suppState:Ljava/lang/String;
    const/4 v11, -0x1

    .local v11, netId:I
    const/4 v5, 0x0

    .local v5, hiddenSSID:Z
    if-eqz v14, :cond_7

    const-string v17, "\n"

    move-object v0, v14

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, lines:[Ljava/lang/String;
    move-object v4, v9

    .local v4, arr$:[Ljava/lang/String;
    array-length v7, v4

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_7

    aget-object v8, v4, v6

    .local v8, line:Ljava/lang/String;
    const-string v17, " *= *"

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .local v13, prop:[Ljava/lang/String;
    move-object v0, v13

    array-length v0, v0

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v17, 0x0

    aget-object v10, v13, v17

    .local v10, name:Ljava/lang/String;
    const/16 v17, 0x1

    aget-object v16, v13, v17

    .local v16, value:Ljava/lang/String;
    const-string v17, "id"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_2

    :try_start_0
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    goto :goto_1

    :cond_2
    const-string v17, "scan_ssid"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    :try_start_1
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v17

    if-eqz v17, :cond_3

    const/16 v17, 0x1

    move/from16 v5, v17

    :goto_2
    goto :goto_1

    :cond_3
    const/16 v17, 0x0

    move/from16 v5, v17

    goto :goto_2

    :cond_4
    const-string v17, "ssid"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    move-object/from16 v3, v16

    goto :goto_1

    :cond_5
    const-string v17, "bssid"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_6

    move-object/from16 v2, v16

    goto :goto_1

    :cond_6
    const-string v17, "wpa_state"

    move-object v0, v10

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v15, v16

    goto :goto_1

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lines:[Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #prop:[Ljava/lang/String;
    .end local v16           #value:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p1

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkId(I)V

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setSSID(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move-object v1, v2

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setBSSID(Ljava/lang/String;)V

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setHiddenSSID(Z)V

    const/4 v12, 0x0

    .local v12, networkMode:I
    if-ltz v11, :cond_8

    const/16 v16, 0x0

    .restart local v16       #value:Ljava/lang/String;
    monitor-enter p0

    :try_start_2
    const-string v17, "mode"

    move v0, v11

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v16

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_8

    :try_start_3
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_2

    move-result v12

    .end local v16           #value:Ljava/lang/String;
    :cond_8
    :goto_3
    move-object/from16 v0, p1

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setNetworkMode(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v17

    sget-object v18, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    if-ne v0, v1, :cond_9

    if-eqz v15, :cond_9

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Ljava/lang/String;)V

    :cond_9
    return-void

    .restart local v16       #value:Ljava/lang/String;
    :catchall_0
    move-exception v17

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v17

    .end local v12           #networkMode:I
    .restart local v4       #arr$:[Ljava/lang/String;
    .restart local v6       #i$:I
    .restart local v7       #len$:I
    .restart local v8       #line:Ljava/lang/String;
    .restart local v9       #lines:[Ljava/lang/String;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v13       #prop:[Ljava/lang/String;
    :catch_0
    move-exception v17

    goto/16 :goto_1

    :catch_1
    move-exception v17

    goto/16 :goto_1

    .end local v4           #arr$:[Ljava/lang/String;
    .end local v6           #i$:I
    .end local v7           #len$:I
    .end local v8           #line:Ljava/lang/String;
    .end local v9           #lines:[Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v13           #prop:[Ljava/lang/String;
    .restart local v12       #networkMode:I
    :catch_2
    move-exception v17

    goto :goto_3
.end method

.method private declared-synchronized requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V
    .locals 6
    .parameter "info"
    .parameter "polling"

    .prologue
    const/4 v5, -0x1

    const/16 v4, -0xc8

    monitor-enter p0

    if-eqz p2, :cond_3

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssiApprox()I

    move-result v3

    move v1, v3

    .local v1, newRssi:I
    :goto_0
    if-eq v1, v5, :cond_4

    if-ge v4, v1, :cond_4

    const/16 v3, 0x100

    if-ge v1, v3, :cond_4

    if-lez v1, :cond_0

    add-int/lit16 v1, v1, -0x100

    :cond_0
    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiInfo;->setRssi(I)V

    const/4 v3, 0x4

    invoke-static {v1, v3}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v2

    .local v2, newSignalLevel:I
    iget v3, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    if-eq v2, v3, :cond_1

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->sendRssiChangeBroadcast(I)V

    :cond_1
    iput v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    .end local v2           #newSignalLevel:I
    :goto_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getLinkSpeed()I

    move-result v0

    .local v0, newLinkSpeed:I
    if-eq v0, v5, :cond_2

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiInfo;->setLinkSpeed(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    .end local v0           #newLinkSpeed:I
    .end local v1           #newRssi:I
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getRssi()I

    move-result v3

    move v1, v3

    goto :goto_0

    .restart local v1       #newRssi:I
    :cond_4
    const/16 v3, -0xc8

    invoke-virtual {p1, v3}, Landroid/net/wifi/WifiInfo;->setRssi(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v1           #newRssi:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private resetNotificationTimer()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    return-void
.end method

.method private resetSupplicantLoopState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantLoopIterations:I

    return-void
.end method

.method private resetWISPRLoginClient()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x7530

    add-long/2addr v1, v3

    iput-wide v1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    sget v1, Landroid/net/wifi/WifiWisprClient;->mHotSpotNotifType:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    iput-boolean v6, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWisprClient;->checkIfHotSpot(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    invoke-virtual {v1}, Landroid/net/wifi/WifiWisprClient;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    :cond_3
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_hotspot_autoconnect"

    invoke-static {v1, v2, v5}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4

    move v0, v5

    .local v0, mHotspotAutoConnectEnabled:Z
    :goto_1
    if-nez v0, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->removeNetwork(I)Z

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .end local v0           #mHotspotAutoConnectEnabled:Z
    :cond_4
    move v0, v6

    goto :goto_1
.end method

.method private scheduleDisconnect()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    invoke-virtual {p0, v2}, Landroid/net/wifi/WifiStateTracker;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v2, v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private sendNetworkProxyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "proxy"
    .parameter "exceptions"

    .prologue
    const-string v12, "WifiStateTracker"

    const-string v11, ", exceptions:"

    const-string v10, "wifi_proxy_exceptions"

    const-string v9, "wifi_proxy"

    const-string v8, ""

    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v6, "wifi_proxy"

    invoke-static {v0, v9}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, proxy0:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, ""

    move-object v4, v8

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, ""

    move-object v5, v8

    .local v5, proxy1:Ljava/lang/String;
    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "wifi_proxy_exceptions"

    invoke-static {v0, v10}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, exceptions0:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, ""

    move-object v1, v8

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, ""

    move-object v2, v8

    .local v2, exceptions1:Ljava/lang/String;
    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "WifiStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The same proxy settings, proxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exceptions:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #exceptions0:Ljava/lang/String;
    .end local v2           #exceptions1:Ljava/lang/String;
    :goto_2
    return-void

    .end local v5           #proxy1:Ljava/lang/String;
    :cond_2
    move-object v5, p1

    goto :goto_0

    .restart local v1       #exceptions0:Ljava/lang/String;
    .restart local v5       #proxy1:Ljava/lang/String;
    :cond_3
    move-object v2, p2

    goto :goto_1

    .end local v1           #exceptions0:Ljava/lang/String;
    :cond_4
    const-string v6, "WifiStateTracker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Wifi proxy settings are changed, proxy:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", exceptions:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v12, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "wifi_proxy"

    const-string v6, ""

    invoke-static {v0, v9, v8}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "wifi_proxy_exceptions"

    const-string v6, ""

    invoke-static {v0, v10, v8}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_3
    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.motorola.android.net.wifi.PROXY_CHANGE"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "proxy"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "proxyExceptions"

    invoke-virtual {v3, v6, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_5
    iget-object v6, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .end local v3           #intent:Landroid/content/Intent;
    :cond_6
    const-string v6, "wifi_proxy"

    invoke-static {v0, v9, p1}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    const-string v6, "wifi_proxy_exceptions"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, ""

    move-object v6, v8

    :goto_4
    invoke-static {v0, v10, v6}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :cond_7
    move-object v6, p2

    goto :goto_4
.end method

.method private sendNetworkStateChangeBroadcast(Ljava/lang/String;)V
    .locals 4
    .parameter "bssid"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateProxySettings()V

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x3000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "networkInfo"

    iget-object v2, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string v1, "bssid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getNetworkMode()I

    move-result v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationMgr:Landroid/app/NotificationManager;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mAdhocNotification:Landroid/app/Notification;

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->stopPacketFiltering()Z

    iput-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    :cond_1
    :goto_1
    return-void

    .end local v0           #intent:Landroid/content/Intent;
    :cond_2
    invoke-direct {p0, v2, v2}, Landroid/net/wifi/WifiStateTracker;->sendNetworkProxyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .restart local v0       #intent:Landroid/content/Intent;
    :cond_3
    iget-object v1, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v1

    sget-object v2, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v1, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    if-ne v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    goto :goto_1
.end method

.method private sendRssiChangeBroadcast(I)V
    .locals 2
    .parameter "newRssi"

    .prologue
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.RSSI_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "newRssi"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private sendWpsBroadcast(Ljava/lang/String;)V
    .locals 5
    .parameter "eventStr"

    .prologue
    const/4 v0, 0x0

    .local v0, event:I
    const-string v4, "WPS-AP-AVAILABLE-PIN"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const/4 v4, 0x7

    if-eq v0, v4, :cond_1

    const/16 v4, 0x9

    if-eq v0, v4, :cond_1

    const/16 v4, 0x8

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    :cond_2
    if-nez v0, :cond_c

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string v4, "WPS-AP-AVAILABLE-PBC"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x2

    goto :goto_0

    :cond_5
    const-string v4, "WPS-AP-AVAILABLE"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v0, 0x3

    goto :goto_0

    :cond_6
    const-string v4, "WPS-OVERLAP-DETECTED"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x4

    goto :goto_0

    :cond_7
    const-string v4, "WPS-WSC-START"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    const/4 v0, 0x5

    goto :goto_0

    :cond_8
    const-string v4, "WPS-M2D"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v0, 0x6

    goto :goto_0

    :cond_9
    const-string v4, "WPS-SUCCESS"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x7

    goto :goto_0

    :cond_a
    const-string v4, "WPS-FAIL"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    const/16 v0, 0x8

    goto :goto_0

    :cond_b
    const-string v4, "WPS-TIMEOUT"

    invoke-virtual {p1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0x9

    goto :goto_0

    :cond_c
    const/4 v1, 0x0

    .local v1, eventData:Ljava/lang/String;
    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .local v2, ind:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_d

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :cond_d
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_e

    const-string v1, ""

    :cond_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.motorola.android.net.wifi.WPS_EVENT_AVAILABLE"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v3, intent:Landroid/content/Intent;
    const-string v4, "wpsEvent"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "wpsEventInfo"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_1
.end method

.method private declared-synchronized setPowerMode(I)V
    .locals 2
    .parameter "mode"

    .prologue
    monitor-enter p0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :pswitch_0
    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_1
    :try_start_2
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    goto :goto_0

    :cond_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setPowerModeCommand(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private declared-synchronized setRegulatoryDomainCountry()V
    .locals 4

    .prologue
    const-string v1, "wifi_country_code"

    const-string v1, "WifiStateTracker"

    monitor-enter p0

    :try_start_0
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    const-string v2, "eth0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "WifiStateTracker"

    const-string v2, "setRegulatoryDomainCountry not called because not BCM interface"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setRegulatoryDomainCommand(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRegulatoryDomainCountry(): use pending coutry code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_3
    :try_start_2
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_country_code"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRegulatoryDomainCountry(): use coutry code from Settings: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/net/wifi/WifiNative;->setRegulatoryDomainCommand(Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private setSupplicantState(Landroid/net/wifi/SupplicantState;)V
    .locals 1
    .parameter "state"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    return-void
.end method

.method private setSupplicantState(Ljava/lang/String;)V
    .locals 1
    .parameter "stateName"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiInfo;->setSupplicantState(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    return-void
.end method

.method private setTornDownByConnMgr(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->updateNetworkInfo()V

    return-void
.end method

.method private startWISPRLoginClient()V
    .locals 4

    .prologue
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "WISPR Client Thread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v1, wisprThread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v2, Landroid/net/wifi/WifiWisprClient;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0, p0}, Landroid/net/wifi/WifiWisprClient;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    invoke-virtual {v2}, Landroid/net/wifi/WifiWisprClient;->startLogin()V

    :cond_0
    return-void
.end method

.method private static stringToIpAddr(Ljava/lang/String;)I
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

    move-result v0

    .local v0, a:I
    const/4 v6, 0x1

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v1, v6, 0x8

    .local v1, b:I
    const/4 v6, 0x2

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    shl-int/lit8 v2, v6, 0x10

    .local v2, c:I
    const/4 v6, 0x3

    aget-object v6, v5, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    shl-int/lit8 v3, v6, 0x18

    .local v3, d:I
    or-int v6, v0, v1

    or-int/2addr v6, v2

    or-int/2addr v6, v3

    return v6
.end method

.method private updateNetworkInfo()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    return-void
.end method

.method private updateProxySettings()V
    .locals 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/16 v10, 0x22

    const/4 v9, 0x1

    const-string v13, "WifiStateTracker"

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v7, :cond_0

    const/4 v7, -0x1

    move v1, v7

    .local v1, netId:I
    :goto_0
    if-gez v1, :cond_2

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v7}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-nez v7, :cond_1

    const/4 v7, -0x1

    move v1, v7

    :goto_1
    if-gez v1, :cond_2

    :goto_2
    return-void

    .end local v1           #netId:I
    :cond_0
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    move v1, v7

    goto :goto_0

    .restart local v1       #netId:I
    :cond_1
    iget-object v7, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v7

    move v1, v7

    goto :goto_1

    :cond_2
    const-string v7, "WifiStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProxySettings, wifiInfo: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    .local v6, value:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, proxyEnabled:Z
    monitor-enter p0

    :try_start_0
    const-string v7, "proxy_enabled"

    invoke-static {v1, v7}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_3

    :try_start_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_4

    move v2, v9

    :cond_3
    :goto_3
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_5

    const-string v7, "WifiStateTracker"

    const-string v7, "updateProxySettings, proxy is disabled."

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v11, v11}, Landroid/net/wifi/WifiStateTracker;->sendNetworkProxyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    move v2, v12

    goto :goto_3

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v7

    :cond_5
    const/4 v4, 0x0

    .local v4, proxyHost:Ljava/lang/String;
    const/4 v5, -0x1

    .local v5, proxyPort:I
    const/4 v3, 0x0

    .local v3, proxyExceptions:Ljava/lang/String;
    monitor-enter p0

    :try_start_4
    const-string v7, "proxy_host"

    invoke-static {v1, v7}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v4, v6

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v0, v7, v9

    .local v0, lastPos:I
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_6

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_6

    const/4 v7, 0x1

    invoke-virtual {v4, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .end local v0           #lastPos:I
    :cond_6
    const-string v7, "proxy_port"

    invoke-static {v1, v7}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result v7

    if-nez v7, :cond_7

    :try_start_5
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    move-result v5

    :cond_7
    :goto_4
    :try_start_6
    const-string v7, "proxy_exceptions"

    invoke-static {v1, v7}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    move-object v3, v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    sub-int v0, v7, v9

    .restart local v0       #lastPos:I
    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_8

    const/4 v7, 0x1

    invoke-virtual {v3, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    const/4 v3, 0x0

    .end local v0           #lastPos:I
    :cond_9
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v7, "WifiStateTracker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateProxySettings, proxy: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v13, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    if-gtz v5, :cond_b

    :cond_a
    invoke-direct {p0, v11, v11}, Landroid/net/wifi/WifiStateTracker;->sendNetworkProxyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :catchall_1
    move-exception v7

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v7

    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7, v3}, Landroid/net/wifi/WifiStateTracker;->sendNetworkProxyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .end local v3           #proxyExceptions:Ljava/lang/String;
    .end local v4           #proxyHost:Ljava/lang/String;
    .end local v5           #proxyPort:I
    :catch_0
    move-exception v7

    goto/16 :goto_3

    .restart local v3       #proxyExceptions:Ljava/lang/String;
    .restart local v4       #proxyHost:Ljava/lang/String;
    .restart local v5       #proxyPort:I
    :catch_1
    move-exception v7

    goto/16 :goto_4
.end method

.method private wifiManagerDisableNetwork(I)Z
    .locals 4
    .parameter "networkId"

    .prologue
    const-string v3, "WifiStateTracker"

    const/4 v0, 0x0

    .local v0, disabledNetwork:Z
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, p1}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Disabled network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to disable network: invalid network id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0
.end method


# virtual methods
.method public declared-synchronized addNetwork()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->addNetworkCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addToBlacklist(Ljava/lang/String;)Z
    .locals 2
    .parameter "bssid"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->addToBlacklistCommand(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public cancelAdhocNotification()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startPacketFiltering()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mPacketStopFilter:Z

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationMgr:Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public declared-synchronized clearBlacklist()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->clearBlacklistCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized closeSupplicantConnection()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->closeSupplicantConnection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized connectToSupplicant()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->connectToSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disableNetwork(I)Z
    .locals 3
    .parameter "netId"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set Any network Disabled as true on disableNetwork netID ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->disableNetworkCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnect()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->disconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized disconnectAndStop()Z
    .locals 5

    .prologue
    const/4 v2, 0x3

    monitor-enter p0

    const/4 v0, 0x1

    .local v0, ret:Z
    :try_start_0
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    sget-boolean v1, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    invoke-static {v1, v2}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    move-result v0

    :goto_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return v0

    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized enableAllNetworks(Ljava/util/List;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, networks:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .local v0, config:Landroid/net/wifi/WifiConfiguration;
    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->status:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #config:Landroid/net/wifi/WifiConfiguration;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    const-string v0, "WifiStateTracker"

    const-string v1, "Set Any network Disabled as true on enableNetwork disable others"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->enableNetworkCommand(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableRssiPolling(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mEnableRssiPolling:Z

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    :cond_0
    return-void
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getLinkSpeed()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getLinkSpeedCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNameServers()[Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/net/wifi/WifiStateTracker;->sDnsPropNames:[Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiStateTracker;->getNameServerList([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkSubtype()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "netId"
    .parameter "name"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2}, Landroid/net/wifi/WifiNative;->getNetworkVariableCommand(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNumAllowedChannels()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getNumAllowedChannelsCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPowerMode()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getPowerModeCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssi()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getRssiApprox()I
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getRssiApproxCommand()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getScanResultsList()Ljava/util/List;
    .locals 1
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
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSupplicantState()Landroid/net/wifi/SupplicantState;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method public getTcpBufferSizesPropName()Ljava/lang/String;
    .locals 1

    .prologue
    const-string v0, "net.tcp.buffersize.wifi"

    return-object v0
.end method

.method protected declared-synchronized getWapiCertRequestCommand()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->getWapiCertRequestCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWifiState()I
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 30
    .parameter "msg"

    .prologue
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-static {}, Landroid/net/wifi/WifiStateTracker;->isWapiForOlympus()Z

    move-result v26

    if-eqz v26, :cond_1

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setRegulatoryDomainCountry()V

    :cond_1
    monitor-enter p0

    const/16 v26, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v16

    .local v16, macaddr:Ljava/lang/String;
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkUseStaticIp()V

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Looper;->quit()V

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    :cond_3
    new-instance v10, Landroid/os/HandlerThread;

    const-string v26, "DHCP Handler Thread"

    move-object v0, v10

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .local v10, dhcpThread:Landroid/os/HandlerThread;
    invoke-virtual {v10}, Landroid/os/HandlerThread;->start()V

    new-instance v26, Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    invoke-virtual {v10}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v27

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;-><init>(Landroid/net/wifi/WifiStateTracker;Landroid/os/Looper;Landroid/os/Handler;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mPowerModeRefCount:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    const-string v26, "WifiStateTracker"

    const-string v27, "Set Any network Disabled as false on Supplicant Connection"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastDhcpState:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpStateCount:I

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v23

    .local v23, supplState:Landroid/net/wifi/SupplicantState;
    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Connection to supplicant established, state="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v26, 0xc369

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Landroid/util/EventLog;->writeEvent(II)I

    sget-object v26, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    :cond_4
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v26

    if-eqz v26, :cond_5

    new-instance v15, Landroid/content/Intent;

    const-string v26, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v15, intent:Landroid/content/Intent;
    const-string v26, "connected"

    const/16 v27, 0x1

    move-object v0, v15

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v15           #intent:Landroid/content/Intent;
    :cond_5
    sget-object v26, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_7

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->initializeMulticastFiltering()Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v26, v0

    if-nez v26, :cond_6

    new-instance v26, Landroid/bluetooth/BluetoothA2dp;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-direct/range {v26 .. v27}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    :cond_6
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkIsBluetoothPlaying()V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "eth0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_8

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setRegulatoryDomainCountry()V

    goto/16 :goto_0

    .end local v10           #dhcpThread:Landroid/os/HandlerThread;
    .end local v16           #macaddr:Ljava/lang/String;
    .end local v23           #supplState:Landroid/net/wifi/SupplicantState;
    :catchall_0
    move-exception v26

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v26

    .restart local v16       #macaddr:Ljava/lang/String;
    :catchall_1
    move-exception v26

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v26

    .restart local v10       #dhcpThread:Landroid/os/HandlerThread;
    .restart local v23       #supplState:Landroid/net/wifi/SupplicantState;
    :cond_7
    invoke-static/range {v23 .. v23}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    goto/16 :goto_0

    .end local v10           #dhcpThread:Landroid/os/HandlerThread;
    .end local v16           #macaddr:Ljava/lang/String;
    .end local v23           #supplState:Landroid/net/wifi/SupplicantState;
    :sswitch_1
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    monitor-enter p0

    const/16 v26, 0x0

    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v26

    if-eqz v26, :cond_c

    const/16 v26, 0x1

    move/from16 v11, v26

    .local v11, died:Z
    :goto_2
    if-eqz v11, :cond_d

    const-string v26, "WifiStateTracker"

    const-string v27, "Supplicant died unexpectedly"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const v26, 0xc369

    if-eqz v11, :cond_e

    const/16 v27, 0x2

    :goto_4
    invoke-static/range {v26 .. v27}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->closeSupplicantConnection()V

    if-eqz v11, :cond_9

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    :cond_9
    monitor-enter p0

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v26, v0

    if-eqz v26, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->getLooper()Landroid/os/Looper;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/os/Looper;->quit()V

    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    :cond_a
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.net.wifi.STATE_CHANGE"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v26

    if-eqz v26, :cond_b

    new-instance v15, Landroid/content/Intent;

    const-string v26, "android.net.wifi.supplicant.CONNECTION_CHANGE"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v15       #intent:Landroid/content/Intent;
    const-string v26, "connected"

    const/16 v27, 0x0

    move-object v0, v15

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .end local v15           #intent:Landroid/content/Intent;
    :cond_b
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    sget-object v26, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    if-eqz v11, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_0

    .end local v11           #died:Z
    :catchall_2
    move-exception v26

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v26

    :cond_c
    const/16 v26, 0x0

    move/from16 v11, v26

    goto/16 :goto_2

    .restart local v11       #died:Z
    :cond_d
    const-string v26, "WifiStateTracker"

    const-string v27, "Connection to supplicant lost"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    const/16 v27, 0x0

    goto/16 :goto_4

    :catchall_3
    move-exception v26

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v26

    .end local v11           #died:Z
    :sswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    .local v24, supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v19, v0

    .local v19, newState:Landroid/net/wifi/SupplicantState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v8

    .local v8, currentState:Landroid/net/wifi/SupplicantState;
    invoke-virtual/range {v19 .. v19}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v26

    and-int/lit8 v13, v26, 0x3f

    .local v13, eventLogParam:I
    const v26, 0xc366

    move/from16 v0, v26

    move v1, v13

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Changing supplicant state: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ==> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, v24

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->networkId:I

    move/from16 v17, v0

    .local v17, networkId:I
    sget-object v26, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    move/from16 v26, v0

    move/from16 v0, v17

    move/from16 v1, v26

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    move/from16 v26, v0

    if-lez v26, :cond_f

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Resetting mAuthRetryCount : networkID= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " mDisconnectedNetworkId="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->state:Landroid/net/wifi/SupplicantState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_10

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    :cond_10
    sget-object v26, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_11

    sget-object v26, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_12

    :cond_11
    const/16 v26, 0xe

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mNumSupplicantStateChanges:I

    move/from16 v27, v0

    const/16 v28, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(III)Landroid/os/Message;

    move-result-object v26

    const-wide/16 v27, 0x3a98

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_12
    const/4 v14, 0x0

    .local v14, failedToAuthenticate:Z
    sget-object v26, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    move v14, v0

    :cond_13
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    const/4 v12, 0x0

    .local v12, disabledNetwork:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->isSupplicantLooping(Landroid/net/wifi/SupplicantState;)Z

    move-result v26

    if-eqz v26, :cond_14

    const-string v26, "WifiStateTracker"

    const-string v27, "Stop WPA supplicant loop and disable network"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    move-result v12

    :cond_14
    if-eqz v12, :cond_15

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, v19

    move-object v1, v8

    if-ne v0, v1, :cond_16

    sget-object v26, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v26

    if-eqz v26, :cond_0

    :cond_16
    sget-object v26, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_1d

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    const/16 v26, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    .local v20, reconnectMsg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v26, v0

    if-nez v26, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1a

    :cond_17
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    .local v18, newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    :goto_5
    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v26, v0

    if-nez v26, :cond_1b

    const-wide/16 v26, 0x7d0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-wide/from16 v2, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .end local v18           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v20           #reconnectMsg:Landroid/os/Message;
    :cond_18
    :goto_6
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    new-instance v15, Landroid/content/Intent;

    const-string v26, "android.net.wifi.supplicant.STATE_CHANGE"

    move-object v0, v15

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .restart local v15       #intent:Landroid/content/Intent;
    const/high16 v26, 0x3000

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v26, "newState"

    move-object v0, v15

    move-object/from16 v1, v26

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    if-eqz v14, :cond_19

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_24

    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to authenticate, disabling network "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->wifiManagerDisableNetwork(I)Z

    const-string v26, "supplicantError"

    const/16 v27, 0x1

    move-object v0, v15

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_19
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .end local v15           #intent:Landroid/content/Intent;
    .restart local v20       #reconnectMsg:Landroid/os/Message;
    :cond_1a
    sget-object v18, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    .restart local v18       #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v26, v0

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->stopDriver()Z

    goto/16 :goto_6

    :cond_1c
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v26, v0

    if-nez v26, :cond_18

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_6

    .end local v18           #newDetailedState:Landroid/net/NetworkInfo$DetailedState;
    .end local v20           #reconnectMsg:Landroid/os/Message;
    :cond_1d
    sget-object v26, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_20

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v26

    if-nez v26, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    move/from16 v26, v0

    if-eqz v26, :cond_1f

    :cond_1e
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_6

    :cond_1f
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_6

    :cond_20
    sget-object v26, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_23

    sget-object v26, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    move-object v0, v8

    move-object/from16 v1, v26

    if-ne v0, v1, :cond_21

    sget-object v26, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_22

    sget-object v26, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_22

    sget-object v26, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_22

    sget-object v26, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    if-eq v0, v1, :cond_22

    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    invoke-static/range {v19 .. v19}, Landroid/net/wifi/WifiInfo;->getDetailedStateOf(Landroid/net/wifi/SupplicantState;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto/16 :goto_6

    :cond_22
    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Ignore  events : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " ==> "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_23
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setSupplicantState(Landroid/net/wifi/SupplicantState;)V

    goto/16 :goto_6

    .restart local v15       #intent:Landroid/content/Intent;
    :cond_24
    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed to authenticate, retry network "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " count "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    .end local v8           #currentState:Landroid/net/wifi/SupplicantState;
    .end local v12           #disabledNetwork:Z
    .end local v13           #eventLogParam:I
    .end local v14           #failedToAuthenticate:Z
    .end local v15           #intent:Landroid/content/Intent;
    .end local v17           #networkId:I
    .end local v19           #newState:Landroid/net/wifi/SupplicantState;
    .end local v24           #supplicantStateResult:Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    .local v21, result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v26

    and-int/lit8 v13, v26, 0x3f

    .restart local v13       #eventLogParam:I
    const v26, 0xc365

    move/from16 v0, v26

    move v1, v13

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(II)I

    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "New network state is "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v26, v0

    if-eqz v26, :cond_25

    const-string v26, "WifiStateTracker"

    const-string v27, "Dropping event in scan-only mode"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_25
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_26

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    :cond_26
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->scheduleDisconnect()V

    goto/16 :goto_0

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_29

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v26, v0

    if-nez v26, :cond_29

    :cond_28
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    :cond_29
    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->state:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v26, v0

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_2c

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    sget-boolean v26, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v26, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/net/wifi/WifiWisprClient;->clearHotSpotNotification(Landroid/content/Context;Z)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    :cond_2a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mDisconnectPending:Z

    move/from16 v25, v0

    .local v25, wasDisconnectPending:Z
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->cancelDisconnect()V

    if-eqz v25, :cond_2b

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v22

    .local v22, saveState:Landroid/net/NetworkInfo$DetailedState;
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedStateInternal(Landroid/net/NetworkInfo$DetailedState;)V

    .end local v22           #saveState:Landroid/net/NetworkInfo$DetailedState;
    :cond_2b
    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->configureInterface()V

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->BSSID:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastBssid:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSsid:Ljava/lang/String;

    move-object/from16 v0, v21

    iget v0, v0, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;->networkId:I

    move/from16 v26, v0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_2d

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    .end local v25           #wasDisconnectPending:Z
    :cond_2c
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v25       #wasDisconnectPending:Z
    :cond_2d
    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    goto :goto_8

    .end local v13           #eventLogParam:I
    .end local v21           #result:Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;
    .end local v25           #wasDisconnectPending:Z
    :sswitch_5
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v26

    if-eqz v26, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v26, v0

    new-instance v27, Landroid/content/Intent;

    const-string v28, "android.net.wifi.SCAN_RESULTS"

    invoke-direct/range {v27 .. v28}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v26 .. v27}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_2e
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->sendScanResultsAvailable()V

    const/16 v26, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setScanMode(Z)Z

    goto/16 :goto_0

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->checkPollTimer()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v26, v0

    if-nez v26, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseAutoIp:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpStateCount:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_2f

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpStateCount:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Lcom/motorola/android/net/MotorolaNetworkUtilsExt;->getDhcpState(Ljava/lang/String;Landroid/net/DhcpInfo;)I

    move-result v9

    .local v9, dhcpState:I
    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "DHCP pre/cur states: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastDhcpState:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastDhcpState:I

    move/from16 v26, v0

    move v0, v9

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    move v0, v9

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastDhcpState:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "sendNetworkStateChangeBroadcast: DHCP state changed to :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastDhcpState:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v9           #dhcpState:I
    :cond_2f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpStateCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDhcpStateCount:I

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    const/16 v27, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->handleDisconnectedState(Landroid/net/NetworkInfo$DetailedState;Z)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    if-eqz v26, :cond_31

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v5, v26

    .local v5, BSSID:Ljava/lang/String;
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->getMaxDhcpRetries()I

    move-result v27

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_30

    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Failed reconnect count: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, " Disabling "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    :cond_30
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    goto/16 :goto_0

    .end local v5           #BSSID:Ljava/lang/String;
    :cond_31
    const/16 v26, 0x0

    move-object/from16 v5, v26

    goto :goto_9

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mReconnectCount:I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mAuthRetryCount:I

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mDisconnectedNetworkId:I

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    monitor-enter p0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/net/DhcpInfo;->ipAddress:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Landroid/net/wifi/WifiNative;->setIPAddressCommand(I)Z

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mUseStaticIp:Z

    move/from16 v26, v0

    if-nez v26, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v26

    sget-object v27, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_32

    sget-object v26, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->setDetailedState(Landroid/net/NetworkInfo$DetailedState;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendNetworkStateChangeBroadcast(Ljava/lang/String;)V

    :goto_a
    const-string v26, "WifiStateTracker"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "IP configuration: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v26, 0xc368

    const/16 v27, 0x1

    invoke-static/range {v26 .. v27}, Landroid/util/EventLog;->writeEvent(II)I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->resetNotificationTimer()V

    sget-boolean v26, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/net/wifi/WifiWisprClient;->checkIfHotSpot(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mLastNetworkId:I

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->startWISPRLoginClient()V

    goto/16 :goto_0

    :catchall_4
    move-exception v26

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v26

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    move-object/from16 v26, v0

    const/16 v27, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/NetworkStateTracker;->mNetworkInfo:Landroid/net/NetworkInfo;

    move-object/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_a

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v26

    sget-object v27, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    if-eq v0, v1, :cond_0

    const v26, 0xc368

    const/16 v27, 0x0

    invoke-static/range {v26 .. v27}, Landroid/util/EventLog;->writeEvent(II)I

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z

    goto/16 :goto_0

    :sswitch_b
    const v26, 0xc367

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v27, v0

    invoke-static/range {v26 .. v27}, Landroid/util/EventLog;->writeEvent(II)I

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    :goto_b
    monitor-enter p0

    const/16 v26, 0x0

    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V

    monitor-exit p0

    goto/16 :goto_0

    :catchall_5
    move-exception v26

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v26

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    move-object/from16 v26, v0

    const-string v27, "eth0"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    if-eqz v26, :cond_35

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setRegulatoryDomainCountry()V

    :goto_c
    monitor-enter p0

    :try_start_b
    invoke-static {}, Landroid/net/wifi/WifiNative;->getMacAddressCommand()Ljava/lang/String;

    move-result-object v16

    .restart local v16       #macaddr:Ljava/lang/String;
    if-eqz v16, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setMacAddress(Ljava/lang/String;)V

    :cond_33
    invoke-static {}, Landroid/net/wifi/WifiStateTracker;->isWapiForOlympus()Z

    move-result v26

    if-eqz v26, :cond_34

    invoke-direct/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setRegulatoryDomainCountry()V

    :cond_34
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    move/from16 v26, v0

    if-nez v26, :cond_36

    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z

    :goto_d
    monitor-exit p0

    goto :goto_b

    .end local v16           #macaddr:Ljava/lang/String;
    :catchall_6
    move-exception v26

    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw v26

    :cond_35
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels()Z

    goto :goto_c

    .restart local v16       #macaddr:Ljava/lang/String;
    :cond_36
    const/16 v26, 0x1

    :try_start_c
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker;->scan(Z)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    goto :goto_d

    .end local v16           #macaddr:Ljava/lang/String;
    :pswitch_1
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    goto :goto_b

    :pswitch_2
    const-string v26, "WifiStateTracker"

    const-string v27, "Wifi Driver reports HUNG - reloading."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto/16 :goto_b

    :pswitch_3
    const-string v26, "WifiStateTracker"

    const-string v27, "Wifi Driver reports PNO finding AP."

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/net/wifi/WifiManager;->notifyDriverPNO()Z

    goto/16 :goto_b

    :sswitch_c
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mPasswordKeyMayBeIncorrect:Z

    goto/16 :goto_0

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->sendWpsBroadcast(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_e
    sget-boolean v26, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v26, :cond_0

    const-string v26, "WifiStateTracker"

    const-string v27, "WISPR_LOGIN_SUCCESSFUL"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mWisprTarget:Landroid/net/wifi/WifiWisprClient;

    move-object/from16 v26, v0

    const/16 v27, 0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    move/from16 v28, v0

    invoke-virtual/range {v26 .. v28}, Landroid/net/wifi/WifiWisprClient;->setHotSpotNotification(IZ)V

    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    const-wide/32 v28, 0x15f90

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    goto/16 :goto_0

    :sswitch_f
    sget-boolean v26, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v26, :cond_0

    const-string v26, "WifiStateTracker"

    const-string v27, "WISPR_LOGIN_FAILED_NETWORK"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleWISPRLoginFailed(I)V

    goto/16 :goto_0

    :sswitch_10
    sget-boolean v26, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v26, :cond_0

    const-string v26, "WifiStateTracker"

    const-string v27, "WISPR_LOGIN_FAILED_AUTHENTICATION"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleWISPRLoginFailed(I)V

    goto/16 :goto_0

    :sswitch_11
    sget-boolean v26, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v26, :cond_0

    const-string v26, "WifiStateTracker"

    const-string v27, "WISPR_LOGIN_FAILED_NOSIM"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v26, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/net/wifi/WifiStateTracker;->handleWISPRLoginFailed(I)V

    goto/16 :goto_0

    :sswitch_12
    const-string v26, "WifiStateTracker"

    const-string v27, "EVENT_WAPI_CERT_REQUEST"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Landroid/net/wifi/WifiStateTracker$WapiCertReqest;

    .local v6, certReq:Landroid/net/wifi/WifiStateTracker$WapiCertReqest;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker;->mCertManager:Landroid/net/wifi/WapiCertificateManager;

    move-object/from16 v26, v0

    move-object v0, v6

    iget-object v0, v0, Landroid/net/wifi/WifiStateTracker$WapiCertReqest;->parameters:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Landroid/net/wifi/WapiCertificateManager;->handleCertReq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .local v7, certWithKey:Ljava/lang/String;
    if-nez v7, :cond_37

    const-string v26, "WifiStateTracker"

    const-string v27, "certWithKey == null, should not happen"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_37
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/net/wifi/WifiNative;->setWapiCertResponseCommand(ILjava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    const-string v26, "WifiStateTracker"

    const-string v27, "WifiNative.setWapiCertResponseCommand failed"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_9
        0x7 -> :sswitch_a
        0x8 -> :sswitch_6
        0xa -> :sswitch_7
        0xb -> :sswitch_8
        0xc -> :sswitch_b
        0xd -> :sswitch_c
        0xe -> :sswitch_2
        0xf -> :sswitch_d
        0x10 -> :sswitch_12
        0x1f4 -> :sswitch_e
        0x1f5 -> :sswitch_f
        0x1f6 -> :sswitch_10
        0x1f7 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public hasIpAddress()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    return v0
.end method

.method public interpretScanResultsAvailable()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v8, :cond_1

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z

    if-nez v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .local v1, networkInfo:Landroid/net/NetworkInfo;
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v7

    .local v7, state:Landroid/net/NetworkInfo$State;
    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v7, v8, :cond_2

    sget-object v8, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v7, v8, :cond_9

    :cond_2
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->getScanResultsList()Ljava/util/List;

    move-result-object v6

    .local v6, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v6, :cond_9

    const/4 v2, 0x0

    .local v2, numNetworks:I
    const/4 v3, 0x0

    .local v3, numOpenNetworks:I
    const/4 v4, 0x0

    .local v4, numSecuredNetworks:I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    sub-int v0, v8, v10

    .local v0, i:I
    :goto_1
    if-ltz v0, :cond_4

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    .local v5, scanResult:Landroid/net/wifi/ScanResult;
    iget-object v8, v5, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .end local v5           #scanResult:Landroid/net/wifi/ScanResult;
    :cond_4
    if-lez v3, :cond_5

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-nez v8, :cond_6

    :cond_5
    if-lez v4, :cond_9

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z

    if-eqz v8, :cond_9

    :cond_6
    iget v8, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v8, v8, 0x1

    iput v8, p0, Landroid/net/wifi/WifiStateTracker;->mNumScansSinceNetworkStateChange:I

    if-lt v8, v10, :cond_0

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-eqz v8, :cond_7

    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationSecuredEnabled:Z

    if-eqz v8, :cond_7

    add-int v2, v4, v3

    :goto_3
    invoke-virtual {p0, v10, v2, v9, v9}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_0

    :cond_7
    iget-boolean v8, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationEnabled:Z

    if-eqz v8, :cond_8

    move v2, v3

    goto :goto_3

    :cond_8
    move v2, v4

    goto :goto_3

    .end local v0           #i:I
    .end local v2           #numNetworks:I
    .end local v3           #numOpenNetworks:I
    .end local v4           #numSecuredNetworks:I
    .end local v6           #scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_9
    invoke-virtual {p0, v9, v9, v9, v9}, Landroid/net/wifi/WifiStateTracker;->setNotificationVisible(ZIZI)V

    goto :goto_0
.end method

.method public isAnyNetworkDisabled()Z
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsAnyNetworkDisabled:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    .local v0, suppState:Landroid/net/wifi/SupplicantState;
    sget-object v1, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1

    sget-object v1, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #suppState:Landroid/net/wifi/SupplicantState;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isConnectionCompleted()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sget-object v1, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isDriverStopped()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isPhoneProvisioned()Z
    .locals 7

    .prologue
    const/16 v5, 0xa

    const/4 v6, 0x6

    const/4 v2, 0x0

    .local v2, ret_value:Z
    const/4 v0, 0x0

    .local v0, mMin2_string:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v3

    .local v3, subscriberid:Ljava/lang/String;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, mMin_string:Ljava/lang/String;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v6, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v4, "000000"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "1111110111"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v2, 0x0

    .end local v1           #mMin_string:Ljava/lang/String;
    :goto_0
    return v2

    .restart local v1       #mMin_string:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .end local v1           #mMin_string:Ljava/lang/String;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public declared-synchronized listDhcpDevices()Ljava/lang/String;
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->listDhcpDevicesCommand()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized listNetworks()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->listNetworksCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadDriver()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->loadDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method notifyDriverHung()V
    .locals 3

    .prologue
    const/16 v0, 0xc

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyDriverPNO()V
    .locals 3

    .prologue
    const/16 v0, 0xc

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyDriverStarted()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/16 v0, 0xc

    invoke-static {p0, v0, v1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyDriverStopped()V
    .locals 3

    .prologue
    const/16 v0, 0xc

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyPasswordKeyMayBeIncorrect()V
    .locals 1

    .prologue
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method notifyScanResultsAvailable()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method notifyStateChange(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V
    .locals 3
    .parameter "networkId"
    .parameter "BSSID"
    .parameter "newState"

    .prologue
    const/4 v1, 0x3

    new-instance v2, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$SupplicantStateChangeResult;-><init>(ILjava/lang/String;Landroid/net/wifi/SupplicantState;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyStateChange(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V
    .locals 3
    .parameter "newState"
    .parameter "BSSID"
    .parameter "networkId"

    .prologue
    const/4 v1, 0x4

    new-instance v2, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;

    invoke-direct {v2, p1, p2, p3}, Landroid/net/wifi/WifiStateTracker$NetworkStateChangeResult;-><init>(Landroid/net/NetworkInfo$DetailedState;Ljava/lang/String;I)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifySupplicantConnection()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method notifySupplicantLost()V
    .locals 1

    .prologue
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->sendEmptyMessage(I)Z

    return-void
.end method

.method notifyWapiCertReq(Ljava/lang/String;)V
    .locals 3
    .parameter "parameters"

    .prologue
    const/16 v1, 0x10

    new-instance v2, Landroid/net/wifi/WifiStateTracker$WapiCertReqest;

    invoke-direct {v2, p1}, Landroid/net/wifi/WifiStateTracker$WapiCertReqest;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method notifyWpsEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "event"

    .prologue
    const/16 v1, 0xf

    invoke-static {p0, v1, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public declared-synchronized ping()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->pingCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reassociate()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reassociateCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reconnect()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->restart()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public declared-synchronized reconnectCommand()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public releaseWakeLock()V
    .locals 0

    .prologue
    return-void
.end method

.method public declared-synchronized reloadConfig()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->reloadConfigCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized removeNetwork(I)Z
    .locals 2
    .parameter "networkId"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->removeNetworkCommand(I)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public requestConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->requestConnectionStatus(Landroid/net/wifi/WifiInfo;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/net/wifi/WifiStateTracker;->requestPolledInfo(Landroid/net/wifi/WifiInfo;Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public resetConnections(Z)V
    .locals 3
    .parameter "disableInterface"

    .prologue
    const/4 v1, 0x0

    const-string v2, "WifiStateTracker"

    const-string v0, "WifiStateTracker"

    const-string v0, "Reset connections and stopping DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Landroid/net/wifi/WifiStateTracker;->HOTSPOT_ENABLED:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetWISPRLoginClient()V

    :cond_0
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiInfo;->setIpAddress(I)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->resetConnections(Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->setCancelCallback(Z)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpTarget:Landroid/net/wifi/WifiStateTracker$DhcpHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateTracker$DhcpHandler;->removeMessages(I)V

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->stopDhcp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "WifiStateTracker"

    const-string v0, "Could not stop DHCP"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz p1, :cond_3

    const-string v0, "WifiStateTracker"

    const-string v0, "Disabling interface"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/NetworkUtils;->disableInterface(Ljava/lang/String;)I

    :cond_3
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public declared-synchronized restart()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->resetConnections(Z)V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->startDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public runPNO(I)Z
    .locals 21
    .parameter "scanTime"

    .prologue
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/WifiStateTracker;->listNetworks()Ljava/lang/String;

    move-result-object v11

    .local v11, listStr:Ljava/lang/String;
    if-nez v11, :cond_0

    const/16 v19, 0x0

    .end local p0
    :goto_0
    return v19

    .restart local p0
    :cond_0
    const-string v19, "\n"

    move-object v0, v11

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .local v10, lines:[Ljava/lang/String;
    move-object v0, v10

    array-length v0, v0

    move/from16 v19, v0

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    const/16 v19, 0x0

    goto :goto_0

    :cond_1
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, ssidList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    move-object v0, v10

    array-length v0, v0

    move/from16 v19, v0

    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    aget-object v19, v10, v7

    const-string v20, "\t"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .local v14, result:[Ljava/lang/String;
    const/16 v19, 0x0

    :try_start_0
    aget-object v19, v14, v19

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .local v13, networkId:I
    const-string v19, "ssid"

    move-object/from16 v0, p0

    move v1, v13

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/WifiStateTracker;->getNetworkVariable(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, assid:Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_3

    const/4 v4, 0x0

    .local v4, dup:Z
    const/4 v8, 0x0

    .local v8, j:I
    :goto_2
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move v0, v8

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    move-object/from16 v0, v17

    move v1, v8

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    move-object v0, v3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_4

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v19

    move-object v2, v3

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .end local v3           #assid:Ljava/lang/String;
    .end local v4           #dup:Z
    .end local v8           #j:I
    .end local v13           #networkId:I
    :cond_3
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catch_0
    move-exception v19

    move-object/from16 v5, v19

    .local v5, e:Ljava/lang/NumberFormatException;
    goto :goto_3

    .end local v5           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #assid:Ljava/lang/String;
    .restart local v4       #dup:Z
    .restart local v8       #j:I
    .restart local v13       #networkId:I
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .end local v3           #assid:Ljava/lang/String;
    .end local v4           #dup:Z
    .end local v8           #j:I
    .end local v13           #networkId:I
    .end local v14           #result:[Ljava/lang/String;
    :cond_5
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_6

    const/16 v19, 0x0

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Landroid/net/wifi/WifiNative;->pnoStop()Z

    invoke-static {}, Landroid/net/wifi/WifiNative;->pnoClearSsid()Z

    const/4 v9, 0x0

    .end local p0
    .local v9, l:I
    :goto_4
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v19

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    const/16 v19, 0x10

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    move-object/from16 v0, v17

    move v1, v9

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v18

    .local v18, ts:Ljava/lang/String;
    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->indexOf(I)I

    move-result v12

    .local v12, lq:I
    if-ltz v12, :cond_8

    const/16 v19, 0x22

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v15

    .local v15, rq:I
    if-le v15, v12, :cond_7

    add-int/lit8 v19, v12, 0x1

    :try_start_1
    move-object/from16 v0, v18

    move/from16 v1, v19

    move v2, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .end local v15           #rq:I
    .local v6, fs:Ljava/lang/String;
    :goto_5
    invoke-static {v6}, Landroid/net/wifi/WifiNative;->pnoAddSsid(Ljava/lang/String;)Z

    .end local v6           #fs:Ljava/lang/String;
    :goto_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .restart local v15       #rq:I
    :catch_1
    move-exception v5

    .local v5, e:Ljava/lang/IndexOutOfBoundsException;
    goto :goto_6

    .end local v5           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_7
    move-object/from16 v6, v18

    .restart local v6       #fs:Ljava/lang/String;
    goto :goto_5

    .end local v6           #fs:Ljava/lang/String;
    .end local v15           #rq:I
    :cond_8
    move-object/from16 v6, v18

    .restart local v6       #fs:Ljava/lang/String;
    goto :goto_5

    .end local v6           #fs:Ljava/lang/String;
    .end local v12           #lq:I
    .end local v18           #ts:Ljava/lang/String;
    :cond_9
    invoke-static/range {p1 .. p1}, Landroid/net/wifi/WifiNative;->pnoRun(I)Z

    move-result v16

    .local v16, s:Z
    move/from16 v19, v16

    goto/16 :goto_0
.end method

.method public declared-synchronized saveConfig()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->saveConfigCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scan(Z)Z
    .locals 2
    .parameter "forceActive"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->scanCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanResults()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->scanResultsCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothCoexistenceMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceModeCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setBluetoothScanMode(Z)V
    .locals 2
    .parameter "isBluetoothPlaying"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setBluetoothCoexistenceScanModeCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setGanActive(ZI)V
    .locals 3
    .parameter "enable"
    .parameter "qos"

    .prologue
    monitor-enter p0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    const/16 v1, 0x28

    :try_start_0
    invoke-static {v0, v1, p2}, Landroid/net/wifi/WifiNative;->setGanActive(III)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_1
    invoke-static {v0, v1, v2}, Landroid/net/wifi/WifiNative;->setGanActive(III)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setHighPerfMode(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    if-eq v0, p1, :cond_0

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V

    :goto_0
    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsHighPerfEnabled:Z

    const-string v0, "WifiStateTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "high performance mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setPowerMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setSuspendModeOptimizations(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNetworkVariable(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "netId"
    .parameter "name"
    .parameter "value"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1, p2, p3}, Landroid/net/wifi/WifiNative;->setNetworkVariableCommand(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNotificationVisible(ZIZI)V
    .locals 10
    .parameter "visible"
    .parameter "numNetworks"
    .parameter "force"
    .parameter "delay"

    .prologue
    const v9, 0x10802db

    const/4 v8, 0x3

    const/4 v7, 0x0

    if-nez p1, :cond_1

    iget-boolean v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    if-nez v3, :cond_1

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    cmp-long v3, v3, v5

    if-ltz v3, :cond_0

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    if-nez v3, :cond_2

    new-instance v3, Landroid/app/Notification;

    invoke-direct {v3}, Landroid/app/Notification;-><init>()V

    iput-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Landroid/app/Notification;->when:J

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput v9, v3, Landroid/app/Notification;->icon:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7, v5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, v3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    :cond_2
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10f0011

    invoke-virtual {v3, v4, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v2

    .local v2, title:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10403b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, details:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iput-object v2, v3, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->createNetworkDetectedDialogIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/net/wifi/WifiStateTracker;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationRepeatTime:J

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    const/4 v4, 0x1

    iget-object v5, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4, v9, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v2           #title:Ljava/lang/CharSequence;
    .local v1, message:Landroid/os/Message;
    :goto_1
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    int-to-long v4, p4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mNotificationShown:Z

    goto :goto_0

    .end local v1           #message:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    iget-object v4, p0, Landroid/net/wifi/WifiStateTracker;->mNotification:Landroid/app/Notification;

    invoke-virtual {v3, v8, v4}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v3, p0, Landroid/net/NetworkStateTracker;->mTarget:Landroid/os/Handler;

    invoke-virtual {v3, v8, v7, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .restart local v1       #message:Landroid/os/Message;
    goto :goto_1
.end method

.method public setNumAllowedChannels()Z
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_num_allowed_channels"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setNumAllowedChannels(I)Z
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    if-eqz v1, :cond_0

    monitor-enter p0

    :try_start_1
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z

    monitor-exit p0

    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public declared-synchronized setNumAllowedChannels(I)Z
    .locals 2
    .parameter "numChannels"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iput p1, p0, Landroid/net/wifi/WifiStateTracker;->mNumAllowedChannels:I

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setNumAllowedChannelsCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setRadio(Z)Z
    .locals 1
    .parameter "turnOn"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized setRegulatoryDomainCountry(Ljava/lang/String;)V
    .locals 5
    .parameter "countryCode"

    .prologue
    const-string v2, "setRegulatoryDomainCountry("

    const-string v2, "XX"

    const-string v2, "wifi_country_code"

    const-string v2, "WifiStateTracker"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .local v1, upper:Ljava/lang/String;
    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    const-string v3, "eth0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "WifiStateTracker"

    const-string v3, "setRegulatoryDomainCountry not called because not BCM interface"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_country_code"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, country:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v1}, Landroid/net/wifi/WifiNative;->setRegulatoryDomainCommand(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRegulatoryDomainCountry("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): set new country code from network"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_country_code"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #country:Ljava/lang/String;
    .end local v1           #upper:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #country:Ljava/lang/String;
    .restart local v1       #upper:Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string v2, "WifiStateTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setRegulatoryDomainCountry("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): set default coutry code"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "XX"

    invoke-static {v2}, Landroid/net/wifi/WifiNative;->setRegulatoryDomainCommand(Ljava/lang/String;)Z

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "wifi_country_code"

    const-string v4, "XX"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .end local v0           #country:Ljava/lang/String;
    :cond_4
    const-string v2, "WifiStateTracker"

    const-string v3, "setRegulatoryDomainCountry(): WiFi is off, preserve country code for future use"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mPendingCountryCode:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method public declared-synchronized setScanMode(Z)Z
    .locals 2
    .parameter "isScanModeActive"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanModeCommand(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanOnlyMode(Z)V
    .locals 4
    .parameter "scanOnlyMode"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    if-eq v1, p1, :cond_0

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    move v0, v1

    .local v0, scanType:I
    :goto_0
    const-string v1, "WifiStateTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Scan-only mode changing to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scanType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiStateTracker;->setScanResultHandling(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iput-boolean p1, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanOnly:Z

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #scanType:I
    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    move v0, v1

    goto :goto_0

    .restart local v0       #scanType:I
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->reconnectCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #scanType:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized setScanResultHandling(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setScanResultHandlingCommand(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setScanResultsList(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, scanList:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Landroid/net/wifi/WifiStateTracker;->mScanResults:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setSuspendModeOptimizations(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_1

    :try_start_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Landroid/net/wifi/WifiStateTracker;->mOptimizationsDisabledRefCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_2
    :try_start_2
    invoke-static {p1}, Landroid/net/wifi/WifiNative;->setSuspendOptimizationsCommand(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public setWifiState(I)V
    .locals 1
    .parameter "wifiState"

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public declared-synchronized startDhcpPacketFiltering()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDhcpPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startDriver()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startDriverCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startEventLoop()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiMonitor:Landroid/net/wifi/WifiMonitor;

    invoke-virtual {v0}, Landroid/net/wifi/WifiMonitor;->startMonitoring()V

    return-void
.end method

.method public startMonitoring()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWM:Landroid/net/wifi/WifiManager;

    return-void
.end method

.method public declared-synchronized startPacketFiltering()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->startPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startSupplicant()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->startSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public startUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public startWpsPbc(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "ssid"
    .parameter "bssid"

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "any"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->findWpsApBssidInScanResults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    const/4 v0, 0x0

    .local v0, res:Z
    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Landroid/net/wifi/WifiNative;->startWpsPbcCommand(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWpsPin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "ssid"
    .parameter "bssid"
    .parameter "pin"

    .prologue
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "any"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-direct {p0, p1}, Landroid/net/wifi/WifiStateTracker;->findWpsApBssidInScanResults(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    invoke-direct {p0}, Landroid/net/wifi/WifiStateTracker;->resetSupplicantLoopState()V

    monitor-enter p0

    :try_start_0
    invoke-static {p2, p3}, Landroid/net/wifi/WifiNative;->startWpsPinCommand(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, pinCode:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Landroid/net/wifi/WifiStateTracker;->mDisconnectExpected:Z

    monitor-exit p0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .end local v0           #pinCode:Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public declared-synchronized status()Ljava/lang/String;
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->statusCommand()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDhcpPacketFiltering()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDhcpPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopDriver()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopDriverCommand()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopPNO()Z
    .locals 1

    .prologue
    invoke-static {}, Landroid/net/wifi/WifiNative;->pnoStop()Z

    move-result v0

    .local v0, s:Z
    return v0
.end method

.method public declared-synchronized stopPacketFiltering()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mWifiState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->isDriverStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    :try_start_1
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopPacketFiltering()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopSupplicant()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->stopSupplicant()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopUsingNetworkFeature(Ljava/lang/String;II)I
    .locals 1
    .parameter "feature"
    .parameter "callingPid"
    .parameter "callingUid"

    .prologue
    const/4 v0, -0x1

    return v0
.end method

.method public teardown()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateTracker;->disconnectAndStop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Landroid/net/wifi/WifiStateTracker;->setTornDownByConnMgr(Z)V

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, sb:Ljava/lang/StringBuffer;
    const-string v1, "interface "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " runState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    if-lt v1, v3, :cond_0

    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    array-length v2, v2

    if-gt v1, v2, :cond_0

    sget-object v1, Landroid/net/wifi/WifiStateTracker;->mRunStateNames:[Ljava/lang/String;

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    sub-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    sget-object v1, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mDhcpInfo:Landroid/net/DhcpInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "haveIpAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mHaveIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", obtainingIpAddress="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mObtainingIpAddress:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", scanModeActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mIsScanModeActive:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    sget-object v2, Landroid/net/wifi/WifiStateTracker;->LS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "lastSignalLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Landroid/net/wifi/WifiStateTracker;->mLastSignalLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ", explicitlyDisabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-boolean v2, p0, Landroid/net/wifi/WifiStateTracker;->mTornDownByConnMgr:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public declared-synchronized unloadDriver()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/net/wifi/WifiNative;->unloadDriver()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateBatteryWorkSourceLocked(Landroid/os/WorkSource;)V
    .locals 3
    .parameter "newSource"

    .prologue
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, p1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_0
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->diff(Landroid/os/WorkSource;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v2, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunningChanged(Landroid/os/WorkSource;Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiRunning(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(Landroid/os/WorkSource;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    iget v0, p0, Landroid/net/wifi/WifiStateTracker;->mRunState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteWifiStopped(Landroid/os/WorkSource;)V

    iget-object v0, p0, Landroid/net/wifi/WifiStateTracker;->mLastRunningWifiUids:Landroid/os/WorkSource;

    invoke-virtual {v0}, Landroid/os/WorkSource;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateTracker;->mReportedRunning:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method
