.class public Lcom/motorola/server/MotDockAudioObserver;
.super Landroid/os/UEventObserver;
.source "MotDockAudioObserver.java"


# static fields
.field private static final BIT_SIMPLE_DOCK_ANALOG:I = 0x2

.field private static final BIT_SMART_DOCK_SPIDF:I = 0x4

.field private static final BIT_UNUSED:I = 0x1

.field private static final LOG:Z = true

.field private static final MOT_DOCK_AUDIO_NAME_PATH:Ljava/lang/String; = "/sys/class/switch/emuconn/name"

.field private static final MOT_DOCK_AUDIO_STATE_PATH:Ljava/lang/String; = "/sys/class/switch/emuconn/state"

.field private static final MOT_DOCK_AUDIO_UEVENT_MATCH:Ljava/lang/String; = "DEVPATH=/devices/virtual/switch/emuconn"

.field private static final SUPPORTED_DOCKS:I = 0x6

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMotDockAudioName:Ljava/lang/String;

.field private mMotDockAudioState:I

.field private mPrevMotDockAudioState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Lcom/motorola/server/MotDockAudioObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    iput v0, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    iput v0, p0, Lcom/motorola/server/MotDockAudioObserver;->mPrevMotDockAudioState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioName:Ljava/lang/String;

    iput-object p1, p0, Lcom/motorola/server/MotDockAudioObserver;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/motorola/server/MotDockAudioObserver;->init()V

    const-string v0, "DEVPATH=/devices/virtual/switch/emuconn"

    invoke-virtual {p0, v0}, Lcom/motorola/server/MotDockAudioObserver;->startObserving(Ljava/lang/String;)V

    return-void
.end method

.method private final init()V
    .locals 9

    .prologue
    const/16 v7, 0x400

    new-array v0, v7, [C

    .local v0, buffer:[C
    const/4 v5, 0x0

    .local v5, newName:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, newState:I
    const/4 v2, 0x0

    .local v2, file:Ljava/io/FileReader;
    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/emuconn/state"

    invoke-direct {v3, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .end local v2           #file:Ljava/io/FileReader;
    .local v3, file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_1
    invoke-virtual {v3, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .local v4, len:I
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    new-instance v2, Ljava/io/FileReader;

    const-string v7, "/sys/class/switch/emuconn/name"

    invoke-direct {v2, v7}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    const/4 v7, 0x0

    const/16 v8, 0x400

    :try_start_2
    invoke-virtual {v2, v0, v7, v8}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    new-instance v7, Ljava/lang/String;

    const/4 v8, 0x0

    invoke-direct {v7, v0, v8, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v5

    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v4           #len:I
    :cond_0
    :goto_0
    invoke-direct {p0, v5, v6}, Lcom/motorola/server/MotDockAudioObserver;->update(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    sget-object v7, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    const-string v8, "This kernel does not have Mot Dock Audio support"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_0

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v7

    goto :goto_0

    :catch_2
    move-exception v7

    move-object v1, v7

    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_6
    sget-object v7, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    const-string v8, ""

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_0

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_0

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    if-eqz v2, :cond_1

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :cond_1
    :goto_4
    throw v7

    :catch_3
    move-exception v8

    goto :goto_4

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_3

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_4
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_2

    .end local v2           #file:Ljava/io/FileReader;
    .restart local v3       #file:Ljava/io/FileReader;
    :catch_5
    move-exception v7

    move-object v1, v7

    move-object v2, v3

    .end local v3           #file:Ljava/io/FileReader;
    .restart local v2       #file:Ljava/io/FileReader;
    goto :goto_1
.end method

.method private final sendIntent(IIILjava/lang/String;)V
    .locals 5
    .parameter "dock"
    .parameter "dockState"
    .parameter "prevDockState"
    .parameter "dockName"

    .prologue
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.MOT_BASIC_DOCK_AUDIO_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .local v1, state:I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "name"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intents.ACTION_MOT_BASIC_DOCK_AUDIO_PLUG: state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #state:I
    :cond_1
    return-void
.end method

.method private final sendSPDIFIntent(III)V
    .locals 5
    .parameter "dock"
    .parameter "dockState"
    .parameter "prevDockState"

    .prologue
    and-int v2, p2, p1

    and-int v3, p3, p1

    if-eq v2, v3, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.motorola.internal.intent.action.MOT_SMART_DOCK_SPDIF_PLUG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x4000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/4 v1, 0x0

    .local v1, state:I
    and-int v2, p2, p1

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v2, "state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Intents.ACTION_MOT_SMART_DOCK_SPDIF_PLUG: state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #state:I
    :cond_1
    return-void
.end method

.method private final declared-synchronized update(Ljava/lang/String;I)V
    .locals 7
    .parameter "newName"
    .parameter "newState"

    .prologue
    monitor-enter p0

    and-int/lit8 v2, p2, 0x6

    .local v2, dockState:I
    :try_start_0
    iget v4, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    or-int v3, v2, v4

    .local v3, newOrOld:I
    sget-object v4, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received new dock indication -- name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "state: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    if-eq v4, v2, :cond_0

    const/4 v4, 0x1

    sub-int v4, v3, v4

    and-int/2addr v4, v3

    if-eqz v4, :cond_1

    :cond_0
    sget-object v4, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    const-string v5, "Discarding indication"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioName:Ljava/lang/String;

    iget v4, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    iput v4, p0, Lcom/motorola/server/MotDockAudioObserver;->mPrevMotDockAudioState:I

    iput v2, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    const/4 v0, 0x2

    .local v0, analogDocks:I
    const/4 v1, 0x1

    .local v1, curDock:I
    :goto_1
    if-eqz v0, :cond_3

    and-int v4, v1, v0

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    iget v5, p0, Lcom/motorola/server/MotDockAudioObserver;->mPrevMotDockAudioState:I

    iget-object v6, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioName:Ljava/lang/String;

    invoke-direct {p0, v1, v4, v5, v6}, Lcom/motorola/server/MotDockAudioObserver;->sendIntent(IIILjava/lang/String;)V

    xor-int/lit8 v4, v1, -0x1

    and-int/2addr v0, v4

    :cond_2
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    iget v5, p0, Lcom/motorola/server/MotDockAudioObserver;->mMotDockAudioState:I

    iget v6, p0, Lcom/motorola/server/MotDockAudioObserver;->mPrevMotDockAudioState:I

    invoke-direct {p0, v4, v5, v6}, Lcom/motorola/server/MotDockAudioObserver;->sendSPDIFIntent(III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v0           #analogDocks:I
    .end local v1           #curDock:I
    .end local v3           #newOrOld:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4
    .parameter "event"

    .prologue
    sget-object v1, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MotDockAudioObserver UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v1, "SWITCH_NAME"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SWITCH_STATE"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/motorola/server/MotDockAudioObserver;->update(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/motorola/server/MotDockAudioObserver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse switch state from event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
