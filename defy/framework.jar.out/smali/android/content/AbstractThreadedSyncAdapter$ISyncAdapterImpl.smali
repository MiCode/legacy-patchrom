.class Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
.super Landroid/content/ISyncAdapter$Stub;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ISyncAdapterImpl"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0}, Landroid/content/ISyncAdapter$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;)V

    return-void
.end method


# virtual methods
.method public cancelSync(Landroid/content/ISyncContext;)V
    .locals 3
    .parameter "syncContext"

    .prologue
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$100(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    move-result-object v0

    .local v0, syncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    #getter for: Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->access$600(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/SyncContext;->getSyncContextBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/content/ISyncContext;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter;->onSyncCanceled()V

    :cond_0
    return-void

    .end local v0           #syncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public initialize(Landroid/accounts/Account;Ljava/lang/String;)V
    .locals 3
    .parameter "account"
    .parameter "authority"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, extras:Landroid/os/Bundle;
    const-string v1, "initialize"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p2, p1, v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method public startSync(Landroid/content/ISyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 11
    .parameter "syncContext"
    .parameter "authority"
    .parameter "account"
    .parameter "extras"

    .prologue
    new-instance v3, Landroid/content/SyncContext;

    invoke-direct {v3, p1}, Landroid/content/SyncContext;-><init>(Landroid/content/ISyncContext;)V

    .local v3, syncContextClient:Landroid/content/SyncContext;
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$100(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p4, :cond_2

    const-string v0, "initialize"

    const/4 v1, 0x0

    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p3, p2}, Landroid/content/ContentResolver;->getIsSyncable(Landroid/accounts/Account;Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p3, p2, v0}, Landroid/content/ContentResolver;->setIsSyncable(Landroid/accounts/Account;Ljava/lang/String;I)V

    :cond_0
    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    invoke-virtual {v3, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    monitor-exit v9

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v10, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SyncAdapterThread-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    #setter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v10, v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$202(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    #getter for: Landroid/content/AbstractThreadedSyncAdapter;->mSyncThread:Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
    invoke-static {v0}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->start()V

    const/4 v8, 0x0

    .local v8, alreadyInProgress:Z
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v8, :cond_1

    sget-object v0, Landroid/content/SyncResult;->ALREADY_IN_PROGRESS:Landroid/content/SyncResult;

    invoke-virtual {v3, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    goto :goto_0

    .end local v8           #alreadyInProgress:Z
    :cond_3
    const/4 v8, 0x1

    .restart local v8       #alreadyInProgress:Z
    goto :goto_1

    .end local v8           #alreadyInProgress:Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
