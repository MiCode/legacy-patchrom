.class Lcom/android/server/PackageManagerService$8;
.super Ljava/lang/Object;
.source "PackageManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/PackageManagerService;->clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PackageManagerService;

.field final synthetic val$observer:Landroid/content/pm/IPackageDataObserver;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/PackageManagerService$8;->this$0:Lcom/android/server/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v3, p0, Lcom/android/server/PackageManagerService$8;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mHandler:Lcom/android/server/PackageManagerService$PackageHandler;

    invoke-virtual {v3, p0}, Lcom/android/server/PackageManagerService$PackageHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/server/PackageManagerService$8;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/PackageManagerService$8;->this$0:Lcom/android/server/PackageManagerService;

    iget-object v5, p0, Lcom/android/server/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    #calls: Lcom/android/server/PackageManagerService;->clearApplicationUserDataLI(Ljava/lang/String;)Z
    invoke-static {v4, v5}, Lcom/android/server/PackageManagerService;->access$3300(Lcom/android/server/PackageManagerService;Ljava/lang/String;)Z

    move-result v2

    .local v2, succeeded:Z
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const-string v3, "devicestoragemonitor"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceStorageMonitorService;

    .local v0, dsm:Lcom/android/server/DeviceStorageMonitorService;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/DeviceStorageMonitorService;->updateMemory()V

    .end local v0           #dsm:Lcom/android/server/DeviceStorageMonitorService;
    :cond_0
    iget-object v3, p0, Lcom/android/server/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    if-eqz v3, :cond_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/PackageManagerService$8;->val$observer:Landroid/content/pm/IPackageDataObserver;

    iget-object v4, p0, Lcom/android/server/PackageManagerService$8;->val$packageName:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/content/pm/IPackageDataObserver;->onRemoveCompleted(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    return-void

    .end local v2           #succeeded:Z
    :catchall_0
    move-exception v4

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v2       #succeeded:Z
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/os/RemoteException;
    const-string v3, "PackageManager"

    const-string v4, "Observer no longer exists."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
