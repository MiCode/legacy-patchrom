.class public abstract Lcom/android/internal/telephony/DataConnection;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "DataConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/DataConnection$1;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;,
        Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;,
        Lcom/android/internal/telephony/DataConnection$DcActiveState;,
        Lcom/android/internal/telephony/DataConnection$DcActivatingState;,
        Lcom/android/internal/telephony/DataConnection$DcInactiveState;,
        Lcom/android/internal/telephony/DataConnection$DcDefaultState;,
        Lcom/android/internal/telephony/DataConnection$DisconnectResult;,
        Lcom/android/internal/telephony/DataConnection$FailResult;,
        Lcom/android/internal/telephony/DataConnection$FailCause;,
        Lcom/android/internal/telephony/DataConnection$DisconnectParams;,
        Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;,
        Lcom/android/internal/telephony/DataConnection$ConnectionParams;,
        Lcom/android/internal/telephony/DataConnection$SetupResult;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field protected static final EVENT_CONNECT:I = 0x2

.field protected static final EVENT_DEACTIVATE_DONE:I = 0x5

.field protected static final EVENT_DISCONNECT:I = 0x6

.field protected static final EVENT_GET_LAST_FAIL_DONE:I = 0x4

.field protected static final EVENT_LOG_BAD_DNS_ADDRESS:I = 0xc3b4

.field protected static final EVENT_RESET:I = 0x1

.field protected static final EVENT_SETUP_DATA_CONNECTION_DONE:I = 0x3

.field protected static final NULL_IP:Ljava/lang/String; = "0.0.0.0"

.field protected static mCount:I

.field protected static mCountLock:Ljava/lang/Object;


# instance fields
.field protected cid:I

.field protected createTime:J

.field protected dnsServers:[Ljava/lang/String;

.field protected gatewayAddress:Ljava/lang/String;

.field protected interfaceName:Ljava/lang/String;

.field protected ipAddress:Ljava/lang/String;

.field protected lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

.field protected lastFailTime:J

.field private mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

.field private mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

.field private mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

.field private mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

.field private mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

.field private mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

.field protected mTag:I

.field protected phone:Lcom/android/internal/telephony/PhoneBase;

.field userData:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/DataConnection;->mCountLock:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;)V
    .locals 2
    .parameter "phone"
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 360
    invoke-direct {p0, p2}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;)V

    .line 596
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDefaultState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    .line 675
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcInactiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    .line 766
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActivatingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    .line 822
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcActiveState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcActiveState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    .line 861
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    .line 901
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$1;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    .line 361
    const-string v0, "DataConnection constructor E"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 362
    iput-object p1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    .line 363
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 364
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 368
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setDbg(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;)V

    .line 370
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 371
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 372
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->mDefaultState:Lcom/android/internal/telephony/DataConnection$DcDefaultState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->addState(Lcom/android/internal/util/HierarchicalState;Lcom/android/internal/util/HierarchicalState;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    .line 376
    const-string v0, "DataConnection constructor X"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcInactiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActiveState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/internal/telephony/DataConnection;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->tearDownData(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/DataConnection;->notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/DataConnection;)Lcom/android/internal/telephony/DataConnection$DcActivatingState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/DataConnection;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/DataConnection;->deferMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/DataConnection;Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataConnection;->onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;

    move-result-object v0

    return-object v0
.end method

.method private notifyConnectCompleted(Lcom/android/internal/telephony/DataConnection$ConnectionParams;Lcom/android/internal/telephony/DataConnection$FailCause;)V
    .locals 6
    .parameter "cp"
    .parameter "cause"

    .prologue
    .line 403
    iget-object v0, p1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->onCompletedMsg:Landroid/os/Message;

    .line 404
    .local v0, connectionCompletedMsg:Landroid/os/Message;
    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 409
    .local v2, timeStamp:J
    iget v4, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 411
    sget-object v4, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    if-ne p2, v4, :cond_1

    .line 412
    iput-wide v2, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 415
    const/4 v4, 0x0

    invoke-static {v0, p0, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 432
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "notifyConnection at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cause="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 434
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 421
    :cond_1
    iput-object p2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 422
    iput-wide v2, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 425
    new-instance v1, Lcom/android/internal/telephony/DataConnection$FailResult;

    invoke-direct {v1, p0, p2, p0}, Lcom/android/internal/telephony/DataConnection$FailResult;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/DataConnection$FailCause;Ljava/lang/Object;)V

    .line 426
    .local v1, failureResult:Lcom/android/internal/telephony/DataConnection$FailResult;
    new-instance v4, Ljava/lang/Exception;

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1
.end method

.method private notifyDisconnectCompleted(Lcom/android/internal/telephony/DataConnection$DisconnectParams;)V
    .locals 7
    .parameter "dp"

    .prologue
    const/4 v6, 0x0

    .line 443
    const-string v2, "NotifyDisconnectCompleted"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 445
    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    if-eqz v2, :cond_0

    .line 446
    iget-object v1, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->onCompletedMsg:Landroid/os/Message;

    .line 447
    .local v1, msg:Landroid/os/Message;
    const-string/jumbo v3, "msg.what=%d msg.obj=%s"

    const/4 v2, 0x2

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v5, v1, Landroid/os/Message;->what:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    const/4 v5, 0x1

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :goto_0
    aput-object v2, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 451
    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->userObj:Ljava/lang/Object;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    if-eqz v2, :cond_3

    .line 452
    new-instance v0, Lcom/android/internal/telephony/DataConnection$DisconnectResult;

    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->userObj:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    check-cast v2, Lcom/android/internal/telephony/gsm/ApnSetting;

    invoke-direct {v0, p0, v2, p0}, Lcom/android/internal/telephony/DataConnection$DisconnectResult;-><init>(Lcom/android/internal/telephony/DataConnection;Lcom/android/internal/telephony/gsm/ApnSetting;Ljava/lang/Object;)V

    .line 453
    .local v0, disconnectResult:Lcom/android/internal/telephony/DataConnection$DisconnectResult;
    invoke-static {v1, v0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 462
    .end local v0           #disconnectResult:Lcom/android/internal/telephony/DataConnection$DisconnectResult;
    :goto_1
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 466
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->clearSettings()V

    .line 468
    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    if-eqz v2, :cond_1

    .line 469
    iget-object v2, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    monitor-enter v2

    .line 470
    :try_start_0
    iget-object v3, p1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;->lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    .line 471
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    :cond_1
    return-void

    .line 447
    .restart local v1       #msg:Landroid/os/Message;
    :cond_2
    const-string v2, "<no-reason>"

    goto :goto_0

    .line 456
    :cond_3
    invoke-static {v1, p0, v6}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_1

    .line 471
    .end local v1           #msg:Landroid/os/Message;
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method private onSetupConnectionCompleted(Landroid/os/AsyncResult;)Lcom/android/internal/telephony/DataConnection$SetupResult;
    .locals 10
    .parameter "ar"

    .prologue
    const/4 v7, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 501
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [Ljava/lang/String;

    move-object v0, v5

    check-cast v0, [Ljava/lang/String;

    move-object v3, v0

    .line 502
    .local v3, response:[Ljava/lang/String;
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    .line 504
    .local v1, cp:Lcom/android/internal/telephony/DataConnection$ConnectionParams;
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    .line 505
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataConnection Init failed "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 507
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v5, v5, Lcom/android/internal/telephony/CommandException;

    if-eqz v5, :cond_0

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    check-cast v5, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v5, v6, :cond_0

    .line 510
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadCommand:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .line 511
    .local v4, result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    sget-object v5, Lcom/android/internal/telephony/DataConnection$FailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v5, v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->mFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 553
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DataConnection setup result=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' on cid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 554
    return-object v4

    .line 513
    .end local v4           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_0
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v4       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_0

    .line 515
    .end local v4           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_1
    iget v5, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    iget v6, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    if-eq v5, v6, :cond_2

    .line 517
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BUG: onSetupConnectionCompleted is stale cp.tag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;->tag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mtag="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/DataConnection;->mTag:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 519
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Stale:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v4       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto :goto_0

    .line 525
    .end local v4           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_2
    array-length v5, v3

    if-lt v5, v7, :cond_5

    .line 526
    aget-object v5, v3, v8

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    .line 527
    aget-object v5, v3, v9

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    .line 528
    array-length v5, v3

    if-le v5, v7, :cond_4

    .line 529
    aget-object v5, v3, v7

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 530
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "net."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 531
    .local v2, prefix:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "gw"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    .line 532
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dns1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    .line 533
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "dns2"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v9

    .line 535
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "interface="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ipAddress="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " gateway="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DNS1="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v6, v6, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " DNS2="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    aget-object v6, v6, v9

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 540
    iget-object v5, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/DataConnection;->isDnsOk([Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 541
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v4       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 543
    .end local v4           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_3
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_BadDns:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v4       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 546
    .end local v2           #prefix:Ljava/lang/String;
    .end local v4           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_4
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->SUCCESS:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v4       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0

    .line 549
    .end local v4           #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    :cond_5
    sget-object v4, Lcom/android/internal/telephony/DataConnection$SetupResult;->ERR_Other:Lcom/android/internal/telephony/DataConnection$SetupResult;

    .restart local v4       #result:Lcom/android/internal/telephony/DataConnection$SetupResult;
    goto/16 :goto_0
.end method

.method private tearDownData(Ljava/lang/Object;)V
    .locals 4
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 386
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isOn()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    const-string/jumbo v1, "tearDownData radio is on, call deactivateDataCall"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 388
    iget-object v1, p0, Lcom/android/internal/telephony/DataConnection;->phone:Lcom/android/internal/telephony/PhoneBase;

    iget-object v1, v1, Lcom/android/internal/telephony/PhoneBase;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    iget v2, p0, Lcom/android/internal/telephony/DataConnection;->cid:I

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->deactivateDataCall(ILandroid/os/Message;)V

    .line 394
    :goto_0
    return-void

    .line 390
    :cond_0
    const-string/jumbo v1, "tearDownData radio is off sendMessage EVENT_DEACTIVATE_DONE immediately"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 391
    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, p1, v2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 392
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-virtual {p0, v3, v0}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    goto :goto_0
.end method


# virtual methods
.method protected clearSettings()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    .line 480
    const-string v0, "clearSettings"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    .line 482
    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    .line 483
    iput-wide v3, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    .line 484
    sget-object v0, Lcom/android/internal/telephony/DataConnection$FailCause;->NONE:Lcom/android/internal/telephony/DataConnection$FailCause;

    iput-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    .line 486
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    .line 487
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    .line 488
    iput-object v2, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    .line 489
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v2, v0, v1

    .line 490
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v2, v0, v1

    .line 491
    return-void
.end method

.method public connect(Landroid/os/Message;)V
    .locals 3
    .parameter "onCompletedMsg"

    .prologue
    .line 954
    const/4 v0, 0x2

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 955
    return-void
.end method

.method public connect(Landroid/os/Message;Lcom/android/internal/telephony/gsm/ApnSetting;)V
    .locals 2
    .parameter "onCompletedMsg"
    .parameter "apn"

    .prologue
    .line 943
    const/4 v0, 0x2

    new-instance v1, Lcom/android/internal/telephony/DataConnection$ConnectionParams;

    invoke-direct {v1, p2, p1}, Lcom/android/internal/telephony/DataConnection$ConnectionParams;-><init>(Lcom/android/internal/telephony/gsm/ApnSetting;Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 944
    return-void
.end method

.method public disconnect(Landroid/os/Message;)V
    .locals 2
    .parameter "onCompletedMsg"

    .prologue
    .line 964
    const/4 v0, 0x6

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 965
    return-void
.end method

.method public getConnectionTime()J
    .locals 2

    .prologue
    .line 1043
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->createTime:J

    return-wide v0
.end method

.method public getDnsServers()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1028
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->dnsServers:[Ljava/lang/String;

    return-object v0
.end method

.method protected abstract getFailCauseFromRequest(I)Lcom/android/internal/telephony/DataConnection$FailCause;
.end method

.method public getGatewayAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->gatewayAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getInterface()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->interfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1014
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->ipAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getLastFailCause()Lcom/android/internal/telephony/DataConnection$FailCause;
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailCause:Lcom/android/internal/telephony/DataConnection$FailCause;

    return-object v0
.end method

.method public getLastFailTime()J
    .locals 2

    .prologue
    .line 1050
    iget-wide v0, p0, Lcom/android/internal/telephony/DataConnection;->lastFailTime:J

    return-wide v0
.end method

.method public getStateAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1035
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/util/HierarchicalState;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1036
    .local v0, retVal:Ljava/lang/String;
    return-object v0
.end method

.method public isActivating()Z
    .locals 3

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mActivatingState:Lcom/android/internal/telephony/DataConnection$DcActivatingState;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingBadDnsState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingBadDnsState;

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 994
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 993
    .end local v0           #retVal:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    .line 987
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mActiveState:Lcom/android/internal/telephony/DataConnection$DcActiveState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 988
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 987
    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public isDisconnecting()Z
    .locals 3

    .prologue
    .line 998
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mDisconnectingState:Lcom/android/internal/telephony/DataConnection$DcDisconnectingState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 999
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 998
    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract isDnsOk([Ljava/lang/String;)Z
.end method

.method public isInactive()Z
    .locals 3

    .prologue
    .line 976
    invoke-virtual {p0}, Lcom/android/internal/telephony/DataConnection;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/DataConnection;->mInactiveState:Lcom/android/internal/telephony/DataConnection$DcInactiveState;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 977
    .local v0, retVal:Z
    :goto_0
    return v0

    .line 976
    .end local v0           #retVal:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract onConnect(Lcom/android/internal/telephony/DataConnection$ConnectionParams;)V
.end method

.method public reset(Landroid/os/Message;)V
    .locals 2
    .parameter "onCompletedMsg"

    .prologue
    .line 912
    const/4 v0, 0x1

    new-instance v1, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Landroid/os/Message;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V

    .line 913
    return-void
.end method

.method public resetSynchronously()V
    .locals 4

    .prologue
    .line 921
    new-instance v1, Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;-><init>(Lcom/android/internal/telephony/DataConnection;)V

    .line 922
    .local v1, lockObj:Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;
    monitor-enter v1

    .line 923
    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lcom/android/internal/telephony/DataConnection$DisconnectParams;

    invoke-direct {v3, v1}, Lcom/android/internal/telephony/DataConnection$DisconnectParams;-><init>(Lcom/android/internal/telephony/DataConnection$ResetSynchronouslyLock;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/DataConnection;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->sendMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 925
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 929
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 930
    return-void

    .line 926
    :catch_0
    move-exception v0

    .line 927
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "blockingReset: unexpected interrupted of wait()"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/DataConnection;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 929
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public abstract toString()Ljava/lang/String;
.end method
