.class Lcom/android/server/BackupManagerService$PerformInitializeTask;
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
    name = "PerformInitializeTask"
.end annotation


# instance fields
.field mQueue:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BackupManagerService;Ljava/util/HashSet;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, transportNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const-string v10, "BackupManagerService"

    :try_start_0
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->mQueue:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .local v9, transportName:Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->getTransport(Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;
    invoke-static {v10, v9}, Lcom/android/server/BackupManagerService;->access$000(Lcom/android/server/BackupManagerService;Ljava/lang/String;)Lcom/android/internal/backup/IBackupTransport;

    move-result-object v8

    .local v8, transport:Lcom/android/internal/backup/IBackupTransport;
    if-nez v8, :cond_0

    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Requested init for "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " but not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v8           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v9           #transportName:Ljava/lang/String;
    :catch_0
    move-exception v10

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    :goto_1
    invoke-virtual {v10}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v8       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v9       #transportName:Ljava/lang/String;
    :cond_0
    :try_start_1
    const-string v10, "BackupManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Initializing (wiping) backup transport storage: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xb05

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .local v5, startRealtime:J
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->initializeDevice()I

    move-result v7

    .local v7, status:I
    if-nez v7, :cond_1

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I

    move-result v7

    :cond_1
    if-nez v7, :cond_2

    const-string v10, "BackupManagerService"

    const-string v11, "Device init successful"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    sub-long/2addr v10, v5

    long-to-int v4, v10

    .local v4, millis:I
    const/16 v10, 0xb0b

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    new-instance v11, Ljava/io/File;

    iget-object v12, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v12, v12, Lcom/android/server/BackupManagerService;->mBaseStateDir:Ljava/io/File;

    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Lcom/android/server/BackupManagerService;->resetBackupState(Ljava/io/File;)V

    const/16 v10, 0xb09

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v9}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    monitor-exit v10

    goto/16 :goto_0

    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #millis:I
    .end local v5           #startRealtime:J
    .end local v7           #status:I
    .end local v8           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v9           #transportName:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v2, v10

    .local v2, e:Ljava/lang/Exception;
    :try_start_4
    const-string v10, "BackupManagerService"

    const-string v11, "Unexpected error performing init"

    invoke-static {v10, v11, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1

    .end local v2           #e:Ljava/lang/Exception;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #startRealtime:J
    .restart local v7       #status:I
    .restart local v8       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v9       #transportName:Ljava/lang/String;
    :cond_2
    :try_start_5
    const-string v10, "BackupManagerService"

    const-string v11, "Transport error in initializeDevice()"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v10, 0xb06

    const-string v11, "(initialize)"

    invoke-static {v10, v11}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    :try_start_6
    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v12, 0x1

    invoke-virtual {v11, v12, v9}, Lcom/android/server/BackupManagerService;->recordInitPendingLocked(ZLjava/lang/String;)V

    monitor-exit v10
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-interface {v8}, Lcom/android/internal/backup/IBackupTransport;->requestBackupTime()J

    move-result-wide v0

    .local v0, delay:J
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    #getter for: Lcom/android/server/BackupManagerService;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v10}, Lcom/android/server/BackupManagerService;->access$300(Lcom/android/server/BackupManagerService;)Landroid/app/AlarmManager;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    add-long/2addr v12, v0

    iget-object v14, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v14, v14, Lcom/android/server/BackupManagerService;->mRunInitIntent:Landroid/app/PendingIntent;

    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .end local v0           #delay:J
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v5           #startRealtime:J
    .end local v7           #status:I
    .end local v8           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v9           #transportName:Ljava/lang/String;
    :catchall_1
    move-exception v10

    iget-object v11, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v11, v11, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v11}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v10

    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #startRealtime:J
    .restart local v7       #status:I
    .restart local v8       #transport:Lcom/android/internal/backup/IBackupTransport;
    .restart local v9       #transportName:Ljava/lang/String;
    :catchall_2
    move-exception v11

    :try_start_8
    monitor-exit v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .end local v5           #startRealtime:J
    .end local v7           #status:I
    .end local v8           #transport:Lcom/android/internal/backup/IBackupTransport;
    .end local v9           #transportName:Ljava/lang/String;
    :cond_3
    iget-object v10, p0, Lcom/android/server/BackupManagerService$PerformInitializeTask;->this$0:Lcom/android/server/BackupManagerService;

    iget-object v10, v10, Lcom/android/server/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    goto/16 :goto_1
.end method
