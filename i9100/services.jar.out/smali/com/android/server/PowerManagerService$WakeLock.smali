.class Lcom/android/server/PowerManagerService$WakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WakeLock"
.end annotation


# instance fields
.field acqTime:J

.field activated:Z

.field final binder:Landroid/os/IBinder;

.field final flags:I

.field minState:I

.field final monitorType:I

.field final pid:I

.field final tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;

.field final uid:I

.field ws:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILandroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .parameter
    .parameter "f"
    .parameter "b"
    .parameter "t"
    .parameter "u"
    .parameter "p"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 711
    iput-object p1, p0, Lcom/android/server/PowerManagerService$WakeLock;->this$0:Lcom/android/server/PowerManagerService;

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 745
    iput-boolean v3, p0, Lcom/android/server/PowerManagerService$WakeLock;->activated:Z

    .line 713
    iput p2, p0, Lcom/android/server/PowerManagerService$WakeLock;->flags:I

    .line 714
    iput-object p3, p0, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    .line 715
    iput-object p4, p0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    .line 716
    #getter for: Lcom/android/server/PowerManagerService;->MY_UID:I
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$200(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-ne p5, v1, :cond_1

    const/16 v1, 0x3e8

    :goto_0
    iput v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->uid:I

    .line 717
    iput p6, p0, Lcom/android/server/PowerManagerService$WakeLock;->pid:I

    .line 718
    #getter for: Lcom/android/server/PowerManagerService;->MY_UID:I
    invoke-static {p1}, Lcom/android/server/PowerManagerService;->access$200(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-ne p5, v1, :cond_0

    const-string v1, "KEEP_SCREEN_ON_FLAG"

    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "KeyInputQueue"

    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLock;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 721
    :cond_0
    and-int/lit8 v1, p2, 0x3f

    if-ne v1, v3, :cond_2

    move v1, v4

    :goto_1
    iput v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    .line 728
    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p3, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :goto_3
    return-void

    :cond_1
    move v1, p5

    .line 716
    goto :goto_0

    :cond_2
    move v1, v3

    .line 721
    goto :goto_1

    .line 725
    :cond_3
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->monitorType:I

    goto :goto_2

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/server/PowerManagerService$WakeLock;->binderDied()V

    goto :goto_3
.end method


# virtual methods
.method public binderDied()V
    .locals 5

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/server/PowerManagerService$WakeLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 735
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$WakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$WakeLock;->binder:Landroid/os/IBinder;

    const/4 v3, 0x0

    const/4 v4, 0x1

    #calls: Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/server/PowerManagerService;->access$400(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V

    .line 736
    monitor-exit v0

    .line 737
    return-void

    .line 736
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
