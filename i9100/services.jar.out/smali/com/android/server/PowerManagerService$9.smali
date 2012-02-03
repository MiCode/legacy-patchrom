.class Lcom/android/server/PowerManagerService$9;
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
    .line 2525
    iput-object p1, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 2527
    iget-object v1, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLocks:Lcom/android/server/PowerManagerService$LockList;
    invoke-static {v1}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Lcom/android/server/PowerManagerService$LockList;

    move-result-object v1

    monitor-enter v1

    .line 2528
    :try_start_0
    iget-object v2, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v2}, Lcom/android/server/PowerManagerService;->access$5300(Lcom/android/server/PowerManagerService;)F

    move-result v2

    float-to-int v0, v2

    .line 2529
    .local v0, value:I
    if-ltz v0, :cond_0

    .line 2530
    iget-object v2, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    const/high16 v3, -0x4080

    #setter for: Lcom/android/server/PowerManagerService;->mLightSensorPendingValue:F
    invoke-static {v2, v3}, Lcom/android/server/PowerManagerService;->access$5302(Lcom/android/server/PowerManagerService;F)F

    .line 2531
    iget-object v2, p0, Lcom/android/server/PowerManagerService$9;->this$0:Lcom/android/server/PowerManagerService;

    #calls: Lcom/android/server/PowerManagerService;->lightSensorChangedLocked(I)V
    invoke-static {v2, v0}, Lcom/android/server/PowerManagerService;->access$5400(Lcom/android/server/PowerManagerService;I)V

    .line 2533
    :cond_0
    monitor-exit v1

    .line 2534
    return-void

    .line 2533
    .end local v0           #value:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
