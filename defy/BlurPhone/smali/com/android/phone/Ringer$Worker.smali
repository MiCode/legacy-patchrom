.class Lcom/android/phone/Ringer$Worker;
.super Ljava/lang/Object;
.source "Ringer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/Ringer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Worker"
.end annotation


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mLooper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    .line 266
    new-instance v0, Ljava/lang/Thread;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 267
    .local v0, t:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 268
    iget-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 269
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 271
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    goto :goto_0

    .line 275
    :cond_0
    :try_start_2
    monitor-exit v1

    .line 276
    return-void

    .line 275
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method


# virtual methods
.method public getLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method public quit()V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 293
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 285
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLooper:Landroid/os/Looper;

    .line 286
    iget-object v1, p0, Lcom/android/phone/Ringer$Worker;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 288
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 289
    return-void

    .line 287
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
