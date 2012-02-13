.class public Landroid/content/SyncQueue;
.super Ljava/lang/Object;
.source "SyncQueue.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SyncManager"


# instance fields
.field private final mOperationsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/SyncOperation;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncStorageEngine:Landroid/content/SyncStorageEngine;


# direct methods
.method public constructor <init>(Landroid/content/SyncStorageEngine;)V
    .locals 11
    .parameter "syncStorageEngine"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/android/collect/Maps;->newHashMap()Ljava/util/HashMap;

    move-result-object v1

    iput-object v1, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iput-object p1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v1}, Landroid/content/SyncStorageEngine;->getPendingOperations()Ljava/util/ArrayList;

    move-result-object v10

    .local v10, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/SyncStorageEngine$PendingOperation;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, N:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/SyncStorageEngine$PendingOperation;

    .local v9, op:Landroid/content/SyncStorageEngine$PendingOperation;
    new-instance v0, Landroid/content/SyncOperation;

    iget-object v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->account:Landroid/accounts/Account;

    iget v2, v9, Landroid/content/SyncStorageEngine$PendingOperation;->syncSource:I

    iget-object v3, v9, Landroid/content/SyncStorageEngine$PendingOperation;->authority:Ljava/lang/String;

    iget-object v4, v9, Landroid/content/SyncStorageEngine$PendingOperation;->extras:Landroid/os/Bundle;

    const-wide/16 v5, 0x0

    invoke-direct/range {v0 .. v6}, Landroid/content/SyncOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;J)V

    .local v0, syncOperation:Landroid/content/SyncOperation;
    iget-boolean v1, v9, Landroid/content/SyncStorageEngine$PendingOperation;->expedited:Z

    iput-boolean v1, v0, Landroid/content/SyncOperation;->expedited:Z

    iput-object v9, v0, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-direct {p0, v0, v9}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v0           #syncOperation:Landroid/content/SyncOperation;
    .end local v9           #op:Landroid/content/SyncStorageEngine$PendingOperation;
    :cond_0
    return-void
.end method

.method private add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z
    .locals 12
    .parameter "operation"
    .parameter "pop"

    .prologue
    const/4 v11, 0x1

    iget-object v10, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    .local v10, operationKey:Ljava/lang/String;
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/SyncOperation;

    .local v7, existingOperation:Landroid/content/SyncOperation;
    if-eqz v7, :cond_2

    const/4 v6, 0x0

    .local v6, changed:Z
    iget-boolean v0, v7, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v1, p1, Landroid/content/SyncOperation;->expedited:Z

    if-ne v0, v1, :cond_1

    iget-wide v0, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    iget-wide v2, p1, Landroid/content/SyncOperation;->earliestRunTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .local v8, newRunTime:J
    iget-wide v0, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    cmp-long v0, v0, v8

    if-eqz v0, :cond_0

    iput-wide v8, v7, Landroid/content/SyncOperation;->earliestRunTime:J

    const/4 v6, 0x1

    .end local v8           #newRunTime:J
    :cond_0
    :goto_0
    move v0, v6

    .end local v6           #changed:Z
    :goto_1
    return v0

    .restart local v6       #changed:Z
    :cond_1
    iget-boolean v0, p1, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v0, :cond_0

    iput-boolean v11, v7, Landroid/content/SyncOperation;->expedited:Z

    const/4 v6, 0x1

    goto :goto_0

    .end local v6           #changed:Z
    :cond_2
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    iget-object v0, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    if-nez v0, :cond_4

    new-instance p2, Landroid/content/SyncStorageEngine$PendingOperation;

    .end local p2
    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget v2, p1, Landroid/content/SyncOperation;->syncSource:I

    iget-object v3, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    iget-boolean v5, p1, Landroid/content/SyncOperation;->expedited:Z

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Landroid/content/SyncStorageEngine$PendingOperation;-><init>(Landroid/accounts/Account;ILjava/lang/String;Landroid/os/Bundle;Z)V

    .restart local p2
    iget-object v0, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    invoke-virtual {v0, p2}, Landroid/content/SyncStorageEngine;->insertIntoPending(Landroid/content/SyncStorageEngine$PendingOperation;)Landroid/content/SyncStorageEngine$PendingOperation;

    move-result-object p2

    if-nez p2, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error adding pending sync operation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput-object p2, p1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    :cond_4
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v10, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v11

    goto :goto_1
.end method


# virtual methods
.method public add(Landroid/content/SyncOperation;)Z
    .locals 1
    .parameter "operation"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/content/SyncQueue;->add(Landroid/content/SyncOperation;Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/lang/StringBuilder;)V
    .locals 4
    .parameter "sb"

    .prologue
    const-string v2, "SyncQueue: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " operation(s)\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    .local v1, operation:Landroid/content/SyncOperation;
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .end local v1           #operation:Landroid/content/SyncOperation;
    :cond_0
    return-void
.end method

.method getIsInitial(Landroid/content/SyncOperation;)Z
    .locals 4
    .parameter "op"

    .prologue
    const/4 v3, 0x0

    iget-object v0, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v1, "initialize"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v1, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v2, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method getOpTime(Landroid/content/SyncOperation;)J
    .locals 9
    .parameter "op"

    .prologue
    iget-wide v3, p1, Landroid/content/SyncOperation;->earliestRunTime:J

    .local v3, opRunTime:J
    iget-object v5, p1, Landroid/content/SyncOperation;->extras:Landroid/os/Bundle;

    const-string v6, "ignore_backoff"

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v7, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/SyncStorageEngine;->getBackoff(Landroid/accounts/Account;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .local v0, backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v5, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v6, p1, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    iget-object v7, p1, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/SyncStorageEngine;->getDelayUntilTime(Landroid/accounts/Account;Ljava/lang/String;)J

    move-result-wide v1

    .local v1, delayUntil:J
    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    if-eqz v0, :cond_1

    iget-object p0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    :goto_0
    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    .end local v0           #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .end local v1           #delayUntil:J
    :cond_0
    return-wide v3

    .restart local v0       #backoff:Landroid/util/Pair;,"Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    .restart local v1       #delayUntil:J
    .restart local p0
    :cond_1
    const-wide/16 v7, 0x0

    goto :goto_0
.end method

.method isOpBetter(Landroid/content/SyncOperation;JZLandroid/content/SyncOperation;JZ)Z
    .locals 7
    .parameter "best"
    .parameter "bestRunTime"
    .parameter "bestIsInitial"
    .parameter "op"
    .parameter "opRunTime"
    .parameter "opIsInitial"

    .prologue
    const/4 v6, 0x2

    const-string v5, "SyncManager"

    const/4 v2, 0x0

    .local v2, setBest:Z
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nextOperation: Processing op: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_3

    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v3, "   First op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x1

    :cond_2
    :goto_0
    return v2

    :cond_3
    if-ne p4, p8, :cond_b

    iget-boolean v3, p1, Landroid/content/SyncOperation;->expedited:Z

    iget-boolean v4, p5, Landroid/content/SyncOperation;->expedited:Z

    if-ne v3, v4, :cond_5

    cmp-long v3, p6, p2

    if-gez v3, :cond_2

    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "SyncManager"

    const-string v3, "   Same expedite level - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .local v0, now:J
    iget-boolean v3, p5, Landroid/content/SyncOperation;->expedited:Z

    if-eqz v3, :cond_9

    cmp-long v3, p6, v0

    if-lez v3, :cond_6

    cmp-long v3, p2, v0

    if-lez v3, :cond_8

    :cond_6
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "SyncManager"

    const-string v3, "   New op is expedited and can run - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const/4 v2, 0x1

    goto :goto_0

    :cond_8
    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "SyncManager"

    const-string v3, "   New op is expedited but can\'t run and best can"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_9
    cmp-long v3, p2, v0

    if-lez v3, :cond_2

    cmp-long v3, p6, v0

    if-gtz v3, :cond_2

    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "SyncManager"

    const-string v3, "   New op is not expedited but can run - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 v2, 0x1

    goto :goto_0

    .end local v0           #now:J
    :cond_b
    if-eqz p8, :cond_2

    const-string v3, "SyncManager"

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "SyncManager"

    const-string v3, "   New op is init - new op selected"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public nextOperation()Landroid/util/Pair;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/SyncOperation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .local v1, best:Landroid/content/SyncOperation;
    const-wide/16 v2, 0x0

    .local v2, bestRunTime:J
    const/4 v4, 0x0

    .local v4, bestIsInitial:Z
    iget-object v0, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/SyncOperation;

    .local v5, op:Landroid/content/SyncOperation;
    invoke-virtual {p0, v5}, Landroid/content/SyncQueue;->getOpTime(Landroid/content/SyncOperation;)J

    move-result-wide v6

    .local v6, opRunTime:J
    invoke-virtual {p0, v5}, Landroid/content/SyncQueue;->getIsInitial(Landroid/content/SyncOperation;)Z

    move-result v8

    .local v8, opIsInitial:Z
    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroid/content/SyncQueue;->isOpBetter(Landroid/content/SyncOperation;JZLandroid/content/SyncOperation;JZ)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v1, v5

    move v4, v8

    move-wide v2, v6

    goto :goto_0

    .end local v5           #op:Landroid/content/SyncOperation;
    .end local v6           #opRunTime:J
    .end local v8           #opIsInitial:Z
    :cond_1
    if-nez v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_2
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_1
.end method

.method public nextReadyToRun(J)Landroid/util/Pair;
    .locals 3
    .parameter "now"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair",
            "<",
            "Landroid/content/SyncOperation;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Landroid/content/SyncQueue;->nextOperation()Landroid/util/Pair;

    move-result-object v0

    .local v0, nextOpAndRunTime:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/content/SyncOperation;Ljava/lang/Long;>;"
    if-eqz v0, :cond_0

    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, p1

    if-lez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method public remove(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    iget-object v4, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, entries:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/SyncOperation;

    .local v3, syncOperation:Landroid/content/SyncOperation;
    if-eqz p1, :cond_1

    iget-object v4, v3, Landroid/content/SyncOperation;->account:Landroid/accounts/Account;

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    iget-object v4, v3, Landroid/content/SyncOperation;->authority:Ljava/lang/String;

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    iget-object v4, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v5, v3, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v4, v5}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v4

    if-nez v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unable to find pending row for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, errorMessage:Ljava/lang/String;
    const-string v4, "SyncManager"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/SyncOperation;>;"
    .end local v2           #errorMessage:Ljava/lang/String;
    .end local v3           #syncOperation:Landroid/content/SyncOperation;
    :cond_3
    return-void
.end method

.method public remove(Landroid/content/SyncOperation;)V
    .locals 4
    .parameter "operation"

    .prologue
    iget-object v2, p0, Landroid/content/SyncQueue;->mOperationsMap:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/content/SyncOperation;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncOperation;

    .local v1, operationToRemove:Landroid/content/SyncOperation;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Landroid/content/SyncQueue;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;

    iget-object v3, v1, Landroid/content/SyncOperation;->pendingOperation:Landroid/content/SyncStorageEngine$PendingOperation;

    invoke-virtual {v2, v3}, Landroid/content/SyncStorageEngine;->deleteFromPending(Landroid/content/SyncStorageEngine$PendingOperation;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to find pending row for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, errorMessage:Ljava/lang/String;
    const-string v2, "SyncManager"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
