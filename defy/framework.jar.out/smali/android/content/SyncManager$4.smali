.class Landroid/content/SyncManager$4;
.super Landroid/content/BroadcastReceiver;
.source "SyncManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/SyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/SyncManager;


# direct methods
.method constructor <init>(Landroid/content/SyncManager;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v5, "SyncManager"

    const-string v3, "networkInfo"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    .local v0, networkInfo:Landroid/net/NetworkInfo;
    if-nez v0, :cond_4

    sget-object v3, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    move-object v1, v3

    .local v1, state:Landroid/net/NetworkInfo$State;
    :goto_0
    const-string v3, "SyncManager"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "SyncManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "received connectivity action.  network info: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v3}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v2

    .local v2, wasConnected:Z
    sget-object v3, Landroid/content/SyncManager$8;->$SwitchMap$android$net$NetworkInfo$State:[I

    invoke-virtual {v1}, Landroid/net/NetworkInfo$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    :goto_1
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v3}, Landroid/content/SyncManager;->access$400(Landroid/content/SyncManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v2, :cond_2

    const-string v3, "SyncManager"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "SyncManager"

    const-string v3, "Reconnection detected: clearing all backoffs"

    invoke-static {v5, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #getter for: Landroid/content/SyncManager;->mSyncStorageEngine:Landroid/content/SyncStorageEngine;
    invoke-static {v3}, Landroid/content/SyncManager;->access$500(Landroid/content/SyncManager;)Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->clearAllBackoffs()V

    :cond_2
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #calls: Landroid/content/SyncManager;->sendCheckAlarmsMessage()V
    invoke-static {v3}, Landroid/content/SyncManager;->access$100(Landroid/content/SyncManager;)V

    :cond_3
    return-void

    .end local v1           #state:Landroid/net/NetworkInfo$State;
    .end local v2           #wasConnected:Z
    :cond_4
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .restart local v1       #state:Landroid/net/NetworkInfo$State;
    .restart local v2       #wasConnected:Z
    :pswitch_0
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v3, v7}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_1

    :pswitch_1
    const-string v3, "noConnectivity"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v3, v6}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_1

    :cond_5
    iget-object v3, p0, Landroid/content/SyncManager$4;->this$0:Landroid/content/SyncManager;

    #setter for: Landroid/content/SyncManager;->mDataConnectionIsConnected:Z
    invoke-static {v3, v7}, Landroid/content/SyncManager;->access$402(Landroid/content/SyncManager;Z)Z

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
