.class Landroid/content/SyncManager$SyncTimeTracker;
.super Ljava/lang/Object;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncTimeTracker"
.end annotation


# instance fields
.field mLastWasSyncing:Z

.field private mTimeSpentSyncing:J

.field mWhenSyncStarted:J

.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method private constructor <init>(Landroid/content/SyncManager;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncManager$SyncTimeTracker;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/SyncManager;Landroid/content/SyncManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/SyncManager$SyncTimeTracker;-><init>(Landroid/content/SyncManager;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized timeSpentSyncing()J
    .locals 6

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, now:J
    iget-wide v2, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v4, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    goto :goto_0

    .end local v0           #now:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized update()V
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mActiveSyncContext:Landroid/content/SyncManager$ActiveSyncContext;
    invoke-static {v3}, Landroid/content/SyncManager;->access$1200(Landroid/content/SyncManager;)Landroid/content/SyncManager$ActiveSyncContext;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    .local v0, isSyncInProgress:Z
    :goto_0
    iget-boolean v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, v3, :cond_1

    :goto_1
    monitor-exit p0

    return-void

    .end local v0           #isSyncInProgress:Z
    :cond_0
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .restart local v0       #isSyncInProgress:Z
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .local v1, now:J
    if-eqz v0, :cond_2

    iput-wide v1, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    :goto_2
    iput-boolean v0, p0, Landroid/content/SyncManager$SyncTimeTracker;->mLastWasSyncing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #isSyncInProgress:Z
    .end local v1           #now:J
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v0       #isSyncInProgress:Z
    .restart local v1       #now:J
    :cond_2
    :try_start_2
    iget-wide v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J

    iget-wide v5, p0, Landroid/content/SyncManager$SyncTimeTracker;->mWhenSyncStarted:J

    sub-long v5, v1, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Landroid/content/SyncManager$SyncTimeTracker;->mTimeSpentSyncing:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method
