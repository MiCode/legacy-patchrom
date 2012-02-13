.class public abstract Lcom/android/internal/telephony/DataConnectionTracker;
.super Landroid/os/Handler;
.source "DataConnectionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnectionTracker$1;,
        Lcom/android/internal/telephony/DataConnectionTracker$Activity;,
        Lcom/android/internal/telephony/DataConnectionTracker$State;
    }
.end annotation


# static fields
.field protected static final APN_DEFAULT_ID:I = 0x0

.field protected static final APN_DUN_ID:I = 0x3

.field protected static final APN_ENTITLE_ID:I = 0x5

.field protected static final APN_HIPRI_ID:I = 0x4

.field protected static final APN_INVALID_ID:I = -0x1

.field protected static final APN_MMS_ID:I = 0x1

.field protected static final APN_NUM_TYPES:I = 0x6

.field protected static final APN_RESTORE_DELAY_PROP_NAME:Ljava/lang/String; = "android.telephony.apn-restore"

.field protected static final APN_SUPL_ID:I = 0x2

.field protected static final DBG:Z = true

.field protected static final DEFAULT_DATA_RETRY_CONFIG:Ljava/lang/String; = "default_randomization=2000,5000,10000,20000,40000,80000:5000,160000:5000,320000:5000,640000:5000,1280000:5000,1800000:5000"

.field protected static final DEFAULT_MAX_PDP_RESET_FAIL:I = 0x3

.field protected static final DEFAULT_PING_DEADLINE:I = 0x5

.field protected static final DISABLED:I = 0x0

.field protected static final ENABLED:I = 0x1

.field public static final EVENT_4G_TECHNOLOGY_CHANGE:I = 0x29

.field protected static final EVENT_APN_CHANGED:I = 0x1d

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x1e

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x23

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x22

.field protected static final EVENT_DATA_SETUP_COMPLETE:I = 0x1

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x6

.field protected static final EVENT_DELAYED_VOICE_CALL_START:I = 0x27

.field protected static final EVENT_DISCONNECT_DONE:I = 0x19

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x17

.field protected static final EVENT_GET_PDP_LIST_COMPLETE:I = 0xb

.field protected static final EVENT_GPRS_ATTACHED:I = 0x1a

.field protected static final EVENT_GPRS_DETACHED:I = 0x13

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x14

.field protected static final EVENT_NV_READY:I = 0x1f

.field protected static final EVENT_POLL_DATA_CALLS_STATE:I = 0x28

.field protected static final EVENT_POLL_EXTRA_DATA_REASON:I = 0x2a

.field protected static final EVENT_POLL_PDP:I = 0x7

.field protected static final EVENT_PS_RESTRICT_DISABLED:I = 0x21

.field protected static final EVENT_PS_RESTRICT_ENABLED:I = 0x20

.field protected static final EVENT_RADIO_AVAILABLE:I = 0x3

.field protected static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0xc

.field protected static final EVENT_RECORDS_LOADED:I = 0x4

.field protected static final EVENT_RESET_DONE:I = 0x26

.field protected static final EVENT_RESTART_RADIO:I = 0x24

.field protected static final EVENT_RESTORE_DEFAULT_APN:I = 0x18

.field protected static final EVENT_ROAMING_OFF:I = 0x16

.field protected static final EVENT_ROAMING_ON:I = 0x15

.field protected static final EVENT_SET_MASTER_DATA_ENABLE:I = 0x25

.field protected static final EVENT_START_NETSTAT_POLL:I = 0x1b

.field protected static final EVENT_START_RECOVERY:I = 0x1c

.field protected static final EVENT_TRY_SETUP_DATA:I = 0x5

.field protected static final EVENT_VOICE_CALL_ENDED:I = 0xf

.field protected static final EVENT_VOICE_CALL_STARTED:I = 0xe

.field protected static final NO_RECV_POLL_LIMIT:I = 0x18

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static final NUMBER_SENT_PACKETS_OF_HANG:I = 0xa

.field protected static final POLL_LONGEST_RTT:I = 0x1d4c0

.field protected static final POLL_NETSTAT_MILLIS:I = 0x3e8

.field protected static final POLL_NETSTAT_SCREEN_OFF_MILLIS:I = 0x927c0

.field protected static final POLL_NETSTAT_SLOW_MILLIS:I = 0x1388

.field protected static final RESTORE_DEFAULT_APN_DELAY:I = 0xea60

.field protected static final SECONDARY_DATA_RETRY_CONFIG:Ljava/lang/String; = "max_retries=3, 5000, 5000, 5000"

.field protected static isPhoneCallStarted:Z


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected cidActive:I

.field protected dataEnabled:[Z

.field protected enabledCount:I

.field protected isApnOff:Z

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mIsWifiConnected:Z

.field protected mMasterDataEnabled:Z

.field protected mNoRecvPollCount:I

.field public mPdnDeactivateCause:I

.field protected mReconnectIntent:Landroid/app/PendingIntent;

.field protected mRequestedApnType:Ljava/lang/String;

.field protected mRetryMgr:Lcom/android/internal/telephony/RetryManager;

.field protected netStatPollEnabled:Z

.field protected netStatPollPeriod:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field protected rxPkts:J

.field protected sentSinceLastRecv:J

.field protected state:Lcom/android/internal/telephony/DataConnectionTracker$State;

.field protected txPkts:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/telephony/DataConnectionTracker;->isPhoneCallStarted:Z

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "DataConnectionTracker"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isApnOff:Z

    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mPdnDeactivateCause:I

    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    return-void
.end method

.method private setEnabled(IZ)V
    .locals 4
    .parameter "id"
    .parameter "enable"

    .prologue
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") with old state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const-string v3, "default"

    packed-switch p1, :pswitch_data_0

    const-string v0, "DataConnectionTracker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") in apnIdToType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "default"

    move-object v0, v3

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "default"

    move-object v0, v3

    goto :goto_0

    :pswitch_1
    const-string v0, "mms"

    goto :goto_0

    :pswitch_2
    const-string v0, "supl"

    goto :goto_0

    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    :pswitch_5
    const-string v0, "entitle"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected apnTypeToId(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "entitle"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 8
    .parameter "type"

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v2, "default"

    const-string v2, "DataConnectionTracker"

    monitor-enter p0

    :try_start_0
    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disableApnType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    move v2, v7

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, build_string:Ljava/lang/String;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    const-string v2, "XT610"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "DataConnectionTracker"

    const-string v3, "SUPL APN doesn\'t exist, use default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    :cond_3
    move v2, v6

    goto :goto_0

    :cond_4
    move v2, v7

    goto :goto_0

    .end local v0           #build_string:Ljava/lang/String;
    .end local v1           #id:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public abstract dispose()V
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 6
    .parameter "type"

    .prologue
    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v2, "DataConnectionTracker"

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .local v1, id:I
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v2, 0x3

    :goto_0
    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "ro.product.model"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, build_string:Ljava/lang/String;
    if-ne v1, v4, :cond_2

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "XT610"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "DataConnectionTracker"

    const-string v3, "SUPL APN doesn\'t exist, use default"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "default"

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .end local v0           #build_string:Ljava/lang/String;
    :cond_1
    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableApnType("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "), isApnTypeActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_3

    move v2, v5

    goto :goto_0

    .restart local v0       #build_string:Ljava/lang/String;
    :cond_2
    const-string v2, "DataConnectionTracker"

    const-string v3, "type not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v4

    goto/16 :goto_0

    .end local v0           #build_string:Ljava/lang/String;
    :cond_3
    sget-boolean v2, Lcom/android/internal/telephony/DataConnectionTracker;->isPhoneCallStarted:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v2, v3, :cond_4

    move v2, v5

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v3, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v3, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    move v2, v5

    goto/16 :goto_0

    .end local v1           #id:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected abstract getActiveApnString()Ljava/lang/String;
.end method

.method protected abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    return-object v0
.end method

.method public abstract getAllDataConnections()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/DataConnection;",
            ">;"
        }
    .end annotation
.end method

.method public getAnyDataEnabled()Z
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized getDataEnabled()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDataOnRoamingEnabled()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roaming"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    goto :goto_0
.end method

.method protected abstract getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract getGateway(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getGateways(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getIpAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getIpAddresses(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getStateInString()Ljava/lang/String;
    .locals 2

    .prologue
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "ERRO"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    :pswitch_1
    const-string v0, "INIT"

    goto :goto_0

    :pswitch_2
    const-string v0, "CING"

    goto :goto_0

    :pswitch_3
    const-string v0, "SCAN"

    goto :goto_0

    :pswitch_4
    const-string v0, "CNTD"

    goto :goto_0

    :pswitch_5
    const-string v0, "DING"

    goto :goto_0

    :pswitch_6
    const-string v0, "FAIL"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    const-string v3, "DATA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unidentified event = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0

    :sswitch_1
    const/4 v1, 0x0

    .local v1, reason:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #reason:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .end local v1           #reason:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_0

    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_0

    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_0

    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_0

    :sswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    move v2, v5

    .local v2, tearDown:Z
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    .end local v2           #tearDown:Z
    :cond_2
    move v2, v4

    goto :goto_1

    :sswitch_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    move v0, v4

    .local v0, enabled:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDataEnabled(Z)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_3
    move v0, v5

    goto :goto_2

    :sswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_6
        0x3 -> :sswitch_4
        0x5 -> :sswitch_1
        0xc -> :sswitch_5
        0xe -> :sswitch_8
        0xf -> :sswitch_9
        0x15 -> :sswitch_3
        0x16 -> :sswitch_2
        0x17 -> :sswitch_0
        0x19 -> :sswitch_7
        0x22 -> :sswitch_a
        0x25 -> :sswitch_b
        0x26 -> :sswitch_c
    .end sparse-switch
.end method

.method public isApnOffStatus()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->isApnOff:Z

    return v0
.end method

.method protected abstract isApnTypeActive(Ljava/lang/String;)Z
.end method

.method protected abstract isApnTypeAvailable(Ljava/lang/String;)Z
.end method

.method public abstract isDataConnectionAsDesired()Z
.end method

.method protected declared-synchronized isEnabled(I)Z
    .locals 1
    .parameter "id"

    .prologue
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onCleanUpConnection(ZLjava/lang/String;)V
.end method

.method protected abstract onDataSetupComplete(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onDisconnectDone(Landroid/os/AsyncResult;)V
.end method

.method protected declared-synchronized onEnableApn(II)V
    .locals 6
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v5, 0x1

    const-string v2, "default"

    const-string v2, "DataConnectionTracker"

    monitor-enter p0

    :try_start_0
    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_APN_ENABLE_REQUEST "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " dataEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v4, v4, p1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enabledCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isApnTypeActive = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v5, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x1

    aput-boolean v3, v2, p1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v1

    .local v1, type:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    if-eq p1, v0, :cond_1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, v0

    if-ne v5, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, v0

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v2, "DataConnectionTracker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enabledCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0           #i:I
    .end local v1           #type:Ljava/lang/String;
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v2, v2, p1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aput-boolean v3, v2, p1

    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v2, v5

    iput v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    const/4 v2, 0x3

    if-ne v2, p1, :cond_5

    const-string v2, "olympus"

    const-string v3, "ro.product.name"

    const-string v4, "none"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    const-string v3, "dunDisabled"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :cond_5
    :try_start_2
    iget v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v2, :cond_6

    const/4 v2, 0x1

    const-string v3, "dataDisabled"

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-ne v2, v5, :cond_3

    const-string v2, "default"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "default"

    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    return-void
.end method

.method protected abstract onRadioAvailable()V
.end method

.method protected abstract onRadioOffOrNotAvailable()V
.end method

.method protected abstract onResetDone(Landroid/os/AsyncResult;)V
.end method

.method protected abstract onRoamingOff()V
.end method

.method protected abstract onRoamingOn()V
.end method

.method protected onSetDataEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    const-string v1, "dataDisabled"

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method protected abstract onTrySetupData(Ljava/lang/String;)Z
.end method

.method protected abstract onVoiceCallEnded()V
.end method

.method protected abstract onVoiceCallStarted()V
.end method

.method protected abstract restartRadio()V
.end method

.method public setDataEnabled(Z)Z
    .locals 5
    .parameter "enable"

    .prologue
    const/4 v4, 0x1

    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDataEnabled("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v4

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    return v4

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_roaming"

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    :cond_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected abstract stopNetStatPoll()V
.end method

.method public switchToCdma()V
    .locals 2

    .prologue
    const-string v0, "DataConnectionTracker"

    const-string v1, "DataConnectionTracker, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public switchToGsm()V
    .locals 2

    .prologue
    const-string v0, "DataConnectionTracker"

    const-string v1, "DataConnectionTracker, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
