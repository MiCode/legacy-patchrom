.class Lcom/android/server/BackupManagerService$PerformBackupTask;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformBackupTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PerformBackupThread"


# instance fields
.field mJournal:Ljava/io/File;

.field mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;"
        }
    .end annotation
.end field

.field mStateDir:Ljava/io/File;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Ljava/util/ArrayList;Ljava/io/File;)V
    .locals 3
    .parameter
    .parameter "transport"
    .parameter
    .parameter "journal"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/backup/IBackupTransport;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/BackupManagerService$BackupRequest;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .prologue
    .local p3, queue:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/BackupManagerService$BackupRequest;>;"
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doQueuedBackups(Lcom/android/internal/backup/IBackupTransport;)I
    .locals 11
    .parameter "transport"

    .prologue
    const/4 v9, 0x0

    const-string v10, "PerformBackupThread"

    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/BackupManagerService$BackupRequest;

    .local v4, request:Lcom/android/server/BackupManagerService$BackupRequest;
    const-string v6, "PerformBackupThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "starting agent for backup of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, agent:Landroid/app/IBackupAgent;
    iget-boolean v6, v4, Lcom/android/server/BackupManagerService$BackupRequest;->fullBackup:Z

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    move v3, v6

    .local v3, mode:I
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    new-instance v7, Landroid/os/WorkSource;

    iget-object v8, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v7, v8}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v7, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v7, v3}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v4, v0, p1}, Lcom/android/server/BackupManagerService$PerformBackupTask;->processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .local v5, result:I
    if-eqz v5, :cond_2

    :try_start_1
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v6}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    move v6, v5

    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v3           #mode:I
    .end local v4           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    .end local v5           #result:I
    :goto_3
    return v6

    .restart local v0       #agent:Landroid/app/IBackupAgent;
    .restart local v4       #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_0
    move v3, v9

    goto :goto_1

    .restart local v3       #mode:I
    :catch_0
    move-exception v6

    move-object v1, v6

    .local v1, ex:Ljava/lang/SecurityException;
    :try_start_2
    const-string v6, "PerformBackupThread"

    const-string v7, "error in bind/backup"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v6}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .end local v1           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v6

    goto :goto_0

    :catchall_0
    move-exception v6

    :try_start_4
    iget-object v7, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v7}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v7, v8}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    throw v6

    .end local v0           #agent:Landroid/app/IBackupAgent;
    .end local v3           #mode:I
    .end local v4           #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_1
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    move v6, v9

    goto :goto_3

    .restart local v0       #agent:Landroid/app/IBackupAgent;
    .restart local v3       #mode:I
    .restart local v4       #request:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_2
    :try_start_5
    iget-object v6, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static {v6}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v6

    iget-object v7, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v6, v7}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_0

    .restart local v5       #result:I
    :catch_2
    move-exception v6

    goto :goto_2

    .end local v5           #result:I
    :catch_3
    move-exception v7

    goto :goto_4
.end method

.method private processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I
    .locals 21
    .parameter "request"
    .parameter "agent"
    .parameter "transport"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .local v14, packageName:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object v4, v0

    move-object/from16 v0, v16

    move-object v1, v4

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v16, savedStateName:Ljava/io/File;
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".data"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v10, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v10, backupDataName:Ljava/io/File;
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    move-object v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".new"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v12, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v12, newStateName:Ljava/io/File;
    const/4 v5, 0x0

    .local v5, savedState:Landroid/os/ParcelFileDescriptor;
    const/4 v6, 0x0

    .local v6, backupData:Landroid/os/ParcelFileDescriptor;
    const/4 v7, 0x0

    .local v7, newState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextInt()I

    move-result v8

    .local v8, token:I
    :try_start_0
    const-string v4, "@pm@"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v13, Landroid/content/pm/PackageInfo;

    invoke-direct {v13}, Landroid/content/pm/PackageInfo;-><init>()V

    .local v13, packInfo:Landroid/content/pm/PackageInfo;
    iput-object v14, v13, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$BackupRequest;->fullBackup:Z

    move v4, v0

    if-nez v4, :cond_0

    const/high16 v4, 0x1800

    move-object/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    :cond_0
    const/high16 v4, 0x3c00

    invoke-static {v10, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    const/high16 v4, 0x3c00

    invoke-static {v12, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    const-wide/16 v19, 0x7530

    move-object v0, v4

    move v1, v8

    move-wide/from16 v2, v19

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v9, v4, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v4, p2

    invoke-interface/range {v4 .. v9}, Landroid/app/IBackupAgent;->doBackup(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    invoke-virtual {v4, v8}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v18

    .local v18, success:Z
    if-nez v18, :cond_5

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v8, "Backup timeout"

    .end local v8           #token:I
    invoke-direct {v4, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v13           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v18           #success:Z
    :catch_0
    move-exception v4

    move-object v11, v4

    .local v11, e:Ljava/lang/Exception;
    :try_start_1
    const-string v4, "PerformBackupThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error backing up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0xb07

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v11

    .end local v11           #e:Ljava/lang/Exception;
    aput-object v11, v8, v9

    invoke-static {v4, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    invoke-virtual {v12}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v4, 0x1

    if-eqz v5, :cond_1

    :try_start_2
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    :try_start_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7

    :cond_2
    :goto_2
    if-eqz v7, :cond_3

    :try_start_4
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_8

    :cond_3
    :goto_3
    const/4 v7, 0x0

    move-object v6, v7

    move-object v5, v7

    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v9, v0

    iget-object v9, v9, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v9}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .end local v10           #backupDataName:Ljava/io/File;
    :goto_4
    return v4

    .restart local v8       #token:I
    .restart local v10       #backupDataName:Ljava/io/File;
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v9, 0x40

    invoke-virtual {v4, v14, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v13

    .restart local v13       #packInfo:Landroid/content/pm/PackageInfo;
    goto/16 :goto_0

    .restart local v18       #success:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    invoke-virtual {v4, v14}, Lcom/android/server/BackupManagerService;->logBackupComplete(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v5, :cond_6

    :try_start_7
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    :cond_6
    :goto_5
    if-eqz v6, :cond_7

    :try_start_8
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a

    :cond_7
    :goto_6
    if-eqz v7, :cond_8

    :try_start_9
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_b

    :cond_8
    :goto_7
    const/4 v7, 0x0

    move-object v6, v7

    move-object v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v8, v0

    .end local v8           #token:I
    iget-object v8, v8, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v8}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    const/4 v15, 0x0

    .local v15, result:I
    :try_start_b
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v17, v0

    .local v17, size:I
    if-lez v17, :cond_a

    if-nez v15, :cond_9

    const/high16 v4, 0x1000

    invoke-static {v10, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v6

    move-object/from16 v0, p3

    move-object v1, v13

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Lcom/android/internal/backup/IBackupTransport;->performBackup(Landroid/content/pm/PackageInfo;Landroid/os/ParcelFileDescriptor;)I

    move-result v15

    :cond_9
    if-nez v15, :cond_a

    invoke-interface/range {p3 .. p3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v15

    :cond_a
    if-nez v15, :cond_f

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    const/16 v4, 0xb08

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v14, v8, v9

    const/4 v9, 0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .end local v10           #backupDataName:Ljava/io/File;
    aput-object v10, v8, v9

    invoke-static {v4, v8}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    :goto_8
    if-eqz v6, :cond_b

    :try_start_c
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2

    .end local v17           #size:I
    :cond_b
    :goto_9
    move v4, v15

    goto/16 :goto_4

    .end local v13           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v15           #result:I
    .end local v18           #success:Z
    .restart local v10       #backupDataName:Ljava/io/File;
    :catchall_0
    move-exception v4

    if-eqz v5, :cond_c

    :try_start_d
    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_3

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :cond_c
    :goto_a
    if-eqz v6, :cond_d

    :try_start_e
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    :cond_d
    :goto_b
    if-eqz v7, :cond_e

    :try_start_f
    invoke-virtual {v7}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5

    :cond_e
    :goto_c
    const/4 v7, 0x0

    move-object v6, v7

    move-object v5, v7

    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v5, v0

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    iget-object v5, v5, Lcom/android/server/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v6, v0

    .end local v6           #backupData:Landroid/os/ParcelFileDescriptor;
    iget-object v6, v6, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v6}, Landroid/util/SparseIntArray;->clear()V

    monitor-exit v5
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    throw v4

    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #backupData:Landroid/os/ParcelFileDescriptor;
    .restart local v13       #packInfo:Landroid/content/pm/PackageInfo;
    .restart local v15       #result:I
    .restart local v17       #size:I
    .restart local v18       #success:Z
    :cond_f
    const/16 v4, 0xb06

    :try_start_11
    invoke-static {v4, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto :goto_8

    .end local v10           #backupDataName:Ljava/io/File;
    .end local v17           #size:I
    :catch_1
    move-exception v4

    move-object v11, v4

    .restart local v11       #e:Ljava/lang/Exception;
    :try_start_12
    const-string v4, "PerformBackupThread"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Transport error backing up "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v4, 0xb06

    invoke-static {v4, v14}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    const/4 v15, 0x1

    if-eqz v6, :cond_b

    :try_start_13
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_2

    goto :goto_9

    .end local v11           #e:Ljava/lang/Exception;
    :catch_2
    move-exception v4

    goto :goto_9

    :catchall_1
    move-exception v4

    if-eqz v6, :cond_10

    :try_start_14
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_c

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :cond_10
    :goto_d
    throw v4

    .end local v13           #packInfo:Landroid/content/pm/PackageInfo;
    .end local v15           #result:I
    .end local v18           #success:Z
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v10       #backupDataName:Ljava/io/File;
    :catch_3
    move-exception v5

    goto :goto_a

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :catch_4
    move-exception v5

    goto :goto_b

    :catch_5
    move-exception v5

    goto :goto_c

    .end local v6           #backupData:Landroid/os/ParcelFileDescriptor;
    :catchall_2
    move-exception v4

    :try_start_15
    monitor-exit v5
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    throw v4

    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v6       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_6
    move-exception v5

    goto/16 :goto_1

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    :catch_7
    move-exception v5

    goto/16 :goto_2

    :catch_8
    move-exception v5

    goto/16 :goto_3

    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    :catchall_3
    move-exception v4

    :try_start_16
    monitor-exit v8
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    throw v4

    .restart local v8       #token:I
    .restart local v13       #packInfo:Landroid/content/pm/PackageInfo;
    .restart local v18       #success:Z
    :catch_9
    move-exception v4

    goto/16 :goto_5

    :catch_a
    move-exception v4

    goto/16 :goto_6

    :catch_b
    move-exception v4

    goto/16 :goto_7

    .end local v5           #savedState:Landroid/os/ParcelFileDescriptor;
    .end local v8           #token:I
    :catchall_4
    move-exception v5

    :try_start_17
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_4

    throw v5

    .end local v10           #backupDataName:Ljava/io/File;
    .restart local v5       #savedState:Landroid/os/ParcelFileDescriptor;
    .restart local v15       #result:I
    :catch_c
    move-exception v5

    goto :goto_d
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v9, 0x0

    .local v9, status:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .local v7, startRealtime:J
    const/16 v10, 0xa

    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    const/16 v10, 0xb05

    :try_start_0
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    new-instance v5, Ljava/io/File;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    const-string v11, "@pm@"

    invoke-direct {v5, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v5, pmState:Ljava/io/File;
    if-nez v9, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    const-string v10, "PerformBackupThread"

    const-string v11, "Initializing (wiping) backup state and transport storage"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v9

    if-nez v9, :cond_6

    const/16 v10, 0xb0b

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :cond_0
    :goto_0
    if-nez v9, :cond_1

    new-instance v3, Lcom/android/server/PackageManagerBackupAgent;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v10}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v11

    invoke-direct {v3, v10, v11}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V

    .local v3, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    new-instance v4, Lcom/android/server/BackupManagerService$BackupRequest;

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v11, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v11}, Landroid/content/pm/ApplicationInfo;-><init>()V

    const/4 v12, 0x0

    invoke-direct {v4, v10, v11, v12}, Lcom/android/server/BackupManagerService$BackupRequest;-><init>(Lcom/android/server/BackupManagerService;Landroid/content/pm/ApplicationInfo;Z)V

    .local v4, pmRequest:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v10, v4, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    const-string v11, "@pm@"

    iput-object v11, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v10

    invoke-static {v10}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v4, v10, v11}, Lcom/android/server/BackupManagerService$PerformBackupTask;->processOneBackup(Lcom/android/server/BackupManagerService$BackupRequest;Landroid/app/IBackupAgent;Lcom/android/internal/backup/IBackupTransport;)I

    move-result v9

    .end local v3           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v4           #pmRequest:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_1
    if-nez v9, :cond_2

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-direct {p0, v10}, Lcom/android/server/BackupManagerService$PerformBackupTask;->doQueuedBackups(Lcom/android/internal/backup/IBackupTransport;)I

    move-result v9

    :cond_2
    if-nez v9, :cond_3

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v10}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v9

    if-nez v9, :cond_8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-int v2, v10

    .local v2, millis:I
    const/16 v10, 0xb09

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v2           #millis:I
    :cond_3
    :goto_1
    const/4 v10, 0x2

    if-ne v9, v10, :cond_4

    const/16 v10, 0xb0a

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mStateDir:Ljava/io/File;

    invoke-virtual {v10, v11}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v10, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    if-nez v9, :cond_5

    :try_start_1
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_5
    if-eqz v9, :cond_13

    const-string v10, "PerformBackupThread"

    const-string v11, "Backup pass unsuccessful, restaging"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .local v6, req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v6, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_3

    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_6
    const/16 v10, 0xb06

    :try_start_2
    const-string v11, "(initialize)"

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v10, "PerformBackupThread"

    const-string v11, "Transport error in initializeDevice()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .end local v5           #pmState:Ljava/io/File;
    :catch_0
    move-exception v10

    move-object v0, v10

    .local v0, e:Ljava/lang/Exception;
    :try_start_3
    const-string v10, "PerformBackupThread"

    const-string v11, "Error in backup thread"

    invoke-static {v10, v11, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v9, 0x1

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v10, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-nez v10, :cond_7

    if-nez v9, :cond_7

    :try_start_4
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v11

    iput-wide v11, v10, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_7
    if-eqz v9, :cond_f

    const-string v10, "PerformBackupThread"

    const-string v11, "Backup pass unsuccessful, restaging"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .restart local v6       #req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v6, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_5

    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v6           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    .restart local v5       #pmState:Ljava/io/File;
    :cond_8
    const/16 v10, 0xb06

    :try_start_5
    const-string v11, "(finish)"

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    const-string v10, "PerformBackupThread"

    const-string v11, "Transport error in finishBackup()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .end local v5           #pmState:Ljava/io/File;
    :catchall_0
    move-exception v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-wide v11, v11, Lcom/android/server/BackupManagerService;->mCurrentToken:J

    const-wide/16 v13, 0x0

    cmp-long v11, v11, v13

    if-nez v11, :cond_9

    if-nez v9, :cond_9

    :try_start_6
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v12}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v12

    iput-wide v12, v11, Lcom/android/server/BackupManagerService;->mCurrentToken:J
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_9
    if-eqz v9, :cond_b

    const-string v11, "PerformBackupThread"

    const-string v12, "Backup pass unsuccessful, restaging"

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1       #i$:Ljava/util/Iterator;
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/BackupManagerService$BackupRequest;

    .restart local v6       #req:Lcom/android/server/BackupManagerService$BackupRequest;
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, v6, Lcom/android/server/BackupManagerService$BackupRequest;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v12, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/android/server/BackupManagerService;->dataChangedImpl(Ljava/lang/String;)V
    invoke-static {v11, v12}, Lcom/android/server/BackupManagerService;->access$600(Lcom/android/server/BackupManagerService;Ljava/lang/String;)V

    goto :goto_7

    .end local v6           #req:Lcom/android/server/BackupManagerService$BackupRequest;
    :cond_a
    :try_start_7
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v12}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v12

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v11, v12, v13}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;J)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_5

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_b
    :goto_8
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v11, :cond_c

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_c

    const-string v11, "PerformBackupThread"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to remove backup journal file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    const/4 v11, 0x2

    if-ne v9, v11, :cond_d

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v11}, Lcom/android/server/BackupManagerService;->backupNow()V

    :cond_d
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v10

    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_e
    :try_start_8
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v11

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v10, v11, v12}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;J)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_3

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_f
    :goto_9
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_10

    const-string v10, "PerformBackupThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to remove backup journal file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    const/4 v10, 0x2

    if-ne v9, v10, :cond_11

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->backupNow()V

    :cond_11
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    .end local v0           #e:Ljava/lang/Exception;
    :goto_a
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v5       #pmState:Ljava/io/File;
    :cond_12
    :try_start_9
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v11}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v11

    #calls: Lcom/android/server/BackupManagerService;->startBackupAlarmsLocked(J)V
    invoke-static {v10, v11, v12}, Lcom/android/server/BackupManagerService;->access$700(Lcom/android/server/BackupManagerService;J)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_1

    .end local v1           #i$:Ljava/util/Iterator;
    :cond_13
    :goto_b
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    if-eqz v10, :cond_14

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v10

    if-nez v10, :cond_14

    const-string v10, "PerformBackupThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to remove backup journal file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->mJournal:Ljava/io/File;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    const/4 v10, 0x2

    if-ne v9, v10, :cond_15

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-virtual {v10}, Lcom/android/server/BackupManagerService;->backupNow()V

    :cond_15
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformBackupTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto :goto_a

    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_1
    move-exception v10

    goto :goto_b

    .end local v1           #i$:Ljava/util/Iterator;
    :catch_2
    move-exception v10

    goto/16 :goto_2

    .end local v5           #pmState:Ljava/io/File;
    .restart local v0       #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_3
    move-exception v10

    goto :goto_9

    .end local v1           #i$:Ljava/util/Iterator;
    :catch_4
    move-exception v10

    goto/16 :goto_4

    .end local v0           #e:Ljava/lang/Exception;
    .restart local v1       #i$:Ljava/util/Iterator;
    :catch_5
    move-exception v11

    goto/16 :goto_8

    .end local v1           #i$:Ljava/util/Iterator;
    :catch_6
    move-exception v11

    goto/16 :goto_6
.end method
