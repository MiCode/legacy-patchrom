.class Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;
.super Ljava/lang/Thread;
.source "CheckinProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/server/checkin/CheckinProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EventInsertThread"
.end annotation


# static fields
.field private static final QUEUE_FLUSH:Ljava/lang/String; = "QUEUE_FLUSH"


# instance fields
.field private mInsertValues:[Landroid/content/ContentValues;

.field private mMaxWaitDuration:J

.field private mNumInsertValues:I

.field private mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mWaitThreshold:J

.field final synthetic this$0:Lcom/motorola/android/server/checkin/CheckinProvider;


# direct methods
.method constructor <init>(Lcom/motorola/android/server/checkin/CheckinProvider;IJ)V
    .locals 2
    .parameter
    .parameter "capacity"
    .parameter "maxWait"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->this$0:Lcom/motorola/android/server/checkin/CheckinProvider;

    const-string v0, "EventInsertThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-direct {v0, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    new-array v0, p2, [Landroid/content/ContentValues;

    iput-object v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    const/4 v0, 0x0

    iput v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    iput-wide p3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mMaxWaitDuration:J

    return-void
.end method

.method private isFlushRequest(Landroid/content/ContentValues;)Z
    .locals 1
    .parameter "values"

    .prologue
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "QUEUE_FLUSH"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method private isReadyToInsert(Landroid/content/ContentValues;)Z
    .locals 5
    .parameter "values"

    .prologue
    const/4 v4, 0x1

    iget v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    if-lez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isFlushRequest(Landroid/content/ContentValues;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private waitForValues()Landroid/content/ContentValues;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .local v3, values:Landroid/content/ContentValues;
    :try_start_0
    iget v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    if-lez v4, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .local v1, now:J
    iget-wide v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    cmp-long v4, v4, v1

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    iget-wide v5, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J

    sub-long/2addr v5, v1

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/ArrayBlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v3, v0

    .end local v1           #now:J
    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Landroid/content/ContentValues;

    move-object v3, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mMaxWaitDuration:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mWaitThreshold:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public queueFlush()V
    .locals 3

    .prologue
    const-string v2, "QUEUE_FLUSH"

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "QUEUE_FLUSH"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->queueInsert(Landroid/content/ContentValues;)V

    :goto_0
    const-string v1, "QUEUE_FLUSH"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public queueInsert(Landroid/content/ContentValues;)V
    .locals 3
    .parameter "values"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mTransfer:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "CheckinProvider"

    const-string v2, "queueInsert interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const-string v1, "CheckinProvider"

    const-string v2, "EventInsertThread started"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->waitForValues()Landroid/content/ContentValues;

    move-result-object v0

    .local v0, values:Landroid/content/ContentValues;
    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isFlushRequest(Landroid/content/ContentValues;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    iget v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    aput-object v0, v1, v2

    :cond_1
    invoke-direct {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isReadyToInsert(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->this$0:Lcom/motorola/android/server/checkin/CheckinProvider;

    iget-object v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    iget v3, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    #calls: Lcom/motorola/android/server/checkin/CheckinProvider;->insertEvents([Landroid/content/ContentValues;I)V
    invoke-static {v1, v2, v3}, Lcom/motorola/android/server/checkin/CheckinProvider;->access$000(Lcom/motorola/android/server/checkin/CheckinProvider;[Landroid/content/ContentValues;I)V

    :goto_1
    iget v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mInsertValues:[Landroid/content/ContentValues;

    iget v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->mNumInsertValues:I

    const/4 v3, 0x0

    aput-object v3, v1, v2

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/motorola/android/server/checkin/CheckinProvider$EventInsertThread;->isFlushRequest(Landroid/content/ContentValues;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-enter v0

    :try_start_0
    const-string v1, "QUEUE_FLUSH"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
