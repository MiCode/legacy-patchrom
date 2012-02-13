.class Lcom/android/server/BackupManagerService$PerformRestoreTask;
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
    name = "PerformRestoreTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BackupManagerService$PerformRestoreTask$RestoreRequest;
    }
.end annotation


# instance fields
.field private mNeedFullBackup:Z

.field private mObserver:Landroid/app/backup/IRestoreObserver;

.field private mPmToken:I

.field private mStateDir:Ljava/io/File;

.field private mTargetPackage:Landroid/content/pm/PackageInfo;

.field private mToken:J

.field private mTransport:Lcom/android/internal/backup/IBackupTransport;

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/app/backup/IRestoreObserver;JLandroid/content/pm/PackageInfo;IZ)V
    .locals 3
    .parameter
    .parameter "transport"
    .parameter "observer"
    .parameter "restoreSetToken"
    .parameter "targetPackage"
    .parameter "pmToken"
    .parameter "needFullBackup"

    .prologue
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iput-object p3, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    iput-wide p4, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    iput-object p6, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    iput p7, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    iput-boolean p8, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p1, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {p2}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    .locals 16
    .parameter "app"
    .parameter "appVersionCode"
    .parameter "agent"
    .parameter "needFullBackup"

    .prologue
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object v10, v0

    .local v10, packageName:Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mDataDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".restore"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v7, backupDataName:Ljava/io/File;
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    move-object v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".new"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v9, newStateName:Ljava/io/File;
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mStateDir:Ljava/io/File;

    move-object v1, v0

    invoke-direct {v11, v1, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .local v11, savedStateName:Ljava/io/File;
    const/4 v2, 0x0

    .local v2, backupData:Landroid/os/ParcelFileDescriptor;
    const/4 v4, 0x0

    .local v4, newState:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mTokenGenerator:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v5

    .local v5, token:I
    const/high16 v1, 0x3c00

    :try_start_0
    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object v1, v0

    invoke-interface {v1, v2}, Lcom/android/internal/backup/IBackupTransport;->getRestoreData(Landroid/os/ParcelFileDescriptor;)I

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error getting restore data for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xb0f

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_0
    :goto_0
    if-eqz v4, :cond_1

    :try_start_2
    throw v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_1
    :goto_1
    const/4 v4, 0x0

    move-object v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz p4, :cond_2

    :goto_2
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_2
    return-void

    :cond_3
    :try_start_3
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V

    const/high16 v1, 0x1000

    invoke-static {v7, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    const/high16 v1, 0x3c00

    invoke-static {v9, v1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    const-wide/32 v14, 0xea60

    invoke-virtual {v1, v5, v14, v15}, Lcom/android/server/BackupManagerService;->prepareOperationTimeout(IJ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v6, v1, Lcom/android/server/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v1, p3

    move/from16 v3, p2

    invoke-interface/range {v1 .. v6}, Landroid/app/IBackupAgent;->doRestore(Landroid/os/ParcelFileDescriptor;ILandroid/os/ParcelFileDescriptor;ILandroid/app/backup/IBackupManager;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    invoke-virtual {v1, v5}, Lcom/android/server/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v13

    .local v13, success:Z
    if-nez v13, :cond_6

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "restore timeout"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .end local v13           #success:Z
    :catch_0
    move-exception v1

    move-object v8, v1

    .local v8, e:Ljava/lang/Exception;
    :try_start_4
    const-string v1, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error restoring data for "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v1, 0xb10

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    const/4 v6, 0x1

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #e:Ljava/lang/Exception;
    aput-object v8, v3, v6

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    invoke-virtual {v1, v10}, Lcom/android/server/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_3
    if-eqz v4, :cond_5

    :try_start_6
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    :cond_5
    :goto_4
    const/4 v4, 0x0

    move-object v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz p4, :cond_2

    goto/16 :goto_2

    .restart local v13       #success:Z
    :cond_6
    :try_start_7
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v14

    long-to-int v12, v14

    .local v12, size:I
    const/16 v1, 0xb11

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v3, v6

    const/4 v6, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v3, v6

    invoke-static {v1, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_7

    :try_start_8
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_7
    :goto_5
    if-eqz v4, :cond_8

    :try_start_9
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_8
    :goto_6
    const/4 v4, 0x0

    move-object v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v1, v0

    iget-object v1, v1, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v5}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz p4, :cond_2

    goto/16 :goto_2

    .end local v12           #size:I
    .end local v13           #success:Z
    :catchall_0
    move-exception v1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    if-eqz v2, :cond_9

    :try_start_a
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    :cond_9
    :goto_7
    if-eqz v4, :cond_a

    :try_start_b
    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    :cond_a
    :goto_8
    const/4 v4, 0x0

    move-object v2, v4

    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object v2, v0

    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    iget-object v2, v2, Lcom/android/server/BackupManagerService;->mCurrentOperations:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    if-eqz p4, :cond_b

    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    :cond_b
    throw v1

    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_1
    move-exception v2

    goto :goto_7

    .end local v2           #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_2
    move-exception v2

    goto :goto_8

    .restart local v2       #backupData:Landroid/os/ParcelFileDescriptor;
    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto/16 :goto_0

    :catch_6
    move-exception v1

    goto/16 :goto_1

    .restart local v12       #size:I
    .restart local v13       #success:Z
    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_6
.end method

.method public run()V
    .locals 27

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v20

    .local v20, startRealtime:J
    const/16 v17, 0x0

    .local v17, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/4 v9, -0x1

    .local v9, error:I
    const/16 v22, 0xb0e

    const/16 v23, 0x2

    :try_start_0
    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v14, Landroid/content/pm/PackageInfo;

    invoke-direct {v14}, Landroid/content/pm/PackageInfo;-><init>()V

    .local v14, omPackage:Landroid/content/pm/PackageInfo;
    const-string v22, "@pm@"

    move-object/from16 v0, v22

    move-object v1, v14

    iput-object v0, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->allAgentPackages()Ljava/util/List;

    move-result-object v6

    .local v6, agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    move-object/from16 v0, v19

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v22, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v23

    invoke-interface/range {v22 .. v23}, Landroid/app/backup/IRestoreObserver;->restoreStarting(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    const/16 v25, 0x0

    move/from16 v0, v25

    new-array v0, v0, [Landroid/content/pm/PackageInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/content/pm/PackageInfo;

    move-object/from16 v0, v22

    move-wide/from16 v1, v23

    move-object v3, v5

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/backup/IBackupTransport;->startRestore(J[Landroid/content/pm/PackageInfo;)I

    move-result v22

    if-eqz v22, :cond_b

    const-string v22, "BackupManagerService"

    const-string v23, "Error starting restore operation"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_9

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_a

    :cond_1
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_2

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_3

    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1d

    :cond_3
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :goto_5
    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_6
    return-void

    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto/16 :goto_0

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_0
    move-exception v22

    move-object/from16 v8, v22

    .local v8, e:Ljava/lang/Exception;
    :goto_7
    :try_start_7
    const-string v22, "BackupManagerService"

    const-string v23, "Error in restore thread"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    .end local v8           #e:Ljava/lang/Exception;
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_5

    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_5
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_6

    if-eqz v17, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_7

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1e

    :cond_7
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_5

    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_1
    move-exception v22

    move-object/from16 v8, v22

    .local v8, e:Landroid/os/RemoteException;
    :try_start_b
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreStarting"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    goto/16 :goto_1

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v8           #e:Landroid/os/RemoteException;
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catchall_0
    move-exception v22

    :goto_b
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v23, v0

    invoke-interface/range {v23 .. v23}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_c} :catch_5

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_d} :catch_6

    :cond_8
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    move-object/from16 v2, v23

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    if-lez v23, :cond_a

    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_1f

    :cond_a
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v22

    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_b
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v16

    .local v16, packageName:Ljava/lang/String;
    if-nez v16, :cond_f

    const-string v22, "BackupManagerService"

    const-string v23, "Error getting first restore package"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_10} :catch_b

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_c

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_11} :catch_c

    :cond_c
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_d

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_e

    :try_start_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_12} :catch_1c

    :cond_e
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_5

    :cond_f
    :try_start_13
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const-string v22, "BackupManagerService"

    const-string v23, "No restore data available"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v13, v0

    .local v13, millis:I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_d

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_10

    :try_start_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_15} :catch_e

    :cond_10
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_11

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_12

    :try_start_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_1b

    :cond_12
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_5

    .end local v13           #millis:I
    :cond_13
    :try_start_17
    const-string v22, "@pm@"

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_17

    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Expected restore data for \"@pm@\", found only \""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "@pm@"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package manager data missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_f

    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_14

    :try_start_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_19} :catch_10

    :cond_14
    :goto_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_15

    if-eqz v17, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    throw v17

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    throw v1

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    throw v0

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    throw v2

    move-object/from16 v0, p0

    throw v0

    move-object/from16 v22, v0

    throw v22

    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_16

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_1a

    :cond_16
    :goto_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    goto/16 :goto_5

    :cond_17
    :try_start_1b
    new-instance v18, Lcom/android/server/PackageManagerBackupAgent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/PackageManagerBackupAgent;-><init>(Landroid/content/pm/PackageManager;Ljava/util/List;)V
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .local v18, pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    const/16 v22, 0x0

    :try_start_1c
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->onBind()Landroid/os/IBinder;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/app/IBackupAgent$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IBackupAgent;

    move-result-object v23

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move/from16 v24, v0

    move-object/from16 v0, p0

    move-object v1, v14

    move/from16 v2, v22

    move-object/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->hasMetadata()Z

    move-result v22

    if-nez v22, :cond_1b

    const-string v22, "BackupManagerService"

    const-string v23, "No restore metadata available, so not restoring settings"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const-string v25, "@pm@"

    aput-object v25, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package manager restore metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_2

    :try_start_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_1d} :catch_11

    :goto_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_18

    :try_start_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_1e} :catch_12

    :cond_18
    :goto_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_19

    if-eqz v18, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_19
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_1a

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_1f} :catch_19

    :cond_1a
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_6

    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_1b
    const/4 v7, 0x0

    .local v7, count:I
    :cond_1c
    :goto_1b
    :try_start_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->nextRestorePackage()Ljava/lang/String;

    move-result-object v16

    if-nez v16, :cond_20

    const-string v22, "BackupManagerService"

    const-string v23, "Error getting next restore package"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb0f

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_2

    :try_start_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_21} :catch_13

    :goto_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1d

    :try_start_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_22} :catch_14

    :cond_1d
    :goto_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_1e

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_1f

    :try_start_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_23 .. :try_end_23} :catch_18

    :cond_1f
    :goto_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_6

    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_20
    :try_start_24
    const-string v22, ""

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_24

    const/4 v9, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    sub-long v22, v22, v20

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move v13, v0

    .restart local v13       #millis:I
    const/16 v22, 0xb12

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    const/16 v24, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_2

    :try_start_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Lcom/android/internal/backup/IBackupTransport;->finishRestore()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_25} :catch_15

    :goto_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    if-eqz v22, :cond_21

    :try_start_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v9

    invoke-interface {v0, v1}, Landroid/app/backup/IRestoreObserver;->restoreFinished(I)V
    :try_end_26
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_26} :catch_16

    :cond_21
    :goto_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_22

    if-eqz v18, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredPackages()Ljava/util/Set;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/BackupManagerService;->mAncestralPackages:Ljava/util/Set;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mToken:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/BackupManagerService;->mAncestralToken:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->writeRestoreTokens()V

    :cond_22
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v22, v0

    if-lez v22, :cond_23

    :try_start_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mPackageManagerBinder:Landroid/content/pm/IPackageManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mPmToken:I

    move/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/content/pm/IPackageManager;->finishPackageInstall(I)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_27} :catch_17

    :cond_23
    :goto_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/PowerManager$WakeLock;->release()V

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_6

    .end local v13           #millis:I
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_24
    :try_start_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2

    if-eqz v22, :cond_25

    :try_start_29
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move v1, v7

    move-object/from16 v2, v16

    invoke-interface {v0, v1, v2}, Landroid/app/backup/IRestoreObserver;->onUpdate(ILjava/lang/String;)V
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_29} :catch_3
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_2

    :cond_25
    :goto_22
    :try_start_2a
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/server/PackageManagerBackupAgent;->getRestoredMetadata(Ljava/lang/String;)Lcom/android/server/PackageManagerBackupAgent$Metadata;

    move-result-object v12

    .local v12, metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    if-nez v12, :cond_26

    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Missing metadata for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package metadata missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_1b

    .end local v7           #count:I
    .end local v12           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    :catch_2
    move-exception v22

    move-object/from16 v8, v22

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_7

    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v7       #count:I
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_3
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died in onUpdate"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mObserver:Landroid/app/backup/IRestoreObserver;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_2

    goto :goto_22

    .end local v7           #count:I
    .end local v8           #e:Landroid/os/RemoteException;
    :catchall_1
    move-exception v22

    move-object/from16 v17, v18

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    goto/16 :goto_b

    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v7       #count:I
    .restart local v12       #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :cond_26
    const/16 v10, 0x40

    .local v10, flags:I
    :try_start_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$500(Lcom/android/server/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    move v2, v10

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2b .. :try_end_2b} :catch_4
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_2b} :catch_2

    move-result-object v15

    .local v15, packageInfo:Landroid/content/pm/PackageInfo;
    :try_start_2c
    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    move/from16 v0, v22

    move/from16 v1, v23

    if-le v0, v1, :cond_27

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x2

    and-int v22, v22, v23

    if-nez v22, :cond_27

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " > installed version "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .local v11, message:Ljava/lang/String;
    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ": "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    aput-object v11, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_1b

    .end local v11           #message:Ljava/lang/String;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    :catch_4
    move-exception v22

    move-object/from16 v8, v22

    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v22, "BackupManagerService"

    const-string v23, "Invalid package restoring data"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Package missing on device"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_1b

    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v15       #packageInfo:Landroid/content/pm/PackageInfo;
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object v0, v12

    iget-object v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->signatures:[Landroid/content/pm/Signature;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v15

    #calls: Lcom/android/server/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/BackupManagerService;->access$900(Lcom/android/server/BackupManagerService;[Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v22

    if-nez v22, :cond_28

    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Signature mismatch restoring "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Signature mismatch"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto/16 :goto_1b

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v22 .. v24}, Lcom/android/server/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    .local v5, agent:Landroid/app/IBackupAgent;
    if-nez v5, :cond_29

    const-string v22, "BackupManagerService"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Can\'t find backup agent for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0xb10

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    aput-object v16, v23, v24

    const/16 v24, 0x1

    const-string v25, "Restore agent missing"

    aput-object v25, v23, v24

    invoke-static/range {v22 .. v23}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_2

    goto/16 :goto_1b

    :cond_29
    :try_start_2d
    move-object v0, v12

    iget v0, v0, Lcom/android/server/PackageManagerBackupAgent$Metadata;->versionCode:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mNeedFullBackup:Z

    move/from16 v23, v0

    move-object/from16 v0, p0

    move-object v1, v15

    move/from16 v2, v22

    move-object v3, v5

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/BackupManagerService$PerformRestoreTask;->processOneRestore(Landroid/content/pm/PackageInfo;ILandroid/app/IBackupAgent;Z)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_2

    add-int/lit8 v7, v7, 0x1

    :try_start_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v22, v0

    if-nez v22, :cond_1c

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    const/high16 v23, 0x1

    and-int v22, v22, v23

    if-eqz v22, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v22, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v22 .. v22}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v22

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v24, v0

    invoke-interface/range {v22 .. v24}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    goto/16 :goto_1b

    :catchall_2
    move-exception v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v23

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    invoke-interface/range {v23 .. v24}, Landroid/app/IActivityManager;->unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->mTargetPackage:Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    if-nez v23, :cond_2a

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v23, v0

    const/high16 v24, 0x1

    and-int v23, v23, v24

    if-eqz v23, :cond_2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/BackupManagerService$PerformRestoreTask;->this$0:Lcom/android/server/BackupManagerService;

    move-object/from16 v23, v0

    #getter for: Lcom/android/server/BackupManagerService;->mActivityManager:Landroid/app/IActivityManager;
    invoke-static/range {v23 .. v23}, Lcom/android/server/BackupManagerService;->access$800(Lcom/android/server/BackupManagerService;)Landroid/app/IActivityManager;

    move-result-object v23

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    invoke-interface/range {v23 .. v25}, Landroid/app/IActivityManager;->killApplicationProcess(Ljava/lang/String;I)V

    :cond_2a
    throw v22
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_2

    .end local v5           #agent:Landroid/app/IBackupAgent;
    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v7           #count:I
    .end local v10           #flags:I
    .end local v12           #metaInfo:Lcom/android/server/PackageManagerBackupAgent$Metadata;
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v15           #packageInfo:Landroid/content/pm/PackageInfo;
    .end local v16           #packageName:Ljava/lang/String;
    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_5
    move-exception v23

    move-object/from16 v8, v23

    .local v8, e:Landroid/os/RemoteException;
    const-string v23, "BackupManagerService"

    const-string v24, "Error finishing restore"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_c

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_6
    move-exception v23

    move-object/from16 v8, v23

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v23, "BackupManagerService"

    const-string v24, "Restore observer died at restoreFinished"

    invoke-static/range {v23 .. v24}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .local v8, e:Ljava/lang/Exception;
    :catch_7
    move-exception v22

    move-object/from16 v8, v22

    .local v8, e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_8
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v6       #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .restart local v14       #omPackage:Landroid/content/pm/PackageInfo;
    .restart local v19       #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_9
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_a
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v16       #packageName:Ljava/lang/String;
    :catch_b
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_f

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_c
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_10

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #millis:I
    :catch_d
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_12

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_e
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_13

    .end local v8           #e:Landroid/os/RemoteException;
    .end local v13           #millis:I
    :catch_f
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_15

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_10
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_16

    .end local v8           #e:Landroid/os/RemoteException;
    .end local v17           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v18       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_11
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_18

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_12
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v7       #count:I
    :catch_13
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1c

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_14
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1d

    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v13       #millis:I
    :catch_15
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Error finishing restore"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object v2, v8

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1f

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_16
    move-exception v22

    move-object/from16 v8, v22

    .restart local v8       #e:Landroid/os/RemoteException;
    const-string v22, "BackupManagerService"

    const-string v23, "Restore observer died at restoreFinished"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_20

    .end local v8           #e:Landroid/os/RemoteException;
    :catch_17
    move-exception v22

    goto/16 :goto_21

    .end local v13           #millis:I
    :catch_18
    move-exception v22

    goto/16 :goto_1e

    .end local v7           #count:I
    :catch_19
    move-exception v22

    goto/16 :goto_1a

    .end local v18           #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    .restart local v17       #pmAgent:Lcom/android/server/PackageManagerBackupAgent;
    :catch_1a
    move-exception v22

    goto/16 :goto_17

    .restart local v13       #millis:I
    :catch_1b
    move-exception v22

    goto/16 :goto_14

    .end local v13           #millis:I
    :catch_1c
    move-exception v22

    goto/16 :goto_11

    .end local v16           #packageName:Ljava/lang/String;
    :catch_1d
    move-exception v22

    goto/16 :goto_4

    .end local v6           #agentPackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v14           #omPackage:Landroid/content/pm/PackageInfo;
    .end local v19           #restorePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :catch_1e
    move-exception v22

    goto/16 :goto_a

    :catch_1f
    move-exception v23

    goto/16 :goto_e
.end method
