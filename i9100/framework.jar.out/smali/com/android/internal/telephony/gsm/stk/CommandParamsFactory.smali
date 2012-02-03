.class Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
.super Landroid/os/Handler;
.source "CommandParamsFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;
    }
.end annotation


# static fields
.field static final LOAD_MULTI_ICONS:I = 0x2

.field static final LOAD_NO_ICON:I = 0x0

.field static final LOAD_SINGLE_ICON:I = 0x1

.field static final MSG_ID_LOAD_ICON_DONE:I = 0x1

.field static final REFRESH_NAA_FILE_CHANGE:I = 0x1

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

.field static final SETUP_CALL_CONFIRM_TIMEOUT:I = 0x28

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;


# instance fields
.field private mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

.field private mIconLoadState:I

.field private mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 72
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 40
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 42
    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    .line 74
    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    .line 75
    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    .line 63
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    if-eqz v1, :cond_0

    .line 64
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    :goto_0
    monitor-exit v0

    return-object v1

    .line 66
    :cond_0
    if-eqz p1, :cond_1

    .line 67
    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/gsm/SIMFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 63
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 69
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processCloseChannel(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v7, "Moving onto the next TAG"

    .line 1571
    const-string/jumbo v5, "process Close Channel Command"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1573
    const/4 v0, 0x0

    .line 1574
    .local v0, channelId:I
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1579
    .local v4, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1581
    .local v2, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v2, :cond_0

    .line 1582
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    move-result-object v3

    .line 1583
    .local v3, devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    iget v0, v3, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I

    .line 1584
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1590
    const-string v5, "Moving onto the next TAG"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1595
    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v5, v5, 0x1

    packed-switch v5, :pswitch_data_0

    .line 1598
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_CLOSED_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    .line 1604
    .local v1, closeChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CloseChannelMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1606
    const-string v5, "Moving onto the next TAG"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1609
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1610
    if-eqz v2, :cond_1

    .line 1611
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1615
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alpha ID "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1617
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;

    invoke-direct {v5, p1, v0, v1, v4}, Lcom/android/internal/telephony/gsm/stk/CloseChannelParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;ILcom/android/internal/telephony/gsm/stk/CloseChannelMode;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1619
    const/4 v5, 0x0

    return v5

    .line 1586
    .end local v1           #closeChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    .end local v3           #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :cond_0
    const-string v5, "Exception: channel id (devId) ctlv is null"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1587
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5

    .line 1601
    .restart local v3       #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :pswitch_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;->CLOSE_TCP_AND_TCP_IN_LISTEN_STATE:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;

    .restart local v1       #closeChannelMode:Lcom/android/internal/telephony/gsm/stk/CloseChannelMode;
    goto :goto_0

    .line 1613
    :cond_1
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_1

    .line 1595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;"
        }
    .end annotation

    .prologue
    .line 78
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .line 80
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-eqz p1, :cond_0

    .line 82
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 84
    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 86
    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 92
    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .line 87
    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .line 88
    .local v2, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 326
    const-string/jumbo v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 328
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 329
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 331
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 333
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 334
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 339
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 340
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 343
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 344
    if-eqz v0, :cond_2

    .line 345
    iput-boolean v7, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 358
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 359
    if-eqz v0, :cond_3

    .line 360
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 364
    :cond_3
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v6

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 365
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v6

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 368
    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    if-ne v3, v6, :cond_4

    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    if-nez v3, :cond_4

    .line 369
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Duration;

    const/16 v4, 0x1770

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 370
    const-string v3, "display forever"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 373
    :cond_4
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 375
    if-eqz v1, :cond_7

    .line 376
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 377
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 381
    :goto_2
    return v3

    :cond_5
    move v3, v7

    .line 364
    goto :goto_0

    :cond_6
    move v3, v7

    .line 365
    goto :goto_1

    :cond_7
    move v3, v7

    .line 381
    goto :goto_2
.end method

.method private processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 733
    const-string/jumbo v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 735
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 736
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 738
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 740
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 741
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 754
    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 755
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 757
    if-eqz v1, :cond_1

    .line 758
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 759
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 763
    :goto_0
    return v3

    .line 743
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_1
    move v3, v4

    .line 763
    goto :goto_0
.end method

.method private processGetChannelStatus(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 5
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 1757
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v3, "process Get Channel Status Command"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1759
    const/4 v0, 0x0

    .line 1764
    .local v0, channelId:I
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 1766
    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 1767
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    move-result-object v2

    .line 1768
    .local v2, devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    iget v0, v2, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I

    .line 1769
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "channelId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1775
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;

    invoke-direct {v3, p1, v0}, Lcom/android/internal/telephony/gsm/stk/GetChannelDataParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1777
    const/4 v3, 0x0

    return v3

    .line 1771
    .end local v2           #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :cond_0
    const-string v3, "Exception:channel id ctlv is null"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1772
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3
.end method

.method private processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 442
    const-string/jumbo v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 445
    .local v2, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v1, 0x0

    .line 447
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 449
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 450
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 451
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 452
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 455
    :cond_0
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 466
    :cond_1
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 467
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 469
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    move v3, v6

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 470
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v3, v6

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 471
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    move v3, v6

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    .line 472
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    move v3, v6

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 473
    iput-boolean v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 475
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 477
    if-eqz v1, :cond_6

    .line 478
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 479
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 483
    :goto_4
    return v3

    :cond_2
    move v3, v4

    .line 469
    goto :goto_0

    :cond_3
    move v3, v4

    .line 470
    goto :goto_1

    :cond_4
    move v3, v4

    .line 471
    goto :goto_2

    :cond_5
    move v3, v4

    .line 472
    goto :goto_3

    :cond_6
    move v3, v4

    .line 483
    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/16 v10, 0x46

    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 499
    const-string/jumbo v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .line 502
    .local v3, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v2, 0x0

    .line 504
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 506
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 507
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 508
    iget-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    if-nez v6, :cond_0

    .line 510
    const-string v6, ""

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    .line 516
    :cond_0
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 517
    if-eqz v0, :cond_2

    .line 519
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .line 520
    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .line 521
    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    .line 522
    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 523
    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    iget v7, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    if-le v6, v7, :cond_3

    .line 524
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .line 527
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 513
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 530
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .line 533
    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 534
    if-eqz v0, :cond_4

    .line 535
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    .line 546
    :cond_4
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_6

    move v6, v9

    :goto_0
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    .line 547
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_7

    move v6, v9

    :goto_1
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    .line 548
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_8

    move v6, v9

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    .line 549
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_9

    move v6, v9

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    .line 550
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_a

    move v6, v9

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    .line 552
    iget-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    if-ne v6, v9, :cond_5

    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    if-le v6, v10, :cond_5

    .line 553
    iput v10, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    .line 555
    :cond_5
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 557
    if-eqz v2, :cond_b

    .line 558
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 559
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v2

    throw p0

    move-result-object v8

    throw v6

    move v6, v9

    .line 563
    :goto_5
    return v6

    :cond_6
    move v6, v8

    .line 546
    goto :goto_0

    :cond_7
    move v6, v8

    .line 547
    goto :goto_1

    :cond_8
    move v6, v8

    .line 548
    goto :goto_2

    :cond_9
    move v6, v8

    .line 549
    goto :goto_3

    :cond_a
    move v6, v8

    .line 550
    goto :goto_4

    :cond_b
    move v6, v8

    .line 563
    goto :goto_5
.end method

.method private processLanguageNotification(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 6
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    .line 1316
    const-string/jumbo v3, "process Language noti Command"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1317
    const/4 v2, 0x0

    .line 1318
    .local v2, targetLanguage:Ljava/lang/String;
    const/4 v1, 0x0

    .line 1320
    .local v1, initialLanguage:Z
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1322
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1323
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 1327
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "targetLanguage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1328
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    if-nez v3, :cond_1

    const/4 v3, 0x1

    move v1, v3

    .line 1329
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/internal/telephony/gsm/stk/LanguageNotificationParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/lang/String;Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1331
    return v5

    .line 1325
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    move v1, v5

    .line 1328
    goto :goto_1
.end method

.method private processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 13
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v12, 0x1

    .line 817
    const-string/jumbo v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 819
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 820
    .local v0, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 821
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v6, 0x0

    .line 823
    .local v6, url:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 824
    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    .line 826
    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .line 827
    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .line 828
    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    .line 829
    .local v8, valueLen:I
    if-lez v8, :cond_3

    .line 830
    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 841
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .line 842
    if-eqz v1, :cond_1

    .line 843
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 846
    :cond_1
    iget-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 847
    const-string v9, "Browser?"

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 861
    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_0

    .line 864
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 874
    .local v4, mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 876
    if-eqz v3, :cond_4

    .line 877
    iput v12, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 878
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v3

    throw p0

    move-result-object v11

    throw v9

    move v9, v12

    .line 882
    :goto_2
    return v9

    .line 833
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 835
    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 836
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 867
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .line 868
    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_1

    .line 870
    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_1

    .line 882
    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    .line 861
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processOpenChannel(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 23
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 1346
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v3, "process Open Channel Command"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1348
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/BearerDescription;-><init>()V

    .line 1349
    .local v5, bearerDesc:Lcom/android/internal/telephony/gsm/stk/BearerDescription;
    new-instance v11, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v11}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1350
    .local v11, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v12, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v12}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1351
    .local v12, textMsgUser:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v13, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v13}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1353
    .local v13, textMsgPassword:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    invoke-direct {v7}, Lcom/android/internal/telephony/gsm/stk/TransportLevel;-><init>()V

    .line 1354
    .local v7, transportLevel:Lcom/android/internal/telephony/gsm/stk/TransportLevel;
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    invoke-direct {v8}, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;-><init>()V

    .line 1355
    .local v8, dataDestAdd:Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;
    const/4 v9, 0x0

    .line 1356
    .local v9, networkAccessName:Ljava/lang/String;
    new-instance v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;

    invoke-direct {v10}, Lcom/android/internal/telephony/gsm/stk/BearerMode;-><init>()V

    .line 1357
    .local v10, bearerMode:Lcom/android/internal/telephony/gsm/stk/BearerMode;
    const/16 v21, 0x0

    .line 1358
    .local v21, checkTransportLevelNull:Z
    const/16 v20, 0x0

    .line 1363
    .local v20, checkBearerDescriptionNull:Z
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BEARER_DESCRIPTION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1365
    .local v22, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v22, :cond_8

    .line 1366
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveBearerDescription(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/BearerDescription;

    move-result-object v5

    .line 1367
    const/16 v20, 0x0

    .line 1368
    iget-object v3, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    if-eqz v3, :cond_2

    .line 1369
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.bearerType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1370
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.precedenceClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->precedenceClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.delayClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->delayClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1372
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.reliabilityClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->reliabilityClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1373
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.peakThroughputClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->peakThroughputClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.meanThroughputClass = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->meanThroughputClass:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1375
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerGPRS.packetDataProtocolType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerGPRS:Lcom/android/internal/telephony/gsm/stk/BearerGPRS;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerGPRS;->packetDataProtocolType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1377
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1380
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->NETWORK_ACCESS_NAME:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1382
    if-eqz v22, :cond_1

    .line 1383
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveNetworkAccessName(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    .line 1384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "networkAccessName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1430
    :goto_0
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1433
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TRANSPORT_LEVEL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1435
    if-eqz v22, :cond_9

    .line 1436
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTransportLevel(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/TransportLevel;

    move-result-object v7

    .line 1437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transportLevel.transportProtocol = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1438
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "transportLevel.portNumber = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->portNumber:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1439
    iget-byte v3, v7, Lcom/android/internal/telephony/gsm/stk/TransportLevel;->transportProtocol:B

    packed-switch v3, :pswitch_data_0

    .line 1461
    :cond_0
    :goto_1
    if-eqz v21, :cond_a

    if-eqz v20, :cond_a

    .line 1462
    const-string v3, "Exception: Both Bearer Description and Transport Level ctlv are null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1463
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 1387
    :cond_1
    const-string v3, "Warning: network access name ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 1390
    :cond_2
    iget-object v3, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    if-eqz v3, :cond_4

    .line 1391
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerCSD.bearerType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerCSD.bearerCSD.dataRate = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->dataRate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1393
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerCSD.bearerService = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerCSD:Lcom/android/internal/telephony/gsm/stk/BearerCSD;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/BearerCSD;->bearerService:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1395
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1398
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1400
    if-eqz v22, :cond_3

    .line 1401
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveNetworkAccessName(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    .line 1402
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "networkAccessName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1405
    :cond_3
    const-string v3, "Exception: network access name ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1410
    :cond_4
    iget-boolean v3, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    if-eqz v3, :cond_5

    .line 1411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerDesc.bearerDefault = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1413
    :cond_5
    iget-byte v3, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    const/16 v4, 0xb

    if-ne v3, v4, :cond_6

    .line 1414
    const-string v3, "bearerDesc.bearerType = BEARER_E_UTRAN"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1416
    :cond_6
    iget-byte v3, v5, Lcom/android/internal/telephony/gsm/stk/BearerDescription;->bearerType:B

    const/16 v4, 0x8

    if-ne v3, v4, :cond_7

    .line 1417
    const-string v3, "bearerDesc.bearerType = BEARER_CDMA"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1420
    :cond_7
    const-string v3, "Warning: Bearer description not identified"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1421
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 1424
    :cond_8
    const-string v3, "Warning: bearer description ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1425
    const/16 v20, 0x1

    goto/16 :goto_0

    .line 1442
    :pswitch_0
    const/16 v21, 0x0

    .line 1443
    if-eqz v20, :cond_0

    .line 1444
    const-string v3, "Exception: Bearer Description ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1445
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 1451
    :pswitch_1
    const-string v3, "Transport Protocol Match Found"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1452
    const/16 v21, 0x0

    goto/16 :goto_1

    .line 1456
    :cond_9
    const/16 v21, 0x1

    .line 1457
    const-string v3, "Warning: Transport Level ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1467
    :cond_a
    if-nez v21, :cond_b

    if-nez v20, :cond_b

    .line 1468
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1469
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DATA_DESTINATION_ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1471
    if-eqz v22, :cond_f

    .line 1472
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDataDestinationAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;

    move-result-object v8

    .line 1473
    if-eqz v8, :cond_e

    .line 1474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataDestAdd.addressType = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-byte v4, v8, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->addressType:B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1475
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataDestAdd.address = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v8, Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;->address:[B

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1485
    :cond_b
    :goto_2
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1488
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->BUFFER_SIZE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1490
    if-eqz v22, :cond_10

    .line 1491
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveBufferSize(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I

    move-result v6

    .line 1492
    .local v6, bufferSize:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bufferSize = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1498
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1502
    if-nez v20, :cond_c

    .line 1504
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1505
    if-eqz v22, :cond_11

    .line 1506
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v12, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1507
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "User Name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1513
    :goto_3
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1515
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForDupTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1516
    if-eqz v22, :cond_12

    .line 1518
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v13, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Password = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v13, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1525
    :goto_4
    const-string v3, "Moving onto the next TAG"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1528
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move v3, v0

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_13

    const/4 v3, 0x1

    :goto_5
    iput-boolean v3, v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    .line 1529
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move v3, v0

    and-int/lit8 v3, v3, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    const/4 v3, 0x1

    :goto_6
    iput-boolean v3, v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    .line 1530
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    move v3, v0

    and-int/lit8 v3, v3, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_15

    const/4 v3, 0x1

    :goto_7
    iput-boolean v3, v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    .line 1531
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerMode.isOnDemand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isOnDemand:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerMode.isAutoReconnect = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isAutoReconnect:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1533
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bearerMode.isBackgroundMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, v10, Lcom/android/internal/telephony/gsm/stk/BearerMode;->isBackgroundMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1537
    :cond_c
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    move-object/from16 v0, p0

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v22

    .line 1538
    if-eqz v22, :cond_16

    .line 1539
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1540
    iget-object v3, v11, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_d

    .line 1541
    new-instance v3, Ljava/lang/String;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v3, v11, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1546
    :cond_d
    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Alpha ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v11, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1548
    if-nez v20, :cond_17

    .line 1549
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v13}, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/BearerDescription;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/BearerMode;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1556
    :goto_9
    const/4 v3, 0x0

    return v3

    .line 1477
    .end local v6           #bufferSize:I
    :cond_e
    const-string v3, "Data Destination Address is null. Supply Dynamic IP"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1481
    :cond_f
    const-string v3, "Warning: data Destination Address ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1494
    :cond_10
    const-string v3, "Exception: buffer size ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1495
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    .line 1509
    .restart local v6       #bufferSize:I
    :cond_11
    const-string v3, "Exception: user name (text string) ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1521
    :cond_12
    const-string v3, "Exception: user password (text string) ctlv is null"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1528
    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_5

    .line 1529
    :cond_14
    const/4 v3, 0x0

    goto/16 :goto_6

    .line 1530
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_7

    .line 1544
    :cond_16
    const/4 v3, 0x0

    iput-object v3, v11, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_8

    .line 1553
    :cond_17
    new-instance v14, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;

    move-object/from16 v15, p1

    move/from16 v16, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v8

    move-object/from16 v19, v11

    invoke-direct/range {v14 .. v19}, Lcom/android/internal/telephony/gsm/stk/OpenChannelParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;ILcom/android/internal/telephony/gsm/stk/TransportLevel;Lcom/android/internal/telephony/gsm/stk/DataDestinationAddress;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    move-object v0, v14

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_9

    .line 1439
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 898
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 900
    const/4 v3, 0x0

    .line 901
    .local v3, tone:Lcom/android/internal/telephony/gsm/stk/Tone;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 902
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v4, 0x0

    .line 903
    .local v4, duration:Lcom/android/internal/telephony/gsm/stk/Duration;
    const/4 v8, 0x0

    .line 905
    .local v8, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 906
    .local v6, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 908
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    .line 910
    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .line 911
    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .line 912
    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .line 913
    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/stk/Tone;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 921
    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 922
    if-eqz v6, :cond_1

    .line 923
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 926
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 927
    if-eqz v6, :cond_2

    .line 928
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v4

    .line 940
    :cond_2
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    move v5, v0

    .line 942
    .local v5, vibrate:Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 943
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/Tone;Lcom/android/internal/telephony/gsm/stk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 945
    if-eqz v8, :cond_4

    .line 946
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 947
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v8

    const/4 v2, 0x1

    throw p0

    .end local v2           #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    move-result-object v2

    throw v0

    .line 949
    const/4 v0, 0x1

    .line 951
    :goto_1
    return v0

    .line 914
    .end local v5           #vibrate:Z
    .restart local v2       #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 915
    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 940
    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .line 951
    .restart local v5       #vibrate:Z
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 1
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1299
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v0, "process ProvideLocalInfo"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1301
    const/4 v0, 0x0

    return v0
.end method

.method private processReceiveData(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v8, "Moving onto the next TAG"

    const-string v7, "Exception: channel data length ctlv is null"

    .line 1634
    const-string/jumbo v5, "process Receive Data Command"

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1636
    const/4 v1, 0x0

    .line 1638
    .local v1, channelId:I
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1643
    .local v4, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1645
    .local v2, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v2, :cond_0

    .line 1646
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    move-result-object v3

    .line 1647
    .local v3, devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    iget v1, v3, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I

    .line 1648
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1654
    const-string v5, "Moving onto the next TAG"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1657
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1659
    if-eqz v2, :cond_1

    .line 1660
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveChannelDataLength(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)B

    move-result v0

    .line 1661
    .local v0, channelDataLength:B
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "channelDataLength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    and-int/lit16 v6, v0, 0xff

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1667
    const-string v5, "Moving onto the next TAG"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1670
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1671
    if-eqz v2, :cond_2

    .line 1672
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1676
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Alpha ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1678
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;

    invoke-direct {v5, p1, v1, v0, v4}, Lcom/android/internal/telephony/gsm/stk/ReceiveDataParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;IBLcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1680
    const/4 v5, 0x0

    return v5

    .line 1650
    .end local v0           #channelDataLength:B
    .end local v3           #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :cond_0
    const-string v5, "Exception: channel data length ctlv is null"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1651
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5

    .line 1663
    .restart local v3       #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :cond_1
    const-string v5, "Exception: channel data length ctlv is null"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1664
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v5, v6}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v5

    .line 1674
    .restart local v0       #channelDataLength:B
    :cond_2
    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method private processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 3
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v2, 0x0

    .line 576
    const-string/jumbo v1, "process Refresh"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 582
    .local v0, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    iget v1, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v1, :pswitch_data_0

    .line 599
    :goto_0
    return v2

    .line 587
    :pswitch_0
    const-string v1, "Inside REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 588
    const-string v1, "default refresh..."

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 589
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 590
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_0

    .line 593
    :pswitch_1
    const-string v1, "Inside REFRESH_UICC_RESET case"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 594
    const-string v1, "default reset..."

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 595
    iput-boolean v2, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 596
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v1, p1, v0}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_0

    .line 582
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processSMSCommand(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 10
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 1229
    const-string/jumbo v6, "process SMS Command"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1231
    .local v5, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 1232
    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v4, 0x0

    .line 1233
    .local v4, ispackin_required:Z
    const/4 v1, 0x0

    .line 1234
    .local v1, Smscaddress:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1237
    .local v0, Pdu:Ljava/lang/String;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1238
    .local v2, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v2, :cond_3

    .line 1239
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1254
    :goto_0
    iput-boolean v8, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1257
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1258
    if-eqz v2, :cond_0

    .line 1259
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSMSCaddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    .line 1260
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The Smsc address is"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1262
    :cond_0
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0xff

    if-ne v6, v9, :cond_1

    .line 1263
    const/4 v4, 0x1

    .line 1264
    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0xff

    if-nez v6, :cond_2

    .line 1265
    const/4 v4, 0x0

    .line 1268
    :cond_2
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SMSTPDUTAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v2

    .line 1269
    if-eqz v2, :cond_4

    .line 1270
    invoke-static {v2, v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSMSTPDU(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;Z)Ljava/lang/String;

    move-result-object v0

    .line 1271
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "The SMS tpdu is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1275
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;

    invoke-direct {v6, p1, v5, v1, v0}, Lcom/android/internal/telephony/gsm/stk/SendSMSParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1277
    if-eqz v3, :cond_5

    .line 1278
    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1279
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v3

    throw p0

    move-result-object v8

    throw v6

    move v6, v9

    .line 1283
    :goto_1
    return v6

    .line 1241
    :cond_3
    const-string/jumbo v6, "null alphaId, default sending..."

    iput-object v6, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1273
    :cond_4
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    :cond_5
    move v6, v8

    .line 1283
    goto :goto_1
.end method

.method private processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 615
    const-string/jumbo v8, "process SelectItem"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 617
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/Menu;-><init>()V

    .line 618
    .local v4, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    const/4 v7, 0x0

    .line 619
    .local v7, titleIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .line 620
    .local v2, itemsIconId:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 622
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 624
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 625
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    .line 627
    :cond_0
    const/4 v1, 0x1

    .line 629
    .local v1, is_first:Z
    :goto_0
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 630
    if-ne v1, v11, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    if-nez v8, :cond_3

    .line 633
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 634
    if-eqz v0, :cond_2

    .line 649
    :cond_1
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_4

    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    if-nez v8, :cond_4

    .line 650
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v8

    .line 637
    :cond_2
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 645
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    .line 640
    :cond_3
    if-eqz v0, :cond_1

    .line 641
    iget-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 657
    :cond_4
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 658
    if-eqz v0, :cond_5

    .line 661
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I

    move-result v8

    sub-int/2addr v8, v11

    iput v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    .line 682
    :cond_5
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    move v5, v11

    .line 683
    .local v5, presentTypeSpecified:Z
    :goto_2
    if-eqz v5, :cond_6

    .line 684
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_9

    .line 685
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    .line 690
    :cond_6
    :goto_3
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_a

    move v8, v11

    :goto_4
    iput-boolean v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    .line 691
    iget v8, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v8, v8, 0x80

    if-eqz v8, :cond_b

    move v8, v11

    :goto_5
    iput-boolean v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    .line 693
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    if-eqz v7, :cond_c

    move v9, v11

    :goto_6
    invoke-direct {v8, p1, v4, v9}, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 696
    iget v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v8, :pswitch_data_0

    :cond_7
    :goto_7
    move v8, v11

    .line 718
    :goto_8
    return v8

    .end local v5           #presentTypeSpecified:Z
    :cond_8
    move v5, v10

    .line 682
    goto :goto_2

    .line 687
    .restart local v5       #presentTypeSpecified:Z
    :cond_9
    sget-object v8, Lcom/android/internal/telephony/gsm/stk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v8, v4, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    goto :goto_3

    :cond_a
    move v8, v10

    .line 690
    goto :goto_4

    :cond_b
    move v8, v10

    .line 691
    goto :goto_5

    :cond_c
    move v9, v10

    .line 693
    goto :goto_6

    :pswitch_0
    move v8, v10

    .line 698
    goto :goto_8

    .line 700
    :pswitch_1
    if-eqz v7, :cond_7

    .line 701
    iget-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v7

    throw p0

    move-result-object v10

    throw v8

    goto :goto_7

    .line 706
    :pswitch_2
    throw v2

    .line 707
    .local v6, recordNumbers:[I
    if-eqz v7, :cond_d

    .line 709
    throw v2

    array-length v8, v8

    add-int/lit8 v8, v8, 0x1

    new-array v6, v8, [I

    .line 710
    throw v7

    aput v8, v6, v10

    .line 711
    throw v2

    throw v2

    array-length v9, v9

    invoke-static {v8, v10, v6, v11, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 714
    :cond_d
    throw p0

    throw p0

    move-result-object v9

    throw v8

    goto :goto_7

    .line 696
    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private processSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1184
    const-string/jumbo v4, "process SendDTMF"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1186
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1187
    .local v3, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v2, 0x0

    .line 1188
    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .line 1190
    .local v1, dtmfString:[B
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1192
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1193
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1207
    :goto_0
    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1209
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DTMF_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1210
    if-eqz v0, :cond_1

    .line 1211
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDTMFstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v1

    .line 1215
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;

    invoke-direct {v4, p1, v3, v1}, Lcom/android/internal/telephony/gsm/stk/SendDTMFParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1217
    if-eqz v2, :cond_2

    .line 1218
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1219
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v2

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1223
    :goto_1
    return v4

    .line 1195
    :cond_0
    const-string/jumbo v4, "null alphaId, default sending..."

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1213
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_2
    move v4, v5

    .line 1223
    goto :goto_1
.end method

.method private processSendData(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 11
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v8, "Moving onto the next TAG"

    .line 1695
    const-string/jumbo v0, "process Send Data Command"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1697
    const/4 v2, 0x0

    .line 1699
    .local v2, channelId:I
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1703
    .local v5, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 1705
    .local v6, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v6, :cond_0

    .line 1706
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDeviceIdentities(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;

    move-result-object v7

    .line 1707
    .local v7, devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    iget v2, v7, Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;->destinationId:I

    .line 1708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1714
    const-string v0, "Moving onto the next TAG"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1716
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CHANNEL_DATA:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 1718
    if-eqz v6, :cond_1

    .line 1719
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveChannelData(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v3

    .line 1720
    .local v3, channelData:[B
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "channelData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1726
    const-string v0, "Moving onto the next TAG"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1728
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v10, :cond_2

    move v4, v10

    .line 1729
    .local v4, sendImmediate:Z
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SendDataImmediately  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1730
    const-string v0, "Moving onto the next TAG"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .line 1734
    if-eqz v6, :cond_3

    .line 1735
    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1739
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Alpha ID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1740
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SendDataParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/SendDataParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[BZLcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1742
    return v9

    .line 1710
    .end local v3           #channelData:[B
    .end local v4           #sendImmediate:Z
    .end local v7           #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :cond_0
    const-string v0, "Exception: channel id(devId) ctlv is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1711
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .line 1722
    .restart local v7       #devId:Lcom/android/internal/telephony/gsm/stk/DeviceIdentities;
    :cond_1
    const-string v0, "Exception: channel data ctlv is null"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1723
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .restart local v3       #channelData:[B
    :cond_2
    move v4, v9

    .line 1728
    goto :goto_0

    .line 1737
    .restart local v4       #sendImmediate:Z
    :cond_3
    const/4 v0, 0x0

    iput-object v0, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_1
.end method

.method private processSendSS(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 1074
    const-string/jumbo v4, "process SendSS"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1076
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1077
    .local v3, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 1078
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .line 1080
    .local v2, ssString:Ljava/lang/String;
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1081
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 1082
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1096
    :goto_0
    iput-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1098
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SS_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1099
    if-eqz v0, :cond_1

    .line 1100
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveSSstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v2

    .line 1104
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendSSParams;

    invoke-direct {v4, p1, v3, v2}, Lcom/android/internal/telephony/gsm/stk/SendSSParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1106
    if-eqz v1, :cond_2

    .line 1107
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1108
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1112
    :goto_1
    return v4

    .line 1084
    :cond_0
    const-string/jumbo v4, "null alphaId, default sending..."

    iput-object v4, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1102
    :cond_1
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_2
    move v4, v5

    .line 1112
    goto :goto_1
.end method

.method private processSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 8
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1128
    const-string/jumbo v4, "process SendUSSD"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1130
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 1131
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 1132
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v3, 0x0

    .line 1134
    .local v3, ussdString:[B
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1135
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 1136
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1150
    :goto_0
    iput-boolean v5, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 1152
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->USSD_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v4, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 1153
    if-eqz v0, :cond_2

    .line 1154
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveUSSDstring(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)[B

    move-result-object v3

    .line 1159
    if-nez v3, :cond_0

    .line 1160
    new-array v3, v5, [B

    .line 1162
    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;

    invoke-direct {v4, p1, v2, v3}, Lcom/android/internal/telephony/gsm/stk/SendUSSDParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;[B)V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1164
    if-eqz v1, :cond_3

    .line 1165
    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1166
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v6

    throw v4

    move v4, v7

    .line 1170
    :goto_1
    return v4

    .line 1138
    :cond_1
    const-string/jumbo v4, "null alphaId, default sending..."

    iput-object v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    goto :goto_0

    .line 1156
    :cond_2
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v4

    :cond_3
    move v4, v5

    .line 1170
    goto :goto_1
.end method

.method private processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 9
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v8, 0x0

    .line 778
    const-string/jumbo v6, "process SetUpEventList"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 780
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 781
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    .line 784
    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v3

    .line 785
    .local v3, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v4

    .line 786
    .local v4, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v5

    .line 787
    .local v5, valueLen:I
    if-eqz v5, :cond_2

    .line 788
    new-array v1, v5, [I

    .line 789
    .local v1, events:[I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_0

    .line 790
    add-int v6, v4, v2

    aget-byte v6, v3, v6

    aput v6, v1, v2

    .line 789
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 792
    :cond_0
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    invoke-direct {v6, p1, v5, v1}, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 801
    .end local v1           #events:[I
    .end local v2           #i:I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :cond_1
    :goto_1
    return v8

    .line 795
    .restart local v3       #rawValue:[B
    .restart local v4       #valueIndex:I
    .restart local v5       #valueLen:I
    :cond_2
    const/4 v6, 0x1

    new-array v1, v6, [I

    .line 796
    .restart local v1       #events:[I
    const/4 v6, 0x0

    const/16 v7, 0xff

    aput v7, v1, v6

    .line 797
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;

    const/4 v7, 0x1

    invoke-direct {v6, p1, v7, v1}, Lcom/android/internal/telephony/gsm/stk/SetupEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;I[I)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 799
    .end local v1           #events:[I
    .end local v3           #rawValue:[B
    .end local v4           #valueIndex:I
    .end local v5           #valueLen:I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 7
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v6, 0x1

    .line 397
    const-string/jumbo v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 399
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 400
    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .line 402
    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .line 404
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    .line 405
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 408
    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 418
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 420
    if-eqz v1, :cond_2

    .line 421
    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 422
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    throw v1

    throw p0

    move-result-object v5

    throw v3

    move v3, v6

    .line 426
    :goto_0
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 12
    .parameter "cmdDet"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/CommandDetails;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/gsm/stk/ResultException;
        }
    .end annotation

    .prologue
    .line 966
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string/jumbo v9, "process SetupCall"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 968
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 969
    .local v6, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v5, 0x0

    .line 971
    .local v5, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 973
    .local v4, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .line 974
    .local v2, callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .line 975
    .local v3, confirmIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .line 976
    .local v1, callIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v0, 0x0

    .line 977
    .local v0, address:Ljava/lang/String;
    const/4 v8, 0x0

    .line 979
    .local v8, subAddress:Z
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/Duration;

    const/16 v10, 0x28

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->SECOND:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-direct {v9, v10, v11}, Lcom/android/internal/telephony/gsm/stk/Duration;-><init>(ILcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;)V

    iput-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 981
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 982
    if-eqz v5, :cond_0

    .line 983
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 987
    :cond_0
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 988
    if-eqz v5, :cond_4

    .line 989
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    .line 999
    :cond_1
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSetupCall address is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1001
    iget-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_2

    .line 1003
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 1004
    if-eqz v5, :cond_2

    .line 1005
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1008
    :cond_2
    iget-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_3

    iget-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 1010
    :cond_3
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v9, :cond_5

    .line 1012
    const-string/jumbo v9, "processSetupCall confirmMsg.text is null "

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1036
    :goto_1
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->SUBADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 1037
    if-eqz v5, :cond_6

    .line 1038
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 992
    :cond_4
    iget-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    iput-object v9, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 993
    const/4 v9, 0x0

    iput-object v9, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 994
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 995
    if-eqz v5, :cond_1

    .line 996
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAddress(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1014
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "processSetupCall confirmMsg.text is : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 1040
    :cond_6
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v5

    .line 1041
    if-eqz v5, :cond_7

    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1042
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->BEYOND_TERMINAL_CAPABILITY:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .line 1045
    :cond_7
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    invoke-direct {v9, p1, v4, v2, v0}, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 1047
    if-nez v3, :cond_8

    if-eqz v1, :cond_b

    .line 1048
    :cond_8
    const/4 v9, 0x2

    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 1049
    const/4 v9, 0x2

    new-array v7, v9, [I

    .line 1050
    .local v7, recordNumbers:[I
    const/4 v9, 0x0

    if-eqz v3, :cond_9

    throw v3

    :goto_2
    aput v10, v7, v9

    .line 1052
    const/4 v9, 0x1

    if-eqz v1, :cond_a

    throw v1

    :goto_3
    aput v10, v7, v9

    .line 1055
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    .line 1057
    const/4 v9, 0x1

    .line 1059
    .end local v7           #recordNumbers:[I
    :goto_4
    return v9

    .line 1050
    .restart local v7       #recordNumbers:[I
    :cond_9
    const/4 v10, -0x1

    goto :goto_2

    .line 1052
    :cond_a
    const/4 v10, -0x1

    goto :goto_3

    .line 1059
    .end local v7           #recordNumbers:[I
    :cond_b
    const/4 v9, 0x0

    goto :goto_4
.end method

.method private searchForDupTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .locals 5
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 298
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 299
    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v3

    .line 300
    .local v3, tagValue:I
    const/4 v1, 0x0

    .line 301
    .local v1, i:I
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 302
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    .line 303
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getTag()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 304
    add-int/lit8 v1, v1, 0x1

    .line 305
    const/4 v4, 0x1

    if-le v1, v4, :cond_0

    move-object v4, v0

    .line 310
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .locals 3
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/Iterator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 274
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    .line 275
    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 276
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    .line 277
    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    move-object v2, v0

    .line 281
    .end local v0           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    .locals 2
    .parameter "tag"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;",
            ">;)",
            "Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;"
        }
    .end annotation

    .prologue
    .line 256
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 257
    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMessageParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .line 243
    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;
    .locals 8
    .parameter "data"

    .prologue
    .line 220
    const/4 v5, 0x0

    .line 221
    .local v5, icons:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .line 223
    .local v4, iconIndex:I
    if-nez p1, :cond_0

    .line 224
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .line 238
    .end local p1
    :goto_0
    return-object v7

    .line 226
    .restart local p1
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    .line 238
    .end local p1
    :cond_1
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_0

    .line 228
    .restart local p1
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .line 231
    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v5, v0

    .line 233
    move-object v1, v5

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v3, v1, v2

    .line 234
    .local v3, icon:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    .line 233
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 212
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 217
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    .locals 7
    .parameter "berTlv"

    .prologue
    .line 96
    if-nez p1, :cond_1

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 101
    const/4 v5, 0x0

    iput v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    .line 103
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getTag()I

    move-result v5

    const/16 v6, 0xd0

    if-eq v5, v6, :cond_2

    .line 104
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 107
    :cond_2
    const/4 v1, 0x0

    .line 108
    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .line 110
    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v0

    .line 111
    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-nez v0, :cond_3

    .line 112
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 118
    :cond_3
    iget v5, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    .line 120
    .local v2, cmdType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-nez v2, :cond_4

    .line 121
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 126
    :cond_4
    :try_start_0
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 196
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 197
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v5

    move-object v4, v5

    .line 201
    .local v4, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .line 202
    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 128
    .end local v4           #e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    .line 205
    :goto_1
    if-nez v1, :cond_0

    .line 206
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .line 131
    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 132
    goto :goto_1

    .line 134
    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 135
    goto :goto_1

    .line 137
    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 138
    goto :goto_1

    .line 140
    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 141
    goto :goto_1

    .line 143
    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 144
    goto :goto_1

    .line 146
    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendSS(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 147
    goto :goto_1

    .line 149
    :pswitch_7
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendUSSD(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 150
    goto :goto_1

    .line 152
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendDTMF(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 153
    goto :goto_1

    .line 155
    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSMSCommand(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 156
    goto :goto_1

    .line 158
    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 159
    goto :goto_1

    .line 161
    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    .line 162
    const/4 v1, 0x0

    .line 163
    goto :goto_1

    .line 165
    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 166
    goto :goto_1

    .line 168
    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 169
    goto :goto_1

    .line 171
    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 172
    goto :goto_1

    .line 174
    :pswitch_f
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processProvideLocalInfo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 175
    goto :goto_1

    .line 177
    :pswitch_10
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLanguageNotification(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 178
    goto :goto_1

    .line 180
    :pswitch_11
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processOpenChannel(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 181
    goto :goto_1

    .line 183
    :pswitch_12
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processCloseChannel(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 184
    goto :goto_1

    .line 186
    :pswitch_13
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processReceiveData(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 187
    goto :goto_1

    .line 189
    :pswitch_14
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSendData(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    .line 190
    goto :goto_1

    .line 192
    :pswitch_15
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetChannelStatus(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_2
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v1

    .line 193
    goto :goto_1

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
    .end packed-switch
.end method
