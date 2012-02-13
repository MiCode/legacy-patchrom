.class Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;
.super Landroid/content/pm/IPackageDeleteObserver$Stub;
.source "DeviceManager3LMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceManager3LMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PackageDeleteObserver"
.end annotation


# instance fields
.field private doneFlag:Z

.field public returnCode:Z

.field final synthetic this$0:Lcom/android/server/DeviceManager3LMService;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceManager3LMService;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->this$0:Lcom/android/server/DeviceManager3LMService;

    invoke-direct {p0}, Landroid/content/pm/IPackageDeleteObserver$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->doneFlag:Z

    return-void
.end method


# virtual methods
.method public isDone()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->doneFlag:Z

    return v0
.end method

.method public packageDeleted(Z)V
    .locals 1
    .parameter "returnCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->returnCode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/DeviceManager3LMService$PackageDeleteObserver;->doneFlag:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
