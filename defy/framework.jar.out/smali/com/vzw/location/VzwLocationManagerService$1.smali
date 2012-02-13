.class Lcom/vzw/location/VzwLocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "VzwLocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vzw/location/VzwLocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/vzw/location/VzwLocationManagerService;


# direct methods
.method constructor <init>(Lcom/vzw/location/VzwLocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_1

    const-string v5, "VzwLocationMgrService"

    const-string v6, "action==null in BroadcastReceiver.onReceive()"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v5, "android.intent.action.UID_REMOVED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "android.intent.extra.UID"

    const/4 v6, -0x1

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .local v4, uid:I
    if-ltz v4, :cond_0

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mVerifiedUids:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$600(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_UidRemoved(I)V

    goto :goto_0

    .end local v4           #uid:I
    :cond_3
    const-string v5, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "noConnectivity"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .local v2, noConnectivity:Z
    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #setter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v5, v7}, Lcom/vzw/location/VzwLocationManagerService;->access$702(Lcom/vzw/location/VzwLocationManagerService;I)I

    :goto_1
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$200(Lcom/vzw/location/VzwLocationManagerService;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v1, v6, v7

    .local v1, i:I
    :goto_2
    if-ltz v1, :cond_6

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/vzw/location/VzwLocationManagerService;->access$800(Lcom/vzw/location/VzwLocationManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vzw/location/VzwLocationProviderProxy;

    .local v3, p:Lcom/vzw/location/VzwLocationProviderProxy;
    invoke-virtual {v3}, Lcom/vzw/location/VzwLocationProviderProxy;->requiresNetwork()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v6}, Lcom/vzw/location/VzwLocationManagerService;->access$700(Lcom/vzw/location/VzwLocationManagerService;)I

    move-result v6

    invoke-virtual {v3, v6}, Lcom/vzw/location/VzwLocationProviderProxy;->updateNetworkState(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v3           #p:Lcom/vzw/location/VzwLocationProviderProxy;
    :cond_5
    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #setter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v5, v9}, Lcom/vzw/location/VzwLocationManagerService;->access$702(Lcom/vzw/location/VzwLocationManagerService;I)I

    goto :goto_1

    .restart local v1       #i:I
    :cond_6
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v5, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mReqMgr:Lcom/vzw/location/VzwGpsReqMgr;
    invoke-static {v5}, Lcom/vzw/location/VzwLocationManagerService;->access$500(Lcom/vzw/location/VzwLocationManagerService;)Lcom/vzw/location/VzwGpsReqMgr;

    move-result-object v5

    iget-object v6, p0, Lcom/vzw/location/VzwLocationManagerService$1;->this$0:Lcom/vzw/location/VzwLocationManagerService;

    #getter for: Lcom/vzw/location/VzwLocationManagerService;->mNetworkState:I
    invoke-static {v6}, Lcom/vzw/location/VzwLocationManagerService;->access$700(Lcom/vzw/location/VzwLocationManagerService;)I

    move-result v6

    if-ne v6, v9, :cond_7

    move v6, v7

    :goto_3
    invoke-virtual {v5, v6}, Lcom/vzw/location/VzwGpsReqMgr;->trigger_NetworkStateUpdate(Z)V

    goto/16 :goto_0

    .end local v1           #i:I
    :catchall_0
    move-exception v6

    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v6

    .restart local v1       #i:I
    :cond_7
    move v6, v8

    goto :goto_3
.end method
