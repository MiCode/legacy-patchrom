.class public Lcom/broadcom/bt/service/map/MapService;
.super Ljava/lang/Object;
.source "MapService.java"


# static fields
.field private static final D:Z = true

.field private static final DISABLED_MAP_PROVIDERS:Ljava/lang/String; = "DisabledMapProviders"

.field private static final TAG:Ljava/lang/String; = "MapService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsFinished:Z

.field private mProviders:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 48
    invoke-static {}, Lcom/broadcom/bt/service/map/MapService;->Native_InitMapService()V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    .line 43
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    .line 65
    iput-object p1, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 66
    return-void
.end method

.method private native Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSENotifyRegistrationResponse(IB)V
.end method

.method private native Native_BluetoothMapMSEPushResponse(IJB)V
.end method

.method private native Native_BluetoothMapMSESetMsgStatusResponse(IBB)V
.end method

.method private native Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method private native Native_BluetoothMapMSEStop(I)V
.end method

.method private native Native_CleanupMapService()V
.end method

.method private static native Native_InitMapService()V
.end method


# virtual methods
.method public disableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v4, "MapService"

    .line 514
    const-string v3, "MapService"

    const-string v3, "disableProvider"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 517
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 518
    const-string v3, "MapService"

    const-string v3, "context is null"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :goto_0
    return-void

    .line 524
    :cond_0
    const-string v3, "DisabledMapProviders"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 525
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 526
    .local v1, se:Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 527
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 529
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public enableProvider(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "datasourceName"

    .prologue
    const-string v5, "MapService"

    .line 490
    const-string v4, "MapService"

    const-string v4, "enableProvider"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 493
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 494
    const-string v4, "MapService"

    const-string v4, "context is null"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :goto_0
    return-void

    .line 499
    :cond_0
    const-string v4, "DisabledMapProviders"

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 500
    .local v3, sp:Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 501
    .local v2, se:Landroid/content/SharedPreferences$Editor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 502
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.broadcom.bt.service.map.DS_DISCOVER"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 508
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public enumRegisteredProviders()[Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v11, 0x0

    const-string v12, "MapService"

    const-string v13, ":"

    .line 454
    const-string v10, "MapService"

    const-string v10, "enumRegisteredProviders"

    invoke-static {v12, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 457
    .local v2, appContext:Landroid/content/Context;
    if-nez v2, :cond_0

    .line 458
    const-string v10, "MapService"

    const-string v10, "context is null"

    invoke-static {v12, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-array v10, v11, [Ljava/lang/String;

    .line 485
    .end local p0
    :goto_0
    return-object v10

    .line 462
    .restart local p0
    :cond_0
    const-string v10, "DisabledMapProviders"

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 463
    .local v9, sp:Landroid/content/SharedPreferences;
    invoke-interface {v9}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 465
    .local v1, allProps:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    const/4 v7, 0x0

    .line 466
    .local v7, mProvidersCopy:Ljava/util/Vector;
    iget-object v11, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v11

    .line 467
    :try_start_0
    iget-object v10, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/util/Vector;

    move-object v7, v0

    .line 468
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 470
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v10

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v11

    add-int/2addr v10, v11

    new-array v8, v10, [Ljava/lang/String;

    .line 471
    .local v8, ret:[Ljava/lang/String;
    const/4 v5, 0x0

    .line 473
    .local v5, i:I
    :goto_1
    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v10

    if-ge v5, v10, :cond_1

    .line 475
    invoke-virtual {v7, v5}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 476
    .local v3, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    new-instance v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v3, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":enabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v5

    .line 477
    add-int/lit8 v5, v5, 0x1

    .line 478
    goto :goto_1

    .line 468
    .end local v3           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v5           #i:I
    .end local v8           #ret:[Ljava/lang/String;
    :catchall_0
    move-exception v10

    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v10

    .line 480
    .restart local v5       #i:I
    .restart local v8       #ret:[Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local p0
    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 482
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    new-instance v10, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":"

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ":disabled"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v10, v8, v5

    .line 483
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    :cond_2
    move-object v10, v8

    .line 485
    goto/16 :goto_0
.end method

.method protected finalize()V
    .locals 1

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->finish()V

    .line 72
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-void

    .line 73
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public declared-synchronized finish()V
    .locals 2

    .prologue
    .line 84
    monitor-enter p0

    :try_start_0
    const-string v0, "MapService"

    const-string v1, "MapService.finish()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    if-nez v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/MapService;->unregisterallProviders()V

    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    :cond_0
    monitor-exit p0

    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public folderListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B[Lcom/broadcom/bt/service/map/FolderInfo;)V
    .locals 12
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "folder_path"
    .parameter "status"
    .parameter "folder_info"

    .prologue
    .line 260
    const-string v2, "MapService"

    const-string v3, "FolderListingResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v11

    .line 267
    .local v11, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v11, :cond_2

    .line 268
    if-nez p5, :cond_1

    .line 270
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    move-object/from16 v0, p6

    array-length v0, v0

    move v2, v0

    if-ge v10, v2, :cond_0

    .line 271
    const-string v2, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderListingResponse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-wide v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-object v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p6, v10

    iget-object v4, v4, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 274
    :cond_0
    move-object/from16 v0, p6

    move-object v1, v11

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mFolderInfo:[Lcom/broadcom/bt/service/map/FolderInfo;

    .line 277
    const/4 v5, 0x1

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderSizeBytes:J

    long-to-int v6, v2

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-object v7, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mFolderName:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-object v8, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mCreatedDateTimeMS:Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v2, p6, v2

    iget-wide v2, v2, Lcom/broadcom/bt/service/map/FolderInfo;->mMode:J

    long-to-int v2, v2

    int-to-byte v9, v2

    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 288
    .end local v10           #i:I
    :goto_1
    return-void

    .line 282
    :cond_1
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const-string v8, ""

    const/4 v9, 0x0

    move-object v2, p0

    move v3, p1

    move/from16 v4, p5

    invoke-virtual/range {v2 .. v9}, Lcom/broadcom/bt/service/map/MapService;->sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V

    goto :goto_1

    .line 285
    :cond_2
    const-string v2, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FolderListingResponse - session not found for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getCallback(I)Lcom/broadcom/bt/service/map/IMapCallback;
    .locals 5
    .parameter "mse_instance_id"

    .prologue
    .line 658
    const/4 v0, 0x0

    .line 659
    .local v0, callback:Lcom/broadcom/bt/service/map/IMapCallback;
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 660
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 662
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 663
    .local v1, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v4, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v4, p1, :cond_1

    .line 664
    iget-object v0, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    .line 668
    .end local v1           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v3

    .line 669
    return-object v0

    .line 660
    .restart local v1       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 668
    .end local v1           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .locals 5
    .parameter "mse_session_id"

    .prologue
    .line 644
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 645
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 646
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 647
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v2

    .line 648
    .local v2, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v2, :cond_0

    .line 649
    monitor-exit v3

    move-object v3, v2

    .line 653
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :goto_1
    return-object v3

    .line 645
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .restart local v2       #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 652
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    .end local v2           #s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    monitor-exit v3

    .line 653
    const/4 v3, 0x0

    goto :goto_1

    .line 652
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getContext(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "mse_instance_id"

    .prologue
    .line 615
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 616
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 618
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 619
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    if-ne v3, p1, :cond_0

    .line 620
    monitor-exit v2

    move-object v2, v0

    .line 624
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .line 616
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 623
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v2

    .line 624
    const/4 v2, 0x0

    goto :goto_1

    .line 623
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getContext(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "mse_name"
    .parameter "mse_type"

    .prologue
    .line 601
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 602
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 604
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 605
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 606
    monitor-exit v2

    move-object v2, v0

    .line 609
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .line 602
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 609
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    const/4 v3, 0x0

    monitor-exit v2

    move-object v2, v3

    goto :goto_1

    .line 610
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "provider_id"
    .parameter "data_source_id"

    .prologue
    .line 571
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 572
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 574
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 575
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 576
    monitor-exit v2

    move-object v2, v0

    .line 580
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .line 572
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 579
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v2

    .line 580
    const/4 v2, 0x0

    goto :goto_1

    .line 579
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getContextByDsName(Ljava/lang/String;B)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "dsName"
    .parameter "mse_type"

    .prologue
    .line 586
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 587
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 589
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 590
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    if-ne p2, v3, :cond_0

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    .line 592
    monitor-exit v2

    move-object v2, v0

    .line 596
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .line 587
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 595
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v2

    .line 596
    const/4 v2, 0x0

    goto :goto_1

    .line 595
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method getContextFromSessionId(I)Lcom/broadcom/bt/service/map/MapProviderContext;
    .locals 4
    .parameter "mse_session_id"

    .prologue
    .line 629
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v2

    .line 630
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 632
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v3, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 633
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 634
    monitor-exit v2

    move-object v2, v0

    .line 638
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_1
    return-object v2

    .line 630
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 637
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    monitor-exit v2

    .line 638
    const/4 v2, 0x0

    goto :goto_1

    .line 637
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public getMsgFailResponse(IJB)V
    .locals 6
    .parameter "session_id"
    .parameter "message_id"
    .parameter "status"

    .prologue
    .line 393
    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    .line 396
    return-void
.end method

.method public getMsgResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 6
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_file_path"

    .prologue
    .line 377
    const-string v0, "MapService"

    const-string v1, "GetMsgResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-nez p5, :cond_0

    .line 382
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p0

    move v1, p1

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    .line 389
    :goto_0
    return-void

    .line 385
    :cond_0
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v0, p4}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;)J

    move-result-wide v2

    const-string v5, ""

    move-object v0, p0

    move v1, p1

    move v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEGetMsgResponse(IJBLjava/lang/String;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/MapService;->mIsFinished:Z

    .line 81
    return-void
.end method

.method isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "provider_id"
    .parameter "data_source_id"
    .parameter "data_source_name"

    .prologue
    const/4 v5, 0x0

    const-string v7, ":"

    const-string v6, "MapService"

    .line 677
    const-string v3, "MapService"

    const-string v3, "isProviderDisabled"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    iget-object v0, p0, Lcom/broadcom/bt/service/map/MapService;->mContext:Landroid/content/Context;

    .line 679
    .local v0, appContext:Landroid/content/Context;
    if-nez v0, :cond_0

    .line 680
    const-string v3, "MapService"

    const-string v3, "context is null"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v5

    .line 690
    :goto_0
    return v3

    .line 683
    :cond_0
    const-string v3, "DisabledMapProviders"

    invoke-virtual {v0, v3, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 684
    .local v2, sp:Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 685
    .local v1, sProp:Ljava/lang/String;
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 687
    const-string v3, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Provider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v5

    .line 690
    goto :goto_0
.end method

.method isRegistered(BLjava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 554
    const/4 v2, 0x0

    .line 555
    .local v2, ret:Z
    const-string v3, "MapService"

    const-string v4, "isRegistered"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 557
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 558
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 559
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 560
    const/4 v2, 0x1

    .line 564
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v3

    .line 565
    return v2

    .line 557
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 564
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public isRegistered(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "provider_id"
    .parameter "datasource_id"

    .prologue
    .line 540
    const/4 v2, 0x0

    .line 541
    .local v2, ret:Z
    iget-object v3, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v3

    .line 542
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 543
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v4, v1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 544
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    const/4 v2, 0x1

    .line 549
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v3

    .line 550
    return v2

    .line 542
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 549
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public msgEntryResponse(IBIIIIBBBBBLjava/lang/String;BBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 26
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "refdata"
    .parameter "parameter_mask"
    .parameter "org_msg_size"
    .parameter "attachment_size"
    .parameter "is_text"
    .parameter "is_high_priority"
    .parameter "is_read"
    .parameter "is_sent"
    .parameter "is_protected"
    .parameter "msg_handle"
    .parameter "msg_type"
    .parameter "reception_status"
    .parameter "subject"
    .parameter "date_time"
    .parameter "sender_name"
    .parameter "sender_addressing"
    .parameter "recipient_name"
    .parameter "recipient_addressing"
    .parameter "replyto_addressing"
    .parameter "folder_path"

    .prologue
    .line 337
    const-string v3, "MapService"

    const-string v4, "MsgEntryResponse"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    invoke-virtual/range {p0 .. p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v3

    iget-object v3, v3, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    move-object v0, v3

    move-object/from16 v1, p12

    move-object/from16 v2, p22

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v15

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move/from16 v14, p11

    move/from16 v17, p13

    move/from16 v18, p14

    move-object/from16 v19, p15

    move-object/from16 v20, p16

    move-object/from16 v21, p17

    move-object/from16 v22, p18

    move-object/from16 v23, p19

    move-object/from16 v24, p20

    move-object/from16 v25, p21

    invoke-direct/range {v3 .. v25}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgEntryResponse(IBIIIIBBBBBJBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public msgListingResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;B[Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 7
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "parent_path"
    .parameter "status"
    .parameter "mse_time"
    .parameter "new_msg"
    .parameter "msg_info"

    .prologue
    const-string v2, "MapService"

    .line 298
    const-string v0, "MapService"

    const-string v0, "MsgListingResponse"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v6

    .line 306
    .local v6, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v6, :cond_1

    .line 310
    const/4 v3, 0x0

    .line 311
    .local v3, listSize:I
    if-nez p5, :cond_0

    .line 312
    iput-object p8, v6, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mMessageInfo:[Lcom/broadcom/bt/service/map/MessageInfo;

    .line 313
    array-length v3, p8

    :cond_0
    move-object v0, p0

    move v1, p1

    move v2, p5

    move-object v4, p6

    move v5, p7

    .line 315
    invoke-direct/range {v0 .. v5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEMsgListInfoResponse(IBILjava/lang/String;B)V

    .line 321
    .end local v3           #listSize:I
    :goto_0
    return-void

    .line 319
    :cond_1
    const-string v0, "MapService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No client session found for session id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public msgPushResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
    .locals 4
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "message_id"
    .parameter "status"
    .parameter "msg_folder"

    .prologue
    .line 357
    const-string v2, "MapService"

    const-string v3, "MsgPushResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .line 363
    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_0

    .line 365
    invoke-virtual {v0, p6}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 366
    .local v1, s_virtual_folder:Ljava/lang/String;
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p4, v1}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v2

    invoke-direct {p0, p1, v2, v3, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEPushResponse(IJB)V

    .line 369
    .end local v1           #s_virtual_folder:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public notifyClient(Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 14
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "notification_type"
    .parameter "message_id"
    .parameter "folder_path"
    .parameter "old_folder_path"
    .parameter "msg_type"

    .prologue
    .line 220
    const-string v3, "MapService"

    const-string v4, "NotifyClient"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    invoke-virtual/range {p0 .. p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v12

    .line 223
    .local v12, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v12, :cond_2

    .line 224
    const/4 v11, 0x0

    .line 225
    .local v11, clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    iget-object v3, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 226
    iget-object v3, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mSessions:Ljava/util/Vector;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    check-cast v11, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    .line 227
    .restart local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    move-object v0, v11

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 229
    .local v13, msg_virtual_folder:Ljava/lang/String;
    const-string/jumbo v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v13, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 230
    .local v8, msg_virtual_folder_stripped:Ljava/lang/String;
    move-object v0, v11

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 231
    .local v9, msg_old_virtual_folder:Ljava/lang/String;
    const-string/jumbo v3, "root/"

    invoke-virtual {v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    const-string/jumbo v3, "root"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v9, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 234
    :cond_0
    iget v4, v12, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    move-object v0, v12

    move-object/from16 v1, p4

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MapProviderContext;->getMAPMsgId(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v6

    move-object v3, p0

    move/from16 v5, p3

    move/from16 v10, p7

    invoke-direct/range {v3 .. v10}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyClients(IBJLjava/lang/String;Ljava/lang/String;B)V

    .line 246
    .end local v8           #msg_virtual_folder_stripped:Ljava/lang/String;
    .end local v9           #msg_old_virtual_folder:Ljava/lang/String;
    .end local v11           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    .end local v13           #msg_virtual_folder:Ljava/lang/String;
    :goto_0
    return-void

    .line 238
    .restart local v11       #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_1
    const-string v3, "MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotifyClient- error finding session for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    .end local v11           #clientSession:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    :cond_2
    const-string v3, "MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NotifyClient- error finding context for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status"

    .prologue
    .line 441
    const-string v0, "MapService"

    const-string v1, "NotifyRegistrationResponse"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0, p1, p4}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSENotifyRegistrationResponse(IB)V

    .line 444
    return-void
.end method

.method public registerDSProvider(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V
    .locals 10
    .parameter "provider_type"
    .parameter "provider_id"
    .parameter "provider_display_name"
    .parameter "provider_ds_id"
    .parameter "provider_ds_display_name"
    .parameter "feature_message_filter"
    .parameter "feature_message_offset_browsing"
    .parameter "folder_mappings"
    .parameter "callback"

    .prologue
    .line 121
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RegisterDSProvider provider_id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "provider name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {p0, p1, p2, p4}, Lcom/broadcom/bt/service/map/MapService;->isRegistered(BLjava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    invoke-virtual {p0, p2, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->isProviderDisabled(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 133
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Registering Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    new-instance v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcom/broadcom/bt/service/map/MapProviderContext;-><init>(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;Lcom/broadcom/bt/service/map/IMapCallback;)V

    .line 138
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 149
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    const-string v1, "MapService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provider "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already registered"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendFolderListingInfo(IBIILjava/lang/String;Ljava/lang/String;B)V
    .locals 0
    .parameter "mse_session_id"
    .parameter "status"
    .parameter "ref_data"
    .parameter "file_size"
    .parameter "folder_name"
    .parameter "cr_time"
    .parameter "mode"

    .prologue
    .line 253
    invoke-direct/range {p0 .. p7}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEFolderListingResponse(IBIILjava/lang/String;Ljava/lang/String;B)V

    .line 255
    return-void
.end method

.method public setMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "request_id"
    .parameter "provider_id"
    .parameter "datasource_id"
    .parameter "status_type"
    .parameter "status"
    .parameter "messageId"
    .parameter "msg_folder"

    .prologue
    .line 404
    const-string v2, "MapService"

    const-string v3, "SetMsgStatusResponse"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0, p1}, Lcom/broadcom/bt/service/map/MapService;->getClientSession(I)Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;

    move-result-object v0

    .line 410
    .local v0, s:Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;
    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0, p7}, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->getVirtualFolder(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 415
    .local v1, sVirtualFolder:Ljava/lang/String;
    const-string v2, "deleted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 418
    if-nez p5, :cond_0

    .line 420
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    invoke-virtual {v2, p6}, Lcom/broadcom/bt/service/map/MapProviderContext;->removeMAPMsgId(Ljava/lang/String;)V

    .line 433
    .end local v1           #sVirtualFolder:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-direct {p0, p1, p4, p5}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSESetMsgStatusResponse(IBB)V

    .line 434
    return-void

    .line 428
    .restart local v1       #sVirtualFolder:Ljava/lang/String;
    :cond_1
    if-nez p5, :cond_0

    .line 429
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext$ClientSession;->mCtx:Lcom/broadcom/bt/service/map/MapProviderContext;

    const-string/jumbo v3, "root/telecom/msg/deleted"

    invoke-virtual {v2, p6, v3}, Lcom/broadcom/bt/service/map/MapProviderContext;->setMAPMsgFolder(Ljava/lang/String;Ljava/lang/String;)J

    goto :goto_0
.end method

.method public startMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v4, "MapService"

    const-string v3, " "

    .line 182
    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 186
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    .line 187
    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance starting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSDisplayName:Ljava/lang/String;

    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderRootPath:Ljava/lang/String;

    iget-byte v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderType:B

    invoke-direct {p0, v1, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStart(Ljava/lang/String;Ljava/lang/String;B)V

    .line 196
    :goto_0
    return-void

    .line 192
    :cond_0
    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StartMSEInstance - error finding context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v3, "MapService"

    .line 202
    const-string v1, "MapService"

    const-string/jumbo v1, "stopMSEInstance"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/broadcom/bt/service/map/MapService;->getContext(Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/service/map/MapProviderContext;

    move-result-object v0

    .line 205
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    if-eqz v0, :cond_0

    .line 206
    iget v1, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mMseInstanceId:I

    invoke-direct {p0, v1}, Lcom/broadcom/bt/service/map/MapService;->Native_BluetoothMapMSEStop(I)V

    .line 212
    :goto_0
    return-void

    .line 208
    :cond_0
    const-string v1, "MapService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMSEInstance - error finding context for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "provider_id"
    .parameter "provider_ds_id"

    .prologue
    const-string v6, "MapService"

    .line 152
    const-string v4, "MapService"

    const-string/jumbo v4, "unregisterDSProvider"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v1, 0x0

    .line 154
    .local v1, foundCtx:Lcom/broadcom/bt/service/map/MapProviderContext;
    iget-object v4, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v4

    .line 155
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    :try_start_0
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_0

    .line 156
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 157
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    invoke-virtual {v0, p1, p2}, Lcom/broadcom/bt/service/map/MapProviderContext;->isEqual(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 158
    move-object v1, v0

    .line 159
    iget-object v5, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 163
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_0
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    if-eqz v1, :cond_1

    .line 167
    const-string v4, "MapService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UnregisterDSProvider - removing ctx for provider id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " provider_ds_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :try_start_1
    iget-object v4, v1, Lcom/broadcom/bt/service/map/MapProviderContext;->mCallback:Lcom/broadcom/bt/service/map/IMapCallback;

    const/4 v5, 0x1

    invoke-interface {v4, p1, p2, v5}, Lcom/broadcom/bt/service/map/IMapCallback;->onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 175
    :cond_1
    :goto_1
    return-void

    .line 155
    .restart local v0       #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 171
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 172
    .local v3, t:Ljava/lang/Throwable;
    const-string v4, "MapService"

    const-string v4, "Error calling callback onMSEStateChanged()"

    invoke-static {v6, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public unregisterallProviders()V
    .locals 5

    .prologue
    const-string v1, "MapService"

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :try_start_1
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 97
    const-string v2, "MapService"

    const-string/jumbo v3, "unregisterallProviders() - No Providers registered"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/broadcom/bt/service/map/MapService;->mProviders:Ljava/util/Vector;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/broadcom/bt/service/map/MapProviderContext;

    .line 103
    .local v0, ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    const-string v2, "MapService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregisterallProviders - Stopping MSE instance Provider Id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ProviderDSId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object v2, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderId:Ljava/lang/String;

    iget-object v3, v0, Lcom/broadcom/bt/service/map/MapProviderContext;->mProviderDSId:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/broadcom/bt/service/map/MapService;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 107
    .end local v0           #ctx:Lcom/broadcom/bt/service/map/MapProviderContext;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 109
    :catch_0
    move-exception v1

    .line 112
    :goto_1
    return-void

    .line 107
    :cond_1
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 108
    :try_start_4
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/MapService;->Native_CleanupMapService()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method
