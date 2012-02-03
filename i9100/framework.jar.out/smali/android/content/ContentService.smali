.class public final Landroid/content/ContentService;
.super Landroid/content/IContentService$Stub;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentService$ObserverNode;,
        Landroid/content/ContentService$ObserverCall;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFactoryTest:Z

.field private final mRootNode:Landroid/content/ContentService$ObserverNode;

.field private mSyncManager:Landroid/content/SyncManager;

.field private final mSyncManagerLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/content/IContentService$Stub;-><init>()V

    .line 44
    new-instance v0, Landroid/content/ContentService$ObserverNode;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/content/ContentService$ObserverNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    .line 46
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    .line 95
    iput-object p1, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    .line 96
    iput-boolean p2, p0, Landroid/content/ContentService;->mFactoryTest:Z

    .line 97
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    .line 98
    return-void
.end method

.method private getSyncManager()Landroid/content/SyncManager;
    .locals 5

    .prologue
    .line 49
    iget-object v1, p0, Landroid/content/ContentService;->mSyncManagerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_0
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_0

    new-instance v2, Landroid/content/SyncManager;

    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    iget-boolean v4, p0, Landroid/content/ContentService;->mFactoryTest:Z

    invoke-direct {v2, v3, v4}, Landroid/content/SyncManager;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    monitor-exit v1

    return-object v2

    .line 53
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 54
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    const-string v2, "ContentService"

    const-string v3, "Can\'t create SyncManager"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public static main(Landroid/content/Context;Z)Landroid/content/IContentService;
    .locals 2
    .parameter "context"
    .parameter "factoryTest"

    .prologue
    .line 460
    new-instance v0, Landroid/content/ContentService;

    invoke-direct {v0, p0, p1}, Landroid/content/ContentService;-><init>(Landroid/content/Context;Z)V

    .line 461
    .local v0, service:Landroid/content/ContentService;
    const-string v1, "content"

    invoke-static {v1, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 462
    return-object v0
.end method


# virtual methods
.method public addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 8
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "pollFrequency"

    .prologue
    .line 279
    iget-object v0, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v2, "no permission to write the sync settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v6

    .line 283
    .local v6, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/SyncStorageEngine;->addPeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 288
    return-void

    .line 286
    :catchall_0
    move-exception v0

    invoke-static {v6, v7}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    .locals 4
    .parameter "mask"
    .parameter "callback"

    .prologue
    .line 436
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 438
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 439
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p2, :cond_0

    .line 440
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->addStatusChangeListener(ILandroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 445
    return-void

    .line 443
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public cancelSync(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 4
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 218
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 220
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 221
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->clearScheduledSyncOperations(Landroid/accounts/Account;Ljava/lang/String;)V

    .line 223
    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->cancelActiveSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 228
    return-void

    .line 226
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method protected declared-synchronized dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "caller doesn\'t have the DUMP permission"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 69
    .local v0, identityToken:J
    :try_start_1
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    if-nez v2, :cond_0

    .line 70
    const-string v2, "No SyncManager created!  (Disk full?)"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    :try_start_2
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 77
    monitor-exit p0

    return-void

    .line 72
    :cond_0
    :try_start_3
    iget-object v2, p0, Landroid/content/ContentService;->mSyncManager:Landroid/content/SyncManager;

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v2

    :try_start_4
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 62
    .end local v0           #identityToken:J
    :catchall_1
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getCurrentSync()Landroid/content/SyncInfo;
    .locals 6

    .prologue
    .line 390
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 394
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 395
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 396
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getCurrentSync()Landroid/content/SyncInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 399
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 401
    :goto_0
    return-object v3

    .line 399
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 401
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    .locals 6
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 314
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 318
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 319
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 320
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 324
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 326
    :goto_0
    return v3

    .line 324
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 326
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public getMasterSyncAutomatically()Z
    .locals 6

    .prologue
    .line 345
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 349
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 350
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 351
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/SyncStorageEngine;->getMasterSyncAutomatically()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 354
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 356
    :goto_0
    return v3

    .line 354
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 356
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "account"
    .parameter "providerName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation

    .prologue
    .line 302
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to read the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 306
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/content/SyncStorageEngine;->getPeriodicSyncs(Landroid/accounts/Account;Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 309
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 306
    return-object v2

    .line 309
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    .locals 4

    .prologue
    .line 237
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 239
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 240
    .local v2, syncManager:Landroid/content/SyncManager;
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncAdapterTypes()[Landroid/content/SyncAdapterType;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 242
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 240
    return-object v3

    .line 242
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "providerName"

    .prologue
    .line 247
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to read the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 251
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 252
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 253
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 257
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 259
    :goto_0
    return v3

    .line 257
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 259
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getSyncStatus(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 405
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 409
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 410
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->getStatusByAccountAndAuthority(Landroid/accounts/Account;Ljava/lang/String;)Landroid/content/SyncStatusInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 415
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 417
    :goto_0
    return-object v3

    .line 415
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 417
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 374
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 378
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 379
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 380
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncActive(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 384
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 386
    :goto_0
    return v3

    .line 384
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 386
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 6
    .parameter "account"
    .parameter "authority"

    .prologue
    .line 421
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.READ_SYNC_STATS"

    const-string/jumbo v5, "no permission to read the sync stats"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 425
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 426
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 427
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Landroid/content/SyncStorageEngine;->isSyncPending(Landroid/accounts/Account;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 430
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 432
    :goto_0
    return v3

    .line 430
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .restart local v2       #syncManager:Landroid/content/SyncManager;
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 432
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public notifyChange(Landroid/net/Uri;Landroid/database/IContentObserver;ZZ)V
    .locals 21
    .parameter "uri"
    .parameter "observer"
    .parameter "observerWantsSelfNotifications"
    .parameter "syncToNetwork"

    .prologue
    .line 124
    const-string v3, "ContentService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    const-string v3, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notifying update of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from observer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", syncToNetwork "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v12

    .line 132
    .local v12, identityToken:J
    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 133
    .local v8, calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v9, v0

    monitor-enter v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v3, v0

    const/4 v5, 0x0

    move-object/from16 v4, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentService$ObserverNode;->collectObserversLocked(Landroid/net/Uri;ILandroid/database/IContentObserver;ZLjava/util/ArrayList;)V

    .line 136
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 137
    :try_start_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 138
    .local v16, numCalls:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move v0, v11

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    .line 139
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/ContentService$ObserverCall;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 141
    .local v18, oc:Landroid/content/ContentService$ObserverCall;
    :try_start_3
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v3, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/ContentService$ObserverCall;->mSelfNotify:Z

    move v4, v0

    invoke-interface {v3, v4}, Landroid/database/IContentObserver;->onChange(Z)V

    .line 142
    const-string v3, "ContentService"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 143
    const-string v3, "ContentService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Notified "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "update at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 138
    :cond_1
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 136
    .end local v11           #i:I
    .end local v16           #numCalls:I
    .end local v18           #oc:Landroid/content/ContentService$ObserverCall;
    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v9
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 170
    .end local v8           #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    :catchall_1
    move-exception v3

    invoke-static {v12, v13}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3

    .line 145
    .restart local v8       #calls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverCall;>;"
    .restart local v11       #i:I
    .restart local v16       #numCalls:I
    .restart local v18       #oc:Landroid/content/ContentService$ObserverCall;
    :catch_0
    move-exception v3

    move-object v10, v3

    .line 146
    .local v10, ex:Landroid/os/RemoteException;
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    move-object v3, v0

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 147
    :try_start_7
    const-string v4, "ContentService"

    const-string v5, "Found dead observer, removing"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mObserver:Landroid/database/IContentObserver;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 149
    .local v9, binder:Landroid/os/IBinder;
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/ContentService$ObserverCall;->mNode:Landroid/content/ContentService$ObserverNode;

    move-object v4, v0

    #getter for: Landroid/content/ContentService$ObserverNode;->mObservers:Ljava/util/ArrayList;
    invoke-static {v4}, Landroid/content/ContentService$ObserverNode;->access$000(Landroid/content/ContentService$ObserverNode;)Ljava/util/ArrayList;

    move-result-object v15

    .line 151
    .local v15, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 152
    .local v17, numList:I
    const/4 v14, 0x0

    .local v14, j:I
    :goto_2
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    .line 153
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/content/ContentService$ObserverNode$ObserverEntry;

    .line 154
    .local v19, oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/ContentService$ObserverNode$ObserverEntry;->observer:Landroid/database/IContentObserver;

    move-object v4, v0

    invoke-interface {v4}, Landroid/database/IContentObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    if-ne v4, v9, :cond_2

    .line 155
    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 156
    add-int/lit8 v14, v14, -0x1

    .line 157
    add-int/lit8 v17, v17, -0x1

    .line 152
    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 160
    .end local v19           #oe:Landroid/content/ContentService$ObserverNode$ObserverEntry;
    :cond_3
    monitor-exit v3

    goto :goto_1

    .end local v9           #binder:Landroid/os/IBinder;
    .end local v14           #j:I
    .end local v15           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentService$ObserverNode$ObserverEntry;>;"
    .end local v17           #numList:I
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v4

    .line 163
    .end local v10           #ex:Landroid/os/RemoteException;
    .end local v18           #oc:Landroid/content/ContentService$ObserverCall;
    :cond_4
    if-eqz p4, :cond_5

    .line 164
    invoke-direct/range {p0 .. p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v20

    .line 165
    .local v20, syncManager:Landroid/content/SyncManager;
    if-eqz v20, :cond_5

    .line 166
    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v20

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/SyncManager;->scheduleLocalSync(Landroid/accounts/Account;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 170
    .end local v20           #syncManager:Landroid/content/SyncManager;
    :cond_5
    invoke-static {v12, v13}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 172
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/content/IContentService$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 84
    :catch_0
    move-exception v0

    .line 87
    .local v0, e:Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_0

    .line 88
    const-string v1, "ContentService"

    const-string v2, "Content Service Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    :cond_0
    throw v0
.end method

.method public registerContentObserver(Landroid/net/Uri;ZLandroid/database/IContentObserver;)V
    .locals 3
    .parameter "uri"
    .parameter "notifyForDescendents"
    .parameter "observer"

    .prologue
    .line 102
    if-eqz p3, :cond_0

    if-nez p1, :cond_1

    .line 103
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid uri and observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_1
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 106
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    iget-object v2, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1, p3, p2, v2}, Landroid/content/ContentService$ObserverNode;->addObserverLocked(Landroid/net/Uri;Landroid/database/IContentObserver;ZLjava/lang/Object;)V

    .line 109
    monitor-exit v0

    .line 110
    return-void

    .line 109
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 291
    iget-object v2, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v4, "no permission to write the sync settings"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 295
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Landroid/content/SyncStorageEngine;->removePeriodicSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 299
    return-void

    .line 297
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    .locals 4
    .parameter "callback"

    .prologue
    .line 448
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 450
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 451
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 452
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->removeStatusChangeListener(Landroid/content/ISyncStatusObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 457
    return-void

    .line 455
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 9
    .parameter "account"
    .parameter "authority"
    .parameter "extras"

    .prologue
    .line 194
    invoke-static {p3}, Landroid/content/ContentResolver;->validateSyncExtrasBundle(Landroid/os/Bundle;)V

    .line 197
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v7

    .line 199
    .local v7, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v0

    .line 200
    .local v0, syncManager:Landroid/content/SyncManager;
    if-eqz v0, :cond_0

    .line 201
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Landroid/content/SyncManager;->scheduleSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;JZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 207
    return-void

    .line 205
    .end local v0           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v1

    invoke-static {v7, v8}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    .locals 6
    .parameter "account"
    .parameter "providerName"
    .parameter "syncable"

    .prologue
    .line 330
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 334
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 335
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 336
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 342
    return-void

    .line 340
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setMasterSyncAutomatically(Z)V
    .locals 6
    .parameter "flag"

    .prologue
    .line 360
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 364
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 365
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 366
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/SyncStorageEngine;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 369
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 371
    return-void

    .line 369
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 6
    .parameter "account"
    .parameter "providerName"
    .parameter "sync"

    .prologue
    .line 263
    iget-object v3, p0, Landroid/content/ContentService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.WRITE_SYNC_SETTINGS"

    const-string/jumbo v5, "no permission to write the sync settings"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-static {}, Landroid/content/ContentService;->clearCallingIdentity()J

    move-result-wide v0

    .line 267
    .local v0, identityToken:J
    :try_start_0
    invoke-direct {p0}, Landroid/content/ContentService;->getSyncManager()Landroid/content/SyncManager;

    move-result-object v2

    .line 268
    .local v2, syncManager:Landroid/content/SyncManager;
    if-eqz v2, :cond_0

    .line 269
    invoke-virtual {v2}, Landroid/content/SyncManager;->getSyncStorageEngine()Landroid/content/SyncStorageEngine;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Landroid/content/SyncStorageEngine;->setSyncAutomatically(Landroid/accounts/Account;Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    .line 275
    return-void

    .line 273
    .end local v2           #syncManager:Landroid/content/SyncManager;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/content/ContentService;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public unregisterContentObserver(Landroid/database/IContentObserver;)V
    .locals 2
    .parameter "observer"

    .prologue
    .line 113
    if-nez p1, :cond_0

    .line 114
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must pass a valid observer"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_0
    iget-object v0, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroid/content/ContentService;->mRootNode:Landroid/content/ContentService$ObserverNode;

    invoke-virtual {v1, p1}, Landroid/content/ContentService$ObserverNode;->removeObserverLocked(Landroid/database/IContentObserver;)Z

    .line 119
    monitor-exit v0

    .line 120
    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
