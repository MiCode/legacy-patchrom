.class Lcom/android/server/LocationManagerService$ProximityListener;
.super Landroid/location/ILocationListener$Stub;
.source "LocationManagerService.java"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProximityListener"
.end annotation


# instance fields
.field isGpsAvailable:Z

.field final synthetic this$0:Lcom/android/server/LocationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 1425
    iput-object p1, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    invoke-direct {p0}, Landroid/location/ILocationListener$Stub;-><init>()V

    .line 1427
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 28
    .parameter "loc"

    .prologue
    .line 1433
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    const-string v10, "gps"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1434
    const/4 v9, 0x1

    move v0, v9

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1436
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    move v9, v0

    if-eqz v9, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v9

    const-string v10, "network"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1526
    :cond_1
    return-void

    .line 1441
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    .line 1442
    .local v26, now:J
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    .line 1443
    .local v3, latitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v5

    .line 1444
    .local v5, longitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v7

    .line 1445
    .local v7, accuracy:F
    const/16 v25, 0x0

    .line 1447
    .local v25, intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1448
    .local v2, alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v8

    .line 1449
    .local v8, intent:Landroid/app/PendingIntent;
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$ProximityAlert;->getExpiration()J

    move-result-wide v20

    .line 1451
    .local v20, expiration:J
    const-wide/16 v9, -0x1

    cmp-long v9, v20, v9

    if-eqz v9, :cond_4

    cmp-long v9, v26, v20

    if-gtz v9, :cond_8

    .line 1452
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v19

    .line 1453
    .local v19, entered:Z
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/LocationManagerService$ProximityAlert;->isInProximity(DDF)Z

    move-result v24

    .line 1455
    .local v24, inProximity:Z
    if-nez v19, :cond_6

    if-eqz v24, :cond_6

    .line 1459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1460
    new-instance v11, Landroid/content/Intent;

    invoke-direct {v11}, Landroid/content/Intent;-><init>()V

    .line 1461
    .local v11, enteredIntent:Landroid/content/Intent;
    const-string v9, "entering"

    const/4 v10, 0x1

    invoke-virtual {v11, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1463
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1466
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v12, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v12}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v13

    move-object/from16 v12, p0

    invoke-virtual/range {v8 .. v13}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 1470
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v9
    :try_end_2
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1471
    :catch_0
    move-exception v9

    move-object/from16 v18, v9

    .line 1475
    .local v18, e:Landroid/app/PendingIntent$CanceledException;
    if-nez v25, :cond_5

    .line 1476
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1478
    .restart local v25       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_5
    move-object/from16 v0, v25

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1480
    .end local v11           #enteredIntent:Landroid/content/Intent;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    :cond_6
    if-eqz v19, :cond_3

    if-nez v24, :cond_3

    .line 1484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1485
    new-instance v15, Landroid/content/Intent;

    invoke-direct {v15}, Landroid/content/Intent;-><init>()V

    .line 1486
    .local v15, exitedIntent:Landroid/content/Intent;
    const-string v9, "entering"

    const/4 v10, 0x0

    invoke-virtual {v15, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1488
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1491
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mContext:Landroid/content/Context;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$100(Lcom/android/server/LocationManagerService;)Landroid/content/Context;

    move-result-object v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mLocationHandler:Lcom/android/server/LocationManagerService$LocationWorkerHandler;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$200(Lcom/android/server/LocationManagerService;)Lcom/android/server/LocationManagerService$LocationWorkerHandler;

    move-result-object v17

    move-object v12, v8

    move-object/from16 v16, p0

    invoke-virtual/range {v12 .. v17}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 1494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #calls: Lcom/android/server/LocationManagerService;->incrementPendingBroadcasts()V
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$600(Lcom/android/server/LocationManagerService;)V

    .line 1495
    monitor-exit p0

    goto/16 :goto_0

    :catchall_1
    move-exception v9

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v9
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_5 .. :try_end_5} :catch_1

    .line 1496
    :catch_1
    move-exception v9

    move-object/from16 v18, v9

    .line 1500
    .restart local v18       #e:Landroid/app/PendingIntent$CanceledException;
    if-nez v25, :cond_7

    .line 1501
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .restart local v25       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_7
    move-object/from16 v0, v25

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1511
    .end local v15           #exitedIntent:Landroid/content/Intent;
    .end local v18           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v19           #entered:Z
    .end local v24           #inProximity:Z
    :cond_8
    if-nez v25, :cond_9

    .line 1512
    new-instance v25, Ljava/util/ArrayList;

    .end local v25           #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-direct/range {v25 .. v25}, Ljava/util/ArrayList;-><init>()V

    .line 1514
    .restart local v25       #intentsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    :cond_9
    invoke-virtual {v2}, Lcom/android/server/LocationManagerService$ProximityAlert;->getIntent()Landroid/app/PendingIntent;

    move-result-object v9

    move-object/from16 v0, v25

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1519
    .end local v2           #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    .end local v8           #intent:Landroid/app/PendingIntent;
    .end local v20           #expiration:J
    :cond_a
    if-eqz v25, :cond_1

    .line 1520
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/app/PendingIntent;

    .line 1521
    .local v22, i:Landroid/app/PendingIntent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximityAlerts:Ljava/util/HashMap;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1500(Lcom/android/server/LocationManagerService;)Ljava/util/HashMap;

    move-result-object v9

    move-object v0, v9

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/LocationManagerService$ProximityAlert;

    .line 1522
    .restart local v2       #alert:Lcom/android/server/LocationManagerService$ProximityAlert;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/LocationManagerService;->mProximitiesEntered:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/server/LocationManagerService;->access$1600(Lcom/android/server/LocationManagerService;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1523
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    move-object v9, v0

    move-object v0, v9

    move-object/from16 v1, v22

    #calls: Lcom/android/server/LocationManagerService;->removeProximityAlertLocked(Landroid/app/PendingIntent;)V
    invoke-static {v0, v1}, Lcom/android/server/LocationManagerService;->access$1700(Lcom/android/server/LocationManagerService;Landroid/app/PendingIntent;)V

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 1530
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1531
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1533
    :cond_0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 1538
    return-void
.end method

.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .parameter "pendingIntent"
    .parameter "intent"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "resultExtras"

    .prologue
    .line 1552
    monitor-enter p0

    .line 1553
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->this$0:Lcom/android/server/LocationManagerService;

    #calls: Lcom/android/server/LocationManagerService;->decrementPendingBroadcasts()V
    invoke-static {v0}, Lcom/android/server/LocationManagerService;->access$500(Lcom/android/server/LocationManagerService;)V

    .line 1554
    monitor-exit p0

    .line 1555
    return-void

    .line 1554
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 1542
    const-string v0, "gps"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 1544
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LocationManagerService$ProximityListener;->isGpsAvailable:Z

    .line 1546
    :cond_0
    return-void
.end method
