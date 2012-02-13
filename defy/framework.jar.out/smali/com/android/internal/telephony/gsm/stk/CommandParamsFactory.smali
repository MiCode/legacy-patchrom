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

.field static final REFRESH_NAA_INIT:I = 0x3

.field static final REFRESH_NAA_INIT_AND_FILE_CHANGE:I = 0x2

.field static final REFRESH_NAA_INIT_AND_FULL_FILE_CHANGE:I = 0x0

.field static final REFRESH_UICC_RESET:I = 0x4

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
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    invoke-static {p0, p2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/gsm/stk/IconLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    return-void
.end method

.method static declared-synchronized getInstance(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    .locals 2
    .parameter "caller"
    .parameter "fh"

    .prologue
    const-class v0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sInstance:Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-object v1

    :cond_0
    if-eqz p1, :cond_1

    :try_start_1
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;-><init>(Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;Lcom/android/internal/telephony/IccFileHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private processBIPClient(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    iget v5, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    .local v0, commandType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v4}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v4, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    const/4 v2, 0x1

    .local v2, has_alpha_id:Z
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ctlv="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "textMsg.text="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v5, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v3

    iget-boolean v5, v3, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v5, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "textMsg.iconSelfExplanatory="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iput-boolean v7, v4, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;

    invoke-direct {v5, p1, v4, v2}, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Z)V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v3, :cond_3

    iput v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v6, v3, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v5, v8

    :goto_1
    return v5

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    move v5, v7

    goto :goto_1
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
    .local p1, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v0, 0x0

    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .local v1, ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveCommandDetails(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .end local v1           #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :cond_0
    :goto_0
    return-object v0

    .restart local v1       #ctlvCmdDet:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    :catch_0
    move-exception v2

    .local v2, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    const-string v3, "Failed to procees command details"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
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

    const-string v3, "process DisplayText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_1
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->IMMEDIATE_RESPONSE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    :cond_4
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v6

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v6

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v1, :cond_7

    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    :goto_2
    return v3

    :cond_5
    move v3, v4

    goto :goto_0

    :cond_6
    move v3, v4

    goto :goto_1

    :cond_7
    move v3, v4

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

    const-string v3, "process EventNotify"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_0
    iput-boolean v4, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v1, :cond_2

    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    :goto_0
    return v3

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_2
    move v3, v4

    goto :goto_0
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

    const-string v3, "process GetInkey"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .local v2, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v1, 0x0

    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    :cond_0
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    :cond_1
    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    iput v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_3

    move v3, v6

    :goto_0
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    move v3, v6

    :goto_1
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    move v3, v6

    :goto_2
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_6

    move v3, v6

    :goto_3
    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v1, :cond_7

    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

    :goto_4
    return v3

    :cond_2
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v3

    :cond_3
    move v3, v4

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1

    :cond_5
    move v3, v4

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_3

    :cond_7
    move v3, v4

    goto :goto_4
.end method

.method private processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
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
    const/4 v7, 0x0

    const/4 v9, 0x1

    const-string v6, "process GetInput"

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Input;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Input;-><init>()V

    .local v3, input:Lcom/android/internal/telephony/gsm/stk/Input;
    const/4 v2, 0x0

    .local v2, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->text:Ljava/lang/String;

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESPONSE_LENGTH:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .local v5, valueIndex:I
    aget-byte v6, v4, v5

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->minLen:I

    add-int/lit8 v6, v5, 0x1

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    iput v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->maxLen:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEFAULT_TEXT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->defaultText:Ljava/lang/String;

    :cond_0
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v6, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v2

    :cond_1
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x1

    if-nez v6, :cond_4

    move v6, v9

    :goto_0
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->digitOnly:Z

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_5

    move v6, v9

    :goto_1
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x4

    if-nez v6, :cond_6

    move v6, v9

    :goto_2
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->echo:Z

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_7

    move v6, v9

    :goto_3
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v6, v6, 0x80

    if-eqz v6, :cond_8

    move v6, v9

    :goto_4
    iput-boolean v6, v3, Lcom/android/internal/telephony/gsm/stk/Input;->helpAvailable:Z

    new-instance v6, Lcom/android/internal/telephony/gsm/stk/GetInputParams;

    invoke-direct {v6, p1, v3}, Lcom/android/internal/telephony/gsm/stk/GetInputParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Input;)V

    iput-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v2, :cond_9

    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v7, v2, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v6, v9

    :goto_5
    return v6

    .end local v4           #rawValue:[B
    .end local v5           #valueIndex:I
    :cond_2
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    new-instance v6, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v6

    .restart local v4       #rawValue:[B
    .restart local v5       #valueIndex:I
    :cond_4
    move v6, v7

    goto :goto_0

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_2

    :cond_7
    move v6, v7

    goto :goto_3

    :cond_8
    move v6, v7

    goto :goto_4

    :cond_9
    move v6, v7

    goto :goto_5
.end method

.method private processLanguageNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
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
    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v3, "process Language Notification"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, specificLang:Z
    const/4 v1, 0x0

    .local v1, lang:Ljava/lang/String;
    iget v3, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_1

    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    const/4 v1, 0x0

    :cond_0
    :goto_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    return v5

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveLanguage(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "language : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v9, "process LaunchBrowser"

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v0, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v3, 0x0

    .local v3, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v6, 0x0

    .local v6, url:Ljava/lang/String;
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->URL:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    .local v1, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v5

    .local v5, rawValue:[B
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v7

    .local v7, valueIndex:I
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v8

    .local v8, valueLen:I
    if-lez v8, :cond_3

    invoke-static {v5, v7, v8}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :cond_0
    :goto_0
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_1
    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v9, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v3

    iget-boolean v9, v3, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v9, v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_2
    iget v9, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v9, :pswitch_data_0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .local v4, mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :goto_1
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    invoke-direct {v9, p1, v0, v6, v4}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Ljava/lang/String;Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;)V

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v3, :cond_4

    iput v12, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v10, v3, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v9, v12

    :goto_2
    return v9

    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    .restart local v5       #rawValue:[B
    .restart local v7       #valueIndex:I
    .restart local v8       #valueLen:I
    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .end local v5           #rawValue:[B
    .end local v7           #valueIndex:I
    .end local v8           #valueLen:I
    :catch_0
    move-exception v9

    move-object v2, v9

    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v9, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v9, v10}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v9

    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :pswitch_0
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->USE_EXISTING_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_1

    .end local v4           #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    :pswitch_1
    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_NEW_BROWSER:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    .restart local v4       #mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;
    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
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
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const-string v0, "process PlayTone"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .local v3, tone:Lcom/android/internal/telephony/gsm/stk/Tone;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v4, 0x0

    .local v4, duration:Lcom/android/internal/telephony/gsm/stk/Duration;
    const/4 v8, 0x0

    .local v8, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TONE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    .local v6, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v0

    if-lez v0, :cond_0

    :try_start_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v9

    .local v9, rawValue:[B
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v11

    .local v11, valueIndex:I
    aget-byte v10, v9, v11

    .local v10, toneVal:I
    invoke-static {v10}, Lcom/android/internal/telephony/gsm/stk/Tone;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/Tone;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .end local v9           #rawValue:[B
    .end local v10           #toneVal:I
    .end local v11           #valueIndex:I
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveDuration(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Duration;

    move-result-object v4

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v8

    iget-boolean v0, v8, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_3
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    move v5, v0

    .local v5, vibrate:Z
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/PlayToneParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/Tone;Lcom/android/internal/telephony/gsm/stk/Duration;Z)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    .end local v2           #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    const/4 v0, 0x1

    :goto_1
    return v0

    .end local v5           #vibrate:Z
    .restart local v2       #textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v0

    .end local v7           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_4
    const/4 v0, 0x0

    move v5, v0

    goto :goto_0

    .restart local v5       #vibrate:Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    .locals 2
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
    const-string v0, "process Refresh"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    new-instance v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    invoke-direct {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private processSMSSendNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
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
    const-string v0, "process SendSMS EventNotify"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v5, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v8, 0x0

    .local v8, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v2, 0x0

    .local v2, address:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, gsmSmsTpdu:[B
    const/4 v4, 0x0

    .local v4, cdmaSmsTpdu:[B
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v7

    .local v7, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v7, :cond_0

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ADDRESS_TAG:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v10

    .local v10, valueIndex:I
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v11

    .local v11, valueLen:I
    new-array v6, v11, [B

    .local v6, addr:[B
    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v10, v6, v1, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v0, 0x0

    invoke-static {v6, v0, v11}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process address"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .end local v6           #addr:[B
    .end local v10           #valueIndex:I
    .end local v11           #valueLen:I
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->GSM_SMS_TPDU:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v9

    .local v9, len:I
    new-array v3, v9, [B

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v7

    .end local v7           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-static {v0, v1, v3, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v9           #len:I
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->CDMA_SMS_TPDU:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v7

    .restart local v7       #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v9

    .restart local v9       #len:I
    new-array v4, v9, [B

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v1

    const/4 v6, 0x0

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v7

    .end local v7           #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-static {v0, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .end local v9           #len:I
    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v0, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v7

    .restart local v7       #ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v7, :cond_4

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v8

    iget-boolean v0, v8, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v0, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_4
    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/SmsSendParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/lang/String;[B[BLcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v1, v8, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    .end local v2           #address:Ljava/lang/String;
    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    .restart local v2       #address:Ljava/lang/String;
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
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
    const/4 v9, 0x0

    const/4 v10, 0x1

    const-string v7, "process SelectItem"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/telephony/gsm/stk/Menu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/Menu;-><init>()V

    .local v3, menu:Lcom/android/internal/telephony/gsm/stk/Menu;
    const/4 v6, 0x0

    .local v6, titleIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v1, 0x0

    .local v1, itemsIconId:Lcom/android/internal/telephony/gsm/stk/ItemsIconId;
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->title:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItem(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/Item;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ResultCode;->REQUIRED_VALUES_MISSING:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v7, v8}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v7

    :cond_2
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)I

    move-result v7

    sub-int/2addr v7, v10

    iput v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->defaultItem:I

    :cond_3
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_4

    iput v10, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v6

    iget-boolean v7, v6, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->titleIconSelfExplanatory:Z

    :cond_4
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ICON_ID_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v7, 0x2

    iput v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveItemsIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/ItemsIconId;

    move-result-object v1

    iget-boolean v7, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->itemsIconSelfExplanatory:Z

    :cond_5
    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_7

    move v4, v10

    .local v4, presentTypeSpecified:Z
    :goto_1
    if-eqz v4, :cond_6

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x2

    if-nez v7, :cond_8

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/PresentationType;->DATA_VALUES:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    :cond_6
    :goto_2
    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_9

    move v7, v10

    :goto_3
    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->softKeyPreferred:Z

    iget v7, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    and-int/lit16 v7, v7, 0x80

    if-eqz v7, :cond_a

    move v7, v10

    :goto_4
    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->helpAvailable:Z

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;

    if-eqz v6, :cond_b

    move v8, v10

    :goto_5
    invoke-direct {v7, p1, v3, v8}, Lcom/android/internal/telephony/gsm/stk/SelectItemParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/Menu;Z)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    :goto_6
    move v7, v10

    :goto_7
    return v7

    .end local v4           #presentTypeSpecified:Z
    :cond_7
    move v4, v9

    goto :goto_1

    .restart local v4       #presentTypeSpecified:Z
    :cond_8
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/PresentationType;->NAVIGATION_OPTIONS:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/Menu;->presentationType:Lcom/android/internal/telephony/gsm/stk/PresentationType;

    goto :goto_2

    :cond_9
    move v7, v9

    goto :goto_3

    :cond_a
    move v7, v9

    goto :goto_4

    :cond_b
    move v8, v9

    goto :goto_5

    :pswitch_0
    move v7, v9

    goto :goto_7

    :pswitch_1
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v8, v6, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    goto :goto_6

    :pswitch_2
    iget-object v5, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    .local v5, recordNumbers:[I
    if-eqz v6, :cond_c

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    array-length v7, v7

    add-int/lit8 v7, v7, 0x1

    new-array v5, v7, [I

    iget v7, v6, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    aput v7, v5, v9

    iget-object v7, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    iget-object v8, v1, Lcom/android/internal/telephony/gsm/stk/ItemsIconId;->recordNumbers:[I

    array-length v8, v8

    invoke-static {v7, v9, v5, v10, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_c
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v5, v8}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    const-string v8, "process SetUpEventList"

    invoke-static {p0, v8}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v8, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getRawValue()[B

    move-result-object v4

    .local v4, rawValue:[B
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getValueIndex()I

    move-result v5

    .local v5, valueIndex:I
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getLength()I

    move-result v7

    .local v7, valueLen:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .local v2, eventlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .local v3, i:I
    move v6, v5

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    :goto_0
    if-ge v3, v7, :cond_0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, v4, v6

    and-int/lit16 v1, v8, 0xff

    .local v1, eventValue:I
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    move v6, v5

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    goto :goto_0

    .end local v1           #eventValue:I
    :cond_0
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/SetUpEventListParams;

    invoke-direct {v8, p1, v2}, Lcom/android/internal/telephony/gsm/stk/SetUpEventListParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)V

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #eventlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v3           #i:I
    .end local v4           #rawValue:[B
    .end local v6           #valueIndex:I
    .end local v7           #valueLen:I
    :cond_1
    :goto_1
    const/4 v8, 0x0

    return v8

    :catch_0
    move-exception v8

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

    const-string v3, "process SetUpIdleModeText"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v2, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v1, 0x0

    .local v1, iconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveTextString(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_0
    iget-object v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v3, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v1

    iget-boolean v3, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v3, v2, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v3, p1, v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v1, :cond_2

    iput v6, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    iget v4, v1, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcon(ILandroid/os/Message;)V

    move v3, v6

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
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x1

    const-string v7, "process SetupCall"

    invoke-static {p0, v7}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    const/4 v4, 0x0

    .local v4, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    new-instance v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v3, confirmMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v1, callMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    const/4 v2, 0x0

    .local v2, confirmIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    const/4 v0, 0x0

    .local v0, callIconId:Lcom/android/internal/telephony/gsm/stk/IconId;
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_0
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v2

    iget-boolean v7, v2, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v7, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_1
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ALPHA_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, v5}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveAlphaId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    :cond_2
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ICON_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-direct {p0, v7, p2}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/stk/ValueParser;->retrieveIconId(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;)Lcom/android/internal/telephony/gsm/stk/IconId;

    move-result-object v0

    iget-boolean v7, v0, Lcom/android/internal/telephony/gsm/stk/IconId;->selfExplanatory:Z

    iput-boolean v7, v1, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    :cond_3
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;

    invoke-direct {v7, p1, v3, v1}, Lcom/android/internal/telephony/gsm/stk/CallSetupParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-nez v2, :cond_4

    if-eqz v0, :cond_7

    :cond_4
    iput v11, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    new-array v6, v11, [I

    .local v6, recordNumbers:[I
    if-eqz v2, :cond_5

    iget v7, v2, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    :goto_0
    aput v7, v6, v10

    if-eqz v0, :cond_6

    iget v7, v0, Lcom/android/internal/telephony/gsm/stk/IconId;->recordNumber:I

    :goto_1
    aput v7, v6, v9

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoader:Lcom/android/internal/telephony/gsm/stk/IconLoader;

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/telephony/gsm/stk/IconLoader;->loadIcons([ILandroid/os/Message;)V

    move v7, v9

    .end local v6           #recordNumbers:[I
    :goto_2
    return v7

    .restart local v6       #recordNumbers:[I
    :cond_5
    move v7, v8

    goto :goto_0

    :cond_6
    move v7, v8

    goto :goto_1

    .end local v6           #recordNumbers:[I
    :cond_7
    move v7, v10

    goto :goto_2
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
    .local p2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v1

    .local v1, tagValue:I
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    .local v0, ctlv:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;->getTag()I

    move-result v2

    if-ne v2, v1, :cond_0

    move-object v2, v0

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
    .local p2, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->searchForNextTag(Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;Ljava/util/Iterator;)Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;

    move-result-object v1

    return-object v1
.end method

.method private sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 2
    .parameter "resCode"

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->mLoadIconSuccess:Z

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCaller:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendMsgParamsDecoded(Lcom/android/internal/telephony/gsm/stk/ResultCode;Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    return-void
.end method

.method private setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;
    .locals 8
    .parameter "data"

    .prologue
    const/4 v5, 0x0

    .local v5, icons:[Landroid/graphics/Bitmap;
    const/4 v4, 0x0

    .local v4, iconIndex:I
    if-nez p1, :cond_0

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    .end local p1
    :goto_0
    return-object v7

    .restart local p1
    :cond_0
    iget v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    packed-switch v7, :pswitch_data_0

    .end local p1
    :cond_1
    :goto_1
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    goto :goto_0

    .restart local p1
    :pswitch_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    check-cast p1, Landroid/graphics/Bitmap;

    .end local p1
    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    goto :goto_1

    .restart local p1
    :pswitch_1
    check-cast p1, [Landroid/graphics/Bitmap;

    .end local p1
    move-object v0, p1

    check-cast v0, [Landroid/graphics/Bitmap;

    move-object v5, v0

    move-object v1, v5

    .local v1, arr$:[Landroid/graphics/Bitmap;
    array-length v6, v1

    .local v6, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v6, :cond_1

    aget-object v3, v1, v2

    .local v3, icon:Landroid/graphics/Bitmap;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->setIcon(Landroid/graphics/Bitmap;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

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
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->setIcons(Ljava/lang/Object;)Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method make(Lcom/android/internal/telephony/gsm/stk/BerTlv;)V
    .locals 10
    .parameter "berTlv"

    .prologue
    const/4 v9, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    iput v9, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mIconLoadState:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getTag()I

    move-result v7

    const/16 v8, 0xd0

    if-eq v7, v8, :cond_2

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .local v1, cmdPending:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/BerTlv;->getComprehensionTlvs()Ljava/util/List;

    move-result-object v3

    .local v3, ctlvs:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/gsm/stk/ComprehensionTlv;>;"
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processCommandDetails(Ljava/util/List;)Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v0

    .local v0, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    if-nez v0, :cond_3

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    :cond_3
    iget v7, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    .local v2, cmdType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-nez v2, :cond_4

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    :cond_4
    :try_start_0
    sget-object v7, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory$1;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    new-instance v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_TYPE_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v4, v7

    .local v4, e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/stk/CommandParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/ResultException;->result()Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    .end local v4           #e:Lcom/android/internal/telephony/gsm/stk/ResultException;
    :pswitch_0
    :try_start_1
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z
    :try_end_1
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v1

    :goto_1
    if-nez v1, :cond_0

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->sendCmdParams(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    goto :goto_0

    :pswitch_1
    :try_start_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSelectItem(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_2
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processDisplayText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_3
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpIdleModeText(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_4
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInkey(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_5
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processGetInput(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_7
    const-string v7, "ro.mot.phonemode.vzw4gphone"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, vzw4gphonefeatureOn:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v7, 0x1

    move v5, v7

    .local v5, mVZW4gPhoneOnFlag:Z
    :goto_2
    if-eqz v5, :cond_6

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSMSSendNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    .end local v5           #mVZW4gPhoneOnFlag:Z
    :cond_5
    move v5, v9

    goto :goto_2

    .restart local v5       #mVZW4gPhoneOnFlag:Z
    :cond_6
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processEventNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    .end local v5           #mVZW4gPhoneOnFlag:Z
    .end local v6           #vzw4gphonefeatureOn:Ljava/lang/String;
    :pswitch_8
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetupCall(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_9
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processRefresh(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_a
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLaunchBrowser(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_b
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processPlayTone(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_c
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processLanguageNotify(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_d
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processSetUpEventList(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_e
    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->processBIPClient(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Ljava/util/List;)Z

    move-result v1

    goto :goto_1

    :pswitch_f
    new-instance v7, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfo;

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfo;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)V

    iput-object v7, p0, Lcom/android/internal/telephony/gsm/stk/CommandParamsFactory;->mCmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    :try_end_2
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
