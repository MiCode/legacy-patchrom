.class Lcom/android/server/ResettableTimeout$T;
.super Ljava/lang/Thread;
.source "ResettableTimeout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ResettableTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "T"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ResettableTimeout;


# direct methods
.method private constructor <init>(Lcom/android/server/ResettableTimeout;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ResettableTimeout;Lcom/android/server/ResettableTimeout$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/ResettableTimeout$T;-><init>(Lcom/android/server/ResettableTimeout;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #getter for: Lcom/android/server/ResettableTimeout;->mLock:Landroid/os/ConditionVariable;
    invoke-static {v2}, Lcom/android/server/ResettableTimeout;->access$100(Lcom/android/server/ResettableTimeout;)Landroid/os/ConditionVariable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ConditionVariable;->open()V

    :goto_0
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    #getter for: Lcom/android/server/ResettableTimeout;->mOffAt:J
    invoke-static {v2}, Lcom/android/server/ResettableTimeout;->access$200(Lcom/android/server/ResettableTimeout;)J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v0, v2, v4

    .local v0, diff:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    const/4 v3, 0x1

    #setter for: Lcom/android/server/ResettableTimeout;->mOffCalled:Z
    invoke-static {v2, v3}, Lcom/android/server/ResettableTimeout;->access$302(Lcom/android/server/ResettableTimeout;Z)Z

    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    invoke-virtual {v2}, Lcom/android/server/ResettableTimeout;->off()V

    iget-object v2, p0, Lcom/android/server/ResettableTimeout$T;->this$0:Lcom/android/server/ResettableTimeout;

    const/4 v3, 0x0

    #setter for: Lcom/android/server/ResettableTimeout;->mThread:Ljava/lang/Thread;
    invoke-static {v2, v3}, Lcom/android/server/ResettableTimeout;->access$402(Lcom/android/server/ResettableTimeout;Ljava/lang/Thread;)Ljava/lang/Thread;

    monitor-exit p0

    return-void

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v0, v1}, Lcom/android/server/ResettableTimeout$T;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    .end local v0           #diff:J
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
