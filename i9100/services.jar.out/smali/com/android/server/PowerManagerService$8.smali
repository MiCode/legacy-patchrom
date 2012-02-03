.class Lcom/android/server/PowerManagerService$8;
.super Ljava/lang/Object;
.source "PowerManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 2511
    iput-object p1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 2513
    iget-object v0, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v0

    monitor-enter v0

    .line 2514
    :try_start_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 2515
    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v2, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$5000(Lcom/android/server/PowerManagerService;)I

    move-result v2

    if-ne v2, v3, :cond_2

    move v2, v3

    :goto_0
    #calls: Lcom/android/server/PowerManagerService;->proximityChangedLocked(Z)V
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$5100(Lcom/android/server/PowerManagerService;Z)V

    .line 2516
    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    const/4 v2, -0x1

    #setter for: Lcom/android/server/PowerManagerService;->mProximityPendingValue:I
    invoke-static {v1, v2}, Lcom/android/server/PowerManagerService;->access$5002(Lcom/android/server/PowerManagerService;I)I

    .line 2518
    :cond_0
    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2519
    iget-object v1, p0, Lcom/android/server/PowerManagerService$8;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mProximityPartialLock:Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$5200(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->release()V

    .line 2521
    :cond_1
    monitor-exit v0

    .line 2522
    return-void

    .line 2515
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 2521
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
