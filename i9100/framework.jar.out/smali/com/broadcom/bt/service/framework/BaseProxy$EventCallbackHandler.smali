.class Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;
.super Ljava/lang/Thread;
.source "BaseProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/service/framework/BaseProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCallbackHandler"
.end annotation


# instance fields
.field public mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/broadcom/bt/service/framework/BaseProxy;


# direct methods
.method public constructor <init>(Lcom/broadcom/bt/service/framework/BaseProxy;)V
    .locals 1
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->this$0:Lcom/broadcom/bt/service/framework/BaseProxy;

    .line 193
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 194
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->setPriority(I)V

    .line 195
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 2

    .prologue
    .line 204
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    .line 206
    .local v0, l:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 210
    .end local v0           #l:Landroid/os/Looper;
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 198
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/framework/BaseProxy$EventCallbackHandler;->mHandler:Landroid/os/Handler;

    .line 199
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 200
    return-void
.end method
