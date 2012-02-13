.class public Lcom/android/internal/telephony/gsm/AtCmdDelegate;
.super Ljava/lang/Object;
.source "AtCmdDelegate.java"


# static fields
.field private static final DBG:Z = true

.field static final EVENT_NETWORK_STATE_CHANGED:I = 0x1

.field static final EVENT_UNSOL_OEM_RAW:I = 0x2

.field private static final LOG_TAG:Ljava/lang/String; = "AtCmdDelegate"

.field static mInstance:Lcom/android/internal/telephony/gsm/AtCmdDelegate;


# instance fields
.field mCM:Lcom/android/internal/telephony/CommandsInterface;

.field mNetworkStateHandler:Landroid/os/Handler;

.field mNwsRegistrants:Landroid/os/RegistrantList;

.field mOemUnsolRegistrants:Landroid/os/RegistrantList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mInstance:Lcom/android/internal/telephony/gsm/AtCmdDelegate;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mNwsRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mOemUnsolRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Lcom/android/internal/telephony/gsm/AtCmdDelegate$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/AtCmdDelegate$1;-><init>(Lcom/android/internal/telephony/gsm/AtCmdDelegate;)V

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mNetworkStateHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .local v0, defaultPhone:Lcom/android/internal/telephony/Phone;
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCommandsInterface()Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mNetworkStateHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mNetworkStateHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-interface {v1, v2, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->setOnUnsolOemHookRaw(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public static instance()Lcom/android/internal/telephony/gsm/AtCmdDelegate;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mInstance:Lcom/android/internal/telephony/gsm/AtCmdDelegate;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/AtCmdDelegate;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mInstance:Lcom/android/internal/telephony/gsm/AtCmdDelegate;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mInstance:Lcom/android/internal/telephony/gsm/AtCmdDelegate;

    return-object v0
.end method


# virtual methods
.method public getGPRSRegistrationState(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getGPRSRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method public getRegistrationState(Landroid/os/Message;)V
    .locals 1
    .parameter "result"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getRegistrationState(Landroid/os/Message;)V

    return-void
.end method

.method public registerForNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mNwsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForOemUnsol(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mOemUnsolRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public unregisterForNetworkStateChanged(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mNwsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForOemUnsol(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/AtCmdDelegate;->mOemUnsolRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
