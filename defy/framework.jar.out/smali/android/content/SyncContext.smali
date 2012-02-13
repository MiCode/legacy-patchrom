.class public Landroid/content/SyncContext;
.super Ljava/lang/Object;
.source "SyncContext.java"


# static fields
.field private static final HEARTBEAT_SEND_INTERVAL_IN_MS:J = 0x3e8L


# instance fields
.field private mLastHeartbeatSendTime:J

.field private mSyncContext:Landroid/content/ISyncContext;


# direct methods
.method public constructor <init>(Landroid/content/ISyncContext;)V
    .locals 2
    .parameter "syncContextInterface"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    return-void
.end method

.method private updateHeartbeat()V
    .locals 6

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, now:J
    iget-wide v2, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iput-wide v0, p0, Landroid/content/SyncContext;->mLastHeartbeatSendTime:J

    iget-object v2, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v2}, Landroid/content/ISyncContext;->sendHeartbeat()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public getSyncContextBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v0}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method

.method public onFinished(Landroid/content/SyncResult;)V
    .locals 1
    .parameter "result"

    .prologue
    :try_start_0
    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncContext;->mSyncContext:Landroid/content/ISyncContext;

    invoke-interface {v0, p1}, Landroid/content/ISyncContext;->onFinished(Landroid/content/SyncResult;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public setStatusText(Ljava/lang/String;)V
    .locals 0
    .parameter "message"

    .prologue
    invoke-direct {p0}, Landroid/content/SyncContext;->updateHeartbeat()V

    return-void
.end method
