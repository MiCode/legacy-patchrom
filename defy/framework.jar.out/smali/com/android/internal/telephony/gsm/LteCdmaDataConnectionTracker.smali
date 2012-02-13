.class public final Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "LteCdmaDataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;,
        Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_MILLIS:I = 0x1388

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final PDP_CONNECTION_POOL_SIZE:I = 0x10

.field private static final POLL_PDP_MILLIS:I = 0x1388

.field static final PREFERAPN_URI:Landroid/net/Uri;


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private allApns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation
.end field

.field private apnObserver:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;

.field private canSetPreferApn:Z

.field failNextConnect:Z

.field protected mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsImsConnected:Z

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mPdpResetCount:I

.field private mPingTestActive:Z

.field private mPollNetStat:Ljava/lang/Runnable;

.field private mReregisterOnReconnectFailure:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

.field netstat:Landroid/os/INetStatService;

.field private noAutoAttach:Z

.field private pdpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end field

.field private preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v10, "GSM"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const-string v5, "GSM"

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->noAutoAttach:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPingTestActive:Z

    iput v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->failNextConnect:Z

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    new-instance v5, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$1;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$2;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10d0023

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z

    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x6

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/16 v6, 0xf

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    const/16 v6, 0xe

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x1a

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x13

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x15

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x16

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x20

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/16 v6, 0x21

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v5, "netstat"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->netstat:Landroid/os/INetStatService;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "com.motorola.ims.action.registration_status"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3, v7, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->createAllPdpList()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->createApnContexts()V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    const/4 v1, 0x1

    .local v1, dataEnabledSetting:Z
    :try_start_0
    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    const-string v5, "disabled_on_boot_key"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_2

    if-eqz v1, :cond_2

    move v2, v9

    .local v2, defaultEnabled:Z
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setEnabled(Z)V

    if-nez v2, :cond_3

    move v5, v9

    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->noAutoAttach:Z

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "ro.gsm.data_retry_config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GSM"

    const-string v5, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v6, 0x14

    const/16 v7, 0x7d0

    const/16 v8, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "ro.gsm.2nd_data_retry_config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "GSM"

    const-string v5, "Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "max_retries=3, 333, 333, 333"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->createAllApnList()V

    return-void

    .end local v2           #defaultEnabled:Z
    :cond_2
    move v2, v8

    goto :goto_1

    .restart local v2       #defaultEnabled:Z
    :cond_3
    move v5, v8

    goto :goto_2

    .end local v2           #defaultEnabled:Z
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$1202(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1302(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$1402(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2314(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2502(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2602(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3200(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3500(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3608(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3702(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3800(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->runPingTest()V

    return-void
.end method

.method static synthetic access$4002(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPingTestActive:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$4202(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$4500(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->convertImsRegStatusToRilCause(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->requestDataSetup(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method private apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, apns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, result:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .end local p0
    .local v2, size:I
    :goto_0
    if-ge v0, v2, :cond_0

    const/16 v3, 0x5b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 8
    .parameter "apnType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v7, "GSM"

    const-string v6, ":"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    const-string v3, "310004"

    .local v3, operator:Ljava/lang/String;
    const-string v4, "default"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v4, :cond_2

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred APN:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "GSM"

    const-string v4, "Waiting APN set to preferred APN"

    invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    const/4 v4, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setPreferredApn(I)V

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 4
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clean up all connections due to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    return-void
.end method

.method private cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 6
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    if-nez p2, :cond_1

    const-string v3, "apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean up connection due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v4, "ims"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z

    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_5

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state is in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_7

    const-string v3, "radioTurnedOff"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v3, 0x1

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPdnDeactivateCause:I

    :cond_6
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz p1, :cond_8

    if-eqz v2, :cond_8

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    const/16 v3, 0x19

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->disconnect(Landroid/os/Message;)V

    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_7
    :goto_1
    if-nez p1, :cond_0

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v2       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_8
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->clearSettings()V

    goto :goto_1
.end method

.method private convertImsRegStatusToRilCause(I)I
    .locals 1
    .parameter "regStatus"

    .prologue
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const/16 v0, 0x83

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x81

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x80

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private createAllApnList()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    const-string v7, "310004"

    .local v7, operator:Ljava/lang/String;
    if-eqz v7, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, selection:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "before reset mRequestedApnType: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v0, "GSM"

    const-string v1, "Get PreferredAPN"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_0
.end method

.method private createAllPdpList()V
    .locals 3

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .local v1, pdp:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #pdp:Lcom/android/internal/telephony/DataConnection;
    :cond_0
    return-void
.end method

.method private createApnContexts()V
    .locals 3

    .prologue
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    const-string v1, "default"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;)V

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    const-string v1, "mms"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    const-string v1, "supl"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 23
    .parameter "cursor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/ApnSetting;",
            ">;"
        }
    .end annotation

    .prologue
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .local v22, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string v3, "type"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .local v18, types:[Ljava/lang/String;
    const-string v3, "enabled"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v21

    .local v21, enabled:I
    new-instance v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v3, "_id"

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p1

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "numeric"

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "apn"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    move-object/from16 v0, p1

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "proxy"

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    move-object/from16 v0, p1

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "port"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "mmsc"

    move-object/from16 v0, p1

    move-object v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    move-object/from16 v0, p1

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "mmsproxy"

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    move-object/from16 v0, p1

    move v1, v10

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    const-string v11, "mmsport"

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    move-object/from16 v0, p1

    move v1, v11

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "user"

    move-object/from16 v0, p1

    move-object v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    move-object/from16 v0, p1

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "password"

    move-object/from16 v0, p1

    move-object v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "authtype"

    move-object/from16 v0, p1

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v0, p1

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    if-nez v21, :cond_2

    const/4 v15, 0x0

    :goto_0
    const-string v16, "inactivetimer"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    const-string v17, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v19, "class"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v19

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    const-string v20, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v20

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v2 .. v20}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZILjava/lang/String;[Ljava/lang/String;ILjava/lang/String;)V

    .local v2, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    move-object/from16 v0, v22

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .end local v2           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v18           #types:[Ljava/lang/String;
    .end local v21           #enabled:I
    :cond_1
    return-object v22

    .restart local v18       #types:[Ljava/lang/String;
    .restart local v21       #enabled:I
    :cond_2
    const/4 v15, 0x1

    goto :goto_0
.end method

.method private destroyAllPdpList()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private doRecovery()V
    .locals 4

    .prologue
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, maxPdpReset:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    const v1, 0xc3b7

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v1, "doRecovery clean all connection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "pdpReset"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    .end local v0           #maxPdpReset:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    const v1, 0xc3b8

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 5

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isInactive()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findReadyPdp(Lcom/android/internal/telephony/gsm/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 8
    .parameter "apn"

    .prologue
    const-string v7, "null"

    const-string v6, ">"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "findReadyPdp for apn string <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pdp apn string <"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ">"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_2
    return-object v4

    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const-string v5, "null"

    move-object v5, v7

    goto :goto_0

    .restart local v1       #conn:Lcom/android/internal/telephony/DataConnection;
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    const-string v5, "null"

    move-object v5, v7

    goto :goto_1

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_3
    const/4 v4, 0x0

    goto :goto_2
.end method

.method private findReadyPdpForOem(I)Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6
    .parameter "profileId"

    .prologue
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "find a ready pdp for oem pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v3, v0

    .local v3, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getProfileId()I

    move-result v4

    if-ne v4, p1, :cond_0

    move-object v4, v3

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v13, "_id"

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "_id"

    aput-object v13, v2, v11

    const-string v4, "name"

    aput-object v4, v2, v12

    const/4 v4, 0x2

    const-string v5, "apn"

    aput-object v5, v2, v4

    const-string v5, "name ASC"

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_2

    iput-boolean v12, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v0, "_id"

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .local v9, pos:I
    iget-object v10, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .local v10, requestedApnType:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/gsm/ApnSetting;

    .local v8, p:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget v0, v8, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    if-ne v0, v9, :cond_1

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "find a preferred apn at pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0

    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v9           #pos:I
    .end local v10           #requestedApnType:Ljava/lang/String;
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_4
    move-object v0, v3

    goto/16 :goto_0
.end method

.method private gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gotoIdleAndNotifyDataConnection: reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-void
.end method

.method private isConnected()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z
    .locals 3
    .parameter "apnContext"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .local v0, roaming:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "roaming ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), apn enabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mater data enabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "apnType"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private notifyAllEnabledDataConnection(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"

    .prologue
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify all enabled connection for:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_1

    move-object v3, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_2
    return-void
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setupDnsProperties()V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    return-void
.end method

.method private notifyDefaultData(Ljava/lang/String;)V
    .locals 2
    .parameter "reason"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData for reason"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setupDnsProperties()V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    const-string v0, "notifyNoData"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData for type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onApnChanged()V
    .locals 5

    .prologue
    const-string v4, "apnChanged"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .local v1, isConnected:Z
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->createAllApnList()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const-string v2, "onApnChanged clean all connection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v2, "apnChanged"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v2, "apnChanged"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    :cond_0
    return-void

    .end local v1           #isConnected:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0
.end method

.method private onGprsAttached()V
    .locals 4

    .prologue
    const-string v3, "gprsAttached"

    const-string v1, "***onGprsAttached"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    const-string v1, "gprsAttached"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gprsAttached"

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    const-string v1, "onGprsAttached clean connection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    goto :goto_0
.end method

.method private onPdpStateChanged(Ljava/util/ArrayList;ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 11
    .parameter
    .parameter "explicitPoll"
    .parameter "apnContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;Z",
            "Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const v10, 0xc3bd

    const/4 v9, 0x5

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpStatesHasCID(Ljava/util/ArrayList;I)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "GSM"

    const-string v5, "PDP connection has dropped. Reconnecting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .local v0, bid:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .local v3, loc:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    :cond_2
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v10, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0, v7, p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto :goto_0

    .end local v0           #bid:I
    .end local v3           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_3
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v4

    invoke-direct {p0, p1, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v4

    if-nez v4, :cond_0

    if-nez p2, :cond_5

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "ims"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "to poll extra reason"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v4

    int-to-byte v1, v4

    .local v1, cid:B
    const/16 v4, 0x9

    new-array v2, v4, [B

    aput-byte v8, v2, v6

    aput-byte v9, v2, v7

    aput-byte v6, v2, v8

    const/4 v4, 0x3

    const/16 v5, 0x18

    aput-byte v5, v2, v4

    const/4 v4, 0x4

    aput-byte v6, v2, v4

    aput-byte v6, v2, v9

    const/4 v4, 0x6

    aput-byte v6, v2, v4

    const/4 v4, 0x7

    aput-byte v7, v2, v4

    const/16 v4, 0x8

    aput-byte v1, v2, v4

    .local v2, dataPollReason:[B
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v5, 0x2a

    invoke-virtual {p0, v5, p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    .end local v1           #cid:B
    .end local v2           #dataPollReason:[B
    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v4, v4, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0xb

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    goto/16 :goto_0

    :cond_5
    const-string v4, "GSM"

    const-string v5, "PDP connection has dropped (active=false case).  Reconnecting"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .restart local v0       #bid:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v3

    check-cast v3, Landroid/telephony/cdma/CdmaCellLocation;

    .restart local v3       #loc:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    :cond_6
    new-array v4, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v10, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0, v7, p3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto/16 :goto_0
.end method

.method private parseTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .parameter "types"

    .prologue
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    new-array v0, v1, [Ljava/lang/String;

    .local v0, result:[Ljava/lang/String;
    const/4 v1, 0x0

    const-string v2, "*"

    aput-object v2, v0, v1

    :goto_0
    return-object v0

    .end local v0           #result:[Ljava/lang/String;
    :cond_1
    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .restart local v0       #result:[Ljava/lang/String;
    goto :goto_0
.end method

.method private pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->active:I

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private pdpStatesHasCID(Ljava/util/ArrayList;I)Z
    .locals 3
    .parameter
    .parameter "cid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataCallState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p1, states:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .end local p0
    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/DataCallState;

    iget v2, p0, Lcom/android/internal/telephony/DataCallState;->cid:I

    if-ne v2, p2, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 11
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    const/4 v8, 0x0

    const-string v10, "com.android.internal.telephony.gprs-reconnect."

    const-string v9, "GSM"

    if-nez p2, :cond_1

    const-string v4, "GSM"

    const-string v4, "It is impossible"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v4

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v3

    .local v3, nextReconnectDelay:I
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PDP activate failed. Scheduling next attempt for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    div-int/lit16 v5, v3, 0x3e8

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "alarm"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v2, Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "com.android.internal.telephony.gprs-reconnect."

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v4, "reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "type"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v8, v2, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iput-object v4, p2, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mReconnectIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    int-to-long v7, v3

    add-long/2addr v5, v7

    iget-object v7, p2, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "GSM"

    const-string v4, "NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #filter:Landroid/content/IntentFilter;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #nextReconnectDelay:I
    :cond_3
    const-string v4, "GSM"

    const-string v4, "PDP activate failed, indicate to connectivity service"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v1       #filter:Landroid/content/IntentFilter;
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #nextReconnectDelay:I
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto/16 :goto_0
.end method

.method private requestDataSetup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "apnType"
    .parameter "reason"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->arg1:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    const/4 v2, 0x5

    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method private resetPollStats()V
    .locals 2

    .prologue
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return-void
.end method

.method private retryAfterDisconnected(Ljava/lang/String;)Z
    .locals 2
    .parameter "reason"

    .prologue
    const/4 v0, 0x1

    .local v0, retry:Z
    const-string v1, "radioTurnedOff"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "dataDisabled"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private runPingTest()V
    .locals 9

    .prologue
    const-string v8, "GSM"

    const/4 v4, -0x1

    .local v4, status:I
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pdp_watchdog_ping_address"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pdp_watchdog_ping_deadline"

    const/4 v7, 0x5

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .local v1, deadline:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pinging "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "s"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v5, "0.0.0.0"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ping -c 1 -i 1 -w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .local v3, p:Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    .end local v0           #address:Ljava/lang/String;
    .end local v1           #deadline:I
    .end local v3           #p:Ljava/lang/Process;
    :cond_0
    :goto_0
    if-nez v4, :cond_1

    const v5, 0xc3b7

    const/4 v6, -0x1

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPdpResetCount:I

    const/16 v5, 0x1b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :goto_1
    return-void

    :catch_0
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/io/IOException;
    const-string v5, "GSM"

    const-string v5, "ping failed: IOException"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/io/IOException;
    :catch_1
    move-exception v5

    move-object v2, v5

    .local v2, e:Ljava/lang/Exception;
    const-string v5, "GSM"

    const-string v5, "exception trying to ping"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v2           #e:Ljava/lang/Exception;
    :cond_1
    const/16 v5, 0x1c

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private setEnabled(Ljava/lang/String;Z)V
    .locals 2
    .parameter "apnType"
    .parameter "enable"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setPreferredApn(I)V
    .locals 5
    .parameter "pos"

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred apn at pos:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    if-nez v2, :cond_1

    const-string v2, "not allow setting"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v2, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-ltz p1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z
    .locals 8
    .parameter "apnContext"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "enter setupData!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->parseOemType(Ljava/lang/String;)I

    move-result v3

    .local v3, profileId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-nez v0, :cond_0

    const-string v4, "setupData: return for no apn found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v4, v6

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v5, 0xe

    if-eq v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_2

    :cond_1
    iget-boolean v4, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->enabled:Z

    if-nez v4, :cond_2

    const-string v4, "setupData: apn is disabled by carrier!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v4, v6

    goto :goto_0

    :cond_2
    const/16 v4, 0x3e8

    if-le v3, v4, :cond_4

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->findReadyPdpForOem(I)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    if-nez v2, :cond_3

    const-string v4, "setupData: No ready GsmDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    :cond_3
    if-nez v2, :cond_5

    const-string v4, "setupData: No free GsmDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v4, v6

    goto :goto_0

    .end local v2           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->findReadyPdp(Lcom/android/internal/telephony/gsm/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .restart local v2       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    goto :goto_1

    :cond_5
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setActiveApn(Lcom/android/internal/telephony/gsm/ApnSetting;)V

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setActivePdp(Lcom/android/internal/telephony/gsm/GsmDataConnection;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setProfileId(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v4, "pdp connect!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "setupData: initing!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v4, v7

    goto/16 :goto_0
.end method

.method private setupDnsProperties()V
    .locals 14

    .prologue
    const-string v13, "net.dnschange"

    const-string v12, "net.dns"

    const-string v11, "."

    const-string v10, ""

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .local v2, mypid:I
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, servers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    if-nez v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v8, v7

    if-ge v1, v8, :cond_3

    aget-object v6, v7, v1

    .local v6, serverAddr:Ljava/lang/String;
    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v6           #serverAddr:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v0, 0x1

    :goto_2
    const/4 v8, 0x4

    if-gt v1, v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "net.dns"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "."

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, propName:Ljava/lang/String;
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, propVal:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, ""

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v4           #propName:Ljava/lang/String;
    .end local v5           #propVal:Ljava/lang/String;
    :cond_5
    const-string v8, "net.dnschange"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #propVal:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_0

    :try_start_0
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .local v3, n:I
    const-string v8, "net.dnschange"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v3, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v3           #n:I
    :catch_0
    move-exception v8

    goto/16 :goto_0
.end method

.method private shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z
    .locals 2
    .parameter "cause"

    .prologue
    const/4 v0, 0x1

    .local v0, shouldPost:Z
    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/internal/telephony/DataConnection$FailCause;->UNKNOWN:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-eq p1, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    return-void
.end method

.method private startPeriodicPdpPoll()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z
    .locals 11
    .parameter "apnContext"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData2 for type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " due to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v5, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[DSAC DEB] trySetupData2 with mIsPsRestricted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v5

    if-eqz v5, :cond_0

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "GSM"

    const-string v5, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v10, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v9

    :goto_0
    return v5

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    .local v1, gprsState:I
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    .local v3, roaming:Z
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .local v0, desiredPowerState:Z
    const-string v5, "radio.lte.ignoreims"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v9, :cond_5

    move v2, v9

    .local v2, ignoreImsPdn:Z
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_7

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->noAutoAttach:Z

    if-eqz v5, :cond_7

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v5, :cond_7

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z

    if-nez v5, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ims"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-nez v2, :cond_7

    :cond_4
    if-eqz v0, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .local v4, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    const-string v5, "No APN found"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v5, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    move v5, v8

    goto/16 :goto_0

    .end local v2           #ignoreImsPdn:Z
    .end local v4           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    :cond_5
    move v2, v8

    goto :goto_1

    .restart local v2       #ignoreImsPdn:Z
    :cond_6
    if-nez v2, :cond_4

    :cond_7
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trySetupData: Not ready for data:  dataState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gprsState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " UMTS="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isDataAllowed="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->isDataAllowed(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getAnyDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " roaming="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dataOnRoamingEnable="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ps restricted="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " desiredPowerState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mIsImsConnected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ignoreImsPdn="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " MasterDataEnabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v5, v6, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v5, v6, :cond_9

    :cond_8
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/cdma/CDMAPhone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    move v5, v8

    goto/16 :goto_0

    .restart local v4       #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    :cond_a
    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create from allApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    .end local v4           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setup watingApns : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private trySetupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "reason"
    .parameter "type"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***trySetupData for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " due to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_1

    const-string v2, "(unspecified)"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DSAC DEB] trySetupData with mIsPsRestricted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p2, "default"

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-nez v0, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "***new apn context for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-nez v0, :cond_2

    const-string v1, "***new apn context failed "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_1
    move-object v2, p1

    goto :goto_0

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    monitor-enter p0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "calling disableApnType with type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    const-string v2, "dataDisabled"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "return APN_REQUEST_STARTED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v4

    .end local v1           #msg:Landroid/os/Message;
    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    const-string v2, "return APN_ALREADY_INACTIVE"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const-string v2, "no apn context was found, or not enabled apn context, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x3

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public dispose()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mCT:Lcom/android/internal/telephony/cdma/CdmaCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForGprsAttached(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForGprsDetached(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->apnObserver:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    const-string v1, "pdpReset"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->destroyAllPdpList()V

    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const-string v1, "return APN_REQUEST_STARTED"

    const-string v1, ")"

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "calling enableApnType with type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "New apn type context for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", state("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "apn type is active"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_2

    const-string v1, "return APN_REQUEST_STARTED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v1, v4

    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    const-string v1, "return APN_REQUEST_FAILED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x3

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_3

    const-string v1, "return APN_ALREADY_ACTIVE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "return APN_TYPE_NOT_AVAILABLE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setEnabled(Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "dataEnabled"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new apn request for type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is to be handled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/16 v1, 0x17

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    const-string v1, "return APN_REQUEST_STARTED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v1, v4

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "LteCdmaDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "get 1st active apn string"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "apnType"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get active apn string for type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getActiveApnTypes()[Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, "get all active apn types"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getActiveInternetInterfaceName()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, interfaceName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local p0
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getProfileId()I

    move-result v3

    const/16 v4, 0x67

    if-ne v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_1
    return-object v1
.end method

.method public getAllDataConnections()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, pdps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContexts:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0           #apnContexts:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getCid(Ljava/lang/String;)I
    .locals 2
    .parameter "apnType"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDataEnabled()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isEnabled()Z

    move-result v1

    return v1
.end method

.method protected getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDnsServers for apn type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method public getGateway(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGateway for apn type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method public getGateways(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGateway for apn type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddresses()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddresses()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method protected getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    const-string v6, "return null"

    const-string v5, "get active pdp is not null, return interface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getInterfaceName for apn type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "get active pdp is not null, return interface"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_1
    const-string v2, "return null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "get active pdp is not null, return interface"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, "return null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0
.end method

.method protected getIpAddress(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpAddress for apn type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method protected getIpAddresses(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .parameter "apnType"

    .prologue
    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpAddress for apn type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddresses()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddresses()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method public getIpVersion(Ljava/lang/String;)I
    .locals 2
    .parameter "apnType"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpVersion()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .local v3, isConnecting:Z
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/DataConnection;

    .local v1, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v4, v0

    .local v4, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "overall state is CONNECTED"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    return-object v5

    .restart local v1       #conn:Lcom/android/internal/telephony/DataConnection;
    .restart local v4       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActivating()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .end local v1           #conn:Lcom/android/internal/telephony/DataConnection;
    .end local v4           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    if-eqz v3, :cond_3

    const-string v5, "overall state is CONNECTING"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    :cond_3
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 2
    .parameter "apnType"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v8, "GSM"

    const-string v7, "default"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handle msg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onRecordsLoaded()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    if-eqz v3, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onEnableNewApn(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onGprsDetached()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onGprsAttached()V

    goto :goto_0

    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onPollPdp()V

    goto :goto_0

    :pswitch_8
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPingTestActive:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    goto :goto_0

    :pswitch_9
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPingTestActive:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->doRecovery()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onApnChanged()V

    goto :goto_0

    :pswitch_b
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSAC DEB] EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    goto :goto_0

    :pswitch_c
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[DSAC DEB] EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    const-string v3, "default"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    goto/16 :goto_0

    :cond_2
    const-string v3, "default"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_3

    const-string v3, "handle message EVENT_PS_RESTRICT_DISABLED: clean all connection"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v3, "psRestrictEnabled"

    invoke-direct {p0, v5, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    :cond_3
    const-string v3, "roamingOff"

    const-string v4, "default"

    invoke-direct {p0, v3, v7}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    if-eqz v3, :cond_4

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onTrySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    goto/16 :goto_0

    :cond_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_e
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_5

    move v2, v5

    .local v2, tearDown:Z
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    if-eqz v3, :cond_6

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onCleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto/16 :goto_0

    .end local v2           #tearDown:Z
    :cond_5
    move v2, v6

    goto :goto_1

    .restart local v2       #tearDown:Z
    :cond_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #tearDown:Z
    :pswitch_f
    new-array v1, v6, [Ljava/lang/String;

    .local v1, s:[Ljava/lang/String;
    const-string v3, "GETPSDIFNAME"

    aput-object v3, v1, v5

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const/16 v4, 0x28

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/PhoneBase;->invokeOemRilRequestStrings([Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #s:[Ljava/lang/String;
    :pswitch_10
    const-string v3, "EVENT_POLL_DATA_CALLS_STATE: change interface names for active data calls"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->handlePollDataCallsStateResult(Landroid/os/AsyncResult;)V

    const-string v3, "apnChanged"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->handlePollExtraDataReason(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_d
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_11
    .end packed-switch
.end method

.method handlePollDataCallsStateResult(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    iget-object v10, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v10, [Ljava/lang/String;

    move-object v0, v10

    check-cast v0, [Ljava/lang/String;

    move-object v4, v0

    .local v4, dataCalls:[Ljava/lang/String;
    iget-object v10, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v10, :cond_1

    :cond_0
    return-void

    :cond_1
    array-length v10, v4

    div-int/lit8 v9, v10, 0x3

    .local v9, totalDataCalls:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/DataConnection;

    .local v3, conn:Lcom/android/internal/telephony/DataConnection;
    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-object v8, v0

    .local v8, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v9, :cond_2

    mul-int/lit8 v10, v5, 0x3

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, cid:I
    mul-int/lit8 v10, v5, 0x3

    add-int/lit8 v10, v10, 0x1

    aget-object v10, v4, v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .local v1, active:I
    mul-int/lit8 v10, v5, 0x3

    add-int/lit8 v10, v10, 0x2

    aget-object v7, v4, v10

    .local v7, ifname:Ljava/lang/String;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->isActive()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v10

    if-ne v10, v2, :cond_3

    const-string v10, "A handover has occured, switch the interface name!!!"

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->handle4gHandover(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method handlePollExtraDataReason(Landroid/os/AsyncResult;)V
    .locals 9
    .parameter "ar"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v5, "poll extra data reason done"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    const-string v5, "error, do nothing"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    .local v1, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    iget-object v5, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    if-eqz v5, :cond_2

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    check-cast v1, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v1       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "apn type is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    instance-of v5, v5, [B

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .local v4, retValue:[B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "length of the byte is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v4

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; hex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->dumpHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]; string["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    array-length v5, v4

    const/16 v6, 0x8

    if-lt v5, v6, :cond_0

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .local v2, byteValue:Ljava/nio/ByteBuffer;
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v3

    .local v3, intValue:Ljava/nio/IntBuffer;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ret[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ";ret[1]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    invoke-virtual {v3, v8}, Ljava/nio/IntBuffer;->get(I)I

    move-result v5

    const/16 v6, 0xce

    if-ne v5, v6, :cond_0

    const-string v5, "imsPdnNwInitiated"

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v2           #byteValue:Ljava/nio/ByteBuffer;
    .end local v3           #intValue:Ljava/nio/IntBuffer;
    .end local v4           #retValue:[B
    :cond_2
    const-string v5, "maybe a invalid request "

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isApnTypeAvailable(Ljava/lang/String;)Z
    .locals 3
    .parameter "type"

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDataConnectionAsDesired()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .local v0, roaming:Z
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsPsRestricted:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    move v1, v3

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    const-string v0, "GSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[LteDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAutoDisconnect(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 1
    .parameter "apnContext"

    .prologue
    const-string v0, "on auto disconnect"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "No contexts of mms or default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto :goto_0
.end method

.method protected onCleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 1
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const-string v0, "onCleanUpConnection clean 1 connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 1
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    const-string v0, "onCleanUpConnection clean all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter "ar"

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v12, "gsm.defaultpdpcontext.active"

    const-string v8, "default"

    const/4 v2, 0x0

    .local v2, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    if-eqz v6, :cond_0

    iget-object v2, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v2           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    check-cast v2, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v2       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_5

    const-string v6, "radio.lte.ignoreims"

    invoke-static {v6, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v11, :cond_2

    move v1, v10

    .local v1, ImsRegDisabled:Z
    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ims"

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iput-boolean v10, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mIsImsConnected:Z

    const-string v6, "default"

    const-string v6, "IMSLinkUp"

    invoke-direct {p0, v8, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->requestDataSetup(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyDefaultData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    .end local v1           #ImsRegDisabled:Z
    :goto_2
    return-void

    :cond_2
    move v1, v9

    goto :goto_0

    .restart local v1       #ImsRegDisabled:Z
    :cond_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->isApnTypeActive()Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "gsm.defaultpdpcontext.active"

    const-string v6, "true"

    invoke-static {v12, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->canSetPreferApn:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v6, :cond_1

    const-string v6, "GSM"

    const-string v7, "PREFERED APN is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setPreferredApn(I)V

    goto :goto_1

    :cond_4
    const-string v6, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    invoke-static {v12, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #ImsRegDisabled:Z
    :cond_5
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v4, v0

    .local v4, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDP setup failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v3, -0x1

    .local v3, bid:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/cdma/CdmaCellLocation;

    .local v5, loc:Landroid/telephony/cdma/CdmaCellLocation;
    if-eqz v5, :cond_6

    invoke-virtual {v5}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    :cond_6
    const v6, 0xc3b9

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v3           #bid:I
    .end local v5           #loc:Landroid/telephony/cdma/CdmaCellLocation;
    :cond_7
    invoke-virtual {v4}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->removeNextApn()V

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto/16 :goto_2

    :cond_9
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    const/4 v6, 0x5

    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_2
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    const/4 v0, 0x0

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    const-string v3, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    if-eqz v3, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setActiveApn(Lcom/android/internal/telephony/gsm/ApnSetting;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getActiveApnTypes()[Ljava/lang/String;

    move-result-object v1

    .local v1, apnlist:[Ljava/lang/String;
    array-length v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v2, v3, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    .local v2, ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    invoke-virtual {v2}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->processPendingRadioPowerOffAfterDataOff()Z

    .end local v2           #ssTracker:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "default"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    :cond_2
    return-void
.end method

.method protected onEnableNewApn()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v0, "onEnableNewApn clean all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_0
.end method

.method protected onEnableNewApn(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v0, "onEnableNewApn setup data"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    const-string v0, "previous state is FAILED, reset to IDLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_0
.end method

.method protected onGprsDetached()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    const-string v0, "gprsDetached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

    return-void
.end method

.method protected onPdpStateChanged(Landroid/os/AsyncResult;Z)V
    .locals 5
    .parameter "ar"
    .parameter "explicitPoll"

    .prologue
    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    move-object v0, v4

    check-cast v0, Ljava/util/ArrayList;

    move-object v3, v0

    .local v3, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v1, apnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    invoke-direct {p0, v3, p2, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->onPdpStateChanged(Ljava/util/ArrayList;ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    goto :goto_0
.end method

.method protected onPollPdp()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method protected onRadioAvailable()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming radio off is meaningless"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v0, "Radio is off and clean up all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v0, "radioTurnedOff"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->createAllApnList()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;
    if-eqz v0, :cond_1

    const-string v1, "simLoaded"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    const-string v1, "onRecordsLoaded clean connection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    .local v0, reason:Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #reason:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .restart local v0       #reason:Ljava/lang/String;
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    return-void
.end method

.method protected onRoamingOff()V
    .locals 2

    .prologue
    const-string v0, "roamingOff"

    const-string v1, "default"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    const-string v2, "roamingOn"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roamingOn"

    const-string v0, "default"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker$ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"
    .parameter "type"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const-string v1, "2GVoiceCallEnded"

    const-string v0, "onVoiceCallEnded()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->startNetStatPoll()V

    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->resetPollStats()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mReregisterOnReconnectFailure:Z

    const-string v0, "2GVoiceCallEnded"

    const-string v0, "default"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    const-string v0, "onVoiceCallStarted()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CDMAPhone;->mSST:Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/CdmaServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->stopNetStatPoll()V

    const-string v0, "2GVoiceCallStarted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseOemType(Ljava/lang/String;)I
    .locals 6
    .parameter "apnType"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .local v1, splitStr:[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oem profile id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aget-object v2, v1, v5

    const-string v3, "OEM"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .local v0, pid:I
    const/4 v2, 0x1

    :try_start_0
    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    const/16 v2, 0x3e8

    if-le v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " return pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    move v2, v0

    .end local v0           #pid:I
    :goto_1
    return v2

    :cond_0
    const-string v2, " not a oem type"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    const-string v2, "ims"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x65

    goto :goto_1

    :cond_1
    const-string v2, "fota"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x66

    goto :goto_1

    :cond_2
    const-string v2, "cbs"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "hipri"

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    const/16 v2, 0x68

    goto :goto_1

    :cond_4
    const/16 v2, 0x67

    goto :goto_1

    .restart local v0       #pid:I
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected restartRadio()V
    .locals 5

    .prologue
    const-string v4, "net.ppp.reset-by-timeout"

    const-string v1, "GSM"

    const-string v2, "************TURN OFF RADIO**************"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    const-string v2, "radioTurnedOff"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->cleanUpAllConnections(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    const-string v1, "net.ppp.reset-by-timeout"

    const-string v1, "0"

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .local v0, reset:I
    const-string v1, "net.ppp.reset-by-timeout"

    add-int/lit8 v1, v0, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
    .locals 2
    .parameter "s"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "overall state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPingTestActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "[DataConnection] Start poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->resetPollStats()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/LteCdmaDataConnectionTracker;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "GSM"

    const-string v1, "[DataConnection] Stop poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
