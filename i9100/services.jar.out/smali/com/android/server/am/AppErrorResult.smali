.class Lcom/android/server/am/AppErrorResult;
.super Ljava/lang/Object;
.source "AppErrorResult.java"


# instance fields
.field mHasResult:Z

.field mResult:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    return-void
.end method


# virtual methods
.method public get()I
    .locals 1

    .prologue
    .line 30
    monitor-enter p0

    .line 31
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 33
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 34
    :catch_0
    move-exception v0

    goto :goto_0

    .line 37
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    iget v0, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    return v0

    .line 37
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public set(I)V
    .locals 1
    .parameter "res"

    .prologue
    .line 22
    monitor-enter p0

    .line 23
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/am/AppErrorResult;->mHasResult:Z

    .line 24
    iput p1, p0, Lcom/android/server/am/AppErrorResult;->mResult:I

    .line 25
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 26
    monitor-exit p0

    .line 27
    return-void

    .line 26
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
