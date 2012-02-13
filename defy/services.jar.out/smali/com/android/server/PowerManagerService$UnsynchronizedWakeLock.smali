.class Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnsynchronizedWakeLock"
.end annotation


# instance fields
.field mCount:I

.field mFlags:I

.field mHeld:Z

.field mRefCounted:Z

.field mTag:Ljava/lang/String;

.field mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/PowerManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/PowerManagerService;ILjava/lang/String;Z)V
    .locals 1
    .parameter
    .parameter "flags"
    .parameter "tag"
    .parameter "refCounted"

    .prologue
    iput-object p1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    iput p2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mFlags:I

    iput-object p3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mTag:Ljava/lang/String;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    iput-boolean p4, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mRefCounted:Z

    return-void
.end method


# virtual methods
.method public acquire()V
    .locals 9

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .local v7, ident:J
    :try_start_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mFlags:I

    iget-object v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->MY_UID:I
    invoke-static {v3}, Lcom/android/server/PowerManagerService;->access$300(Lcom/android/server/PowerManagerService;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->MY_PID:I
    invoke-static {v4}, Lcom/android/server/PowerManagerService;->access$400(Lcom/android/server/PowerManagerService;)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mTag:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/PowerManagerService;->acquireWakeLockLocked(ILandroid/os/IBinder;IILjava/lang/String;Landroid/os/WorkSource;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .end local v7           #ident:J
    :cond_1
    return-void

    .restart local v7       #ident:J
    :catchall_0
    move-exception v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public isHeld()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z

    return v0
.end method

.method public release()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mRefCounted:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    #getter for: Lcom/android/server/PowerManagerService;->mDeepSleepMode:Z
    invoke-static {v0}, Lcom/android/server/PowerManagerService;->access$500(Lcom/android/server/PowerManagerService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    #calls: Lcom/android/server/PowerManagerService;->putReleasedWakeLock(Landroid/os/IBinder;I)Z
    invoke-static {v0, v1, v2}, Lcom/android/server/PowerManagerService;->access$600(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;I)Z

    move-result v0

    if-eq v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->this$0:Lcom/android/server/PowerManagerService;

    iget-object v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mToken:Landroid/os/IBinder;

    #calls: Lcom/android/server/PowerManagerService;->releaseWakeLockLocked(Landroid/os/IBinder;IZ)V
    invoke-static {v0, v1, v2, v2}, Lcom/android/server/PowerManagerService;->access$700(Lcom/android/server/PowerManagerService;Landroid/os/IBinder;IZ)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z

    :cond_3
    iget v0, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    if-gez v0, :cond_4

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock under-locked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UnsynchronizedWakeLock(mFlags=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mFlags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mHeld="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/PowerManagerService$UnsynchronizedWakeLock;->mHeld:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
