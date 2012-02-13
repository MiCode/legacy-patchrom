.class public Lcom/motorola/android/internal/telephony/gsm/CFUHandler;
.super Landroid/os/Handler;
.source "CFUHandler.java"


# static fields
.field private static final CHECK_CFU_POWERON:Ljava/lang/String; = "check_cfu_poweron"

.field private static final EVENT_GET_CFU:I = 0x64


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCheckCFUDone:Z

.field private mListener:Landroid/telephony/PhoneStateListener;

.field private mNeed2CheckCFU:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryCFUInProcess:Z

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;)V
    .locals 4
    .parameter "phone"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-string v0, "GSM"

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    iput-boolean v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    new-instance v0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;

    invoke-direct {v0, p0}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler$1;-><init>(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;)V

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "check_cfu_poweron"

    invoke-static {v0, v1, v2}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->checkCFU(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$102(Lcom/motorola/android/internal/telephony/gsm/CFUHandler;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    return-object p1
.end method

.method private checkCFU(Landroid/telephony/ServiceState;)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mNeed2CheckCFU:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mServiceState:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v0, "GSM"

    const-string v1, "CFUHandler: start query CFU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    const/16 v2, 0x64

    invoke-virtual {p0, v2}, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x64

    if-ne v1, v2, :cond_0

    iput-boolean v3, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mQueryCFUInProcess:Z

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    const-string v1, "GSM"

    const-string v2, "CFUHandler: query CFU done"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mCheckCFUDone:Z

    iget-object v1, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/motorola/android/internal/telephony/gsm/CFUHandler;->mListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .end local v0           #ar:Landroid/os/AsyncResult;
    :cond_0
    return-void
.end method
