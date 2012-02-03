.class public Landroid/os/RemoteCallbackList;
.super Ljava/lang/Object;
.source "RemoteCallbackList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/RemoteCallbackList$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E::",
        "Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mActiveBroadcast:[Ljava/lang/Object;

.field private mBroadcastCount:I

.field mCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Landroid/os/RemoteCallbackList",
            "<TE;>.Callback;>;"
        }
    .end annotation
.end field

.field private mKilled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    .line 53
    const/4 v0, -0x1

    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    .line 56
    return-void
.end method


# virtual methods
.method public beginBroadcast()I
    .locals 9

    .prologue
    .line 227
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v6, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v6

    .line 228
    :try_start_0
    iget v7, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-lez v7, :cond_0

    .line 229
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "beginBroadcast() called while already in a broadcast"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 246
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7

    .line 233
    :cond_0
    :try_start_1
    iget-object v7, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v0

    iput v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 234
    .local v0, N:I
    if-gtz v0, :cond_1

    .line 235
    const/4 v7, 0x0

    monitor-exit v6

    move v6, v7

    .line 245
    :goto_0
    return v6

    .line 237
    :cond_1
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 238
    .local v1, active:[Ljava/lang/Object;
    if-eqz v1, :cond_2

    array-length v7, v1

    if-ge v7, v0, :cond_3

    .line 239
    :cond_2
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 241
    :cond_3
    const/4 v3, 0x0

    .line 242
    .local v3, i:I
    iget-object v7, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList$Callback;

    .line 243
    .local v2, cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aput-object v2, v1, v4

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_1

    .line 245
    .end local v2           #cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :cond_4
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v6, v4

    goto :goto_0
.end method

.method public finishBroadcast()V
    .locals 5

    .prologue
    .line 292
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    iget v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    if-gez v3, :cond_0

    .line 293
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "finishBroadcast() called outside of a broadcast"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 297
    :cond_0
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    .line 298
    .local v1, active:[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 299
    iget v0, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 300
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 301
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 300
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 305
    .end local v0           #N:I
    .end local v2           #i:I
    :cond_1
    const/4 v3, -0x1

    iput v3, p0, Landroid/os/RemoteCallbackList;->mBroadcastCount:I

    .line 306
    return-void
.end method

.method public getBroadcastCookie(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    .line 281
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object p0, v0, p1

    .end local p0           #this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    check-cast p0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Callback;->mCookie:Ljava/lang/Object;

    return-object v0
.end method

.method public getBroadcastItem(I)Landroid/os/IInterface;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 271
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v0, p0, Landroid/os/RemoteCallbackList;->mActiveBroadcast:[Ljava/lang/Object;

    aget-object p0, v0, p1

    .end local p0           #this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    check-cast p0, Landroid/os/RemoteCallbackList$Callback;

    iget-object v0, p0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    return-object v0
.end method

.method public kill()V
    .locals 5

    .prologue
    .line 161
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    .line 163
    .local v0, cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    iget-object v3, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v3}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v0, v4}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    goto :goto_0

    .line 167
    .end local v0           #cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 165
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 166
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    .line 167
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    return-void
.end method

.method public onCallbackDied(Landroid/os/IInterface;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    return-void
.end method

.method public onCallbackDied(Landroid/os/IInterface;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 192
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    .line 193
    return-void
.end method

.method public register(Landroid/os/IInterface;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .line 78
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public register(Landroid/os/IInterface;Ljava/lang/Object;)Z
    .locals 6
    .parameter
    .parameter "cookie"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    const/4 v5, 0x0

    .line 108
    iget-object v3, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v3

    .line 109
    :try_start_0
    iget-boolean v4, p0, Landroid/os/RemoteCallbackList;->mKilled:Z

    if-eqz v4, :cond_0

    .line 110
    monitor-exit v3

    move v3, v5

    .line 119
    :goto_0
    return v3

    .line 112
    :cond_0
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 114
    .local v0, binder:Landroid/os/IBinder;
    :try_start_1
    new-instance v1, Landroid/os/RemoteCallbackList$Callback;

    invoke-direct {v1, p0, p1, p2}, Landroid/os/RemoteCallbackList$Callback;-><init>(Landroid/os/RemoteCallbackList;Landroid/os/IInterface;Ljava/lang/Object;)V

    .line 115
    .local v1, cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    const/4 v4, 0x0

    invoke-interface {v0, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 116
    iget-object v4, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 117
    const/4 v4, 0x1

    :try_start_2
    monitor-exit v3

    move v3, v4

    goto :goto_0

    .line 118
    .end local v1           #cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 119
    .local v2, e:Landroid/os/RemoteException;
    monitor-exit v3

    move v3, v5

    goto :goto_0

    .line 121
    .end local v0           #binder:Landroid/os/IBinder;
    .end local v2           #e:Landroid/os/RemoteException;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4
.end method

.method public unregister(Landroid/os/IInterface;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/os/RemoteCallbackList;,"Landroid/os/RemoteCallbackList<TE;>;"
    .local p1, callback:Landroid/os/IInterface;,"TE;"
    const/4 v4, 0x0

    .line 142
    iget-object v1, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    monitor-enter v1

    .line 143
    :try_start_0
    iget-object v2, p0, Landroid/os/RemoteCallbackList;->mCallbacks:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RemoteCallbackList$Callback;

    .line 144
    .local v0, cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    if-eqz v0, :cond_0

    .line 145
    iget-object v2, v0, Landroid/os/RemoteCallbackList$Callback;->mCallback:Landroid/os/IInterface;

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 146
    const/4 v2, 0x1

    monitor-exit v1

    move v1, v2

    .line 148
    :goto_0
    return v1

    :cond_0
    monitor-exit v1

    move v1, v4

    goto :goto_0

    .line 149
    .end local v0           #cb:Landroid/os/RemoteCallbackList$Callback;,"Landroid/os/RemoteCallbackList<TE;>.Callback;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
