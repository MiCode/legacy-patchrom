.class Lcom/android/server/am/ActivityManagerService$CpuBinder;
.super Landroid/os/Binder;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CpuBinder"
.end annotation


# instance fields
.field mActivityManagerService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0
    .parameter "activityManagerService"

    .prologue
    .line 1393
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 1394
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1395
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1399
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v0

    .line 1400
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/ProcessStats;

    invoke-virtual {v1}, Lcom/android/server/ProcessStats;->printCurrentLoad()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1401
    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$CpuBinder;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/ProcessStats;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1403
    monitor-exit v0

    .line 1404
    return-void

    .line 1403
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
