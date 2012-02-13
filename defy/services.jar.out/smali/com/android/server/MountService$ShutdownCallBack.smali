.class Lcom/android/server/MountService$ShutdownCallBack;
.super Lcom/android/server/MountService$UnmountCallBack;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MountService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ShutdownCallBack"
.end annotation


# instance fields
.field observer:Landroid/os/storage/IMountShutdownObserver;

.field final synthetic this$0:Lcom/android/server/MountService;


# direct methods
.method constructor <init>(Lcom/android/server/MountService;Ljava/lang/String;Landroid/os/storage/IMountShutdownObserver;)V
    .locals 1
    .parameter
    .parameter "path"
    .parameter "observer"

    .prologue
    iput-object p1, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/MountService$UnmountCallBack;-><init>(Lcom/android/server/MountService;Ljava/lang/String;Z)V

    iput-object p3, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    return-void
.end method


# virtual methods
.method handleFinished()V
    .locals 5

    .prologue
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->this$0:Lcom/android/server/MountService;

    iget-object v3, p0, Lcom/android/server/MountService$UnmountCallBack;->path:Ljava/lang/String;

    const/4 v4, 0x1

    #calls: Lcom/android/server/MountService;->doUnmountVolume(Ljava/lang/String;Z)I
    invoke-static {v2, v3, v4}, Lcom/android/server/MountService;->access$100(Lcom/android/server/MountService;Ljava/lang/String;Z)I

    move-result v1

    .local v1, ret:I
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/MountService$ShutdownCallBack;->observer:Landroid/os/storage/IMountShutdownObserver;

    invoke-interface {v2, v1}, Landroid/os/storage/IMountShutdownObserver;->onShutDownComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "MountService"

    const-string v3, "RemoteException when shutting down"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
