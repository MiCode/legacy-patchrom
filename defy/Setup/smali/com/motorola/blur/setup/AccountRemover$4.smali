.class Lcom/motorola/blur/setup/AccountRemover$4;
.super Landroid/os/Handler;
.source "AccountRemover.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/AccountRemover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/AccountRemover;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/AccountRemover;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    .line 235
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 237
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlightLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountRemover;->access$900(Lcom/motorola/blur/setup/AccountRemover;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountRemover;->access$1000(Lcom/motorola/blur/setup/AccountRemover;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 240
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/motorola/blur/setup/AccountRemover;->access$500(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/motorola/blur/setup/AccountRemover;->access$800(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 246
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 247
    iget-object v2, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Lcom/motorola/blur/setup/AccountRemover;->handleResponse(Landroid/content/Intent;)V

    .line 251
    :goto_1
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    #setter for: Lcom/motorola/blur/setup/AccountRemover;->mRequestInFlight:Ljava/lang/Boolean;
    invoke-static {v0, v2}, Lcom/motorola/blur/setup/AccountRemover;->access$1002(Lcom/motorola/blur/setup/AccountRemover;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 259
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 249
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    iget-object v2, p0, Lcom/motorola/blur/setup/AccountRemover$4;->this$0:Lcom/motorola/blur/setup/AccountRemover;

    #getter for: Lcom/motorola/blur/setup/AccountRemover;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/motorola/blur/setup/AccountRemover;->access$500(Lcom/motorola/blur/setup/AccountRemover;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;->InternalError:Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;

    invoke-static {v2, v3}, Lcom/motorola/blur/setup/ServiceErrorTranslator;->translate(Landroid/content/Context;Lcom/motorola/blur/service/blur/ErrorTranslator$ErrorCodes;)I

    move-result v2

    #calls: Lcom/motorola/blur/setup/AccountRemover;->finish(I)V
    invoke-static {v0, v2}, Lcom/motorola/blur/setup/AccountRemover;->access$1200(Lcom/motorola/blur/setup/AccountRemover;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 235
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
