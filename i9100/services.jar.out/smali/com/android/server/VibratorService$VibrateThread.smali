.class Lcom/android/server/VibratorService$VibrateThread;
.super Ljava/lang/Thread;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateThread"
.end annotation


# instance fields
.field mDone:Z

.field final mVibration:Lcom/android/server/VibratorService$Vibration;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;Lcom/android/server/VibratorService$Vibration;)V
    .locals 2
    .parameter
    .parameter "vib"

    .prologue
    .line 519
    iput-object p1, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 520
    iput-object p2, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    .line 521
    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService$Vibration;->mUid:I
    invoke-static {p2}, Lcom/android/server/VibratorService$Vibration;->access$600(Lcom/android/server/VibratorService$Vibration;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/WorkSource;->set(I)V

    .line 522
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    #getter for: Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$700(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 523
    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {p1}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 524
    return-void
.end method

.method private delay(J)V
    .locals 6
    .parameter "duration"

    .prologue
    const-wide/16 v4, 0x0

    .line 527
    cmp-long v2, p1, v4

    if-lez v2, :cond_1

    .line 528
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 531
    .local v0, bedtime:J
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-eqz v2, :cond_2

    .line 542
    .end local v0           #bedtime:J
    :cond_1
    :goto_1
    return-void

    .line 538
    .restart local v0       #bedtime:J
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long v2, p1, v2

    sub-long p1, v2, v0

    .line 540
    cmp-long v2, p1, v4

    if-gtz v2, :cond_0

    goto :goto_1

    .line 533
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 545
    const/4 v7, -0x8

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 546
    monitor-enter p0

    .line 547
    const/4 v2, 0x0

    .line 548
    .local v2, index:I
    :try_start_0
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mPattern:[J
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$900(Lcom/android/server/VibratorService$Vibration;)[J

    move-result-object v5

    .line 549
    .local v5, pattern:[J
    array-length v4, v5

    .line 550
    .local v4, len:I
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    #getter for: Lcom/android/server/VibratorService$Vibration;->mRepeat:I
    invoke-static {v7}, Lcom/android/server/VibratorService$Vibration;->access$1000(Lcom/android/server/VibratorService$Vibration;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    .line 551
    .local v6, repeat:I
    const-wide/16 v0, 0x0

    .local v0, duration:J
    move v3, v2

    .line 553
    .end local v2           #index:I
    .local v3, index:I
    :goto_0
    :try_start_1
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v7, :cond_8

    .line 555
    if-ge v3, v4, :cond_0

    .line 556
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_2
    aget-wide v7, v5, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-long/2addr v0, v7

    move v3, v2

    .line 560
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_0
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/android/server/VibratorService$VibrateThread;->delay(J)V

    .line 561
    iget-boolean v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_3

    move v2, v3

    .line 592
    .end local v3           #index:I
    .restart local v2       #index:I
    :goto_1
    :try_start_4
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$800(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 593
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 594
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v7}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v7

    monitor-enter v7

    .line 595
    :try_start_5
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    iget-object v8, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-ne v8, p0, :cond_1

    .line 596
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    .line 598
    :cond_1
    iget-boolean v8, p0, Lcom/android/server/VibratorService$VibrateThread;->mDone:Z

    if-nez v8, :cond_2

    .line 601
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #getter for: Lcom/android/server/VibratorService;->mVibrations:Ljava/util/LinkedList;
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$000(Lcom/android/server/VibratorService;)Ljava/util/LinkedList;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v8, v9}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 602
    iget-object v8, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    #calls: Lcom/android/server/VibratorService;->startNextVibrationLocked()V
    invoke-static {v8}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 604
    :cond_2
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 605
    return-void

    .line 565
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_3
    if-ge v3, v4, :cond_5

    .line 568
    add-int/lit8 v2, v3, 0x1

    .end local v3           #index:I
    .restart local v2       #index:I
    :try_start_6
    aget-wide v0, v5, v3

    .line 569
    const-wide/16 v7, 0x0

    cmp-long v7, v0, v7

    if-lez v7, :cond_7

    .line 573
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v7}, Lcom/android/server/VibratorService$Vibration;->getMagnitude()I

    move-result v7

    if-nez v7, :cond_4

    .line 574
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v1, v8}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 576
    .end local v3           #index:I
    .restart local v2       #index:I
    :cond_4
    iget-object v7, p0, Lcom/android/server/VibratorService$VibrateThread;->this$0:Lcom/android/server/VibratorService;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/server/VibratorService$VibrateThread;->mVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v9}, Lcom/android/server/VibratorService$Vibration;->getMagnitude()I

    move-result v9

    invoke-virtual {v7, v0, v1, v8, v9}, Lcom/android/server/VibratorService;->vibrate(JLandroid/os/IBinder;I)V

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 584
    :cond_5
    if-gez v6, :cond_6

    move v2, v3

    .line 585
    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1

    .line 587
    .end local v2           #index:I
    .restart local v3       #index:I
    :cond_6
    move v2, v6

    .line 588
    .end local v3           #index:I
    .restart local v2       #index:I
    const-wide/16 v0, 0x0

    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto :goto_0

    .line 593
    .end local v0           #duration:J
    .end local v3           #index:I
    .end local v4           #len:I
    .end local v5           #pattern:[J
    .end local v6           #repeat:I
    .restart local v2       #index:I
    :catchall_0
    move-exception v7

    :goto_2
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v7

    .line 604
    .restart local v0       #duration:J
    .restart local v4       #len:I
    .restart local v5       #pattern:[J
    .restart local v6       #repeat:I
    :catchall_1
    move-exception v8

    :try_start_7
    monitor-exit v7
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v8

    .line 593
    .end local v2           #index:I
    .restart local v3       #index:I
    :catchall_2
    move-exception v7

    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_2

    :cond_7
    move v3, v2

    .end local v2           #index:I
    .restart local v3       #index:I
    goto/16 :goto_0

    :cond_8
    move v2, v3

    .end local v3           #index:I
    .restart local v2       #index:I
    goto :goto_1
.end method
