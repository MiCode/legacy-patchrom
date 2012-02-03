.class public abstract Landroid/os/UEventObserver;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/UEventObserver$UEventThread;,
        Landroid/os/UEventObserver$UEvent;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sThread:Landroid/os/UEventObserver$UEventThread;

.field private static sThreadStarted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Landroid/os/UEventObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/UEventObserver;->TAG:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    sput-boolean v0, Landroid/os/UEventObserver;->sThreadStarted:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 39
    invoke-static {}, Landroid/os/UEventObserver;->native_setup()V

    return-void
.end method

.method static synthetic access$100([B)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    invoke-static {p0}, Landroid/os/UEventObserver;->next_event([B)I

    move-result v0

    return v0
.end method

.method private static final declared-synchronized ensureThreadStarted()V
    .locals 2

    .prologue
    .line 145
    const-class v0, Landroid/os/UEventObserver;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Landroid/os/UEventObserver;->sThreadStarted:Z

    if-nez v1, :cond_0

    .line 146
    new-instance v1, Landroid/os/UEventObserver$UEventThread;

    invoke-direct {v1}, Landroid/os/UEventObserver$UEventThread;-><init>()V

    sput-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    .line 147
    sget-object v1, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v1}, Landroid/os/UEventObserver$UEventThread;->start()V

    .line 148
    const/4 v1, 0x1

    sput-boolean v1, Landroid/os/UEventObserver;->sThreadStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 150
    :cond_0
    monitor-exit v0

    return-void

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static native native_setup()V
.end method

.method private static native next_event([B)I
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 186
    :try_start_0
    invoke-virtual {p0}, Landroid/os/UEventObserver;->stopObserving()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 190
    return-void

    .line 188
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract onUEvent(Landroid/os/UEventObserver$UEvent;)V
.end method

.method public final declared-synchronized startObserving(Ljava/lang/String;)V
    .locals 1
    .parameter "match"

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/UEventObserver;->ensureThreadStarted()V

    .line 166
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v0, p1, p0}, Landroid/os/UEventObserver$UEventThread;->addObserver(Ljava/lang/String;Landroid/os/UEventObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    monitor-exit p0

    return-void

    .line 165
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized stopObserving()V
    .locals 1

    .prologue
    .line 175
    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/os/UEventObserver;->sThread:Landroid/os/UEventObserver$UEventThread;

    invoke-virtual {v0, p0}, Landroid/os/UEventObserver$UEventThread;->removeObserver(Landroid/os/UEventObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
