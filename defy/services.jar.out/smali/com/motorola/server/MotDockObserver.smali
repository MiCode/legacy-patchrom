.class public Lcom/motorola/server/MotDockObserver;
.super Landroid/os/UEventObserver;
.source "MotDockObserver.java"


# static fields
.field private static final LOG:Z = false

.field private static final MOT_DOCK_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/extdock/state"

.field private static final MOT_DOCK_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/extdock"

.field private static final MSG_DOCK_STATE:I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDockState:I

.field private final mHandler:Landroid/os/Handler;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreviousDockState:I

.field private mSystemReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/motorola/server/MotDockObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    iput v0, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    iput v0, p0, Lcom/motorola/server/MotDockObserver;->mPreviousDockState:I

    new-instance v0, Lcom/motorola/server/MotDockObserver$1;

    invoke-direct {v0, p0}, Lcom/motorola/server/MotDockObserver$1;-><init>(Lcom/motorola/server/MotDockObserver;)V

    iput-object v0, p0, Lcom/motorola/server/MotDockObserver;->mHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/motorola/server/MotDockObserver;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/server/MotDockObserver;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-direct {p0}, Lcom/motorola/server/MotDockObserver;->init()V

    const-string v0, "DEVPATH=/devices/virtual/switch/extdock"

    invoke-virtual {p0, v0}, Lcom/motorola/server/MotDockObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/server/MotDockObserver;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    return v0
.end method

.method static synthetic access$200(Lcom/motorola/server/MotDockObserver;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/server/MotDockObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private final init()V
    .locals 7

    .prologue
    const/16 v5, 0x400

    new-array v0, v5, [C

    .local v0, buffer:[C
    const/4 v2, 0x0

    .local v2, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v5, "/sys/class/switch/extdock/state"

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2           #file:Ljava/io/FileReader;
    .local v3, file:Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0x400

    :try_start_1
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .local v4, len:I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    iput v5, p0, Lcom/motorola/server/MotDockObserver;->mPreviousDockState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5

    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :cond_0
    :goto_0
    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .end local v4           #len:I
    .restart local v2       #file:Ljava/io/FileReader;
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    const-string v6, "This kernel does not have dock station support"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v5

    goto :goto_1

    :catch_2
    move-exception v5

    move-object v1, v5

    .local v1, e:Ljava/lang/Exception;
    :goto_3
    :try_start_5
    sget-object v5, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    const-string v6, ""

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v2, :cond_1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    :goto_4
    if-eqz v2, :cond_2

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    :cond_2
    :goto_5
    throw v5

    :catch_3
    move-exception v6

    goto :goto_5

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    .restart local v4       #len:I
    :catch_4
    move-exception v5

    goto :goto_0

    .end local v4           #len:I
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_4

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_5
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_3

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_6
    move-exception v5

    move-object v1, v5

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_2
.end method

.method private final update()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/motorola/server/MotDockObserver;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v6, 0x1

    sget-object v3, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dock UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    const-string v3, "SWITCH_STATE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .local v2, newState:I
    iget v3, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    if-eq v2, v3, :cond_3

    iget v3, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    iput v3, p0, Lcom/motorola/server/MotDockObserver;->mPreviousDockState:I

    iput v2, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    iget-boolean v3, p0, Lcom/motorola/server/MotDockObserver;->mSystemReady:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/motorola/server/MotDockObserver;->mPreviousDockState:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/motorola/server/MotDockObserver;->mPreviousDockState:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/motorola/server/MotDockObserver;->mPreviousDockState:I

    if-ne v3, v6, :cond_1

    iget v3, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/motorola/server/MotDockObserver;->mPowerManagerService:Landroid/os/IPowerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_2

    :try_start_1
    iget-object v3, p0, Lcom/motorola/server/MotDockObserver;->mPowerManagerService:Landroid/os/IPowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-interface {v3, v4, v5, v6, v7}, Landroid/os/IPowerManager;->userActivityWithForce(JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_0
    :try_start_2
    invoke-direct {p0}, Lcom/motorola/server/MotDockObserver;->update()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    .end local v2           #newState:I
    :cond_3
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void

    .restart local v2       #newState:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, ex:Landroid/os/RemoteException;
    :try_start_4
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .end local v1           #ex:Landroid/os/RemoteException;
    .end local v2           #newState:I
    :catch_1
    move-exception v3

    move-object v0, v3

    .local v0, e:Ljava/lang/NumberFormatException;
    :try_start_5
    sget-object v3, Lcom/motorola/server/MotDockObserver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not parse switch state from event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v3
.end method

.method public systemReady()V
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/motorola/server/MotDockObserver;->mDockState:I

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/motorola/server/MotDockObserver;->update()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/motorola/server/MotDockObserver;->mSystemReady:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
