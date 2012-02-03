.class public abstract Lcom/broadcom/bt/service/framework/BaseEventLoop;
.super Ljava/lang/Object;
.source "BaseEventLoop.java"

# interfaces
.implements Lcom/broadcom/bt/service/framework/IBtService;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mIsFinish:Z

.field protected mIsStarted:Z

.field protected mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    .line 31
    iput-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsFinish:Z

    .line 36
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    .line 37
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 78
    return-void
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public init()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method public declared-synchronized onStateChangeEvent(Z)V
    .locals 3
    .parameter "started"

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    if-eqz v0, :cond_0

    .line 51
    iput-boolean p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    .line 52
    iget-boolean v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStart()V

    .line 58
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/framework/BaseEventLoop;->getName()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    :goto_1
    invoke-static {v1, v2}, Lcom/broadcom/bt/service/framework/BluetoothIntent;->createBtSvcStateChangeEvent(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 55
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;

    invoke-interface {v0}, Lcom/broadcom/bt/service/framework/IServiceStateListener;->onStop()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 58
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public declared-synchronized removeStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 46
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    monitor-exit p0

    return-void

    .line 46
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setStateListener(Lcom/broadcom/bt/service/framework/IServiceStateListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 42
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseEventLoop;->mListener:Lcom/broadcom/bt/service/framework/IServiceStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    monitor-exit p0

    return-void

    .line 42
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public start()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public stop()V
    .locals 0

    .prologue
    .line 74
    return-void
.end method
