.class public final Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;
.super Lcom/android/internal/telephony/DataConnectionTracker;
.source "GsmDataConnectionTrackerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;,
        Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;
    }
.end annotation


# static fields
.field protected static final APN_DELAY_MILLIS:I = 0x1388

.field static final APN_ID:Ljava/lang/String; = "apn_id"

.field private static final INTENT_RECONNECT_ALARM:Ljava/lang/String; = "com.android.internal.telephony.gprs-reconnect"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_REASON:Ljava/lang/String; = "reason"

.field private static final INTENT_RECONNECT_ALARM_EXTRA_TYPE:Ljava/lang/String; = "type"

.field private static final PDP_CONNECTION_COMMON_SIZE:I = 0x2

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

.field private apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

.field private canSetPreferApn:Z

.field failNextConnect:Z

.field protected mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

.field private mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPsRestricted:Z

.field private mIsScreenOn:Z

.field private mIsSwitchedToCdma:Z

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

    sput-object v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->PREFERAPN_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 11
    .parameter "p"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v10, "GSM"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const-string v5, "GSM"

    iput-object v10, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->LOG_TAG:Ljava/lang/String;

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->noAutoAttach:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z

    iput v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->failNextConnect:Z

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPollNetStat:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v6, 0x4

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x6

    invoke-interface {v5, p0, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v6, 0xf

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v6, 0xe

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x1a

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x13

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x15

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x16

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x20

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x21

    invoke-virtual {v5, p0, v6, v7}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v5, "netstat"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->netstat:Landroid/os/INetStatService;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v5, v6, v3, v7, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createAllPdpList()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createApnContexts()V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataEnabledSetting()Z

    move-result v1

    .local v1, dataEnabledSetting:Z
    const-string v5, "disabled_on_boot_key"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_3

    if-eqz v1, :cond_3

    move v2, v9

    .local v2, defaultEnabled:Z
    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    :cond_0
    if-nez v2, :cond_4

    move v5, v9

    :goto_1
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->noAutoAttach:Z

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "ro.gsm.data_retry_config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "GSM"

    const-string v5, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v6, 0x14

    const/16 v7, 0x7d0

    const/16 v8, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    :cond_1
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "ro.gsm.2nd_data_retry_config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "GSM"

    const-string v5, "Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-static {v10, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "max_retries=3, 333, 333, 333"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    :cond_2
    return-void

    .end local v2           #defaultEnabled:Z
    :cond_3
    move v2, v8

    goto :goto_0

    .restart local v2       #defaultEnabled:Z
    :cond_4
    move v5, v8

    goto :goto_1
.end method

.method constructor <init>(ZZLcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 5
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "p"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-string v4, "GSM"

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/DataConnectionTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const-string v0, "GSM"

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->LOG_TAG:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->noAutoAttach:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->failNextConnect:Z

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$1;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$2;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPollNetStat:Ljava/lang/Runnable;

    if-nez p1, :cond_0

    const-string v0, "GSM"

    const-string v0, "GsmDataConnectionTrackerExt, this shouldn\'t be called."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    if-nez p2, :cond_1

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsSwitchedToCdma:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->switchToGsm()V

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsSwitchedToCdma:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic access$1102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$1602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$1814(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2102(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide p1
.end method

.method static synthetic access$2200(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method static synthetic access$2302(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Lcom/android/internal/telephony/DataConnectionTracker$Activity;)Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Lcom/android/internal/telephony/PhoneBase;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-object v0
.end method

.method static synthetic access$3108(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return v0
.end method

.method static synthetic access$3202(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3300(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->runPingTest()V

    return-void
.end method

.method static synthetic access$3502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    return p1
.end method

.method static synthetic access$3702(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return p1
.end method

.method static synthetic access$3900(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollPeriod:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)J
    .locals 2
    .parameter "x0"

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->txPkts:J

    return-wide p1
.end method

.method static synthetic access$902(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-wide p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->rxPkts:J

    return-wide p1
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
    .locals 10
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
    const-string v9, "GSM"

    const-string v8, ":"

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, apnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    .local v3, operator:Ljava/lang/String;
    const-string v6, "default"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v6, :cond_2

    const-string v6, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Preferred APN:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v7, v7, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "GSM"

    const-string v6, "Waiting APN set to preferred APN"

    invoke-static {v9, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v1

    :cond_1
    const/4 v6, -0x1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setPreferredApn(I)V

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    :cond_2
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/ApnSetting;

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/ApnSetting;->canHandleType(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/DataConnection;

    .local v4, pdp:Lcom/android/internal/telephony/DataConnection;
    check-cast v4, Lcom/android/internal/telephony/gsm/GsmDataConnection;

    .end local v4           #pdp:Lcom/android/internal/telephony/DataConnection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v5

    .local v5, tmpApn:Lcom/android/internal/telephony/gsm/ApnSetting;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const/4 v6, 0x0

    invoke-virtual {v1, v6, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1
.end method

.method private cleanUpAllConnections(ZLjava/lang/String;)V
    .locals 6
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    const-string v5, "default"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean up all connections due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    .local v2, needAdditionalQuery:Z
    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v4, "entitle"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "default"

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->onDataDisconnectDone()V

    :cond_3
    return-void

    :cond_4
    const-string v3, "default"

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    goto :goto_1
.end method

.method private cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 6
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const-string v5, "GSM"

    if-nez p2, :cond_1

    const-string v3, "apn context is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Clean up connection due to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

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
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReconnectIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReconnectIntent(Landroid/app/PendingIntent;)V

    .end local v0           #am:Landroid/app/AlarmManager;
    :cond_2
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v3, v4, :cond_3

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "state is in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_5

    const-string v3, "state is in FAILED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    if-eqz p1, :cond_7

    if-eqz v2, :cond_7

    const-string v3, "GSM"

    const-string v3, "[GsmDataConnectionTracker_Ext] cleanUpConnection()_tearDown && pdp!=null"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    const/16 v3, 0x19

    invoke-virtual {p0, v3, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->disconnect(Landroid/os/Message;)V

    .end local v1           #msg:Landroid/os/Message;
    :cond_6
    :goto_1
    if-nez p1, :cond_0

    const-string v3, "GSM"

    const-string v3, "[GsmDataConnectionTracker_Ext] !tearDown"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    if-eqz v2, :cond_6

    const-string v3, "GSM"

    const-string v3, "[GsmDataConnectionTracker_Ext] lse if (pdp != null)"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->clearSettings()V

    goto :goto_1
.end method

.method private createAllApnList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const-string v4, "\'"

    const-string v9, "GSM"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getSIMOperatorNumeric()Ljava/lang/String;

    move-result-object v7

    .local v7, operator:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v8

    .local v8, spn:Ljava/lang/String;
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create apn list with operator:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",spn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "numeric = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, selection:Ljava/lang/String;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND spn LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v0, "GSM"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selection string is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
    if-eqz v6, :cond_2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No APN found for carrier: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    const-string v0, "GSM"

    const-string v0, "Get PreferredAPN"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->numeric:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setPreferredApn(I)V

    goto :goto_0
.end method

.method private createAllPdpList()V
    .locals 3

    .prologue
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v1

    .local v1, pdp:Lcom/android/internal/telephony/DataConnection;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

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

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    const-string v1, "default"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Ljava/lang/String;)V

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    const-string v1, "mms"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    const-string v1, "supl"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    const-string v1, "entitle"

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private createApnList(Landroid/database/Cursor;)Ljava/util/ArrayList;
    .locals 19
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
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .local v18, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
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

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->parseTypes(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v15

    .local v15, types:[Ljava/lang/String;
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

    const-string v16, "protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const-string v17, "roaming_protocol"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v17

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/android/internal/telephony/gsm/ApnSetting;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .local v2, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    move-object/from16 v0, v18

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    .end local v2           #apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v15           #types:[Ljava/lang/String;
    :cond_1
    return-object v18
.end method

.method private destroyAllPdpList()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private doRecovery()V
    .locals 4

    .prologue
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "pdp_watchdog_max_pdp_reset_fail_count"

    const/4 v3, 0x3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, maxPdpReset:I
    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    if-ge v1, v0, :cond_1

    iget v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    const v1, 0xc3b7

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    const-string v1, "doRecovery clean all connection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    const-string v2, "pdpReset"

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    .end local v0           #maxPdpReset:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #maxPdpReset:I
    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    const v1, 0xc3b8

    iget-wide v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->sentSinceLastRecv:J

    invoke-static {v1, v2, v3}, Landroid/util/EventLog;->writeEvent(IJ)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    goto :goto_0
.end method

.method private findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;
    .locals 6

    .prologue
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

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
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->makeDataConnection(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v3

    .restart local v3       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v4, v3

    goto :goto_0

    .end local v3           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
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

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

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

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

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

.method private getDataEnabledSetting()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .local v0, dataEnabledSetting:Z
    :try_start_0
    const-string v1, "connectivity"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/IConnectivityManager;->getMobileDataEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getPreferredApn()Lcom/android/internal/telephony/gsm/ApnSetting;
    .locals 14

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v3, 0x0

    const-string v13, "_id"

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

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

    sget-object v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->PREFERAPN_URI:Landroid/net/Uri;

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

    iput-boolean v12, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

    :goto_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

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
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move-object v0, v8

    goto :goto_0

    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #p:Lcom/android/internal/telephony/gsm/ApnSetting;
    .end local v9           #pos:I
    .end local v10           #requestedApnType:Ljava/lang/String;
    :cond_2
    iput-boolean v11, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mActiveApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    return-void
.end method

.method private isConnected()Z
    .locals 4

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDataAllowed(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z
    .locals 6
    .parameter "apnContext"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    .local v0, roaming:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roaming ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), apn enabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), mater data enabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const-string v2, "mms"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "enable_mms_when_data_disabled"

    invoke-static {v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, val:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v2, v5

    .end local v1           #val:Ljava/lang/String;
    :goto_0
    return v2

    .restart local v1       #val:Ljava/lang/String;
    :cond_1
    move v2, v4

    goto :goto_0

    .end local v1           #val:Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataOnRoamingEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz v2, :cond_4

    move v2, v5

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method private isEnabled(Ljava/lang/String;)Z
    .locals 2
    .parameter "apnType"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isSinglePdpOnly(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "multiple_pdp_isenabled"

    invoke-static {v1, v2, v3}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, isMulti:I
    if-nez v0, :cond_0

    move v1, v3

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
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

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notify for type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    if-eqz p1, :cond_1

    move-object v3, p1

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_2
    return-void
.end method

.method private notifyDefaultData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 3
    .parameter "apnContext"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDefaultData for type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setupDnsProperties()V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setupDnsProperties()V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 1
    .parameter "lastFailCauseCode"

    .prologue
    const-string v0, "notifyNoData"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    return-void
.end method

.method private notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 3
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyNoData for type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p2, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onApnChanged()V
    .locals 5

    .prologue
    const-string v4, "apnChanged"

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v3, "default"

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    move v1, v2

    .local v1, isConnected:Z
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createAllApnList()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->DISCONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const-string v2, "onApnChanged clean all connection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const-string v2, "apnChanged"

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    if-eqz v0, :cond_0

    const-string v2, "apnChanged"

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    const-string v1, "gprsAttached"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v2, "gprsAttached"

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_1

    const-string v1, "onGprsAttached clean connection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    goto :goto_0
.end method

.method private onPdpStateChanged(Ljava/util/ArrayList;ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 9
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
            "Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, pdpStates:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataCallState;>;"
    const v7, 0xc3bd

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v8, "GSM"

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_0

    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpStatesHasCID(Ljava/util/ArrayList;I)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "GSM"

    const-string v2, "PDP connection has dropped. Reconnecting"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .local v0, cid:I
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .local v1, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    :cond_2
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0, v4, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto :goto_0

    .end local v0           #cid:I
    .end local v1           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_3
    invoke-virtual {p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getCid()I

    move-result v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpStatesHasActiveCID(Ljava/util/ArrayList;I)Z

    move-result v2

    if-nez v2, :cond_0

    if-nez p2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, v2, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    goto :goto_0

    :cond_4
    const-string v2, "GSM"

    const-string v2, "PDP connection has dropped (active=false case).  Reconnecting"

    invoke-static {v8, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .restart local v0       #cid:I
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v1

    check-cast v1, Landroid/telephony/gsm/GsmCellLocation;

    .restart local v1       #loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v7, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-direct {p0, v4, p3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

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

.method private reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 9
    .parameter "lastFailCauseCode"
    .parameter "apnContext"

    .prologue
    const/4 v5, 0x0

    const-string v8, "GSM"

    if-nez p2, :cond_1

    const-string v3, "GSM"

    const-string v3, "It is impossible"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->isRetryNeeded()Z

    move-result v3

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->retryForeverUsingLastTimeout()V

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->getRetryTimer()I

    move-result v2

    .local v2, nextReconnectDelay:I
    const-string v3, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PDP activate failed. Scheduling next attempt for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    div-int/lit16 v4, v2, 0x3e8

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "s"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.internal.telephony.gprs-reconnect"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "reason"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "type"

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v5, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iput-object v3, p2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->mReconnectIntent:Landroid/app/PendingIntent;

    const/4 v3, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, v2

    add-long/2addr v4, v6

    iget-object v6, p2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->mReconnectIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->increaseRetryCount()V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->shouldPostNotification(Lcom/android/internal/telephony/DataConnection$FailCause;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "GSM"

    const-string v3, "NOT Posting GPRS Unavailable notification -- likely transient error"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0           #am:Landroid/app/AlarmManager;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v2           #nextReconnectDelay:I
    :cond_3
    const-string v3, "GSM"

    const-string v3, "PDP activate failed, Reregistering to the network"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->reRegisterNetwork(Landroid/os/Message;)V

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    goto/16 :goto_0

    .restart local v0       #am:Landroid/app/AlarmManager;
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v2       #nextReconnectDelay:I
    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto/16 :goto_0
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
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;

    const-string v6, "pdp_watchdog_ping_address"

    invoke-static {v5, v6}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;

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

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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

    iput v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPdpResetCount:I

    const/16 v5, 0x1b

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

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

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method

.method private setEnabled(Ljava/lang/String;Z)V
    .locals 2
    .parameter "apnType"
    .parameter "enable"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private setHttpProxy(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 12
    .parameter "apnContext"

    .prologue
    const/4 v7, 0x0

    const-string v11, "net.gprs.http-proxy"

    const-string v10, "http://"

    const-string v9, ":"

    const-string v8, "/"

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    .local v1, apnType:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    iget-object v3, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    .local v3, httpProxy:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    .local v2, httpPort:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "set http proxy for\' APN: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' proxy: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->proxy:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' port: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/gsm/ApnSetting;->port:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "net.gprs.http-proxy"

    invoke-virtual {v4, v11, v7}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const-string v2, "8080"

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    const-string v5, "net.gprs.http-proxy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v11, v5}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.gprs.http-proxy."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    const-string v2, "8080"

    :cond_8
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "net.gprs.http-proxy."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

    if-nez v2, :cond_1

    const-string v2, "not allow setting"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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
    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    if-ltz p1, :cond_0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .local v1, values:Landroid/content/ContentValues;
    const-string v2, "apn_id"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    sget-object v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->PREFERAPN_URI:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method private setupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z
    .locals 8
    .parameter "apnContext"

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    const-string v4, "enter setupData!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->parseOemType(Ljava/lang/String;)I

    move-result v3

    .local v3, profileId:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getNextApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v0

    .local v0, apn:Lcom/android/internal/telephony/gsm/ApnSetting;
    if-nez v0, :cond_0

    const-string v4, "setupData: return for no apn found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v4, v5

    :goto_0
    return v4

    :cond_0
    const/16 v4, 0x3e8

    if-le v3, v4, :cond_2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->findReadyPdpForOem(I)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .local v2, pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :goto_1
    if-nez v2, :cond_1

    const-string v4, "setupData: No ready GsmDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->findFreePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_3

    const-string v4, "setupData: No free GsmDataConnection found!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v4, v5

    goto :goto_0

    .end local v2           #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->findReadyPdp(Lcom/android/internal/telephony/gsm/ApnSetting;)Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    .restart local v2       #pdp:Lcom/android/internal/telephony/gsm/GsmDataConnection;
    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setActiveApn(Lcom/android/internal/telephony/gsm/ApnSetting;)V

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setActivePdp(Lcom/android/internal/telephony/gsm/GsmDataConnection;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->setProfileId(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    iput v7, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setHttpProxy(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    const-string v4, "pdp connect!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "setupData: initing!"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v4, v7

    goto :goto_0
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

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDnsServers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .local v7, servers:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, count:I
    if-eqz v7, :cond_1

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v8, v7

    if-ge v1, v8, :cond_1

    aget-object v6, v7, v1

    .local v6, serverAddr:Ljava/lang/String;
    const-string v8, "0.0.0.0"

    invoke-static {v6, v8}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

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

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v1           #i:I
    .end local v6           #serverAddr:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v0, 0x1

    .restart local v1       #i:I
    :goto_1
    const/4 v8, 0x4

    if-gt v1, v8, :cond_3

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

    if-eqz v8, :cond_2

    const-string v8, ""

    invoke-static {v4, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v4           #propName:Ljava/lang/String;
    .end local v5           #propVal:Ljava/lang/String;
    :cond_3
    const-string v8, "net.dnschange"

    invoke-static {v13}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #propVal:Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_4

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

    .end local v3           #n:I
    :cond_4
    :goto_2
    return-void

    :catch_0
    move-exception v8

    goto :goto_2
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

.method private startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 0
    .parameter "cause"
    .parameter "apnContext"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->reconnectAfterFail(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    return-void
.end method

.method private startPeriodicPdpPoll()V
    .locals 3

    .prologue
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->removeMessages(I)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z
    .locals 9
    .parameter "apnContext"

    .prologue
    const/4 v7, 0x0

    const-string v8, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trySetupData2 for type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " due to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[DSAC DEB] trySetupData2 with mIsPsRestricted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSimulatedRadioControl()Lcom/android/internal/telephony/test/SimulatedRadioControl;

    move-result-object v4

    if-eqz v4, :cond_0

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "GSM"

    const-string v4, "(fix?) We\'re on the simulator; assuming data is connected"

    invoke-static {v8, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    .local v1, gprsState:I
    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v2

    .local v2, roaming:Z
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getDesiredPowerState()Z

    move-result v0

    .local v0, desiredPowerState:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_6

    :cond_1
    if-eqz v1, :cond_2

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->noAutoAttach:Z

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isDataAllowed(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    if-nez v4, :cond_6

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->buildWaitingApns(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .local v3, waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "No APN found"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/DataConnection$FailCause;

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    move v4, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setWaitingApns(Ljava/util/ArrayList;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create from allApns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    .end local v3           #waitingApns:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/gsm/ApnSetting;>;"
    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Setup watingApns : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    move-result v4

    goto/16 :goto_0

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trySetupData: Not ready for data:  dataState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " gprsState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " sim="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " UMTS="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " phoneState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " isDataAllowed="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isDataAllowed(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getAnyDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " roaming="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " dataOnRoamingEnable="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataOnRoamingEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ps restricted="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " desiredPowerState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " MasterDataEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v4

    const-string v5, "default"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v4, v5, :cond_7

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v4, v5, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyDataConnectionFailed(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    move v4, v7

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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DSAC DEB] trySetupData with mIsPsRestricted="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    const-string p2, "default"

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-direct {v0, p0, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-nez v0, :cond_2

    const-string v1, "***new apn context failed "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    return v1

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_1
    move-object v2, p1

    goto :goto_0

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v2, v3, :cond_0

    const/16 v2, 0x22

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->arg1:I

    const-string v2, "dataDisabled"

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    const-string v2, "return APN_REQUEST_STARTED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v2, 0x4

    goto :goto_0

    :cond_1
    const-string v2, "no apn context was found, or not enabled apn context, return APN_REQUEST_FAILED"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x3

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
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

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/SIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForDataStateChanged(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallEnded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->unregisterForVoiceCallStarted(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsAttached(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForGprsDetached(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOn(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForRoamingOff(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->destroyAllPdpList()V

    return-void
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 9
    .parameter "type"

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v3, ")"

    const-string v3, "return APN_REQUEST_FAILED"

    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calling enableApnType with type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;Ljava/lang/String;)V

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "New apn type context for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableApnType("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", state("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "apn type is active"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_2

    const-string v3, "return APN_REQUEST_STARTED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    :goto_0
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    const-string v3, "return APN_REQUEST_FAILED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v3, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v3, v4, :cond_3

    const-string v3, "return APN_ALREADY_ACTIVE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v3, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "return APN_TYPE_NOT_AVAILABLE"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v3, 0x2

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataEnabledSetting()Z

    move-result v1

    .local v1, dataEnabledSetting:Z
    if-nez v1, :cond_5

    const-string v3, "mms"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    const-string v3, "return APN_REQUEST_FAILED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v3, v8

    goto :goto_0

    :cond_5
    if-nez v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "enable_mms_when_data_disabled"

    invoke-static {v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, value:Ljava/lang/String;
    if-eqz v2, :cond_6

    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    :cond_6
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    const-string v3, "return APN_REQUEST_FAILED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v3, v8

    goto :goto_0

    .end local v2           #value:Ljava/lang/String;
    :cond_7
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v3, "dataEnabled"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "new apn request for type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is to be handled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/16 v3, 0x17

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    const-string v3, "return APN_REQUEST_STARTED"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v6

    goto/16 :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #dataEnabledSetting:Z
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "GsmDataConnectionTracker finalized"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected getActiveApnString()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "get 1st active apn string"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v2

    iget-object v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;->apn:Ljava/lang/String;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected getActiveApnString(Ljava/lang/String;)Ljava/lang/String;
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

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

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

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
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

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_1
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
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
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .local v0, pdps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/DataConnection;>;"
    return-object v0
.end method

.method public getAnyDataEnabled()Z
    .locals 3

    .prologue
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContexts:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .end local v0           #apnContexts:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getDataEnabled()Z
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getDnsServers()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getGatewayAddresses()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "get active pdp is not null, return interface"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_1
    const-string v2, "return null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    const-string v2, "get active pdp is not null, return interface"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getInterface()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const-string v2, "return null"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddress()Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local p0
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddresses()[Ljava/lang/String;

    move-result-object v2

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    return-object v2

    .restart local v1       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :cond_1
    move-object v2, v4

    goto :goto_0

    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    .restart local p0
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActivePdp()Lcom/android/internal/telephony/gsm/GsmDataConnection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmDataConnection;->getIpAddresses()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_0
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .local v3, isConnecting:Z
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->pdpList:Ljava/util/ArrayList;

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

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1

    :cond_3
    const-string v5, "overall state is IDLE"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_1
.end method

.method public getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 2
    .parameter "apnType"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "default"

    const-string v6, "GSM"

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-boolean v2, v2, Lcom/android/internal/telephony/PhoneBase;->mIsTheCurrentActivePhone:Z

    if-nez v2, :cond_1

    const-string v2, "GSM"

    const-string v2, "Ignore GSM msgs since GSM phone is inactive"

    invoke-static {v6, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle msg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onRecordsLoaded()V

    goto :goto_0

    :pswitch_2
    const/4 v0, 0x0

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    if-eqz v2, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onEnableNewApn(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto :goto_0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onGprsDetached()V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onGprsAttached()V

    goto :goto_0

    :pswitch_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    :pswitch_6
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onPdpStateChanged(Landroid/os/AsyncResult;Z)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onPollPdp()V

    goto :goto_0

    :pswitch_8
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    goto :goto_0

    :pswitch_9
    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->doRecovery()V

    goto :goto_0

    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onApnChanged()V

    goto :goto_0

    :pswitch_b
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DSAC DEB] EVENT_PS_RESTRICT_ENABLED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    goto :goto_0

    :pswitch_c
    const-string v2, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[DSAC DEB] EVENT_PS_RESTRICT_DISABLED "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    const-string v2, "default"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    goto/16 :goto_0

    :cond_3
    const-string v2, "default"

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_4

    const-string v2, "handle message EVENT_PS_RESTRICT_DISABLED: clean all connection"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const-string v2, "psRestrictEnabled"

    invoke-direct {p0, v4, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iput-boolean v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    :cond_4
    const-string v2, "roamingOff"

    const-string v3, "default"

    invoke-direct {p0, v2, v7}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_d
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    if-eqz v2, :cond_5

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onTrySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    goto/16 :goto_0

    :cond_5
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onTrySetupData(Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_e
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_6

    move v1, v4

    .local v1, tearDown:Z
    :goto_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    if-eqz v2, :cond_7

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onCleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto/16 :goto_0

    .end local v1           #tearDown:Z
    :cond_6
    move v1, v5

    goto :goto_1

    .restart local v1       #tearDown:Z
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onCleanUpConnection(ZLjava/lang/String;)V

    goto/16 :goto_0

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
    .end packed-switch
.end method

.method protected isApnTypeActive(Ljava/lang/String;)Z
    .locals 2
    .parameter "type"

    .prologue
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

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
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->allApns:Ljava/util/ArrayList;

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
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SIMRecords;->getRecordsLoaded()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentGprsState()I

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataOnRoamingEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsPsRestricted:Z

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

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

    const-string v2, "[GsmDataConnectionTracker] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onAutoDisconnect(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 1
    .parameter "apnContext"

    .prologue
    const-string v0, "on auto disconnect"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    if-nez p1, :cond_1

    const-string v0, "No contexts of mms or default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto :goto_0
.end method

.method protected onCleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 1
    .parameter "tearDown"
    .parameter "apnContext"

    .prologue
    const-string v0, "onCleanUpConnection clean 1 connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    return-void
.end method

.method protected onCleanUpConnection(ZLjava/lang/String;)V
    .locals 1
    .parameter "tearDown"
    .parameter "reason"

    .prologue
    const-string v0, "onCleanUpConnection clean all connections"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    return-void
.end method

.method protected onDataSetupComplete(Landroid/os/AsyncResult;)V
    .locals 11
    .parameter "ar"

    .prologue
    const-string v10, "default"

    const/4 v1, 0x0

    .local v1, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    if-eqz v6, :cond_0

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v1           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v1       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_0
    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "default"

    invoke-static {v6, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->isApnTypeActive()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "gsm.defaultpdpcontext.active"

    const-string v7, "true"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->canSetPreferApn:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    if-nez v6, :cond_1

    const-string v6, "GSM"

    const-string v7, "PREFERED APN is null"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getActiveApn()Lcom/android/internal/telephony/gsm/ApnSetting;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->preferredApn:Lcom/android/internal/telephony/gsm/ApnSetting;

    iget v6, v6, Lcom/android/internal/telephony/gsm/ApnSetting;->id:I

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setPreferredApn(I)V

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyDefaultData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v6, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v0, v6

    check-cast v0, Lcom/android/internal/telephony/DataConnection$FailCause;

    move-object v2, v0

    .local v2, cause:Lcom/android/internal/telephony/DataConnection$FailCause;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PDP setup failed "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->isEventLoggable()Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v3, -0x1

    .local v3, cid:I
    iget-object v6, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneBase;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v5

    check-cast v5, Landroid/telephony/gsm/GsmCellLocation;

    .local v5, loc:Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v3

    :cond_4
    const v6, 0xc3b9

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->ordinal()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v3           #cid:I
    .end local v5           #loc:Landroid/telephony/gsm/GsmCellLocation;
    :cond_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/DataConnection$FailCause;->isPermanentFail()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "entitle"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "Tether APN failed, restoring default data"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyNoData(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v7, "default"

    invoke-virtual {v6, v10}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v4, defaultContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v4, :cond_2

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    goto/16 :goto_0

    .end local v4           #defaultContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->removeNextApn()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getWaitingApns()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startDelayedRetry(Lcom/android/internal/telephony/DataConnection$FailCause;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto/16 :goto_0

    :cond_8
    sget-object v6, Lcom/android/internal/telephony/DataConnectionTracker$State;->SCANNING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    const/4 v6, 0x5

    invoke-virtual {p0, v6, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1388

    invoke-virtual {p0, v6, v7, v8}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected onDisconnectDone(Landroid/os/AsyncResult;)V
    .locals 8
    .parameter "ar"

    .prologue
    const-string v7, "gsm.defaultpdpcontext.active"

    const-string v6, "false"

    const-string v5, "entitle"

    const-string v4, "default"

    const/4 v0, 0x0

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    const-string v1, "EVENT_DISCONNECT_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    if-eqz v1, :cond_0

    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setActiveApn(Lcom/android/internal/telephony/gsm/ApnSetting;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default"

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->retryAfterDisconnected(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "isSinglePdpOnly is true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v2, "entitle"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_1
    const-string v1, "default"

    iput-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    :cond_2
    const-string v1, "gsm.defaultpdpcontext.active"

    const-string v1, "false"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->onDataDisconnectDone()V

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getApnType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "entitle"

    invoke-static {v1, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "radioTurnedOff"

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getReason()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .restart local v0       #apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    const-string v1, "gsm.defaultpdpcontext.active"

    const-string v1, "false"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v0, "onEnableNewApn clean all connection"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_0
.end method

.method protected onEnableNewApn(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V
    .locals 2
    .parameter "apnContext"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "default"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v0, "onEnableNewApn setup data"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    const-string v0, "previous state is FAILED, reset to IDLE"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    const-string v1, "entitle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const-string v1, "apnSwitched"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    goto :goto_1
.end method

.method protected onGprsDetached()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    const-string v0, "gprsDetached"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

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
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v1, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-direct {p0, v3, p2, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onPdpStateChanged(Ljava/util/ArrayList;ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    goto :goto_0
.end method

.method protected onPollPdp()V
    .locals 3

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPDPContextList(Landroid/os/Message;)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessageDelayed(Landroid/os/Message;J)Z

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/PhoneBase;->notifyDataConnection(Ljava/lang/String;)V

    const-string v0, "GSM"

    const-string v1, "We\'re on the simulator; assuming data is connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    :cond_1
    return-void
.end method

.method protected onRadioOffOrNotAvailable()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isSinglePdpOnly(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    :cond_1
    const-string v0, "radioTurnedOff"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onRecordsLoaded()V
    .locals 3

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createAllApnList()V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz v0, :cond_1

    const-string v1, "simLoaded"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setReason(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->FAILED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_0

    const-string v1, "onRecordsLoaded clean connection"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpConnection(ZLcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)V

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method protected onResetDone(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v1, "EVENT_RESET_DONE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->gotoIdleAndNotifyDataConnection(Ljava/lang/String;)V

    return-void
.end method

.method protected onRoamingOff()V
    .locals 2

    .prologue
    const-string v0, "roamingOff"

    const-string v1, "default"

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected onRoamingOn()V
    .locals 3

    .prologue
    const-string v2, "roamingOn"

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "roamingOn"

    const-string v0, "default"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void

    :cond_0
    const-string v0, "Tear down data connection on roaming."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    const-string v1, "roamingOn"

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onSetDataEnabled(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v1, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    :cond_0
    const-string v1, "dataEnabled"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onTrySetupData(Ljava/lang/String;)Z

    .end local v0           #defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_1
    :goto_0
    return-void

    .restart local v0       #defaultApnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    :cond_2
    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    :cond_3
    const-string v1, "dataDisabled"

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected onTrySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z
    .locals 1
    .parameter "apnContext"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"

    .prologue
    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onTrySetupData(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "reason"
    .parameter "type"

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onVoiceCallEnded()V
    .locals 2

    .prologue
    const-string v1, "2GVoiceCallEnded"

    const-string v0, "onVoiceCallEnded()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->startNetStatPoll()V

    const-string v0, "2GVoiceCallEnded"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->resetPollStats()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mReregisterOnReconnectFailure:Z

    const-string v0, "2GVoiceCallEnded"

    const-string v0, "default"

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->trySetupData(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method

.method protected onVoiceCallStarted()V
    .locals 1

    .prologue
    const-string v0, "onVoiceCallStarted()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndData()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->stopNetStatPoll()V

    const-string v0, "2GVoiceCallStarted"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->notifyAllEnabledDataConnection(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method parseOemType(Ljava/lang/String;)I
    .locals 6
    .parameter "apnType"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parse type :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

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

    aget-object v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    aget-object v2, v1, v4

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    aget-object v2, v1, v5

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    aget-object v2, v1, v4

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

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v2, v0

    .end local v0           #pid:I
    :goto_1
    return v2

    :cond_0
    const-string v2, " not a oem type"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    move v2, v4

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

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->cleanUpAllConnections(ZLjava/lang/String;)V

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

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

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected startNetStatPoll()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getState()Lcom/android/internal/telephony/DataConnectionTracker$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPingTestActive:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    if-nez v0, :cond_0

    const-string v0, "GSM"

    const-string v1, "[DataConnection] Start poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->resetPollStats()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPollNetStat:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method protected stopNetStatPoll()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mPollNetStat:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "GSM"

    const-string v1, "[DataConnection] Stop poll NetStat"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchToCdma()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsSwitchedToCdma:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0, v1, v1, v1}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 12

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-string v11, "GSM"

    iget-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsSwitchedToCdma:Z

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v9, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIsSwitchedToCdma:Z

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x3

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v6, 0xc

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSIMRecords:Lcom/android/internal/telephony/gsm/SIMRecords;

    const/4 v6, 0x4

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/SIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x6

    invoke-interface {v5, p0, v6, v8}, Lcom/android/internal/telephony/CommandsInterface;->registerForDataStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v6, 0xf

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallEnded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    const/16 v6, 0xe

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->registerForVoiceCallStarted(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x1a

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x13

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForGprsDetached(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x15

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x16

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x20

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    iget-object v5, v5, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v6, 0x21

    invoke-virtual {v5, p0, v6, v8}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v5, "netstat"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/INetStatService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetStatService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->netstat:Landroid/os/INetStatService;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .local v3, filter:Landroid/content/IntentFilter;
    const-string v5, "com.android.internal.telephony.gprs-reconnect"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_ON"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v5, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v7, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5, v6, v3, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-object p0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mResolver:Landroid/content/ContentResolver;

    new-instance v5, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    invoke-direct {v5, p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;-><init>(Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->apnObserver:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnChangeObserver;

    invoke-virtual {v5, v6, v10, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createAllPdpList()V

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->createApnContexts()V

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .local v4, sp:Landroid/content/SharedPreferences;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mApnContexts:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v6, "default"

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;

    .local v0, apnContext:Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->getDataEnabledSetting()Z

    move-result v1

    .local v1, dataEnabledSetting:Z
    const-string v5, "disabled_on_boot_key"

    invoke-interface {v4, v5, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_4

    move v2, v10

    .local v2, defaultEnabled:Z
    :goto_1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt$ApnContext;->setEnabled(Z)V

    if-eqz v2, :cond_2

    iget v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    :cond_2
    if-nez v2, :cond_5

    move v5, v10

    :goto_2
    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->noAutoAttach:Z

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "ro.gsm.data_retry_config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "GSM"

    const-string v5, "Could not configure using DEFAULT_DATA_RETRY_CONFIG=default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    const/16 v6, 0x14

    const/16 v7, 0x7d0

    const/16 v8, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/internal/telephony/RetryManager;->configure(III)Z

    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mDefaultRetryManager:Lcom/android/internal/telephony/RetryManager;

    new-instance v5, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v5}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "ro.gsm.2nd_data_retry_config"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "max_retries=3, 5000, 5000, 5000"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "GSM"

    const-string v5, "Could note configure using SECONDARY_DATA_RETRY_CONFIG=max_retries=3, 5000, 5000, 5000"

    invoke-static {v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/GsmDataConnectionTrackerExt;->mSecondaryRetryManager:Lcom/android/internal/telephony/RetryManager;

    const-string v6, "max_retries=3, 333, 333, 333"

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/RetryManager;->configure(Ljava/lang/String;)Z

    goto/16 :goto_0

    .end local v2           #defaultEnabled:Z
    :cond_4
    move v2, v9

    goto :goto_1

    .restart local v2       #defaultEnabled:Z
    :cond_5
    move v5, v9

    goto :goto_2
.end method
