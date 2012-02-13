.class public Landroid/os/RegistrantList;
.super Ljava/lang/Object;
.source "RegistrantList.java"


# instance fields
.field registrants:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    return-void
.end method

.method private declared-synchronized internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 4
    .parameter "result"
    .parameter "exception"

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v3, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, s:I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .local v1, r:Landroid/os/Registrant;
    invoke-virtual {v1, p1, p2}, Landroid/os/Registrant;->internalNotifyRegistrant(Ljava/lang/Object;Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #r:Landroid/os/Registrant;
    :cond_0
    monitor-exit p0

    return-void

    .end local v2           #s:I
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method


# virtual methods
.method public declared-synchronized add(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized add(Landroid/os/Registrant;)V
    .locals 1
    .parameter "r"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V

    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized addUnique(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public notifyException(Ljava/lang/Throwable;)V
    .locals 1
    .parameter "exception"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyRegistrants()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyRegistrants(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {p0, v0, v1}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public notifyResult(Ljava/lang/Object;)V
    .locals 1
    .parameter "result"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/os/RegistrantList;->internalNotifyRegistrants(Ljava/lang/Object;Ljava/lang/Throwable;)V

    return-void
.end method

.method public declared-synchronized remove(Landroid/os/Handler;)V
    .locals 5
    .parameter "h"

    .prologue
    monitor-enter p0

    const/4 v0, 0x0

    .local v0, i:I
    :try_start_0
    iget-object v4, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .local v3, s:I
    :goto_0
    if-ge v0, v3, :cond_2

    iget-object v4, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .local v1, r:Landroid/os/Registrant;
    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v2

    .local v2, rh:Landroid/os/Handler;
    if-eqz v2, :cond_0

    if-ne v2, p1, :cond_1

    :cond_0
    invoke-virtual {v1}, Landroid/os/Registrant;->clear()V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1           #r:Landroid/os/Registrant;
    .end local v2           #rh:Landroid/os/Handler;
    :cond_2
    invoke-virtual {p0}, Landroid/os/RegistrantList;->removeCleared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .end local v3           #s:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized removeCleared()V
    .locals 4

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    .local v1, r:Landroid/os/Registrant;
    iget-object v2, v1, Landroid/os/Registrant;->refH:Ljava/lang/ref/WeakReference;

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .end local v1           #r:Landroid/os/Registrant;
    :cond_1
    monitor-exit p0

    return-void

    .end local v0           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized size()I
    .locals 1

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/os/RegistrantList;->registrants:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
