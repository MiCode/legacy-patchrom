.class public abstract Landroid/content/AbstractThreadedSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AbstractThreadedSyncAdapter$1;,
        Landroid/content/AbstractThreadedSyncAdapter$SyncThread;,
        Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    }
.end annotation


# static fields
.field public static final LOG_SYNC_DETAILS:I = 0xab7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private final mAutoInitialize:Z

.field private final mContext:Landroid/content/Context;

.field private final mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

.field private final mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

.field private final mSyncThreadLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "autoInitialize"

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    invoke-direct {v0, p0, v2}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iput-boolean p2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    return-void
.end method

.method static synthetic access$100(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    return-object v0
.end method

.method static synthetic access$202(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    return-object p1
.end method

.method static synthetic access$300(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    return v0
.end method

.method static synthetic access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getSyncAdapterBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onSyncCanceled()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    .local v0, syncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->interrupt()V

    :cond_0
    return-void

    .end local v0           #syncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
