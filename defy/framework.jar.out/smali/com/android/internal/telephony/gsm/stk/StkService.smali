.class public Lcom/android/internal/telephony/gsm/stk/StkService;
.super Landroid/os/Handler;
.source "StkService.java"

# interfaces
.implements Lcom/android/internal/telephony/gsm/stk/AppInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/stk/StkService$2;,
        Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;
    }
.end annotation


# static fields
.field private static final DEV_ID_DISPLAY:I = 0x2

.field private static final DEV_ID_EARPIECE:I = 0x3

.field private static final DEV_ID_KEYPAD:I = 0x1

.field private static final DEV_ID_NETWORK:I = 0x83

.field private static final DEV_ID_TERMINAL:I = 0x82

.field private static final DEV_ID_UICC:I = 0x81

.field static final EVENT_IDLE_SCREEN_SET:I = 0x1

.field static final EVENT_LANG_SELECTION_SET:I = 0x2

.field static final EVENT_SCREEN_MODE_CHANGE:I = 0x3

.field private static final MAX_EVENTS_NUM:I = 0x64

.field static final MSG_ID_CALL_SETUP:I = 0x4

.field static final MSG_ID_EVENT_NOTIFY:I = 0x3

.field static final MSG_ID_PROACTIVE_COMMAND:I = 0x2

.field public static final MSG_ID_RADIO_READY:I = 0x8

.field static final MSG_ID_REFRESH:I = 0x5

.field static final MSG_ID_RESPONSE:I = 0x6

.field static final MSG_ID_RIL_MSG_DECODED:I = 0xa

.field static final MSG_ID_SESSION_END:I = 0x1

.field private static final MSG_ID_SIM_LOADED:I = 0x14

.field public static final MSG_ID_SIM_REFRESH:I = 0x7

.field private static mSimRecords:Lcom/android/internal/telephony/IccRecords;

.field private static sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;


# instance fields
.field private mAm:Landroid/app/IActivityManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

.field private mHasRegisted:Z

.field private mLang:Ljava/lang/String;

.field private mLock:Ljava/lang/Object;

.field private mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

.field private mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

.field private m_eventList:[Z

.field private m_idleScreen:Z

.field private m_thread:Landroid/os/HandlerThread;

.field private sms_send_cmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V
    .locals 6
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;

    const/16 v2, 0x64

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_idleScreen:Z

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_thread:Landroid/os/HandlerThread;

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLock:Ljava/lang/Object;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHasRegisted:Z

    iput-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->sms_send_cmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkService$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/gsm/stk/StkService$1;-><init>(Lcom/android/internal/telephony/gsm/stk/StkService;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Service: Input parameters must not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iput-object p3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-static {p0, p4}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->getInstance(Landroid/os/Handler;Lcom/android/internal/telephony/IccFileHandler;)Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkSessionEnd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x2

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkProactiveCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x3

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x4

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->setOnStkCallSetUp(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v3, 0x8

    invoke-interface {v2, p0, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    sput-object p2, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/IccRecords;

    const/16 v3, 0x14

    invoke-virtual {v2, p0, v3, v5}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v5}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    const-string v2, "StkService: is running"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Landroid/os/HandlerThread;

    const-string v3, "Stk Telephony service"

    invoke-direct {v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_thread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_thread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;-><init>(Lcom/android/internal/telephony/gsm/stk/StkService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    const-string v2, "gsm.stk.event.useractivity"

    const-string v3, "0"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Initialize gsm.stk.event.useractivity to 0"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v1, configChangedFilter:Landroid/content/IntentFilter;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;

    if-eqz v2, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v2}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .local v0, config:Landroid/content/res/Configuration;
    iget-object v2, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLang:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the initial locale is:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #config:Landroid/content/res/Configuration;
    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/stk/StkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->onConfigurationChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/stk/StkService;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/gsm/stk/StkService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/gsm/stk/StkService;III[BZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/gsm/stk/StkService;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->resetBroadcastReceiver()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/gsm/stk/StkService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_idleScreen:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/gsm/stk/StkService;)Landroid/app/IActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/internal/telephony/gsm/stk/StkService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLang:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/gsm/stk/StkService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->onScreenModeChange(Z)V

    return-void
.end method

.method private eventDownload(III[BZ)V
    .locals 11
    .parameter "event"
    .parameter "sourceId"
    .parameter "destinationId"
    .parameter "additionalInfo"
    .parameter "oneShot"

    .prologue
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v2, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v8, 0xd6

    .local v8, tag:I
    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->EVENT_LIST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x1

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v9, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v9

    or-int/lit16 v8, v9, 0x80

    invoke-virtual {v2, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v2, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p4, :cond_0

    move-object v0, p4

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .local v1, b:B
    invoke-virtual {v2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v6           #len$:I
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .local v7, rawData:[B
    array-length v9, v7

    const/4 v10, 0x2

    sub-int v5, v9, v10

    .local v5, len:I
    const/4 v9, 0x1

    int-to-byte v10, v5

    aput-byte v10, v7, v9

    invoke-static {v7}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    .local v3, hexString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Event download : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v10, 0x0

    invoke-interface {v9, v3, v10}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public static getInstance()Lcom/android/internal/telephony/gsm/stk/AppInterface;
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/gsm/stk/StkService;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)Lcom/android/internal/telephony/gsm/stk/StkService;
    .locals 6
    .parameter "ci"
    .parameter "sr"
    .parameter "context"
    .parameter "fh"
    .parameter "sc"

    .prologue
    const/4 v3, 0x0

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    if-nez v0, :cond_2

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    move-object v0, v3

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/StkService;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;-><init>(Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/IccRecords;Landroid/content/Context;Lcom/android/internal/telephony/IccFileHandler;Lcom/android/internal/telephony/IccCard;)V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "NEW sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/IccRecords;

    if-eq v0, p1, :cond_3

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "Reinitialize the Service with IccRecords"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p1, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/IccRecords;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "sr changed reinitialize and return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->sInstance:Lcom/android/internal/telephony/gsm/stk/StkService;

    const-string v1, "Return current sInstance"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 14
    .parameter "resMsg"

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, 0x0

    .local v5, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    const/4 v12, 0x0

    .local v12, helpRequired:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->getCmdDetails()Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-result-object v1

    .local v1, cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$ResultCode:[I

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unhandled resMsg.resCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 v12, 0x1

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    iget v2, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-eq v0, v2, :cond_2

    iget v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_2

    iget v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mLoadIconSuccess:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->setResultCode(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    :cond_2
    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v0, v2, :cond_3

    move v12, v9

    :goto_2
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    invoke-direct {p0, v0, v12}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendMenuSelection(IZ)V

    goto :goto_0

    :cond_3
    move v12, v3

    goto :goto_2

    :pswitch_4
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersMenuSelection:I

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/SelectItemResponseData;-><init>(I)V

    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v13

    .local v13, input:Lcom/android/internal/telephony/gsm/stk/Input;
    iget-boolean v0, v13, Lcom/android/internal/telephony/gsm/stk/Input;->yesNo:Z

    if-nez v0, :cond_4

    if-nez v12, :cond_1

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersInput:Ljava/lang/String;

    iget-boolean v2, v13, Lcom/android/internal/telephony/gsm/stk/Input;->ucs2:Z

    iget-boolean v4, v13, Lcom/android/internal/telephony/gsm/stk/Input;->packed:Z

    invoke-direct {v5, v0, v2, v4}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Ljava/lang/String;ZZ)V

    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    :cond_4
    new-instance v5, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;

    .end local v5           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    iget-boolean v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersYesNoSelection:Z

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;-><init>(Z)V

    .restart local v5       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    goto :goto_1

    .end local v13           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    iget-boolean v2, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->usersConfirm:Z

    invoke-interface {v0, v2, v11}, Lcom/android/internal/telephony/CommandsInterface;->handleCallSetupRequestFromSim(ZLandroid/os/Message;)V

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    :pswitch_7
    iget v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    if-eqz v0, :cond_5

    iget v0, v1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v13

    .restart local v13       #input:Lcom/android/internal/telephony/gsm/stk/Input;
    iget-object v0, v13, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    if-eqz v0, :cond_5

    sget-object v2, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    .end local v13           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :cond_5
    const/4 v5, 0x0

    goto/16 :goto_1

    :pswitch_8
    const/4 v5, 0x0

    goto/16 :goto_1

    :pswitch_9
    iget-object v8, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->resCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v6, p0

    move-object v7, v1

    move v10, v9

    invoke-direct/range {v6 .. v11}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    iput-object v11, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_6
    .end packed-switch
.end method

.method private handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;I)V
    .locals 20
    .parameter "cmdParams"
    .parameter "msgId"

    .prologue
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v13, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    move-object v0, v13

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .local v13, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/StkService$2;->$SwitchMap$com$android$internal$telephony$gsm$stk$AppInterface$CommandType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    const-string v3, "Unsupported command"

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->getMenu()Lcom/android/internal/telephony/gsm/stk/Menu;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    move-object v0, v3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->mLoadIconSuccess:Z

    move v3, v0

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v3

    :goto_2
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    :cond_1
    :goto_3
    :pswitch_1
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    new-instance v16, Landroid/content/Intent;

    const-string v3, "android.intent.action.stk.command"

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v16, intent:Landroid/content/Intent;
    const-string v3, "STK CMD"

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .end local v16           #intent:Landroid/content/Intent;
    :cond_2
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    goto :goto_1

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v3

    goto :goto_2

    :pswitch_2
    invoke-virtual {v13}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geTextMessage()Lcom/android/internal/telephony/gsm/stk/TextMessage;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->mLoadIconSuccess:Z

    move v3, v0

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v3

    :goto_4
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_3

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v3

    goto :goto_4

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v3, v0

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v4}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    goto :goto_3

    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->mLoadIconSuccess:Z

    move v3, v0

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v3

    :goto_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_3

    :cond_5
    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    move-object v5, v3

    goto :goto_5

    :pswitch_5
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;

    move-object v12, v0

    .local v12, cmdLaunchBrowser:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v12, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v12, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;->mode:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->LAUNCH_IF_NOT_ALREADY_LAUNCHED:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/gsm/stk/LaunchBrowserMode;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v18

    .local v18, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    move-object v3, v0

    const-string v4, "activity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager;

    .local v9, am:Landroid/app/ActivityManager;
    const v3, 0x7fffffff

    const/4 v4, 0x0

    invoke-virtual {v9, v3, v4}, Landroid/app/ActivityManager;->getRecentTasks(II)Ljava/util/List;

    move-result-object v19

    .local v19, recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.browser"

    const-string v5, "com.android.browser.BrowserActivity"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x1

    move-object/from16 v0, v18

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v10

    .local v10, browerInfo:Landroid/content/pm/ResolveInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "browerInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v17

    .local v17, numTasks:I
    if-lez v17, :cond_1

    const/4 v3, 0x0

    move-object/from16 v0, v19

    move v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RecentTaskInfo;

    .local v15, info:Landroid/app/ActivityManager$RecentTaskInfo;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Top RecentTaskInfo.baseIntent= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", RecentTaskInfo.origActivity= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v16, Landroid/content/Intent;

    iget-object v3, v15, Landroid/app/ActivityManager$RecentTaskInfo;->baseIntent:Landroid/content/Intent;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .restart local v16       #intent:Landroid/content/Intent;
    iget-object v3, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_6

    iget-object v3, v15, Landroid/app/ActivityManager$RecentTaskInfo;->origActivity:Landroid/content/ComponentName;

    move-object/from16 v0, v16

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :cond_6
    if-eqz v10, :cond_1

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual/range {v16 .. v16}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " browser running"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x1

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_WITH_MISSING_INFO:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v7

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v9           #am:Landroid/app/ActivityManager;
    .end local v10           #browerInfo:Landroid/content/pm/ResolveInfo;
    .end local v12           #cmdLaunchBrowser:Lcom/android/internal/telephony/gsm/stk/LaunchBrowserParams;
    .end local v15           #info:Landroid/app/ActivityManager$RecentTaskInfo;
    .end local v16           #intent:Landroid/content/Intent;
    .end local v17           #numTasks:I
    .end local v18           #pm:Landroid/content/pm/PackageManager;
    .end local v19           #recentTasks:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    :pswitch_6
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/stk/StkService;->sms_send_cmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :pswitch_8
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/SetUpEventListParams;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/SetUpEventListParams;->eventList:Ljava/util/List;

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkService;->setupEventList(Ljava/util/List;)V

    const/4 v3, 0x2

    move/from16 v0, p2

    move v1, v3

    if-ne v0, v1, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :pswitch_9
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;

    move-object v11, v0

    .local v11, cmd:Lcom/android/internal/telephony/gsm/stk/BIPClientParams;
    iget-boolean v3, v11, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;->bHasAlphaId:Z

    if-eqz v3, :cond_1

    iget-object v3, v11, Lcom/android/internal/telephony/gsm/stk/BIPClientParams;->textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;

    iget-object v3, v3, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cmd "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with null alpha id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/gsm/stk/CommandParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    if-ne v3, v4, :cond_0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v11           #cmd:Lcom/android/internal/telephony/gsm/stk/BIPClientParams;
    :pswitch_a
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfo;

    move-object v14, v0

    .local v14, cmdPLI:Lcom/android/internal/telephony/gsm/stk/ProvideLocalInfo;
    iget-object v3, v14, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v3, v3, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    packed-switch v3, :pswitch_data_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PROVIDELOCALINFO commandQualifier="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v14, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget v4, v4, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;

    const/4 v3, 0x0

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/DTTZResponseData;-><init>(Ljava/util/Calendar;)V

    .local v8, resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    .end local v8           #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    :pswitch_c
    new-instance v8, Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/gsm/stk/LanguageResponseData;-><init>(Ljava/lang/String;)V

    .restart local v8       #resp:Lcom/android/internal/telephony/gsm/stk/ResponseData;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    move-object v4, v0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V
    .locals 7
    .parameter "rilMsg"

    .prologue
    const/4 v3, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rilMsg.mResCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    .local v6, cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    iget v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mId:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleSessionEnd()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-eq v0, v1, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .restart local v6       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v6, :cond_0

    const/4 v0, 0x3

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;I)V

    goto :goto_0

    :pswitch_3
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .restart local v6       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v6, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->OK:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-eq v0, v1, :cond_3

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    sget-object v1, Lcom/android/internal/telephony/gsm/stk/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    if-ne v0, v1, :cond_4

    :cond_3
    const/4 v0, 0x2

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;I)V

    goto :goto_0

    :cond_4
    iget-object v1, v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mResCode:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    const/4 v5, 0x0

    move-object v0, p0

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    goto :goto_0

    :pswitch_4
    iget-object v6, p1, Lcom/android/internal/telephony/gsm/stk/RilMessage;->mData:Ljava/lang/Object;

    .end local v6           #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    check-cast v6, Lcom/android/internal/telephony/gsm/stk/CommandParams;

    .restart local v6       #cmdParams:Lcom/android/internal/telephony/gsm/stk/CommandParams;
    if-eqz v6, :cond_0

    const/4 v0, 0x5

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleProactiveCommand(Lcom/android/internal/telephony/gsm/stk/CommandParams;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private handleSessionEnd()V
    .locals 2

    .prologue
    const-string v1, "SESSION END"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMenuCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.session_end"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private onConfigurationChanged()V
    .locals 13

    .prologue
    const-string v0, "receives config changed notification"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mAm:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v12

    .local v12, newLang:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "now the locale is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v7, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLang:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v11

    .local v11, len:I
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->LANGUAGE:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    .local v6, cTag:I
    const/4 v0, 0x2

    new-array v9, v0, [B

    const/4 v0, 0x0

    int-to-byte v1, v6

    aput-byte v1, v9, v0

    const/4 v0, 0x1

    int-to-byte v1, v11

    aput-byte v1, v9, v0

    .local v9, header:[B
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v9}, Ljava/lang/String;-><init>([B)V

    .local v10, lang:Ljava/lang/String;
    invoke-virtual {v10, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    sget-object v8, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    .local v8, e:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    invoke-virtual {v8}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/16 v2, 0x82

    const/16 v3, 0x81

    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    iput-object v12, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLang:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #cTag:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v8           #e:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    .end local v9           #header:[B
    .end local v10           #lang:Ljava/lang/String;
    .end local v11           #len:I
    .end local v12           #newLang:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private onScreenModeChange(Z)V
    .locals 8
    .parameter "mode"

    .prologue
    const/4 v2, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_idleScreen:Z

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    .local v6, e:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLock:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    aget-boolean v0, v0, v1

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_idleScreen:Z

    if-ne v0, v2, :cond_0

    const-string v0, "Receives idle screen available, sent to sim"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x2

    const/16 v3, 0x81

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->eventDownload(III[BZ)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->value()I

    move-result v1

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    :cond_0
    monitor-exit v7

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private removeIdleTextNotification()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    new-instance v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;-><init>()V

    .local v0, cmdDetail:Lcom/android/internal/telephony/gsm/stk/CommandDetails;
    iput-boolean v6, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    iput v6, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->value()I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/TextMessage;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>()V

    .local v5, textMsg:Lcom/android/internal/telephony/gsm/stk/TextMessage;
    new-instance v2, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;

    invoke-direct {v2, v0, v5}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/TextMessage;)V

    .local v2, cmdParams:Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;
    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/stk/DisplayTextParams;->getCommandType()Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v3

    .local v3, commandType:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;
    if-eqz v3, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in removeIdleTextNotification"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;-><init>(Lcom/android/internal/telephony/gsm/stk/CommandParams;)V

    .local v1, cmdMsg:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.stk.command"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, intent:Landroid/content/Intent;
    const-string v6, "STK CMD"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private removeMenu(Lcom/android/internal/telephony/gsm/stk/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/stk/Menu;->items:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-nez v1, :cond_0

    move v1, v3

    :goto_0
    return v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v1, "Unable to get Menu\'s items size"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move v1, v3

    goto :goto_0

    .end local v0           #e:Ljava/lang/NullPointerException;
    :cond_0
    move v1, v4

    goto :goto_0
.end method

.method private resetBroadcastReceiver()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v2, "reset Broadcast Receiver"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHasRegisted:Z

    if-ne v2, v6, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHasRegisted:Z

    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .local v1, newFilter:Landroid/content/IntentFilter;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/16 v2, 0x64

    if-ge v0, v2, :cond_3

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v6, :cond_2

    const-string v2, "android.intent.action.stk.user_activity"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "Add user activity receiver"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    aget-boolean v2, v2, v0

    if-ne v2, v6, :cond_1

    const-string v2, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "Add Language Selection receiver"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Landroid/content/IntentFilter;->countActions()I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHasRegisted:Z

    :cond_4
    return-void
.end method

.method private sendMenuSelection(IZ)V
    .locals 9
    .parameter "menuId"
    .parameter "helpRequired"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    const/16 v4, 0xd3

    .local v4, tag:I
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v5, 0x81

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    or-int/lit16 v4, v5, 0x80

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p2, :cond_0

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->HELP_REQUEST:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    .local v3, rawData:[B
    array-length v5, v3

    sub-int v2, v5, v8

    .local v2, len:I
    int-to-byte v5, v2

    aput-byte v5, v3, v6

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, hexString:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v6, 0x0

    invoke-interface {v5, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method private sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V
    .locals 9
    .parameter "cmdDet"
    .parameter "resultCode"
    .parameter "includeAdditionalInfo"
    .parameter "additionalInfo"
    .parameter "resp"

    .prologue
    const/4 v8, 0x2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, buf:Ljava/io/ByteArrayOutputStream;
    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->COMMAND_DETAILS:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    .local v5, tag:I
    iget-boolean v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compRequired:Z

    if-eqz v6, :cond_1

    or-int/lit16 v5, v5, 0x80

    :cond_1
    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandNumber:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->commandQualifier:I

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DEVICE_IDENTITIES:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x82

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 v6, 0x81

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->RESULT:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v6

    or-int/lit16 v5, v6, 0x80

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_5

    move v3, v8

    .local v3, length:I
    :goto_1
    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p2}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p3, :cond_2

    invoke-virtual {v0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual {p5, v0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;->format(Ljava/io/ByteArrayOutputStream;)V

    :cond_3
    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v6

    if-eqz v6, :cond_4

    iget v6, p1, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->typeOfCommand:I

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/gsm/stk/AppInterface$CommandType;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/gsm/stk/ResultCode;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->geInput()Lcom/android/internal/telephony/gsm/stk/Input;

    move-result-object v2

    .local v2, input:Lcom/android/internal/telephony/gsm/stk/Input;
    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->DURATION:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    iget-object v6, v6, Lcom/android/internal/telephony/gsm/stk/Duration;->timeUnit:Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/stk/Duration$TimeUnit;->value()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v6, v2, Lcom/android/internal/telephony/gsm/stk/Input;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    iget v6, v6, Lcom/android/internal/telephony/gsm/stk/Duration;->timeInterval:I

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v0, v6}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local v2           #input:Lcom/android/internal/telephony/gsm/stk/Input;
    :cond_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    .local v4, rawData:[B
    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    .local v1, hexString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TERMINAL RESPONSE: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v7, 0x0

    invoke-interface {v6, v1, v7}, Lcom/android/internal/telephony/CommandsInterface;->sendTerminalResponse(Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0

    .end local v1           #hexString:Ljava/lang/String;
    .end local v3           #length:I
    .end local v4           #rawData:[B
    :cond_5
    const/4 v6, 0x1

    move v3, v6

    goto/16 :goto_1
.end method

.method private setupEventList(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, eList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v7, 0x1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .local v0, event:I
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    aget-boolean v3, v3, v0

    if-eq v3, v7, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->m_eventList:[Z

    const/4 v5, 0x1

    aput-boolean v5, v3, v0

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->IDLE_SCREEN_AVAIL:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    if-ne v3, v5, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .local v2, msg:Landroid/os/Message;
    const/4 v3, 0x1

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v3, "Set Idle Screen Avail Event"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #event:I
    .end local v2           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v0       #event:I
    :cond_1
    :try_start_1
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->LANGUAGE_SELECTION:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    if-ne v3, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    .restart local v2       #msg:Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    const-wide/16 v5, 0xc8

    invoke-virtual {v3, v2, v5, v6}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .end local v2           #msg:Landroid/os/Message;
    :cond_2
    invoke-static {v0}, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->fromInt(I)Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    move-result-object v3

    sget-object v5, Lcom/android/internal/telephony/gsm/stk/SetUpEvent;->USER_ACTIVITY:Lcom/android/internal/telephony/gsm/stk/SetUpEvent;

    if-ne v3, v5, :cond_0

    const-string v3, "gsm.stk.event.useractivity"

    const-string v5, "1"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "Set system property for useractivity"

    invoke-static {p0, v3}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v0           #event:I
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->resetBroadcastReceiver()V

    return-void
.end method

.method private validateResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)Z
    .locals 2
    .parameter "resMsg"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCurrntCmd:Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/stk/StkCmdMessage;->mCmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/stk/CommandDetails;->compareTo(Lcom/android/internal/telephony/gsm/stk/CommandDetails;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/stk/StkService;->mSimRecords:Lcom/android/internal/telephony/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkSessionEnd(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkProactiveCmd(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkEvent(Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnStkCallSetUp(Landroid/os/Handler;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method protected finalize()V
    .locals 1

    .prologue
    const-string v0, "Service finalized"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .parameter "msg"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/AssertionError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized STK command: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v4

    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim refresh msg.arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eq v4, v7, :cond_0

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/StkService;->removeIdleTextNotification()V

    :cond_1
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v6, :cond_2

    new-instance v1, Landroid/content/ComponentName;

    const-string v4, "com.android.stk"

    const-string v5, "com.android.stk.StkLauncherActivity"

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, cName:Landroid/content/ComponentName;
    :try_start_0
    const-string v4, "sim refresh: disable STK app"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-virtual {v4, v1, v5, v6}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cName:Landroid/content/ComponentName;
    :cond_2
    :goto_0
    :pswitch_2
    return-void

    .restart local v1       #cName:Landroid/content/ComponentName;
    :catch_0
    move-exception v4

    move-object v3, v4

    .local v3, e:Ljava/lang/Exception;
    const-string v4, "Could not change STK app state"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .end local v1           #cName:Landroid/content/ComponentName;
    .end local v3           #e:Ljava/lang/Exception;
    :pswitch_3
    const-string v4, "ril message arrived"

    invoke-static {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .local v2, data:Ljava/lang/String;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    if-eqz v0, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    :try_start_1
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v2           #data:Ljava/lang/String;
    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v0           #ar:Landroid/os/AsyncResult;
    .restart local v2       #data:Ljava/lang/String;
    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v2}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    .end local v2           #data:Ljava/lang/String;
    .restart local v0       #ar:Landroid/os/AsyncResult;
    :catch_1
    move-exception v4

    move-object v3, v4

    .local v3, e:Ljava/lang/ClassCastException;
    goto :goto_0

    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #e:Ljava/lang/ClassCastException;
    :pswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mMsgDecoder:Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;

    new-instance v5, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    iget v6, p1, Landroid/os/Message;->what:I

    invoke-direct {v5, v6, v8}, Lcom/android/internal/telephony/gsm/stk/RilMessage;-><init>(ILjava/lang/String;)V

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/gsm/stk/RilMessageDecoder;->sendStartDecodingMessageParams(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    :pswitch_5
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/stk/RilMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleRilMsg(Lcom/android/internal/telephony/gsm/stk/RilMessage;)V

    goto :goto_0

    :pswitch_6
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/stk/StkService;->handleCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V

    goto :goto_0

    :pswitch_7
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v8}, Lcom/android/internal/telephony/CommandsInterface;->reportStkServiceIsRunning(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized onCmdResponse(Lcom/android/internal/telephony/gsm/stk/StkResponseMessage;)V
    .locals 2
    .parameter "resMsg"

    .prologue
    monitor-enter p0

    if-nez p1, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    const/4 v1, 0x6

    :try_start_0
    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/gsm/stk/StkService;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V
    .locals 6
    .parameter "resultCode"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->sms_send_cmd:Lcom/android/internal/telephony/gsm/stk/CommandParams;

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/stk/CommandParams;->cmdDet:Lcom/android/internal/telephony/gsm/stk/CommandDetails;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v4, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/stk/StkService;->sendTerminalResponse(Lcom/android/internal/telephony/gsm/stk/CommandDetails;Lcom/android/internal/telephony/gsm/stk/ResultCode;ZILcom/android/internal/telephony/gsm/stk/ResponseData;)V

    return-void
.end method

.method public setIdleScreenMode(Z)V
    .locals 3
    .parameter "mode"

    .prologue
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle screen mode turn to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/gsm/stk/StkLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/stk/StkService;->mHandler:Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/gsm/stk/StkService$StkServiceHandler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
