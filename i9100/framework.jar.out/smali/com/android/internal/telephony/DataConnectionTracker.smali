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
.field protected static final APN_BIP_ID:I = 0x5

.field protected static final APN_DEFAULT_ID:I = 0x0

.field protected static final APN_DUN_ID:I = 0x3

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

.field protected static final EVENT_APN_CHANGED:I = 0x1d

.field protected static final EVENT_CDMA_DATA_DETACHED:I = 0x1e

.field protected static final EVENT_CDMA_OTA_PROVISION:I = 0x23

.field public static final EVENT_CLEAN_UP_CONNECTION:I = 0x22

.field protected static final EVENT_DATA_SETUP_COMPLETE:I = 0x1

.field protected static final EVENT_DATA_STATE_CHANGED:I = 0x6

.field protected static final EVENT_DISCONNECT_DONE:I = 0x19

.field protected static final EVENT_ENABLE_NEW_APN:I = 0x17

.field protected static final EVENT_GET_PDP_LIST_COMPLETE:I = 0xb

.field protected static final EVENT_GPRS_ATTACHED:I = 0x1a

.field protected static final EVENT_GPRS_DETACHED:I = 0x13

.field protected static final EVENT_LINK_STATE_CHANGED:I = 0x14

.field protected static final EVENT_NV_READY:I = 0x1f

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


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field protected activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

.field protected cidActive:I

.field protected dataEnabled:[Z

.field protected enabledCount:I

.field protected mDataConnectionTracker:Landroid/os/Handler;

.field protected mIsWifiConnected:Z

.field protected mMasterDataEnabled:Z

.field protected mNoRecvPollCount:I

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
.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 37
    const-string v0, "DataConnectionTracker"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->LOG_TAG:Ljava/lang/String;

    .line 124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 126
    const/4 v0, 0x6

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    .line 127
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 130
    const-string v0, "default"

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 174
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$Activity;->NONE:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->activity:Lcom/android/internal/telephony/DataConnectionTracker$Activity;

    .line 175
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$State;->IDLE:Lcom/android/internal/telephony/DataConnectionTracker$State;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    .line 176
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mDataConnectionTracker:Landroid/os/Handler;

    .line 181
    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mNoRecvPollCount:I

    .line 182
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->netStatPollEnabled:Z

    .line 185
    new-instance v0, Lcom/android/internal/telephony/RetryManager;

    invoke-direct {v0}, Lcom/android/internal/telephony/RetryManager;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    .line 188
    iput-boolean v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mIsWifiConnected:Z

    .line 191
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mReconnectIntent:Landroid/app/PendingIntent;

    .line 201
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 202
    return-void
.end method


# virtual methods
.method protected apnIdToType(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    const-string v3, "default"

    .line 402
    packed-switch p1, :pswitch_data_0

    .line 416
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

    .line 417
    const-string v0, "default"

    move-object v0, v3

    :goto_0
    return-object v0

    .line 404
    :pswitch_0
    const-string v0, "default"

    move-object v0, v3

    goto :goto_0

    .line 406
    :pswitch_1
    const-string/jumbo v0, "mms"

    goto :goto_0

    .line 408
    :pswitch_2
    const-string/jumbo v0, "supl"

    goto :goto_0

    .line 410
    :pswitch_3
    const-string v0, "dun"

    goto :goto_0

    .line 412
    :pswitch_4
    const-string v0, "hipri"

    goto :goto_0

    .line 414
    :pswitch_5
    const-string v0, "bip"

    goto :goto_0

    .line 402
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
    .line 384
    const-string v0, "default"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    const/4 v0, 0x0

    .line 397
    :goto_0
    return v0

    .line 386
    :cond_0
    const-string/jumbo v0, "mms"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 387
    const/4 v0, 0x1

    goto :goto_0

    .line 388
    :cond_1
    const-string/jumbo v0, "supl"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 389
    const/4 v0, 0x2

    goto :goto_0

    .line 390
    :cond_2
    const-string v0, "dun"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 391
    const/4 v0, 0x3

    goto :goto_0

    .line 392
    :cond_3
    const-string v0, "hipri"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 393
    const/4 v0, 0x4

    goto :goto_0

    .line 394
    :cond_4
    const-string v0, "bip"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    const/4 v0, 0x5

    goto :goto_0

    .line 397
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized disableApnType(Ljava/lang/String;)I
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 494
    monitor-enter p0

    :try_start_0
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 496
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    move v1, v6

    .line 511
    :goto_0
    monitor-exit p0

    return v1

    .line 499
    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 500
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 501
    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 502
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    move v1, v4

    .line 503
    goto :goto_0

    :cond_1
    move v1, v5

    .line 505
    goto :goto_0

    :cond_2
    move v1, v5

    .line 508
    goto :goto_0

    :cond_3
    move v1, v6

    .line 511
    goto :goto_0

    .line 494
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public abstract dispose()V
.end method

.method public declared-synchronized enableApnType(Ljava/lang/String;)I
    .locals 5
    .parameter "type"

    .prologue
    const/4 v4, 0x1

    const-string v1, "DataConnectionTracker"

    .line 460
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnTypeToId(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 461
    .local v0, id:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 462
    const/4 v1, 0x3

    .line 482
    :goto_0
    monitor-exit p0

    return v1

    .line 465
    :cond_0
    :try_start_1
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableApnType("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeAvailable(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 469
    const-string v1, "DataConnectionTracker"

    const-string/jumbo v2, "type not available"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    const/4 v1, 0x2

    goto :goto_0

    .line 476
    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->setEnabled(IZ)V

    .line 478
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 479
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->INITING:Lcom/android/internal/telephony/DataConnectionTracker$State;

    if-ne v1, v2, :cond_2

    move v1, v4

    goto :goto_0

    .line 480
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    sget-object v2, Lcom/android/internal/telephony/DataConnectionTracker$State;->CONNECTED:Lcom/android/internal/telephony/DataConnectionTracker$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move v1, v4

    .line 482
    goto :goto_0

    .line 460
    .end local v0           #id:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected abstract getActiveApnString()Ljava/lang/String;
.end method

.method protected abstract getActiveApnTypes()[Ljava/lang/String;
.end method

.method public getActiveState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getActivity()Lcom/android/internal/telephony/DataConnectionTracker$Activity;
    .locals 1

    .prologue
    .line 207
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
    .line 370
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
    .line 361
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

    .line 263
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

    .line 266
    :goto_0
    return v1

    :cond_0
    move v1, v3

    .line 263
    goto :goto_0

    .line 265
    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, snfe:Landroid/provider/Settings$SettingNotFoundException;
    move v1, v3

    .line 266
    goto :goto_0
.end method

.method protected abstract getDnsServers(Ljava/lang/String;)[Ljava/lang/String;
.end method

.method protected abstract getGateway(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getInterfaceName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method protected abstract getIpAddress(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getState()Lcom/android/internal/telephony/DataConnectionTracker$State;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    return-object v0
.end method

.method public getStateInString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 221
    sget-object v0, Lcom/android/internal/telephony/DataConnectionTracker$1;->$SwitchMap$com$android$internal$telephony$DataConnectionTracker$State:[I

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->state:Lcom/android/internal/telephony/DataConnectionTracker$State;

    invoke-virtual {v1}, Lcom/android/internal/telephony/DataConnectionTracker$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 229
    const-string v0, "ERRO"

    :goto_0
    return-object v0

    .line 222
    :pswitch_0
    const-string v0, "IDLE"

    goto :goto_0

    .line 223
    :pswitch_1
    const-string v0, "INIT"

    goto :goto_0

    .line 224
    :pswitch_2
    const-string v0, "CING"

    goto :goto_0

    .line 225
    :pswitch_3
    const-string v0, "SCAN"

    goto :goto_0

    .line 226
    :pswitch_4
    const-string v0, "CNTD"

    goto :goto_0

    .line 227
    :pswitch_5
    const-string v0, "DING"

    goto :goto_0

    .line 228
    :pswitch_6
    const-string v0, "FAIL"

    goto :goto_0

    .line 221
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

    .line 285
    iget v3, p1, Landroid/os/Message;->what:I

    sparse-switch v3, :sswitch_data_0

    .line 350
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

    .line 353
    :goto_0
    return-void

    .line 288
    :sswitch_0
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableApn(II)V

    goto :goto_0

    .line 292
    :sswitch_1
    const/4 v1, 0x0

    .line 293
    .local v1, reason:Ljava/lang/String;
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v3, v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 294
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #reason:Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 296
    .restart local v1       #reason:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    goto :goto_0

    .line 300
    .end local v1           #reason:Ljava/lang/String;
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 301
    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 303
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOff()V

    goto :goto_0

    .line 307
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRoamingOn()V

    goto :goto_0

    .line 311
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioAvailable()V

    goto :goto_0

    .line 315
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onRadioOffOrNotAvailable()V

    goto :goto_0

    .line 319
    :sswitch_6
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->cidActive:I

    .line 320
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDataSetupComplete(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 324
    :sswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onDisconnectDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 328
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallStarted()V

    goto :goto_0

    .line 332
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onVoiceCallEnded()V

    goto :goto_0

    .line 336
    :sswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_2

    move v2, v5

    .line 337
    .local v2, tearDown:Z
    :goto_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V

    goto :goto_0

    .end local v2           #tearDown:Z
    :cond_2
    move v2, v4

    .line 336
    goto :goto_1

    .line 341
    :sswitch_b
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v4, :cond_3

    move v0, v4

    .line 342
    .local v0, enabled:Z
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onSetDataEnabled(Z)V

    goto :goto_0

    .end local v0           #enabled:Z
    :cond_3
    move v0, v5

    .line 341
    goto :goto_2

    .line 346
    :sswitch_c
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->onResetDone(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 285
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
    .line 443
    monitor-enter p0

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 444
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 446
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 443
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
    .locals 5
    .parameter "apnId"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x1

    const-string v1, "default"

    const-string v1, "DataConnectionTracker"

    .line 527
    monitor-enter p0

    :try_start_0
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_APN_ENABLE_REQUEST "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dataEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v3, v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", enabledCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", isApnTypeActive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    if-ne p2, v4, :cond_2

    .line 533
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, p1

    if-nez v1, :cond_0

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    .line 535
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 537
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnectionTracker;->apnIdToType(I)Ljava/lang/String;

    move-result-object v0

    .line 538
    .local v0, type:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 539
    iput-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 540
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 556
    .end local v0           #type:Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 544
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_1

    .line 545
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aput-boolean v2, v1, p1

    .line 546
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    sub-int/2addr v1, v4

    iput v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    .line 547
    iget v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->enabledCount:I

    if-nez v1, :cond_3

    .line 548
    const/4 v1, 0x1

    const-string v2, "dataDisabled"

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/DataConnectionTracker;->onCleanUpConnection(ZLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 549
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->dataEnabled:[Z

    const/4 v2, 0x0

    aget-boolean v1, v1, v2

    if-ne v1, v4, :cond_1

    const-string v1, "default"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 551
    const-string v1, "default"

    iput-object v1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRequestedApnType:Ljava/lang/String;

    .line 552
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->onEnableNewApn()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected onEnableNewApn()V
    .locals 0

    .prologue
    .line 565
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
    .line 588
    iget-boolean v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    if-eq v0, p1, :cond_0

    .line 589
    iput-boolean p1, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mMasterDataEnabled:Z

    .line 590
    if-eqz p1, :cond_1

    .line 591
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 592
    const-string v0, "dataEnabled"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->onTrySetupData(Ljava/lang/String;)Z

    .line 597
    :cond_0
    :goto_0
    return-void

    .line 594
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

    .line 579
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDataEnabled("

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

    .line 581
    const/16 v1, 0x25

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 582
    .local v0, msg:Landroid/os/Message;
    if-eqz p1, :cond_0

    move v1, v4

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 583
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 584
    return v4

    .line 582
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setDataOnRoamingEnabled(Z)V
    .locals 3
    .parameter "enabled"

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnectionTracker;->getDataOnRoamingEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 249
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

    .line 251
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->phone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 252
    if-eqz p1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnectionTracker;->mRetryMgr:Lcom/android/internal/telephony/RetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RetryManager;->resetRetryCount()V

    .line 255
    :cond_0
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 258
    :cond_1
    return-void

    .line 249
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected setEnabled(IZ)V
    .locals 4
    .parameter "id"
    .parameter "enable"

    .prologue
    .line 516
    const-string v1, "DataConnectionTracker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setEnabled("

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

    .line 519
    const/16 v1, 0x17

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnectionTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 520
    .local v0, msg:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 521
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnectionTracker;->sendMessage(Landroid/os/Message;)Z

    .line 523
    return-void

    .line 521
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected abstract setState(Lcom/android/internal/telephony/DataConnectionTracker$State;)V
.end method

.method protected abstract startNetStatPoll()V
.end method

.method protected abstract stopNetStatPoll()V
.end method
