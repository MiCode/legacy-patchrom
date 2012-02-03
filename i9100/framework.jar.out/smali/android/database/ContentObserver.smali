.class public abstract Landroid/database/ContentObserver;
.super Ljava/lang/Object;
.source "ContentObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/database/ContentObserver$Transport;,
        Landroid/database/ContentObserver$NotificationRunnable;
    }
.end annotation


# instance fields
.field private lock:Ljava/lang/Object;

.field mHandler:Landroid/os/Handler;

.field private mTransport:Landroid/database/ContentObserver$Transport;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 1
    .parameter "handler"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    .line 80
    iput-object p1, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    .line 81
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public final dispatchChange(Z)V
    .locals 2
    .parameter "selfChange"

    .prologue
    .line 132
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 133
    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 137
    :goto_0
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/database/ContentObserver$NotificationRunnable;

    invoke-direct {v1, p0, p1}, Landroid/database/ContentObserver$NotificationRunnable;-><init>(Landroid/database/ContentObserver;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public getContentObserver()Landroid/database/IContentObserver;
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    if-nez v1, :cond_0

    .line 91
    new-instance v1, Landroid/database/ContentObserver$Transport;

    invoke-direct {v1, p0}, Landroid/database/ContentObserver$Transport;-><init>(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 93
    :cond_0
    iget-object v1, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    monitor-exit v0

    return-object v1

    .line 94
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onChange(Z)V
    .locals 0
    .parameter "selfChange"

    .prologue
    .line 129
    return-void
.end method

.method public releaseContentObserver()Landroid/database/IContentObserver;
    .locals 3

    .prologue
    .line 104
    iget-object v1, p0, Landroid/database/ContentObserver;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 105
    :try_start_0
    iget-object v0, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 106
    .local v0, oldTransport:Landroid/database/ContentObserver$Transport;
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/database/ContentObserver$Transport;->releaseContentObserver()V

    .line 108
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/database/ContentObserver;->mTransport:Landroid/database/ContentObserver$Transport;

    .line 110
    :cond_0
    monitor-exit v1

    return-object v0

    .line 111
    .end local v0           #oldTransport:Landroid/database/ContentObserver$Transport;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
