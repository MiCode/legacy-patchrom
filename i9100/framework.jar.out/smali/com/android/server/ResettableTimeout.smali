.class abstract Lcom/android/server/ResettableTimeout;
.super Ljava/lang/Object;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ResettableTimeout$1;,
        Lcom/android/server/ResettableTimeout$T;
    }
.end annotation


# instance fields
.field private mLock:Landroid/os/ConditionVariable;

.field private volatile mOffAt:J

.field private volatile mOffCalled:Z

.field private mThread:Ljava/lang/Thread;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ResettableTimeout;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    return-wide v0
.end method

.method static synthetic access$302(Lcom/android/server/ResettableTimeout;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    return p1
.end method

.method static synthetic access$402(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 29
    iput-object p1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    return-object p1
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 85
    monitor-enter p0

    .line 86
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    .line 87
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 91
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    if-nez v0, :cond_1

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/server/ResettableTimeout;->off()V

    .line 95
    :cond_1
    monitor-exit p0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public go(J)V
    .locals 3
    .parameter "milliseconds"

    .prologue
    .line 54
    monitor-enter p0

    .line 55
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/android/server/ResettableTimeout;->mOffAt:J

    .line 64
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 66
    .local v0, alreadyOn:Z
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->close()V

    .line 67
    new-instance v1, Lcom/android/server/ResettableTimeout$T;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$1;)V

    iput-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    .line 68
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 69
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;

    invoke-virtual {v1}, Landroid/os/ConditionVariable;->block()V

    .line 70
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/ResettableTimeout;->mOffCalled:Z

    .line 76
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/ResettableTimeout;->on(Z)V

    .line 77
    monitor-exit p0

    .line 78
    return-void

    .line 72
    .end local v0           #alreadyOn:Z
    :cond_0
    const/4 v0, 0x1

    .line 74
    .restart local v0       #alreadyOn:Z
    iget-object v1, p0, Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 77
    .end local v0           #alreadyOn:Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract off()V
.end method

.method public abstract on(Z)V
.end method
