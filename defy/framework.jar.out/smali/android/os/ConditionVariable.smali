.class public Landroid/os/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private volatile mCondition:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .parameter "state"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    return-void
.end method


# virtual methods
.method public block()V
    .locals 1

    .prologue
    monitor-enter p0

    :goto_0
    :try_start_0
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public block(J)Z
    .locals 6
    .parameter "timeout"

    .prologue
    const-wide/16 v4, 0x0

    cmp-long v4, p1, v4

    if-eqz v4, :cond_1

    monitor-enter p0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .local v2, now:J
    add-long v0, v2, p1

    .local v0, end:J
    :goto_0
    iget-boolean v4, p0, Landroid/os/ConditionVariable;->mCondition:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    sub-long v4, v0, v2

    :try_start_1
    invoke-virtual {p0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    iget-boolean v4, p0, Landroid/os/ConditionVariable;->mCondition:Z

    monitor-exit p0

    .end local v0           #end:J
    .end local v2           #now:J
    :goto_2
    return v4

    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    :cond_1
    invoke-virtual {p0}, Landroid/os/ConditionVariable;->block()V

    const/4 v4, 0x1

    goto :goto_2

    .restart local v0       #end:J
    .restart local v2       #now:J
    :catch_0
    move-exception v4

    goto :goto_1
.end method

.method public close()V
    .locals 1

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public open()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/os/ConditionVariable;->mCondition:Z

    .local v0, old:Z
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ConditionVariable;->mCondition:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    :cond_0
    monitor-exit p0

    return-void

    .end local v0           #old:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
