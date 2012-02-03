.class public Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
.super Ljava/lang/Thread;
.source "EventCallbackHandler.java"


# instance fields
.field public mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 29
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->setPriority(I)V

    .line 30
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 39
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 40
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 41
    .local v0, l:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 45
    .end local v0           #l:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 33
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 34
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    .line 35
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 36
    return-void
.end method
