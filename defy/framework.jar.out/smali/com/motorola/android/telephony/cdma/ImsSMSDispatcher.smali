.class public final Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.super Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;,
        Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
    }
.end annotation


# static fields
.field private static final CHANNEL_1X:I = 0x1

.field private static final CHANNEL_IMS:I = 0x0

.field private static final EVENT_CLOSE_IMS_SERVICE:I = 0x17

.field private static final EVENT_CREATE_IMS_SERVICE:I = 0x14

.field private static final EVENT_DESTROY_IMS_SERVICE:I = 0x15

.field private static final EVENT_ENVELOP_RESPONSE:I = 0x19

.field private static final EVENT_OPEN_IMS_SERVICE:I = 0x16

.field private static final EVENT_QUERY_SMSC_DONE:I = 0x18

.field private static final IMS_SERVICE_NAME:Ljava/lang/String; = "smsonims"

.field private static final RESPONSE_STR_FROM_SIM_OK:Ljava/lang/String; = "90 00"

.field private static final TAG:Ljava/lang/String; = "ImsSMSDispatcher"

.field private static final local_logv:Z = true

.field private static mImsServiceOpened:Z

.field private static sRpMessageRefCounter:I

.field private static volatile singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# instance fields
.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mDefaultSmsc:Ljava/lang/String;

.field private mIMSManager:Lcom/motorola/android/ims/IMSManager;

.field private mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

.field private mImsConnected:Z

.field private mIs3gppFormat:Z

.field private mIsSmsLimitedMode:Z

.field private mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    sput-boolean v1, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mImsServiceOpened:Z

    sput v1, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return-void
.end method

.method private constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, "ImsSMSDispatcher"

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mImsConnected:Z

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const-string v0, "ImsSMSDispatcher"

    const-string v0, "ImsSMSDispatcher"

    invoke-static {v2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mImsConnected:Z

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    iput-boolean v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    const-string v0, "ImsSMSDispatcher"

    const-string v1, "ImsSMSDispatcher - dual mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p3}, Lcom/android/internal/telephony/cdma/CDMAPhone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    .prologue
    sget v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return v0
.end method

.method static synthetic access$002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    sput p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return p0
.end method

.method static synthetic access$004()I
    .locals 1

    .prologue
    sget v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sRpMessageRefCounter:I

    return v0
.end method

.method static synthetic access$100(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    return v0
.end method

.method static synthetic access$102(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    return p1
.end method

.method static synthetic access$200(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$300(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    return v0
.end method

.method static synthetic access$302(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    return p1
.end method

.method static synthetic access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$502(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/service/smsonims/PageMessage;)Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;

    return-object p1
.end method

.method public static getInstance(Lcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 1
    .parameter "phone"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v0, p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method

.method public static getInstance(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
    .locals 1
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    if-nez v0, :cond_0

    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {v0, p0, p1, p2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;-><init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V

    sput-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    :cond_0
    sget-object v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->singleton:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    return-object v0
.end method


# virtual methods
.method public SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .locals 7
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v5, 0x0

    .local v5, imsAvailable:Z
    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v5, 0x1

    :cond_0
    new-instance v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    if-eqz v5, :cond_1

    const/4 v1, 0x0

    move v6, v1

    :goto_0
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZI)V

    return-object v0

    :cond_1
    const/4 v1, 0x1

    move v6, v1

    goto :goto_0
.end method

.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    const-string v1, "ImsSMSDispatcher"

    const-string v0, "ImsSMSDispatcher"

    const-string v0, "acknowledgeLastIncomingSms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;

    if-nez v0, :cond_0

    const-string v0, "ImsSMSDispatcher"

    const-string v0, "ACK 1x sms"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    const-string v0, "ImsSMSDispatcher"

    const-string v1, "dispose"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const-string v5, "Fail open service: "

    const-string v7, "Fail create service: "

    const-string v6, "ImsSMSDispatcher"

    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleMessage(Landroid/os/Message;)V

    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v3, "ImsSMSDispatcher"

    const-string v3, "EVENT_CREATE_IMS_SERVICE"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/motorola/android/ims/IMSManager;->getManager(Landroid/content/Context;)Lcom/motorola/android/ims/IMSManager;

    move-result-object v3

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-nez v3, :cond_1

    const-string v3, "ImsSMSDispatcher"

    const-string v3, "FATAL - Fail to get IMSManager"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    new-instance v4, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;

    invoke-direct {v4, p0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V

    invoke-virtual {v3, v4}, Lcom/motorola/android/ims/IMSManager;->setListener(Lcom/motorola/android/ims/ConnectionStateListener;)V

    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    const-string v4, "smsonims"

    invoke-virtual {v3, v4}, Lcom/motorola/android/ims/IMSManager;->createService(Ljava/lang/String;)Lcom/motorola/android/ims/IMSService;

    move-result-object v3

    check-cast v3, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-nez v3, :cond_2

    const-string v3, "ImsSMSDispatcher"

    const-string v4, "FATAL - Fail to create SmsOnIMSService"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Lcom/motorola/android/ims/IMSException;
    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail create service: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #e:Lcom/motorola/android/ims/IMSException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    new-instance v4, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;

    iget-object v5, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-direct {v4, p0, v5}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/IMSService;)V

    invoke-virtual {v3, v4}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->setListener(Lcom/motorola/android/ims/IMSServiceListener;)V

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v3}, Lcom/motorola/android/ims/IMSManager;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/16 v3, 0x16

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail create service: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalArgumentException;
    :pswitch_1
    const-string v3, "ImsSMSDispatcher"

    const-string v3, "EVENT_DESTROY_IMS_SERVICE"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v3}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->close()V

    :cond_3
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSManager:Lcom/motorola/android/ims/IMSManager;

    invoke-virtual {v3}, Lcom/motorola/android/ims/IMSManager;->onDestroy()V

    goto/16 :goto_0

    :pswitch_2
    const-string v3, "ImsSMSDispatcher"

    const-string v3, "EVENT_OPEN_IMS_SERVICE"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v3}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->open()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/motorola/android/ims/IMSException; {:try_start_2 .. :try_end_2} :catch_3

    goto/16 :goto_0

    :catch_2
    move-exception v3

    move-object v1, v3

    .local v1, e:Ljava/lang/IllegalStateException;
    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail open service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Ljava/lang/IllegalStateException;
    :catch_3
    move-exception v3

    move-object v1, v3

    .local v1, e:Lcom/motorola/android/ims/IMSException;
    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fail open service: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v1           #e:Lcom/motorola/android/ims/IMSException;
    :pswitch_3
    const-string v3, "ImsSMSDispatcher"

    const-string v3, "EVENT_CLOSE_IMS_SERVICE"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_4

    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error get default SMSC address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_4
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    goto/16 :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .restart local v0       #ar:Landroid/os/AsyncResult;
    const/4 v2, 0x0

    .local v2, res:Ljava/lang/String;
    if-eqz v0, :cond_0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_5

    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error result "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v2, :cond_6

    const-string v3, "90 00"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Response OK From SIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #res:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2       #res:Ljava/lang/String;
    goto :goto_1

    :cond_6
    const-string v3, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get Response ERROR From SIM: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected handleSendComplete(Landroid/os/AsyncResult;)V
    .locals 19
    .parameter "ar"

    .prologue
    const-string v16, "ImsSMSDispatcher"

    const-string v17, "handleSendComplete"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v15, v0

    check-cast v15, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .local v15, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Lcom/android/internal/telephony/SmsResponse;

    .local v13, smsResponse:Lcom/android/internal/telephony/SmsResponse;
    move-object v0, v15

    iget-boolean v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    const-string v16, "ImsSMSDispatcher"

    const-string v17, "1x sms"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleSendComplete(Landroid/os/AsyncResult;)V

    .end local p1
    :cond_0
    :goto_0
    return-void

    .restart local p1
    :cond_1
    iget-object v12, v15, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    .local v12, sentIntent:Landroid/app/PendingIntent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v16, v0

    if-nez v16, :cond_3

    const-string v16, "ImsSMSDispatcher"

    const-string v17, "SMS send successfully"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v15

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    move-object v0, v13

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz v12, :cond_0

    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .local v7, intent:Landroid/content/Intent;
    const-string v16, "refNumber"

    move-object v0, v13

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->messageRef:I

    move/from16 v17, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    const/16 v17, -0x1

    move-object v0, v12

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v16

    goto :goto_0

    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    const-string v16, "ImsSMSDispatcher"

    const-string v17, "SMS send failed and retry"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/telephony/ServiceState;->getState()I

    move-result v14

    .local v14, ss:I
    if-eqz v14, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v16

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    move v1, v14

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto/16 :goto_0

    :cond_5
    move-object v0, v15

    iget-object v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;

    .local v10, retry:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;
    if-nez v10, :cond_7

    const-string v16, "ImsSMSDispatcher"

    const-string v17, "retry is null, stop retrying!"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v15

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .local v6, fillIn:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    const-string v16, "errorCode"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lcom/android/internal/telephony/SmsResponse;

    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v17, v0

    move-object v0, v6

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v16, "ImsSMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Temporary Error, Error No: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/SmsResponse;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/internal/telephony/SmsResponse;->errorCode:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_1
    move-object v0, v15

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mSentIntent:Landroid/app/PendingIntent;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    const/16 v18, 0x7

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move/from16 v2, v18

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v16

    move-object/from16 v5, v16

    .local v5, ex:Landroid/app/PendingIntent$CanceledException;
    const-string v16, "ImsSMSDispatcher"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, " send fail - "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v5           #ex:Landroid/app/PendingIntent$CanceledException;
    .end local v6           #fillIn:Landroid/content/Intent;
    .restart local p1
    :cond_7
    const-string v16, "ImsSMSDispatcher"

    invoke-virtual {v10}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v10

    iget-boolean v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mPrompt:Z

    move/from16 v16, v0

    if-eqz v16, :cond_8

    new-instance v8, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;

    move-object v0, v8

    move-object/from16 v1, p0

    move-object v2, v15

    invoke-direct {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$1;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    .local v8, mListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v9

    .local v9, r:Landroid/content/res/Resources;
    new-instance v16, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-direct/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v17, 0x1040336

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const-string v17, "Message failed would you like to retry?"

    invoke-virtual/range {v16 .. v17}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x1040338

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    const v17, 0x1040339

    move-object v0, v9

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .local v4, d:Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v16

    const/16 v17, 0x7d3

    invoke-virtual/range {v16 .. v17}, Landroid/view/Window;->setType(I)V

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .end local v4           #d:Landroid/app/AlertDialog;
    .end local v8           #mListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v9           #r:Landroid/content/res/Resources;
    :cond_8
    move-object v0, v10

    iget v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mChannel:I

    move/from16 v16, v0

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .local v11, retryMsg:Landroid/os/Message;
    move-object v0, v10

    iget v0, v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$Retry;->mDelay:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v11

    move-wide/from16 v2, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 13
    .parameter "tr"

    .prologue
    const-string v12, "sip_pdu"

    const-string v11, "ImsSMSDispatcher"

    const-string v9, "ImsSMSDispatcher"

    const-string v9, "sendSms"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z

    if-eqz v9, :cond_1

    const-string v9, "ImsSMSDispatcher"

    const-string v9, "IMS in limited mode, do not send sms over IMS"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    move-object v8, v0

    .local v8, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    iget-boolean v9, v8, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mImsSms:Z

    if-eqz v9, :cond_2

    iget v9, v8, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mChannel:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    :cond_2
    const-string v9, "ImsSMSDispatcher"

    const-string v9, "sending over 1x"

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, v8}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    :cond_3
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v3, map:Ljava/util/HashMap;
    const-string v9, "pdu"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v4, v0

    .local v4, pdu:[B
    const-string v9, "sip_pdu"

    invoke-virtual {v3, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0

    .local v5, sipPdu:[B
    const-string v9, "smsc"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v6, v0

    .local v6, smsc:[B
    if-nez v5, :cond_4

    if-eqz v4, :cond_4

    :try_start_0
    iget-boolean v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    iget v10, v8, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    invoke-static {v4, v8, v9, v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->create3gppSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V

    :goto_1
    const-string v9, "sip_pdu"

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    move-object v0, v9

    check-cast v0, [B

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    if-eqz v5, :cond_0

    invoke-static {v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->smscByteToString([B)Ljava/lang/String;

    move-result-object v7

    .local v7, toAddr:Ljava/lang/String;
    if-nez v7, :cond_5

    iget-object v7, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "tel:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v9, v7, v5}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v2

    .local v2, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const-string v9, "ImsSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "toAddr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v9, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;

    invoke-direct {v9, p0, v8}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    invoke-virtual {v2, v9}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    invoke-virtual {v2}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V

    goto/16 :goto_0

    .end local v2           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v7           #toAddr:Ljava/lang/String;
    :cond_6
    :try_start_1
    invoke-static {v4, v8}, Lcom/android/internal/telephony/cdma/SmsMessage;->createSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v9

    move-object v1, v9

    .local v1, ex:Ljava/lang/Exception;
    const-string v9, "ImsSMSDispatcher"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIP Pdu encode failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 15
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const-string v14, "ImsSMSDispatcher"

    const-string v11, "ImsSMSDispatcher"

    const-string v11, "sendStkSms"

    invoke-static {v14, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    const/4 v11, 0x3

    :try_start_0
    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .local v6, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v11, "smsc"

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "pdu"

    move-object v0, v6

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, v6

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v10

    check-cast v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    .local v10, tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    iget-object v11, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRetries:Ljava/util/LinkedList;

    invoke-virtual {v11}, Ljava/util/LinkedList;->clear()V

    iget-object v11, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    .local v8, ss:I
    if-eqz v8, :cond_3

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getState()I

    move-result v11

    const/4 v12, 0x2

    if-eq v11, v12, :cond_3

    :cond_2
    invoke-virtual {p0, v8, v10}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    iget v12, v10, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;->mRpMessageRef:I

    move-object/from16 v0, p2

    move-object v1, v10

    move-object v2, v11

    move v3, v12

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->create3gppSipPduFromRawPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V

    const-string v11, "sip_pdu"

    invoke-virtual {v6, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [B

    move-object v0, v11

    check-cast v0, [B

    move-object v7, v0

    .local v7, sipPdu:[B
    if-eqz v7, :cond_0

    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "smsc pdu is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static/range {p1 .. p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->smscByteToString([B)Ljava/lang/String;

    move-result-object v9

    .local v9, toAddr:Ljava/lang/String;
    if-nez v9, :cond_4

    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mDefaultSmsc:Ljava/lang/String;

    :cond_4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tel:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIMSService:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-virtual {v11, v9, v7}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v5

    .local v5, mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setFormat(I)V

    const-string v11, "ImsSMSDispatcher"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "toAddr: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;

    invoke-direct {v11, p0, v10}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V

    invoke-virtual {v5, v11}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setListener(Lcom/motorola/android/ims/service/smsonims/PageMessageListener;)V

    invoke-virtual {v5}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->send()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .end local v5           #mPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .end local v7           #sipPdu:[B
    .end local v9           #toAddr:Ljava/lang/String;
    :catch_0
    move-exception v11

    move-object v4, v11

    .local v4, ex:Ljava/lang/Exception;
    const-string v11, "ImsSMSDispatcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stk gsm pdu send failed: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v14, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v4           #ex:Ljava/lang/Exception;
    .restart local v7       #sipPdu:[B
    .restart local v9       #toAddr:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v11, "ImsSMSDispatcher"

    const-string v12, "No IMS server,send failed"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p3, :cond_0

    const/4 v11, 0x1

    :try_start_3
    move-object/from16 v0, p3

    move v1, v11

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception v11

    goto/16 :goto_0

    .end local v6           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #sipPdu:[B
    .end local v8           #ss:I
    .end local v9           #toAddr:Ljava/lang/String;
    .end local v10           #tracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;
    :catch_2
    move-exception v11

    goto/16 :goto_0
.end method
