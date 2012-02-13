.class Lcom/android/server/LocationManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 25
    .parameter "context"
    .parameter "intent"

    .prologue
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .local v3, action:Ljava/lang/String;
    const-string v21, "android.intent.action.QUERY_PACKAGE_RESTART"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    .local v14, queryRestart:Z
    if-nez v14, :cond_0

    const-string v21, "android.intent.action.PACKAGE_REMOVED"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "android.intent.action.PACKAGE_RESTARTED"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    const-string v21, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_11

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    const/16 v18, 0x0

    .local v18, uidList:[I
    :try_start_0
    const-string v22, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    move-object v0, v3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_3

    const-string v22, "android.intent.extra.changed_uid_list"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v18

    :goto_0
    if-eqz v18, :cond_1

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v22, v0

    if-nez v22, :cond_4

    :cond_1
    monitor-exit v21

    .end local v18           #uidList:[I
    .end local p1
    :cond_2
    :goto_1
    return-void

    .restart local v18       #uidList:[I
    .restart local p1
    :cond_3
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v22, 0x0

    const-string v23, "android.intent.extra.UID"

    const/16 v24, -0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    aput v23, v19, v22

    .end local v18           #uidList:[I
    .local v19, uidList:[I
    move-object/from16 v18, v19

    .end local v19           #uidList:[I
    .restart local v18       #uidList:[I
    goto :goto_0

    :cond_4
    move-object/from16 v4, v18

    .local v4, arr$:[I
    array-length v11, v4

    .local v11, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .end local p1
    .local v8, i$:I
    :goto_2
    if-ge v8, v11, :cond_10

    aget v17, v4, v8

    .local v17, uid:I
    if-ltz v17, :cond_f

    const/16 v16, 0x0

    .local v16, removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mRecordsByProvider:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$1400(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .end local v8           #i$:I
    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .local v6, i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v10, v22, v23

    .local v10, j:I
    :goto_3
    if-ltz v10, :cond_5

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/server/LocationManagerService$UpdateRecord;

    .local v20, ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/LocationManagerService$Receiver;->isPendingIntent()Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mUid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_8

    if-eqz v14, :cond_6

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    monitor-exit v21

    goto :goto_1

    .end local v4           #arr$:[I
    .end local v6           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #j:I
    .end local v11           #len$:I
    .end local v16           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .end local v17           #uid:I
    .end local v20           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :catchall_0
    move-exception v22

    monitor-exit v21
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v22

    .restart local v4       #arr$:[I
    .restart local v6       #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .restart local v7       #i$:Ljava/util/Iterator;
    .restart local v10       #j:I
    .restart local v11       #len$:I
    .restart local v16       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    .restart local v17       #uid:I
    .restart local v20       #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_6
    if-nez v16, :cond_7

    :try_start_1
    new-instance v16, Ljava/util/ArrayList;

    .end local v16           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .restart local v16       #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_7
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_8

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/LocationManagerService$UpdateRecord;->mReceiver:Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, -0x1

    goto :goto_3

    .end local v6           #i:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$UpdateRecord;>;"
    .end local v10           #j:I
    .end local v20           #ur:Lcom/android/server/LocationManagerService$UpdateRecord;
    :cond_9
    const/4 v15, 0x0

    .local v15, removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_d

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/LocationManagerService$ProximityAlert;

    .local v5, i:Lcom/android/server/LocationManagerService$ProximityAlert;
    move-object v0, v5

    iget v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mUid:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v17

    if-ne v0, v1, :cond_a

    if-eqz v14, :cond_b

    const/16 v22, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/LocationManagerService$1;->setResultCode(I)V

    monitor-exit v21

    goto/16 :goto_1

    :cond_b
    if-nez v15, :cond_c

    new-instance v15, Ljava/util/ArrayList;

    .end local v15           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .restart local v15       #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    :cond_c
    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .end local v5           #i:Lcom/android/server/LocationManagerService$ProximityAlert;
    :cond_d
    if-eqz v16, :cond_e

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v5, v22, v23

    .local v5, i:I
    :goto_5
    if-ltz v5, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$Receiver;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    #calls: Lcom/android/server/LocationManagerService;->removeUpdatesLocked(Lcom/android/server/LocationManagerService$Receiver;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$400(Lcom/android/server/LocationManagerService;Lcom/android/server/LocationManagerService$Receiver;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    .end local v5           #i:I
    :cond_e
    if-eqz v15, :cond_f

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v5, v22, v23

    .restart local v5       #i:I
    :goto_6
    if-ltz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/LocationManagerService$ProximityAlert;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityAlert;->mIntent:Landroid/app/PendingIntent;

    move-object/from16 v23, v0

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static/range {v22 .. v23}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    add-int/lit8 v5, v5, -0x1

    goto :goto_6

    .end local v5           #i:I
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v15           #removedAlerts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$ProximityAlert;>;"
    .end local v16           #removedRecs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/LocationManagerService$Receiver;>;"
    :cond_f
    add-int/lit8 v7, v8, 0x1

    .local v7, i$:I
    move v8, v7

    .end local v7           #i$:I
    .restart local v8       #i$:I
    goto/16 :goto_2

    .end local v17           #uid:I
    :cond_10
    monitor-exit v21
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1

    .end local v4           #arr$:[I
    .end local v8           #i$:I
    .end local v11           #len$:I
    .end local v18           #uidList:[I
    .restart local p1
    :cond_11
    const-string v21, "android.net.conn.CONNECTIVITY_CHANGE"

    move-object v0, v3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    const-string v21, "noConnectivity"

    const/16 v22, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .local v12, noConnectivity:Z
    if-nez v12, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x2

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v21 .. v22}, Lcom/android/server/LocationManagerService;->access$2402(Lcom/android/server/LocationManagerService;I)I

    :goto_7
    const-string v21, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/NetworkInfo;

    .local v9, info:Landroid/net/NetworkInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLock:Ljava/lang/Object;
    invoke-static/range {v21 .. v21}, Lcom/android/server/LocationManagerService;->access$300(Lcom/android/server/LocationManagerService;)Ljava/lang/Object;

    move-result-object v21

    monitor-enter v21

    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v5, v22, v23

    .restart local v5       #i:I
    :goto_8
    if-ltz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProviders:Ljava/util/ArrayList;
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$1800(Lcom/android/server/LocationManagerService;)Ljava/util/ArrayList;

    move-result-object v22

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/location/LocationProviderInterface;

    .local v13, provider:Lcom/android/server/location/LocationProviderInterface;
    invoke-interface {v13}, Lcom/android/server/location/LocationProviderInterface;->requiresNetwork()Z

    move-result v22

    if-eqz v22, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v22 .. v22}, Lcom/android/server/LocationManagerService;->access$2400(Lcom/android/server/LocationManagerService;)I

    move-result v22

    move-object v0, v13

    move/from16 v1, v22

    move-object v2, v9

    invoke-interface {v0, v1, v2}, Lcom/android/server/location/LocationProviderInterface;->updateNetworkState(ILandroid/net/NetworkInfo;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_12
    add-int/lit8 v5, v5, -0x1

    goto :goto_8

    .end local v5           #i:I
    .end local v9           #info:Landroid/net/NetworkInfo;
    .end local v13           #provider:Lcom/android/server/location/LocationProviderInterface;
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$1;->this$0:Lcom/android/server/LocationManagerService;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    #setter for: Lcom/android/server/LocationManagerService;->mNetworkState:I
    invoke-static/range {v21 .. v22}, Lcom/android/server/LocationManagerService;->access$2402(Lcom/android/server/LocationManagerService;I)I

    goto :goto_7

    .restart local v5       #i:I
    .restart local v9       #info:Landroid/net/NetworkInfo;
    :cond_14
    :try_start_3
    monitor-exit v21

    goto/16 :goto_1

    .end local v5           #i:I
    :catchall_1
    move-exception v22

    monitor-exit v21
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v22
.end method
