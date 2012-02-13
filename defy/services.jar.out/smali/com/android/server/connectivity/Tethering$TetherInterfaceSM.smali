.class Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
.super Lcom/android/internal/util/HierarchicalStateMachine;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetherInterfaceSM"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;,
        Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;
    }
.end annotation


# static fields
.field static final CMD_CELL_DUN_ERROR:I = 0x6

.field static final CMD_INTERFACE_DOWN:I = 0x4

.field static final CMD_INTERFACE_UP:I = 0x5

.field static final CMD_IP_FORWARDING_DISABLE_ERROR:I = 0x8

.field static final CMD_IP_FORWARDING_ENABLE_ERROR:I = 0x7

.field static final CMD_SET_DNS_FORWARDERS_ERROR:I = 0xb

.field static final CMD_START_TETHERING_ERROR:I = 0x9

.field static final CMD_STOP_TETHERING_ERROR:I = 0xa

.field static final CMD_TETHER_CONNECTION_CHANGED:I = 0xc

.field static final CMD_TETHER_MODE_DEAD:I = 0x1

.field static final CMD_TETHER_REQUESTED:I = 0x2

.field static final CMD_TETHER_UNREQUESTED:I = 0x3


# instance fields
.field private mAvailable:Z

.field private mDefaultState:Lcom/android/internal/util/HierarchicalState;

.field mIfaceName:Ljava/lang/String;

.field private mInitialState:Lcom/android/internal/util/HierarchicalState;

.field mLastError:I

.field mMyUpstreamIfaceName:Ljava/lang/String;

.field private mStartingState:Lcom/android/internal/util/HierarchicalState;

.field private mTethered:Z

.field private mTetheredState:Lcom/android/internal/util/HierarchicalState;

.field private mUnavailableState:Lcom/android/internal/util/HierarchicalState;

.field mUsb:Z

.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Z)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "looper"
    .parameter "usb"

    .prologue
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/HierarchicalStateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$InitialState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$StartingState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$TetheredState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM$UnavailableState;-><init>(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/HierarchicalState;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->addState(Lcom/android/internal/util/HierarchicalState;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setInitialState(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setTethered(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setAvailable(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;)Lcom/android/internal/util/HierarchicalState;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/HierarchicalState;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;Lcom/android/internal/util/HierarchicalState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method private declared-synchronized setAvailable(Z)V
    .locals 1
    .parameter "available"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setLastError(I)V
    .locals 2
    .parameter "error"

    .prologue
    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isErrored()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUsb:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->this$0:Lcom/android/server/connectivity/Tethering;

    const/4 v1, 0x0

    #calls: Lcom/android/server/connectivity/Tethering;->configureUsbIface(Z)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$1700(Lcom/android/server/connectivity/Tethering;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized setTethered(Z)V
    .locals 1
    .parameter "tethered"

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized getLastError()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAvailable()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isErrored()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isTethered()Z
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method setLastErrorAndTransitionToInitialState(I)V
    .locals 1
    .parameter "error"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->setLastError(I)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->transitionTo(Lcom/android/internal/util/HierarchicalState;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .local v1, res:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mIfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->getCurrentState()Lcom/android/internal/util/HierarchicalState;

    move-result-object v0

    .local v0, current:Lcom/android/internal/util/HierarchicalState;
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mInitialState:Lcom/android/internal/util/HierarchicalState;

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "InitialState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mStartingState:Lcom/android/internal/util/HierarchicalState;

    if-ne v0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "StartingState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTetheredState:Lcom/android/internal/util/HierarchicalState;

    if-ne v0, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "TetheredState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mUnavailableState:Lcom/android/internal/util/HierarchicalState;

    if-ne v0, v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "UnavailableState"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mAvailable:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Available"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    iget-boolean v2, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mTethered:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Tethered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - lastError ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->mLastError:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
