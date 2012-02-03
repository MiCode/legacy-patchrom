.class public abstract Landroid/os/TokenWatcher;
.super Ljava/lang/Object;
.source "TokenWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/TokenWatcher$Death;
    }
.end annotation


# instance fields
.field private volatile mAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mNotificationQueue:I

.field private mNotificationTask:Ljava/lang/Runnable;

.field private mTag:Ljava/lang/String;

.field private mTokens:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/TokenWatcher$Death;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .locals 1
    .parameter "h"
    .parameter "tag"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    new-instance v0, Landroid/os/TokenWatcher$1;

    invoke-direct {v0, p0}, Landroid/os/TokenWatcher$1;-><init>(Landroid/os/TokenWatcher;)V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    .line 192
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 196
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 42
    iput-object p1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    .line 43
    if-eqz p2, :cond_0

    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    .line 44
    return-void

    .line 43
    :cond_0
    const-string v0, "TokenWatcher"

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/os/TokenWatcher;)Ljava/util/WeakHashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    return-object v0
.end method

.method static synthetic access$100(Landroid/os/TokenWatcher;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return v0
.end method

.method static synthetic access$102(Landroid/os/TokenWatcher;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput p1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    return p1
.end method

.method static synthetic access$200(Landroid/os/TokenWatcher;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private sendNotificationLocked(Z)V
    .locals 3
    .parameter "on"

    .prologue
    const/4 v2, -0x1

    .line 148
    if-eqz p1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 149
    .local v0, value:I
    :goto_0
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-ne v1, v2, :cond_2

    .line 151
    iput v0, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 152
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    :cond_0
    :goto_1
    return-void

    .line 148
    .end local v0           #value:I
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 154
    .restart local v0       #value:I
    :cond_2
    iget v1, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    if-eq v1, v0, :cond_0

    .line 156
    iput v2, p0, Landroid/os/TokenWatcher;->mNotificationQueue:I

    .line 157
    iget-object v1, p0, Landroid/os/TokenWatcher;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/os/TokenWatcher;->mNotificationTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1
.end method


# virtual methods
.method public acquire(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 5
    .parameter "token"
    .parameter "tag"

    .prologue
    .line 68
    iget-object v3, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v3

    .line 71
    :try_start_0
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    .line 73
    .local v2, oldSize:I
    new-instance v0, Landroid/os/TokenWatcher$Death;

    invoke-direct {v0, p0, p1, p2}, Landroid/os/TokenWatcher$Death;-><init>(Landroid/os/TokenWatcher;Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .local v0, d:Landroid/os/TokenWatcher$Death;
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {p1, v0, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 79
    :try_start_2
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    if-nez v2, :cond_0

    iget-boolean v4, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-nez v4, :cond_0

    .line 82
    const/4 v4, 0x1

    invoke-direct {p0, v4}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 83
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 85
    :cond_0
    monitor-exit v3

    .line 86
    :goto_0
    return-void

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Landroid/os/RemoteException;
    monitor-exit v3

    goto :goto_0

    .line 85
    .end local v0           #d:Landroid/os/TokenWatcher$Death;
    .end local v1           #e:Landroid/os/RemoteException;
    .end local v2           #oldSize:I
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public abstract acquired()V
.end method

.method public cleanup(Landroid/os/IBinder;Z)V
    .locals 4
    .parameter "token"
    .parameter "unlink"

    .prologue
    .line 90
    iget-object v1, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 91
    :try_start_0
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/TokenWatcher$Death;

    .line 92
    .local v0, d:Landroid/os/TokenWatcher$Death;
    if-eqz p2, :cond_0

    if-eqz v0, :cond_0

    .line 93
    iget-object v2, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 94
    const/4 v2, 0x0

    iput-object v2, v0, Landroid/os/TokenWatcher$Death;->token:Landroid/os/IBinder;

    .line 97
    :cond_0
    iget-object v2, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v2}, Ljava/util/WeakHashMap;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-boolean v2, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    if-eqz v2, :cond_1

    .line 98
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/os/TokenWatcher;->sendNotificationLocked(Z)V

    .line 99
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    .line 101
    :cond_1
    monitor-exit v1

    .line 102
    return-void

    .line 101
    .end local v0           #d:Landroid/os/TokenWatcher$Death;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public dump()V
    .locals 8

    .prologue
    .line 118
    iget-object v5, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v5

    .line 119
    :try_start_0
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 120
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    iget-object v4, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Token count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v7}, Ljava/util/WeakHashMap;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const/4 v1, 0x0

    .line 122
    .local v1, i:I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    .line 123
    .local v0, b:Landroid/os/IBinder;
    iget-object v6, p0, Landroid/os/TokenWatcher;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "] "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v4, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    invoke-virtual {v4, v0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/TokenWatcher$Death;

    iget-object v4, v4, Landroid/os/TokenWatcher$Death;->tag:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " - "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    monitor-exit v5

    .line 127
    return-void

    .line 126
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Landroid/os/IBinder;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isAcquired()Z
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Landroid/os/TokenWatcher;->mTokens:Ljava/util/WeakHashMap;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-boolean v1, p0, Landroid/os/TokenWatcher;->mAcquired:Z

    monitor-exit v0

    return v1

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public release(Landroid/os/IBinder;)V
    .locals 1
    .parameter "token"

    .prologue
    .line 106
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/TokenWatcher;->cleanup(Landroid/os/IBinder;Z)V

    .line 107
    return-void
.end method

.method public abstract released()V
.end method
