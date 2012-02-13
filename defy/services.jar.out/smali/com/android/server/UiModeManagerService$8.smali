.class Lcom/android/server/UiModeManagerService$8;
.super Landroid/os/Handler;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field mDidFirstInit:Z

.field mLastNetworkRegisterTime:J

.field mNetworkListenerEnabled:Z

.field mPassiveListenerEnabled:Z

.field final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .locals 2
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const-wide/32 v0, -0x1b7740

    iput-wide v0, p0, Lcom/android/server/UiModeManagerService$8;->mLastNetworkRegisterTime:J

    return-void
.end method

.method private retrieveLocation()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    .local v4, location:Landroid/location/Location;
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v6

    new-instance v7, Landroid/location/Criteria;

    invoke-direct {v7}, Landroid/location/Criteria;-><init>()V

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v8}, Landroid/location/LocationManager;->getProviders(Landroid/location/Criteria;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, providers:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v6}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    .local v1, lastKnownLocation:Landroid/location/Location;
    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v6

    invoke-virtual {v1}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    :cond_1
    move-object v4, v1

    goto :goto_0

    .end local v1           #lastKnownLocation:Landroid/location/Location;
    :cond_2
    if-nez v4, :cond_3

    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .local v0, currentTime:Landroid/text/format/Time;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/text/format/Time;->set(J)V

    const-wide v6, 0x3f71111111111111L

    iget-wide v8, v0, Landroid/text/format/Time;->gmtoff:J

    iget v10, v0, Landroid/text/format/Time;->isDst:I

    if-lez v10, :cond_4

    const/16 v10, 0xe10

    :goto_1
    int-to-long v10, v10

    sub-long/2addr v8, v10

    long-to-double v8, v8

    mul-double v2, v6, v8

    .local v2, lngOffset:D
    new-instance v4, Landroid/location/Location;

    .end local v4           #location:Landroid/location/Location;
    const-string v6, "fake"

    invoke-direct {v4, v6}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .restart local v4       #location:Landroid/location/Location;
    invoke-virtual {v4, v2, v3}, Landroid/location/Location;->setLongitude(D)V

    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setLatitude(D)V

    const v6, 0x48cb9d00

    invoke-virtual {v4, v6}, Landroid/location/Location;->setAccuracy(F)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Landroid/location/Location;->setTime(J)V

    .end local v0           #currentTime:Landroid/text/format/Time;
    .end local v2           #lngOffset:D
    :cond_3
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v6, v6, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #setter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v7, v4}, Lcom/android/server/UiModeManagerService;->access$702(Lcom/android/server/UiModeManagerService;Landroid/location/Location;)Landroid/location/Location;

    monitor-exit v6

    return-void

    .restart local v0       #currentTime:Landroid/text/format/Time;
    :cond_4
    const/4 v10, 0x0

    goto :goto_1

    .end local v0           #currentTime:Landroid/text/format/Time;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/UiModeManagerService$8;->mLastNetworkRegisterTime:J

    const-wide/32 v2, 0x1b7740

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    :pswitch_2
    :try_start_1
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    .local v10, networkLocationEnabled:Z
    :goto_1
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    if-nez v0, :cond_4

    if-eqz v10, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/UiModeManagerService$8;->mLastNetworkRegisterTime:J

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "network"

    const-wide/32 v2, 0x5265c00

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mEmptyLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$800(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mDidFirstInit:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mDidFirstInit:Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/UiModeManagerService$8;->retrieveLocation()V

    :cond_2
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    iget-object v0, v0, Lcom/android/server/UiModeManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->isDoingNightMode()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocation:Landroid/location/Location;
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$700(Lcom/android/server/UiModeManagerService;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mNightMode:I
    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->access$300(Lcom/android/server/UiModeManagerService;)I

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v1}, Lcom/android/server/UiModeManagerService;->updateTwilightLocked()V

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    :cond_3
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v12

    .local v12, passiveLocationEnabled:Z
    :goto_2
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_5

    if-eqz v12, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mPassiveListenerEnabled:Z

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationManager:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$900(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationManager;

    move-result-object v0

    const-string v1, "passive"

    const-wide/16 v2, 0x0

    const v4, 0x469c4000

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mLocationListener:Landroid/location/LocationListener;
    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->access$1000(Lcom/android/server/UiModeManagerService;)Landroid/location/LocationListener;

    move-result-object v5

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mNetworkListenerEnabled:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/UiModeManagerService$8;->mPassiveListenerEnabled:Z

    if-nez v0, :cond_0

    :cond_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "LAST_UPDATE_INTERVAL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, interval:J
    long-to-double v0, v8

    const-wide/high16 v2, 0x3ff8

    mul-double/2addr v0, v2

    double-to-long v8, v0

    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-nez v0, :cond_8

    const-wide/16 v8, 0x1388

    :cond_7
    :goto_3
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .local v6, bundle:Landroid/os/Bundle;
    const-string v0, "LAST_UPDATE_INTERVAL"

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    .local v11, newMsg:Landroid/os/Message;
    invoke-virtual {v11, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$8;->this$0:Lcom/android/server/UiModeManagerService;

    #getter for: Lcom/android/server/UiModeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->access$400(Lcom/android/server/UiModeManagerService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .end local v6           #bundle:Landroid/os/Bundle;
    .end local v8           #interval:J
    .end local v10           #networkLocationEnabled:Z
    .end local v11           #newMsg:Landroid/os/Message;
    .end local v12           #passiveLocationEnabled:Z
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Ljava/lang/Exception;
    const/4 v10, 0x0

    .restart local v10       #networkLocationEnabled:Z
    goto/16 :goto_1

    .end local v7           #e:Ljava/lang/Exception;
    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    :catch_1
    move-exception v0

    move-object v7, v0

    .restart local v7       #e:Ljava/lang/Exception;
    const/4 v12, 0x0

    .restart local v12       #passiveLocationEnabled:Z
    goto :goto_2

    .end local v7           #e:Ljava/lang/Exception;
    .restart local v8       #interval:J
    :cond_8
    const-wide/32 v0, 0xdbba0

    cmp-long v0, v8, v0

    if-lez v0, :cond_7

    const-wide/32 v8, 0xdbba0

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
