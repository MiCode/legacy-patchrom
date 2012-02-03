.class public final Lcom/broadcom/bt/service/fm/FmTransmitter;
.super Lcom/broadcom/bt/service/framework/BaseProxy;
.source "FmTransmitter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/fm/FmTransmitter$1;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmBroadcastReceiver;,
        Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;
    }
.end annotation


# static fields
.field public static final ACTION_ON_BEST_CHANNEL:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

.field public static final ACTION_ON_CHANNEL_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

.field public static final ACTION_ON_DISABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_DISABLE"

.field public static final ACTION_ON_ENABLE:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_ENABLE"

.field public static final ACTION_ON_SET_TX_FREQ:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

.field public static final ACTION_ON_SET_TX_PWR:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

.field public static final ACTION_ON_STATUS:Ljava/lang/String; = "com.broadcom.bt.app.fm.action.ON_STATUS"

.field private static final ACTION_PREFIX:Ljava/lang/String; = "com.broadcom.bt.app.fm.action."

#the value of this static final field might be set in the static constructor
.field private static final ACTION_PREFIX_LENGTH:I = 0x0

.field public static final AUDIO_MODE_MONO:I = 0x0

.field public static final AUDIO_MODE_STEREO:I = 0x1

.field public static final AUDIO_PATH_ADC:I = 0x1

.field public static final AUDIO_PATH_HCI:I = 0x2

.field public static final AUDIO_PATH_I2S:I = 0x0

.field public static final AUDIO_VOLUME_HI:I = 0x0

.field public static final AUDIO_VOLUME_LOW:I = 0x2

.field public static final AUDIO_VOLUME_MED:I = 0x1

.field public static final AUDIO_VOLUME_WEAK:I = 0x3

.field public static final BANDWIDTH_100K:I = 0x1

.field public static final BANDWIDTH_200K:I = 0x2

.field public static final BANDWIDTH_50K:I = 0x0

.field public static final CHIRP_MODE_AUTO:I = 0x2

.field public static final CHIRP_MODE_MANUAL:I = 0x1

.field public static final CHIRP_MODE_OFF:I = 0x0

.field private static final D:Z = true

.field public static final EXTRA_CHANNEL_STATUS:Ljava/lang/String; = "CHANNEL_STATUS"

.field public static final EXTRA_FREQ:Ljava/lang/String; = "FREQ"

.field public static final EXTRA_NUM_CHNL:Ljava/lang/String; = "NUM_CHNL"

.field public static final EXTRA_PWR:Ljava/lang/String; = "PWR"

.field public static final EXTRA_RSSI:Ljava/lang/String; = "RSSI"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "STATUS"

.field public static final EXTRA_STATUS_TYPE:Ljava/lang/String; = "STATUS_TYPE"

.field public static final FM_TRANSMITTER_PERM:Ljava/lang/String; = "android.permission.ACCESS_FM_TRANSMITTER"

.field public static final MUTE_ALL:I = 0x0

.field public static final MUTE_L:I = 0x2

.field public static final MUTE_R:I = 0x3

.field public static final MUTE_UNMUTE:I = 0x1

.field public static final NOTIFY_AUD_LVL_BIT:I = 0x2

.field public static final NOTIFY_NONE:I = 0x0

.field public static final NOTIFY_RSSI_BIT:I = 0x1

.field public static final PREEMPHASIS_50US:I = 0x1

.field public static final PREEMPHASIS_75US:I = 0x2

.field public static final PREEMPHASIS_OFF:I = 0x0

.field public static final REGION_JAPAN:I = 0x1

.field public static final REGION_US_EUROPE:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "bluetooth_fm_transmitter_service"

.field public static final STATUS_BUSY:I = 0x1

.field public static final STATUS_ERR_FLAG_TOUT:I = 0x4

.field public static final STATUS_ERR_FREQ:I = 0x3

.field public static final STATUS_ERR_GENERIC:I = 0x5

.field public static final STATUS_ERR_VCMD:I = 0x2

.field public static final STATUS_OK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FmTransmitter"

.field private static final V:Z = true


# instance fields
.field private mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

.field private mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

.field private mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-string v0, "com.broadcom.bt.app.fm.action."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sput v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 424
    invoke-direct {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;-><init>()V

    .line 391
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 425
    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/fm/FmTransmitter;)Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    return-object v0
.end method

.method static synthetic access$200()I
    .locals 1

    .prologue
    .line 69
    sget v0, Lcom/broadcom/bt/service/fm/FmTransmitter;->ACTION_PREFIX_LENGTH:I

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 69
    invoke-static {p0, p1, p2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->actionsEqual(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;
    .locals 1
    .parameter "filter"

    .prologue
    .line 521
    if-nez p0, :cond_0

    .line 522
    new-instance p0, Landroid/content/IntentFilter;

    .end local p0
    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    .line 525
    .restart local p0
    :cond_0
    const-string v0, "com.broadcom.bt.app.fm.action.ON_BEST_CHANNEL"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 526
    const-string v0, "com.broadcom.bt.app.fm.action.ON_CHANNEL_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 527
    const-string v0, "com.broadcom.bt.app.fm.action.ON_DISABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 528
    const-string v0, "com.broadcom.bt.app.fm.action.ON_ENABLE"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 529
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_FREQ"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 530
    const-string v0, "com.broadcom.bt.app.fm.action.ON_SET_TX_PWR"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 531
    const-string v0, "com.broadcom.bt.app.fm.action.ON_STATUS"

    invoke-virtual {p0, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 532
    return-object p0
.end method

.method public static getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    .locals 5
    .parameter "ctx"
    .parameter "cb"

    .prologue
    const-string v4, "FmTransmitter"

    .line 408
    const-string v2, "FmTransmitter"

    const-string v2, "getProxy"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v2, "bluetooth_fm_transmitter_service"

    invoke-static {p0, v2}, Lcom/broadcom/bt/service/fm/FmServiceConfig;->isServiceEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 411
    const-string v2, "FmTransmitter"

    const-string v2, "Unable to get FMTransmitter proxy: service is not enabled."

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v2, 0x0

    .line 421
    :goto_0
    return v2

    .line 414
    :cond_0
    new-instance v0, Lcom/broadcom/bt/service/fm/FmTransmitter;

    invoke-direct {v0}, Lcom/broadcom/bt/service/fm/FmTransmitter;-><init>()V

    .line 415
    .local v0, p:Lcom/broadcom/bt/service/fm/FmTransmitter;
    const-string v2, "com.broadcom.bt.app.system"

    const-string v3, "com.broadcom.bt.app.system.FmTxService"

    invoke-virtual {v0, p0, p1, v2, v3}, Lcom/broadcom/bt/service/fm/FmTransmitter;->create(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 419
    .local v1, result:Z
    const-string v2, "FmTransmitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProxy result"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .line 421
    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized abortScanForBestChannel()I
    .locals 4

    .prologue
    .line 1035
    monitor-enter p0

    const/4 v1, 0x5

    .line 1038
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->abortScanForBestChannel()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1043
    :goto_0
    monitor-exit p0

    return v1

    .line 1039
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1040
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string v3, "abortScanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1035
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized disableFmTransmitter()I
    .locals 5

    .prologue
    .line 648
    monitor-enter p0

    const/4 v1, 0x5

    .line 651
    .local v1, returnCode:I
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v3}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->disableFmTransmitter()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    move v2, v1

    .line 656
    .end local v1           #returnCode:I
    .local v2, returnCode:I
    :goto_0
    monitor-exit p0

    return v2

    .line 652
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 653
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v3, "FmTransmitter"

    const-string v4, "disableFmTransmitter() failed"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v1

    .line 654
    .end local v1           #returnCode:I
    .restart local v2       #returnCode:I
    goto :goto_0

    .line 648
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v2           #returnCode:I
    .restart local v1       #returnCode:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized enableFmTransmitter()I
    .locals 5

    .prologue
    const-string v2, "FmTransmitter"

    .line 618
    monitor-enter p0

    :try_start_0
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FmTransmitter.enableFmTransmitter() mService:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 620
    const/4 v1, 0x0

    .line 623
    .local v1, returnCode:I
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->enableFmTransmitter()I

    move-result v1

    .line 625
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "returnCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 631
    :goto_0
    monitor-exit p0

    return v1

    .line 627
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 628
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v2, "FmTransmitter"

    const-string v3, "enableFmTransmitter() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 618
    .end local v0           #e:Landroid/os/RemoteException;
    .end local v1           #returnCode:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 1128
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finalize()V

    .line 1129
    return-void
.end method

.method public declared-synchronized finish()V
    .locals 3

    .prologue
    .line 557
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    if-eqz v1, :cond_0

    .line 558
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 567
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 569
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 573
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 576
    :cond_1
    invoke-super {p0}, Lcom/broadcom/bt/service/framework/BaseProxy;->finish()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 577
    monitor-exit p0

    return-void

    .line 570
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 571
    .local v0, t:Ljava/lang/Throwable;
    :try_start_3
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 557
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getRadioIsOn()Z
    .locals 6

    .prologue
    const-string v5, "FmTransmitter"

    .line 588
    const-string v2, "FmTransmitter"

    const-string v2, "FmTransmitter.getRadioIsOn()"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v1, 0x0

    .line 592
    .local v1, returnStatus:Z
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->getRadioIsOn()Z

    move-result v1

    .line 594
    const-string v2, "FmTransmitter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "returnStatus "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 599
    :goto_0
    return v1

    .line 596
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 597
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "FmTransmitter"

    const-string v2, "getRadioIsOn() failed"

    invoke-static {v5, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected init(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "service"

    .prologue
    const-string v2, "FmTransmitter"

    .line 434
    const-string v1, "FmTransmitter"

    const-string v1, "**** init service ****"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    :try_start_0
    invoke-static {p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 438
    const/4 v1, 0x1

    .line 441
    :goto_0
    return v1

    .line 439
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 440
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "FmTransmitter"

    const-string v1, "Unable to initialize BluetoothFMTX proxy with service"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized muteAudio(I)I
    .locals 4
    .parameter "mute"

    .prologue
    .line 941
    monitor-enter p0

    const/4 v1, 0x5

    .line 944
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->muteAudio(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 949
    :goto_0
    monitor-exit p0

    return v1

    .line 945
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 946
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "muteAudio() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 941
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;)V
    .locals 3
    .parameter "handler"

    .prologue
    .line 456
    monitor-enter p0

    :try_start_0
    const-string v0, "FmTransmitter"

    const-string/jumbo v1, "registerEventHandler()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/16 v2, 0xc8

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 459
    monitor-exit p0

    return-void

    .line 456
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    .locals 4
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "threadHandler"
    .parameter "receiverPriority"

    .prologue
    const-string v1, "FmTransmitter"

    .line 474
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;

    .line 476
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "registerEventHandler MAIN INTENTS:false CALLBACKS:true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    if-nez v1, :cond_0

    .line 499
    new-instance v1, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/broadcom/bt/service/fm/FmTransmitter$FmTransmitterCallback;-><init>(Lcom/broadcom/bt/service/fm/FmTransmitter;Lcom/broadcom/bt/service/fm/FmTransmitter$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    .line 502
    const-string v1, "FmTransmitter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mService.registerCallback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->registerCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 512
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 507
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 508
    .local v0, e:Landroid/os/RemoteException;
    :try_start_2
    const-string v1, "FmTransmitter"

    const-string v2, "Error registering callback handler"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 474
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;ZI)V
    .locals 2
    .parameter "eventHandler"
    .parameter "filter"
    .parameter "createCallbackThread"
    .parameter "receiverPriority"

    .prologue
    .line 467
    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0, v1, p4}, Lcom/broadcom/bt/service/fm/FmTransmitter;->registerEventHandler(Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;Landroid/content/IntentFilter;Landroid/os/Handler;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 469
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized scanForBestChannel(IZ)I
    .locals 4
    .parameter "numChans"
    .parameter "optimize"

    .prologue
    .line 1008
    monitor-enter p0

    const/4 v1, 0x5

    .line 1011
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1, p2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->scanForBestChannel(IZ)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1016
    :goto_0
    monitor-exit p0

    return v1

    .line 1012
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1013
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "scanForBestChannel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1008
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioMode(I)I
    .locals 4
    .parameter "audioMode"

    .prologue
    .line 766
    monitor-enter p0

    const/4 v1, 0x5

    .line 769
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioMode(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 774
    :goto_0
    monitor-exit p0

    return v1

    .line 770
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 771
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setAudioMode() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 766
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setAudioPath(I)I
    .locals 4
    .parameter "audioPath"

    .prologue
    .line 912
    monitor-enter p0

    const/4 v1, 0x5

    .line 915
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setAudioPath(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 920
    :goto_0
    monitor-exit p0

    return v1

    .line 916
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 917
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setAudioPath() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 912
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setBandwidth(I)I
    .locals 4
    .parameter "bandwidth"

    .prologue
    .line 854
    monitor-enter p0

    const/4 v1, 0x5

    .line 857
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setBandwidth(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 862
    :goto_0
    monitor-exit p0

    return v1

    .line 858
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 859
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setBandwidth() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 854
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setInterferenceNotif(I)I
    .locals 4
    .parameter "notifBitmask"

    .prologue
    .line 974
    monitor-enter p0

    const/4 v1, 0x5

    .line 977
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setInterferenceNotif(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 982
    :goto_0
    monitor-exit p0

    return v1

    .line 978
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 979
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setInterferenceNotif() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 974
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPreemphasis(I)I
    .locals 4
    .parameter "preemph"

    .prologue
    .line 883
    monitor-enter p0

    const/4 v1, 0x5

    .line 886
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPreemphasis(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 891
    :goto_0
    monitor-exit p0

    return v1

    .line 887
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 888
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPreemphasis() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 883
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setPwrLevel(I)I
    .locals 4
    .parameter "dbGain"

    .prologue
    .line 737
    monitor-enter p0

    const/4 v1, 0x5

    .line 740
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setPwrLevel(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 745
    :goto_0
    monitor-exit p0

    return v1

    .line 741
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 742
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setPwrLevel() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 737
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setRegion(I)I
    .locals 4
    .parameter "region"

    .prologue
    .line 825
    monitor-enter p0

    const/4 v1, 0x5

    .line 828
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setRegion(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 833
    :goto_0
    monitor-exit p0

    return v1

    .line 829
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 830
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setRegion() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 825
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxFrequency(I)I
    .locals 4
    .parameter "frequency"

    .prologue
    .line 708
    monitor-enter p0

    const/4 v1, 0x5

    .line 711
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxFrequency(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 716
    :goto_0
    monitor-exit p0

    return v1

    .line 712
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 713
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxFrequency() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 708
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setTxPower(Z)I
    .locals 4
    .parameter "powerOn"

    .prologue
    .line 676
    monitor-enter p0

    const/4 v1, 0x5

    .line 679
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setTxPower(Z)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 684
    :goto_0
    monitor-exit p0

    return v1

    .line 680
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 681
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setTxPower() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 676
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized setVolume(I)I
    .locals 4
    .parameter "volume"

    .prologue
    .line 796
    monitor-enter p0

    const/4 v1, 0x5

    .line 799
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2, p1}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->setVolume(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 804
    :goto_0
    monitor-exit p0

    return v1

    .line 800
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 801
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "setVolume() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 796
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized startAudioChirp(ZIIIIIIII)I
    .locals 12
    .parameter "autoOn"
    .parameter "leftMgn"
    .parameter "rightMgn"
    .parameter "leftFreq"
    .parameter "rightFreq"
    .parameter "leftMrk"
    .parameter "rightMrk"
    .parameter "leftSpc"
    .parameter "rightSpc"

    .prologue
    .line 1089
    monitor-enter p0

    const/4 v11, 0x5

    .line 1092
    .local v11, returnCode:I
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->startAudioChirp(ZIIIIIIII)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    .line 1098
    :goto_0
    monitor-exit p0

    return v11

    .line 1094
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 1095
    .local v10, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v0, "FmTransmitter"

    const-string/jumbo v1, "startAudioChirp() failed"

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1089
    .end local v10           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stopAudioChirp()I
    .locals 4

    .prologue
    .line 1116
    monitor-enter p0

    const/4 v1, 0x5

    .line 1119
    .local v1, returnCode:I
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    invoke-interface {v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->stopAudioChirp()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1124
    :goto_0
    monitor-exit p0

    return v1

    .line 1120
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 1121
    .local v0, e:Landroid/os/RemoteException;
    :try_start_1
    const-string v2, "FmTransmitter"

    const-string/jumbo v3, "stopAudioChirp() failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1116
    .end local v0           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized unregisterEventHandler()V
    .locals 3

    .prologue
    const-string v1, "FmTransmitter"

    .line 537
    monitor-enter p0

    :try_start_0
    const-string v1, "FmTransmitter"

    const-string/jumbo v2, "unregisterEventHandler()"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mEventHandler:Lcom/broadcom/bt/service/fm/IFmTransmitterEventHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 549
    :try_start_1
    iget-object v1, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mService:Lcom/broadcom/bt/service/fm/IFmTransmitterService;

    iget-object v2, p0, Lcom/broadcom/bt/service/fm/FmTransmitter;->mCallback:Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;

    invoke-interface {v1, v2}, Lcom/broadcom/bt/service/fm/IFmTransmitterService;->unregisterCallback(Lcom/broadcom/bt/service/fm/IFmTransmitterCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 554
    :goto_0
    monitor-exit p0

    return-void

    .line 550
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 551
    .local v0, t:Ljava/lang/Throwable;
    :try_start_2
    const-string v1, "FmTransmitter"

    const-string v2, "Unable to unregister callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 537
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
