.class Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherMasterSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$ErrorState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;,
        Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherMasterUtilState;
    }
.end annotation


# static fields
.field private static final CELL_CONNECTION_RENEW_MS:I = 0x9c40

.field static final CMD_CELL_CONNECTION_RENEW:I = 0x4

.field static final CMD_RETRY_UPSTREAM:I = 0x5

.field static final CMD_TETHER_MODE_REQUESTED:I = 0x1

.field static final CMD_TETHER_MODE_UNREQUESTED:I = 0x2

.field static final CMD_UPSTREAM_CHANGED:I = 0x3

.field private static final UPSTREAM_SETTLE_TIME_MS:I = 0x2710


# instance fields
.field private mConnectionRequested:Z

.field private mInitialState:Lcom/android/internal/util/HierarchicalState;

.field private mNotifyList:Ljava/util/ArrayList;

.field private mSequenceNumber:I

.field private mSetDnsForwardersErrorState:Lcom/android/internal/util/HierarchicalState;

.field private mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/HierarchicalState;

.field private mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/HierarchicalState;

.field private mStartTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

.field private mStopTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

.field private mTetherModeAliveState:Lcom/android/internal/util/HierarchicalState;

.field private mUpstreamIfaceName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "looper"

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$TetherModeAliveState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingEnabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetIpForwardingDisabledErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StartTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$StopTetheringErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SetDnsForwardersErrorState;-><init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z

    return v0
.end method

.method static synthetic access$4002(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mConnectionRequested:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingEnabledErrorState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStartTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetDnsForwardersErrorState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mStopTetheringErrorState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$5100(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSetIpForwardingDisabledErrorState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$5600(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5602(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mUpstreamIfaceName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5700(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mNotifyList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mTetherModeAliveState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/connectivity/Tethering$TetherMasterSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method
