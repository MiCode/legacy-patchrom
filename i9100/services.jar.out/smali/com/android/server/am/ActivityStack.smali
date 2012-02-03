.class public Lcom/android/server/am/ActivityStack;
.super Ljava/lang/Object;
.source "ActivityStack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ActivityStack$ActivityState;
    }
.end annotation


# static fields
.field static final ACTIVITY_INACTIVE_RESET_TIME:J = 0x1b7740L

.field static final DEBUG_CONFIGURATION:Z = false

.field static final DEBUG_PAUSE:Z = false

.field static final DEBUG_RESULTS:Z = false

.field static final DEBUG_SWITCH:Z = false

.field static final DEBUG_TASKS:Z = false

.field static final DEBUG_TRANSITION:Z = false

.field static final DEBUG_USER_LEAVING:Z = false

.field static final DEBUG_VISBILITY:Z = false

.field static final DESTROY_TIMEOUT:I = 0x2710

.field static final DESTROY_TIMEOUT_MSG:I = 0x11

.field private static final FINISH_AFTER_PAUSE:I = 0x1

.field private static final FINISH_AFTER_VISIBLE:I = 0x2

.field private static final FINISH_IMMEDIATELY:I = 0x0

.field static final IDLE_NOW_MSG:I = 0xb

.field static final IDLE_TIMEOUT:I = 0x2710

.field static final IDLE_TIMEOUT_MSG:I = 0xa

.field static final LAUNCH_TIMEOUT:I = 0x2710

.field static final LAUNCH_TIMEOUT_MSG:I = 0x10

.field static final PAUSE_TIMEOUT:I = 0x1f4

.field static final PAUSE_TIMEOUT_MSG:I = 0x9

.field static final RESUME_TOP_ACTIVITY_MSG:I = 0x13

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field static final START_WARN_TIME:J = 0x1388L

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final VALIDATE_TOKENS:Z

.field static final localLOGV:Z


# instance fields
.field mConfigWillChange:Z

.field final mContext:Landroid/content/Context;

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mGoingToSleep:Landroid/os/PowerManager$WakeLock;

.field final mHandler:Landroid/os/Handler;

.field final mHistory:Ljava/util/ArrayList;

.field mInitialStartTime:J

.field final mLRUActivities:Ljava/util/ArrayList;

.field mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

.field mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

.field final mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

.field final mMainStack:Z

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mPausingActivity:Lcom/android/server/am/ActivityRecord;

.field mResumedActivity:Lcom/android/server/am/ActivityRecord;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserLeaving:Z

.field final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingActivityVisible:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/IActivityManager$WaitResult;",
            ">;"
        }
    .end annotation
.end field

.field final mWaitingVisibleActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Z)V
    .locals 5
    .parameter "service"
    .parameter "context"
    .parameter "mainStack"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    .line 141
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    .line 148
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    .line 156
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    .line 163
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 171
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 183
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    .line 205
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 212
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 217
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 224
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastStartedActivity:Lcom/android/server/am/ActivityRecord;

    .line 236
    iput-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 238
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 247
    new-instance v1, Lcom/android/server/am/ActivityStack$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActivityStack$1;-><init>(Lcom/android/server/am/ActivityStack;)V

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    .line 310
    iput-object p1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 311
    iput-object p2, p0, Lcom/android/server/am/ActivityStack;->mContext:Landroid/content/Context;

    .line 312
    iput-boolean p3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    .line 313
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 315
    .local v0, pm:Landroid/os/PowerManager;
    const-string v1, "ActivityManager-Sleep"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    .line 316
    const-string v1, "ActivityManager-Launch"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    .line 317
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 318
    return-void
.end method

.method private final completePauseLocked()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x0

    .line 781
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 784
    .local v4, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v4, :cond_1

    .line 785
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_6

    .line 787
    const/4 v6, 0x2

    invoke-direct {p0, v4, v6}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    .line 820
    :cond_0
    :goto_0
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 823
    :cond_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_a

    .line 824
    invoke-virtual {p0, v4}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 834
    :cond_2
    :goto_1
    if-eqz v4, :cond_3

    .line 835
    invoke-virtual {v4}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 838
    :cond_3
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    iget-wide v6, v4, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    cmp-long v6, v6, v11

    if-lez v6, :cond_5

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->isOnBattery()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 840
    const-wide/16 v1, 0x0

    .line 841
    .local v1, diff:J
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v6

    .line 842
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/ProcessStats;

    iget-object v8, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v8, v8, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v7, v8}, Lcom/android/server/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v7

    iget-wide v9, v4, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    sub-long v1, v7, v9

    .line 844
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 845
    cmp-long v6, v1, v11

    if-lez v6, :cond_5

    .line 846
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v6}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 847
    .local v0, bsi:Lcom/android/internal/os/BatteryStatsImpl;
    monitor-enter v0

    .line 848
    :try_start_1
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v7, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessStatsLocked(ILjava/lang/String;)Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    move-result-object v5

    .line 851
    .local v5, ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    if-eqz v5, :cond_4

    .line 852
    invoke-virtual {v5, v1, v2}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->addForegroundTimeLocked(J)V

    .line 854
    :cond_4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 857
    .end local v0           #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    .end local v1           #diff:J
    .end local v5           #ps:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;
    :cond_5
    iput-wide v11, v4, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 858
    return-void

    .line 788
    :cond_6
    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_9

    .line 790
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v6, :cond_7

    .line 791
    const/4 v6, 0x0

    iput-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 792
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 796
    :cond_7
    iget-boolean v6, v4, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v6, :cond_8

    .line 803
    const/4 v6, 0x1

    invoke-virtual {p0, v4, v6}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_0

    .line 805
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 806
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_0

    .line 811
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    .line 812
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0xb

    iput v6, v3, Landroid/os/Message;->what:I

    .line 813
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 818
    .end local v3           #msg:Landroid/os/Message;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 826
    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 827
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 829
    :cond_b
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v6, :cond_2

    .line 830
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Ljava/lang/Object;->notifyAll()V

    goto/16 :goto_1

    .line 844
    .restart local v1       #diff:J
    :catchall_0
    move-exception v7

    :try_start_2
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 854
    .restart local v0       #bsi:Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_1
    move-exception v6

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v6
.end method

.method private final completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "next"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 866
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 867
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 868
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 871
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 872
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 873
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 885
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_0

    .line 886
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 889
    :cond_0
    iput-object v4, p1, Lcom/android/server/am/ActivityRecord;->thumbnail:Landroid/graphics/Bitmap;

    .line 890
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_1

    .line 891
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 893
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 894
    invoke-virtual {p0, v4, v5}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 895
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 896
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 901
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_2

    .line 902
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStatsThread:Ljava/lang/Thread;

    monitor-enter v1

    .line 903
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/ProcessStats;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v2, v3}, Lcom/android/server/ProcessStats;->getCpuTimeForPid(I)J

    move-result-wide v2

    iput-wide v2, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    .line 904
    monitor-exit v1

    .line 908
    :goto_0
    return-void

    .line 904
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 906
    :cond_2
    const-wide/16 v1, 0x0

    iput-wide v1, p1, Lcom/android/server/am/ActivityRecord;->cpuTimeAtResume:J

    goto :goto_0
.end method

.method private final findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I
    .locals 4
    .parameter "r"
    .parameter "task"

    .prologue
    .line 1871
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1872
    .local v1, i:I
    :cond_0
    if-lez v1, :cond_1

    .line 1873
    add-int/lit8 v1, v1, -0x1

    .line 1874
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1875
    .local v0, candidate:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v2, p2, :cond_2

    .line 1883
    .end local v0           #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, -0x1

    :goto_0
    return v2

    .line 1878
    .restart local v0       #candidate:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    .line 1879
    goto :goto_0
.end method

.method private findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 439
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 440
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 441
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v4, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 445
    .local v0, N:I
    const/4 v4, 0x1

    sub-int v2, v0, v4

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_2

    .line 446
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 447
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v4, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v4, :cond_1

    .line 448
    iget-object v4, v3, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v3

    .line 457
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v4

    .line 445
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 457
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;
    .locals 7
    .parameter "intent"
    .parameter "info"

    .prologue
    .line 393
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 394
    .local v1, cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 395
    new-instance v1, Landroid/content/ComponentName;

    .end local v1           #cls:Landroid/content/ComponentName;
    iget-object v5, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v1, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    .restart local v1       #cls:Landroid/content/ComponentName;
    :cond_0
    const/4 v2, 0x0

    .line 400
    .local v2, cp:Lcom/android/server/am/TaskRecord;
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 401
    .local v0, N:I
    const/4 v5, 0x1

    sub-int v3, v0, v5

    .local v3, i:I
    :goto_0
    if-ltz v3, :cond_4

    .line 402
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 403
    .local v4, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_3

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v5, v2, :cond_3

    iget v5, v4, Lcom/android/server/am/ActivityRecord;->launchMode:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_3

    .line 405
    iget-object v2, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 409
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 410
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 430
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v5

    .line 414
    .restart local v4       #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v5, v4

    .line 419
    goto :goto_1

    .line 420
    :cond_2
    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, v4

    .line 425
    goto :goto_1

    .line 401
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 430
    .end local v4           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;
    .locals 2
    .parameter "r"
    .parameter "mode"

    .prologue
    .line 3014
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 3015
    .local v0, index:I
    if-gez v0, :cond_0

    .line 3016
    const/4 v1, 0x0

    .line 3019
    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    goto :goto_0
.end method

.method private final finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .parameter "r"
    .parameter "index"
    .parameter "mode"

    .prologue
    const/4 v3, 0x0

    .line 3027
    const/4 v2, 0x2

    if-ne p3, v2, :cond_1

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v2, :cond_1

    .line 3028
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3029
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3030
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    .line 3034
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 3035
    .local v0, msg:Landroid/os/Message;
    const/16 v2, 0xb

    iput v2, v0, Landroid/os/Message;->what:I

    .line 3036
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 3039
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3040
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked()Z

    move-object v2, p1

    .line 3066
    :goto_0
    return-object v2

    .line 3045
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3046
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3047
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v2, p1, :cond_2

    .line 3048
    iput-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3050
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3051
    .local v1, prevState:Lcom/android/server/am/ActivityStack$ActivityState;
    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->FINISHING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v2, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3053
    if-eqz p3, :cond_3

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_3

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->INITIALIZING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v1, v2, :cond_5

    .line 3058
    :cond_3
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v3

    goto :goto_0

    :cond_4
    move-object v2, p1

    goto :goto_0

    .line 3063
    :cond_5
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3064
    invoke-virtual {p0, v3}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-object v2, p1

    .line 3066
    goto :goto_0
.end method

.method private final finishTaskMoveLocked(I)V
    .locals 1
    .parameter "task"

    .prologue
    .line 3338
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 3339
    return-void
.end method

.method private final logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 3
    .parameter "tag"
    .parameter "r"
    .parameter "task"

    .prologue
    .line 3423
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget v2, p3, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3428
    return-void
.end method

.method private final moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;
    .locals 6
    .parameter "where"

    .prologue
    const/4 v5, 0x1

    .line 1891
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 1892
    .local v0, newTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1893
    .local v2, top:I
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    sub-int v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1894
    .local v1, oldTop:Lcom/android/server/am/ActivityRecord;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1895
    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1896
    iput-boolean v5, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1897
    return-object v0
.end method

.method private final performClearTaskLocked(ILcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;
    .locals 10
    .parameter "taskId"
    .parameter "newR"
    .parameter "launchFlags"
    .parameter "doClear"

    .prologue
    .line 1805
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1808
    .local v2, i:I
    :cond_0
    if-lez v2, :cond_1

    .line 1809
    add-int/lit8 v2, v2, -0x1

    .line 1810
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1811
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v0, p1, :cond_0

    .line 1812
    add-int/lit8 v2, v2, 0x1

    .line 1818
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-lez v2, :cond_7

    .line 1819
    add-int/lit8 v2, v2, -0x1

    .line 1820
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1821
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1

    .line 1824
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq v0, p1, :cond_2

    .line 1825
    const/4 v0, 0x0

    .line 1863
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return-object v0

    .line 1827
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_2
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1829
    move-object v9, v1

    .line 1830
    .local v9, ret:Lcom/android/server/am/ActivityRecord;
    if-eqz p4, :cond_4

    .line 1831
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    if-ge v2, v0, :cond_4

    .line 1832
    add-int/lit8 v2, v2, 0x1

    .line 1833
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1834
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_3

    .line 1837
    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "clear"

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1839
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 1847
    :cond_4
    iget v0, v9, Lcom/android/server/am/ActivityRecord;->launchMode:I

    if-nez v0, :cond_6

    const/high16 v0, 0x2000

    and-int/2addr v0, p3

    if-nez v0, :cond_6

    .line 1849
    iget-boolean v0, v9, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_6

    .line 1850
    invoke-virtual {p0, v9}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v5

    .line 1851
    .local v5, index:I
    if-ltz v5, :cond_5

    .line 1852
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "clear"

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1855
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .end local v5           #index:I
    :cond_6
    move-object v0, v9

    .line 1859
    goto :goto_0

    .line 1863
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    .end local v9           #ret:Lcom/android/server/am/ActivityRecord;
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z
    .locals 11
    .parameter "r"
    .parameter "changes"
    .parameter "andResume"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3544
    const/4 v2, 0x0

    .line 3545
    .local v2, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v3, 0x0

    .line 3546
    .local v3, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_0

    .line 3547
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3548
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3553
    :cond_0
    if-eqz p3, :cond_2

    const/16 v0, 0x7543

    :goto_0
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v8

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v9

    const/4 v4, 0x2

    iget-object v5, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3557
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v0, v8}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3561
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez p3, :cond_3

    move v5, v9

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v1, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object v1, p1

    move v4, p2

    invoke-interface/range {v0 .. v6}, Landroid/app/IApplicationThread;->scheduleRelaunchActivity(Landroid/os/IBinder;Ljava/util/List;Ljava/util/List;IZLandroid/content/res/Configuration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3570
    if-eqz p3, :cond_1

    .line 3571
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 3572
    iput-object v10, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 3573
    iget-boolean v0, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v0, :cond_1

    .line 3574
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityManagerService;->reportResumedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    :cond_1
    move v0, v9

    .line 3578
    :goto_2
    return v0

    .line 3553
    :cond_2
    const/16 v0, 0x7544

    goto :goto_0

    :cond_3
    move v5, v8

    .line 3561
    goto :goto_1

    .line 3566
    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    move v0, v8

    .line 3567
    goto :goto_2
.end method

.method private final removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 2
    .parameter "r"

    .prologue
    .line 3121
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v0, v1, :cond_0

    .line 3122
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3123
    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 3124
    sget-object v0, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v0, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3125
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/WindowManagerService;->removeAppToken(Landroid/os/IBinder;)V

    .line 3129
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3130
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->removeUriPermissionsLocked()V

    .line 3132
    :cond_0
    return-void
.end method

.method private static removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V
    .locals 3
    .parameter "list"
    .parameter "app"

    .prologue
    .line 3253
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3257
    .local v0, i:I
    :cond_0
    :goto_0
    if-lez v0, :cond_1

    .line 3258
    add-int/lit8 v0, v0, -0x1

    .line 3259
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 3262
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v2, p1, :cond_0

    .line 3264
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 3267
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    return-void
.end method

.method private final resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 26
    .parameter "taskTop"
    .parameter "newActivity"

    .prologue
    .line 1509
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    move/from16 v18, v3

    .line 1511
    .local v18, forceReset:Z
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getInactiveDuration()J

    move-result-wide v6

    const-wide/32 v8, 0x1b7740

    cmp-long v3, v6, v8

    if-lez v3, :cond_0

    .line 1512
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v3, v3, 0x8

    if-nez v3, :cond_0

    .line 1514
    const/16 v18, 0x1

    .line 1518
    :cond_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v24, v0

    .line 1523
    .local v24, task:Lcom/android/server/am/TaskRecord;
    const/16 v22, 0x0

    .line 1524
    .local v22, target:Lcom/android/server/am/ActivityRecord;
    const/16 v23, 0x0

    .line 1525
    .local v23, targetI:I
    const/16 v25, -0x1

    .line 1526
    .local v25, taskTopI:I
    const/16 v21, -0x1

    .line 1527
    .local v21, replyChainEnd:I
    const/16 v20, -0x1

    .line 1528
    .local v20, lastReparentPos:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int v19, v3, v4

    .end local p2
    .local v19, i:I
    :goto_1
    const/4 v3, -0x1

    move/from16 v0, v19

    move v1, v3

    if-lt v0, v1, :cond_2d

    .line 1529
    if-ltz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v13, p2

    .line 1531
    .local v13, below:Lcom/android/server/am/ActivityRecord;
    :goto_2
    if-eqz v13, :cond_3

    iget-boolean v3, v13, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_3

    .line 1528
    :goto_3
    add-int/lit8 v19, v19, -0x1

    goto :goto_1

    .line 1509
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    .end local v18           #forceReset:Z
    .end local v19           #i:I
    .end local v20           #lastReparentPos:I
    .end local v21           #replyChainEnd:I
    .end local v22           #target:Lcom/android/server/am/ActivityRecord;
    .end local v23           #targetI:I
    .end local v24           #task:Lcom/android/server/am/TaskRecord;
    .end local v25           #taskTopI:I
    .restart local p2
    :cond_1
    const/4 v3, 0x0

    move/from16 v18, v3

    goto :goto_0

    .line 1529
    .end local p2
    .restart local v18       #forceReset:Z
    .restart local v19       #i:I
    .restart local v20       #lastReparentPos:I
    .restart local v21       #replyChainEnd:I
    .restart local v22       #target:Lcom/android/server/am/ActivityRecord;
    .restart local v23       #targetI:I
    .restart local v24       #task:Lcom/android/server/am/TaskRecord;
    .restart local v25       #taskTopI:I
    :cond_2
    const/4 v3, 0x0

    move-object v13, v3

    goto :goto_2

    .line 1534
    .restart local v13       #below:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-nez v22, :cond_4

    .line 1535
    move-object/from16 v22, v13

    .line 1536
    move/from16 v23, v19

    .line 1540
    const/16 v21, -0x1

    .line 1541
    goto :goto_3

    .line 1544
    :cond_4
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    move-object v0, v3

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    move/from16 v17, v0

    .line 1546
    .local v17, flags:I
    and-int/lit8 v3, v17, 0x2

    if-eqz v3, :cond_7

    const/4 v3, 0x1

    move/from16 v16, v3

    .line 1548
    .local v16, finishOnTaskLaunch:Z
    :goto_4
    and-int/lit8 v3, v17, 0x40

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    move v12, v3

    .line 1551
    .local v12, allowTaskReparenting:Z
    :goto_5
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1f

    .line 1557
    if-gez v25, :cond_5

    .line 1558
    move/from16 v25, v23

    .line 1560
    :cond_5
    if-eqz v13, :cond_1e

    iget-object v3, v13, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v0, v3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1e

    .line 1561
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x8

    and-int/2addr v3, v4

    if-eqz v3, :cond_9

    const/4 v3, 0x1

    move v14, v3

    .line 1564
    .local v14, clearWhenTaskReset:Z
    :goto_6
    if-nez v16, :cond_a

    if-nez v14, :cond_a

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-eqz v3, :cond_a

    .line 1571
    if-gez v21, :cond_6

    .line 1572
    move/from16 v21, v23

    .line 1785
    .end local v14           #clearWhenTaskReset:Z
    :cond_6
    :goto_7
    move-object/from16 v22, v13

    .line 1786
    move/from16 v23, v19

    goto :goto_3

    .line 1546
    .end local v12           #allowTaskReparenting:Z
    .end local v16           #finishOnTaskLaunch:Z
    :cond_7
    const/4 v3, 0x0

    move/from16 v16, v3

    goto :goto_4

    .line 1548
    .restart local v16       #finishOnTaskLaunch:Z
    :cond_8
    const/4 v3, 0x0

    move v12, v3

    goto :goto_5

    .line 1561
    .restart local v12       #allowTaskReparenting:Z
    :cond_9
    const/4 v3, 0x0

    move v14, v3

    goto :goto_6

    .line 1574
    .restart local v14       #clearWhenTaskReset:Z
    :cond_a
    if-nez v16, :cond_13

    if-nez v14, :cond_13

    if-eqz v12, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_13

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 1583
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1584
    .local v4, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_c

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v3, v0

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 1589
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1603
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    move v5, v0

    move-object v0, v3

    move-object/from16 v1, v22

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 1604
    if-gez v21, :cond_b

    .line 1605
    move/from16 v21, v23

    .line 1607
    :cond_b
    const/4 v15, 0x0

    .line 1608
    .local v15, dstPos:I
    move/from16 v5, v23

    .local v5, srcPos:I
    :goto_9
    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_10

    .line 1609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1610
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_f

    .line 1608
    :goto_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 1593
    .end local v5           #srcPos:I
    .end local v15           #dstPos:I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget v5, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 1594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget v3, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v3, :cond_d

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const/4 v5, 0x1

    iput v5, v3, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 1597
    :cond_d
    new-instance v3, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_e

    const/4 v8, 0x1

    :goto_b
    invoke-direct {v3, v5, v6, v7, v8}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    move-object v0, v3

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1599
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    iput-object v5, v3, Lcom/android/server/am/TaskRecord;->affinityIntent:Landroid/content/Intent;

    goto :goto_8

    .line 1597
    :cond_e
    const/4 v8, 0x0

    goto :goto_b

    .line 1615
    .restart local v5       #srcPos:I
    .restart local v15       #dstPos:I
    :cond_f
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    move v3, v0

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1616
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iput-object v3, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1617
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iget v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1618
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v15, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v3, v15, v4}, Lcom/android/server/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 1621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    .line 1622
    add-int/lit8 v15, v15, 0x1

    .line 1626
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_a

    .line 1628
    :cond_10
    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_11

    .line 1629
    move-object/from16 p1, v13

    .line 1631
    :cond_11
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 1632
    const/16 v25, -0x1

    .line 1634
    :cond_12
    const/16 v21, -0x1

    .line 1635
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v3, v0

    if-eqz v3, :cond_6

    .line 1636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v4, v0

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    goto/16 :goto_7

    .line 1638
    .end local v5           #srcPos:I
    .end local v15           #dstPos:I
    :cond_13
    if-nez v18, :cond_14

    if-nez v16, :cond_14

    if-eqz v14, :cond_1d

    .line 1644
    :cond_14
    if-eqz v14, :cond_18

    .line 1648
    add-int/lit8 v21, v23, 0x1

    .line 1651
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v21

    move v1, v3

    if-ge v0, v1, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_15

    .line 1652
    add-int/lit8 v21, v21, 0x1

    goto :goto_c

    .line 1654
    :cond_15
    add-int/lit8 v21, v21, -0x1

    .line 1658
    :cond_16
    :goto_d
    const/4 v4, 0x0

    .line 1659
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v5, v23

    .restart local v5       #srcPos:I
    :goto_e
    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_1a

    .line 1660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1661
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_19

    .line 1659
    :cond_17
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    .line 1655
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v5           #srcPos:I
    :cond_18
    if-gez v21, :cond_16

    .line 1656
    move/from16 v21, v23

    goto :goto_d

    .line 1664
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v5       #srcPos:I
    :cond_19
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "reset"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 1666
    add-int/lit8 v21, v21, -0x1

    .line 1667
    add-int/lit8 v5, v5, -0x1

    goto :goto_f

    .line 1670
    :cond_1a
    move-object/from16 v0, p1

    move-object v1, v4

    if-ne v0, v1, :cond_1b

    .line 1671
    move-object/from16 p1, v13

    .line 1673
    :cond_1b
    move/from16 v0, v25

    move/from16 v1, v21

    if-ne v0, v1, :cond_1c

    .line 1674
    const/16 v25, -0x1

    .line 1676
    :cond_1c
    const/16 v21, -0x1

    .line 1677
    goto/16 :goto_7

    .line 1681
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v5           #srcPos:I
    :cond_1d
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 1686
    .end local v14           #clearWhenTaskReset:Z
    :cond_1e
    const/16 v21, -0x1

    goto/16 :goto_7

    .line 1689
    :cond_1f
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-eqz v3, :cond_20

    .line 1696
    if-gez v21, :cond_6

    .line 1697
    move/from16 v21, v23

    goto/16 :goto_7

    .line 1700
    :cond_20
    if-ltz v25, :cond_6

    if-eqz v12, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/TaskRecord;->affinity:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->taskAffinity:Ljava/lang/String;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1714
    if-nez v18, :cond_21

    if-eqz v16, :cond_26

    .line 1715
    :cond_21
    if-gez v21, :cond_22

    .line 1716
    move/from16 v21, v23

    .line 1718
    :cond_22
    const/4 v4, 0x0

    .line 1719
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    move/from16 v5, v23

    .restart local v5       #srcPos:I
    :goto_10
    move v0, v5

    move/from16 v1, v21

    if-gt v0, v1, :cond_25

    .line 1720
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1721
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_24

    .line 1719
    :cond_23
    :goto_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_10

    .line 1724
    :cond_24
    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v8, "reset"

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    .line 1726
    add-int/lit8 v25, v25, -0x1

    .line 1727
    add-int/lit8 v20, v20, -0x1

    .line 1728
    add-int/lit8 v21, v21, -0x1

    .line 1729
    add-int/lit8 v5, v5, -0x1

    goto :goto_11

    .line 1732
    :cond_25
    const/16 v21, -0x1

    .line 1733
    goto/16 :goto_7

    .line 1734
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v5           #srcPos:I
    :cond_26
    if-gez v21, :cond_27

    .line 1735
    move/from16 v21, v23

    .line 1737
    :cond_27
    move/from16 v5, v21

    .restart local v5       #srcPos:I
    :goto_12
    move v0, v5

    move/from16 v1, v23

    if-lt v0, v1, :cond_2a

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1739
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_28

    .line 1737
    :goto_13
    add-int/lit8 v5, v5, -0x1

    goto :goto_12

    .line 1742
    :cond_28
    if-gez v20, :cond_29

    .line 1743
    move/from16 v20, v25

    .line 1744
    move-object/from16 p1, v4

    .line 1748
    :goto_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1749
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    iput v6, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1750
    move-object/from16 v0, v24

    move-object v1, v4

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 1751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1754
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/server/am/TaskRecord;->numActivities:I

    move v3, v0

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    move-object/from16 v1, v24

    iput v0, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object v0, v3

    move/from16 v1, v20

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->moveAppToken(ILandroid/os/IBinder;)V

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v6, v4, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v4, v6}, Lcom/android/server/WindowManagerService;->setAppGroupId(Landroid/os/IBinder;I)V

    goto :goto_13

    .line 1746
    :cond_29
    add-int/lit8 v20, v20, -0x1

    goto :goto_14

    .line 1761
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    :cond_2a
    const/16 v21, -0x1

    .line 1767
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v3, v0

    iget v3, v3, Landroid/content/pm/ActivityInfo;->launchMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    .line 1768
    const/4 v3, 0x1

    sub-int v8, v20, v3

    .end local v5           #srcPos:I
    .local v8, j:I
    :goto_15
    if-ltz v8, :cond_6

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityRecord;

    .line 1770
    .restart local v4       #p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v3, v4, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2c

    .line 1768
    :cond_2b
    :goto_16
    add-int/lit8 v8, v8, -0x1

    goto :goto_15

    .line 1773
    :cond_2c
    iget-object v3, v4, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1774
    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "replace"

    move-object/from16 v6, p0

    move-object v7, v4

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 1776
    add-int/lit8 v25, v25, -0x1

    .line 1777
    add-int/lit8 v20, v20, -0x1

    goto :goto_16

    .line 1789
    .end local v4           #p:Lcom/android/server/am/ActivityRecord;
    .end local v8           #j:I
    .end local v12           #allowTaskReparenting:Z
    .end local v13           #below:Lcom/android/server/am/ActivityRecord;
    .end local v16           #finishOnTaskLaunch:Z
    .end local v17           #flags:I
    :cond_2d
    return-object p1
.end method

.method private final startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 20
    .parameter "r"
    .parameter "newTask"
    .parameter "doResume"

    .prologue
    .line 1374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1376
    .local v14, NH:I
    const/4 v4, -0x1

    .line 1378
    .local v4, addPos:I
    if-nez p2, :cond_4

    .line 1380
    const/16 v19, 0x1

    .line 1381
    .local v19, startIt:Z
    const/4 v3, 0x1

    sub-int v16, v14, v3

    .local v16, i:I
    :goto_0
    if-ltz v16, :cond_4

    .line 1382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ActivityRecord;

    .line 1383
    .local v17, p:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v3, v0

    if-eqz v3, :cond_1

    .line 1381
    :cond_0
    :goto_1
    add-int/lit8 v16, v16, -0x1

    goto :goto_0

    .line 1386
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    if-ne v3, v5, :cond_3

    .line 1390
    add-int/lit8 v4, v16, 0x1

    .line 1391
    if-nez v19, :cond_4

    .line 1392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1393
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1394
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iget v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v8, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1501
    .end local v16           #i:I
    .end local v17           #p:Lcom/android/server/am/ActivityRecord;
    .end local v19           #startIt:Z
    :cond_2
    :goto_2
    return-void

    .line 1404
    .restart local v16       #i:I
    .restart local v17       #p:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #startIt:Z
    :cond_3
    move-object/from16 v0, v17

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 1405
    const/16 v19, 0x0

    goto :goto_1

    .line 1412
    .end local v16           #i:I
    .end local v17           #p:Lcom/android/server/am/ActivityRecord;
    .end local v19           #startIt:Z
    :cond_4
    if-gez v4, :cond_5

    .line 1413
    move v4, v14

    .line 1419
    :cond_5
    if-ge v4, v14, :cond_6

    .line 1420
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1425
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1426
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->inHistory:Z

    .line 1427
    move/from16 v0, p2

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 1428
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v3, v0

    iget v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v3, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 1429
    if-lez v14, :cond_12

    .line 1433
    move/from16 v13, p2

    .line 1434
    .local v13, showStartingIcon:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v18, v0

    .line 1435
    .local v18, proc:Lcom/android/server/am/ProcessRecord;
    if-nez v18, :cond_7

    .line 1436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessNames:Lcom/android/server/ProcessMap;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v5, v6}, Lcom/android/server/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v18

    .end local v18           #proc:Lcom/android/server/am/ProcessRecord;
    check-cast v18, Lcom/android/server/am/ProcessRecord;

    .line 1438
    .restart local v18       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_7
    if-eqz v18, :cond_8

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v3, v0

    if-nez v3, :cond_9

    .line 1439
    :cond_8
    const/4 v13, 0x1

    .line 1443
    :cond_9
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x1

    and-int/2addr v3, v5

    if-eqz v3, :cond_d

    .line 1444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1456
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v8, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    .line 1458
    const/4 v15, 0x1

    .line 1459
    .local v15, doShow:Z
    if-eqz p2, :cond_a

    .line 1465
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x20

    and-int/2addr v3, v5

    if-eqz v3, :cond_a

    .line 1467
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    .line 1468
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    if-ne v0, v1, :cond_10

    const/4 v3, 0x1

    move v15, v3

    .line 1471
    :cond_a
    :goto_4
    if-eqz v15, :cond_c

    .line 1476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v12, v0

    .line 1477
    .local v12, prev:Lcom/android/server/am/ActivityRecord;
    if-eqz v12, :cond_b

    .line 1480
    iget-object v3, v12, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    if-eq v3, v5, :cond_11

    const/4 v12, 0x0

    .line 1484
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->theme:I

    move v8, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    move-object v9, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->labelRes:I

    move v10, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->icon:I

    move v11, v0

    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    .line 1498
    .end local v12           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v13           #showStartingIcon:Z
    .end local v15           #doShow:Z
    .end local v18           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_c
    :goto_6
    if-eqz p3, :cond_2

    .line 1499
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_2

    .line 1446
    .restart local v13       #showStartingIcon:Z
    .restart local v18       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_d
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v5, 0x8

    and-int/2addr v3, v5

    if-eqz v3, :cond_e

    .line 1447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v5, 0x1008

    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1451
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    if-eqz p2, :cond_f

    const/16 v5, 0x1008

    :goto_7
    invoke-virtual {v3, v5}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1451
    :cond_f
    const/16 v5, 0x1006

    goto :goto_7

    .line 1468
    .restart local v15       #doShow:Z
    :cond_10
    const/4 v3, 0x0

    move v15, v3

    goto/16 :goto_4

    .line 1482
    .restart local v12       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_11
    iget-boolean v3, v12, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v3, :cond_b

    const/4 v12, 0x0

    goto :goto_5

    .line 1491
    .end local v12           #prev:Lcom/android/server/am/ActivityRecord;
    .end local v13           #showStartingIcon:Z
    .end local v15           #doShow:Z
    .end local v18           #proc:Lcom/android/server/am/ProcessRecord;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget v7, v5, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    move v8, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/WindowManagerService;->addAppToken(ILandroid/view/IApplicationToken;IIZ)V

    goto :goto_6
.end method

.method private final startPausingLocked(ZZ)V
    .locals 10
    .parameter "userLeaving"
    .parameter "uiSleeping"

    .prologue
    const/16 v9, 0x10

    const/4 v7, 0x0

    const-string v8, "ActivityManager"

    .line 670
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_0

    .line 671
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 672
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to pause when pause is already pending for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 675
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 676
    .local v2, prev:Lcom/android/server/am/ActivityRecord;
    if-nez v2, :cond_1

    .line 677
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    .line 678
    .restart local v0       #e:Ljava/lang/RuntimeException;
    const-string v3, "ActivityManager"

    const-string v3, "Trying to pause when nothing is resumed"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 679
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 749
    .end local v0           #e:Ljava/lang/RuntimeException;
    :goto_0
    return-void

    .line 683
    :cond_1
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 684
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 685
    iput-object v2, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    .line 686
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 687
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 689
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 691
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_5

    .line 694
    const/16 v3, 0x753d

    const/4 v4, 0x2

    :try_start_0
    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 697
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v4, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v5, v2, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v3, v2, v4, p1, v5}, Landroid/app/IApplicationThread;->schedulePauseActivity(Landroid/os/IBinder;ZZI)V

    .line 699
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->updateUsageStats(Lcom/android/server/am/ActivityRecord;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 715
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v3, :cond_3

    .line 716
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 717
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 719
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v9}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 720
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 725
    .end local v1           #msg:Landroid/os/Message;
    :cond_3
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v3, :cond_6

    .line 730
    if-nez p2, :cond_4

    .line 731
    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 739
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 740
    .restart local v1       #msg:Landroid/os/Message;
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 741
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 702
    .end local v1           #msg:Landroid/os/Message;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 704
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v8, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 705
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 706
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 709
    .end local v0           #e:Ljava/lang/Exception;
    :cond_5
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    .line 710
    iput-object v7, p0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    goto :goto_1

    .line 747
    :cond_6
    invoke-virtual {p0, v7}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    goto/16 :goto_0
.end method

.method private final startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V
    .locals 13
    .parameter "r"
    .parameter "andResume"
    .parameter "checkConfig"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 603
    .local v2, app:Lcom/android/server/am/ProcessRecord;
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_2

    .line 604
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    .line 605
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 606
    iget-wide v0, p1, Lcom/android/server/am/ActivityRecord;->launchTime:J

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    .line 612
    :cond_0
    :goto_0
    if-eqz v2, :cond_4

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4

    .line 613
    const-string v11, ""

    .line 615
    .local v11, applicationName:Ljava/lang/String;
    :try_start_0
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v11

    .line 616
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to launch "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 623
    :goto_1
    if-eqz v11, :cond_3

    :try_start_1
    const-string v0, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.android.mms/.ui.ConversationComposer"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.cooliris.media/.Gallery"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 627
    :cond_1
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pausing JIT for 3 seconds "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 646
    .end local v2           #app:Lcom/android/server/am/ProcessRecord;
    .end local v11           #applicationName:Ljava/lang/String;
    :goto_2
    return-void

    .line 608
    .restart local v2       #app:Lcom/android/server/am/ProcessRecord;
    :cond_2
    iget-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_0

    .line 609
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ActivityStack;->mInitialStartTime:J

    goto :goto_0

    .line 617
    .restart local v11       #applicationName:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v12, v0

    .line 618
    .local v12, e:Ljava/lang/NullPointerException;
    const-string v0, "ActivityManager"

    const-string v1, "Exception cannot get application name "

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 632
    .end local v12           #e:Ljava/lang/NullPointerException;
    :cond_3
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move/from16 v4, p3

    :try_start_2
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 635
    :catch_1
    move-exception v0

    move-object v12, v0

    .line 636
    .local v12, e:Landroid/os/RemoteException;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception when starting activity "

    .end local v2           #app:Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    .end local v11           #applicationName:Ljava/lang/String;
    .end local v12           #e:Landroid/os/RemoteException;
    :cond_4
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "activity"

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILjava/lang/String;Landroid/content/ComponentName;Z)Lcom/android/server/am/ProcessRecord;

    goto :goto_2
.end method

.method private final stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "r"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2648
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x4000

    and-int/2addr v1, v2

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_2

    .line 2650
    :cond_0
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v1, :cond_1

    .line 2651
    const-string v1, "no-history"

    invoke-virtual {p0, p1, v3, v5, v1}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 2683
    :cond_1
    :goto_0
    return-void

    .line 2654
    :cond_2
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_1

    .line 2655
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_3

    .line 2656
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_3

    .line 2657
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {p0, v5}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2660
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 2662
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2663
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2666
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v1, :cond_4

    .line 2667
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2669
    :cond_4
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->visible:Z

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v1, p1, v2, v3}, Landroid/app/IApplicationThread;->scheduleStopActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2670
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2674
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "ActivityManager"

    const-string v2, "Exception thrown during pause"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2676
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 2677
    sget-object v1, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 2678
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    if-eqz v1, :cond_1

    .line 2679
    invoke-virtual {p0, p1, v4}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    goto :goto_0
.end method

.method private final updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 2
    .parameter "r"

    .prologue
    .line 383
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 384
    .local v0, hadit:Z
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 385
    return v0
.end method


# virtual methods
.method final activityDestroyed(Landroid/os/IBinder;)V
    .locals 7
    .parameter "token"

    .prologue
    .line 3237
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 3238
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x11

    invoke-virtual {v5, v6, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3240
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v0

    .line 3241
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 3242
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3243
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    iget-object v5, v3, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v6, :cond_0

    .line 3244
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3245
    .local v1, origId:J
    invoke-direct {p0, v3}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3246
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3249
    .end local v1           #origId:J
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    monitor-exit v4

    .line 3250
    return-void

    .line 3249
    .end local v0           #index:I
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5
.end method

.method final activityIdleInternal(Landroid/os/IBinder;ZLandroid/content/res/Configuration;)V
    .locals 27
    .parameter "token"
    .parameter "fromTimeout"
    .parameter "config"

    .prologue
    .line 2732
    const/16 v24, 0x0

    .line 2733
    .local v24, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v19, 0x0

    .line 2734
    .local v19, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/16 v25, 0x0

    .line 2735
    .local v25, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    const/4 v14, 0x0

    .line 2736
    .local v14, NS:I
    const/4 v13, 0x0

    .line 2737
    .local v13, NF:I
    const/4 v15, 0x0

    .line 2738
    .local v15, NT:I
    const/16 v23, 0x0

    .line 2739
    .local v23, sendThumbnail:Landroid/app/IApplicationThread;
    const/16 v16, 0x0

    .line 2740
    .local v16, booting:Z
    const/16 v18, 0x0

    .line 2742
    .local v18, enableScreen:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v17, v0

    monitor-enter v17

    .line 2743
    if-eqz p1, :cond_0

    .line 2744
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0xa

    move-object v0, v3

    move v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 2748
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v22

    .line 2749
    .local v22, index:I
    if-ltz v22, :cond_a

    .line 2750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2752
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    if-eqz p2, :cond_1

    .line 2753
    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    move-object/from16 v3, p0

    move/from16 v4, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    .line 2761
    :cond_1
    if-eqz p3, :cond_2

    .line 2762
    move-object/from16 v0, p3

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 2766
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v3, v0

    if-ne v3, v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v3, v0

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2773
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->idle:Z

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->scheduleAppGcsLocked()V

    .line 2775
    iget-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    if-eqz v3, :cond_4

    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_4

    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_4

    .line 2776
    iget-object v3, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v0, v3

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v23, v0

    .line 2777
    const/4 v3, 0x0

    iput-boolean v3, v5, Lcom/android/server/am/ActivityRecord;->thumbnailNeeded:Z

    .line 2783
    :cond_4
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 2786
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v3, v0

    if-eqz v3, :cond_5

    .line 2787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_5

    if-nez p2, :cond_5

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    .line 2789
    const/16 v18, 0x1

    .line 2798
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_5
    :goto_0
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;

    move-result-object v24

    .line 2799
    if-eqz v24, :cond_b

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v14, v3

    .line 2800
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-lez v13, :cond_6

    .line 2801
    new-instance v20, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object v3, v0

    move-object/from16 v0, v20

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2802
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v20, finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    move-object/from16 v19, v20

    .line 2804
    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v15

    if-lez v15, :cond_7

    .line 2805
    new-instance v26, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    move-object/from16 v0, v26

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2806
    .end local v25           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .local v26, thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    move-object/from16 v25, v26

    .line 2809
    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v25       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 2810
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    move-object v0, v3

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    move/from16 v16, v0

    .line 2811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    .line 2813
    :cond_8
    monitor-exit v17
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2818
    if-eqz v23, :cond_9

    .line 2820
    :try_start_5
    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/app/IApplicationThread;->requestThumbnail(Landroid/os/IBinder;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2829
    :cond_9
    :goto_2
    const/16 v21, 0x0

    .local v21, i:I
    :goto_3
    move/from16 v0, v21

    move v1, v14

    if-ge v0, v1, :cond_d

    .line 2830
    move-object/from16 v0, v24

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2831
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    monitor-enter v3

    .line 2832
    :try_start_6
    iget-boolean v4, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_c

    .line 2833
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;I)Lcom/android/server/am/ActivityRecord;

    .line 2837
    :goto_4
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2829
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    .line 2793
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    .end local v21           #i:I
    :cond_a
    if-eqz p2, :cond_5

    .line 2794
    const/4 v8, 0x0

    const-wide/16 v9, -0x1

    const-wide/16 v11, -0x1

    move-object/from16 v6, p0

    move/from16 v7, p2

    :try_start_7
    invoke-virtual/range {v6 .. v12}, Lcom/android/server/am/ActivityStack;->reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V

    goto/16 :goto_0

    .line 2813
    .end local v22           #index:I
    :catchall_0
    move-exception v3

    :goto_5
    monitor-exit v17
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v3

    .line 2799
    .restart local v22       #index:I
    :cond_b
    const/4 v3, 0x0

    move v14, v3

    goto/16 :goto_1

    .line 2821
    :catch_0
    move-exception v17

    .line 2822
    .local v17, e:Ljava/lang/Exception;
    const-string v3, "ActivityManager"

    const-string v4, "Exception thrown when requesting thumbnail"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2823
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object/from16 v8, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    goto :goto_2

    .line 2835
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v21       #i:I
    :cond_c
    :try_start_8
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->stopActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    goto :goto_4

    .line 2837
    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v4

    .line 2842
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_d
    const/16 v21, 0x0

    :goto_6
    move/from16 v0, v21

    move v1, v13

    if-ge v0, v1, :cond_e

    .line 2843
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2844
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    monitor-enter v3

    .line 2845
    const/4 v4, 0x1

    :try_start_9
    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    .line 2846
    monitor-exit v3

    .line 2842
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 2846
    :catchall_2
    move-exception v4

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    throw v4

    .line 2850
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_e
    const/16 v21, 0x0

    :goto_7
    move/from16 v0, v21

    move v1, v15

    if-ge v0, v1, :cond_f

    .line 2851
    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 2852
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/am/ActivityManagerService;->sendPendingThumbnail(Lcom/android/server/am/ActivityRecord;Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;Z)V

    .line 2850
    add-int/lit8 v21, v21, 0x1

    goto :goto_7

    .line 2855
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_f
    if-eqz v16, :cond_10

    .line 2856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->finishBooting()V

    .line 2859
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->trimApplications()V

    .line 2863
    if-eqz v18, :cond_11

    .line 2864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->enableScreenAfterBoot()V

    .line 2866
    :cond_11
    return-void

    .line 2813
    .end local v19           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .end local v21           #i:I
    .restart local v20       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_3
    move-exception v3

    move-object/from16 v19, v20

    .end local v20           #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v19       #finishes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5

    .end local v25           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v26       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :catchall_4
    move-exception v3

    move-object/from16 v25, v26

    .end local v26           #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    .restart local v25       #thumbnails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    goto/16 :goto_5
.end method

.method final activityPaused(Landroid/os/IBinder;Landroid/os/Bundle;Z)V
    .locals 8
    .parameter "token"
    .parameter "icicle"
    .parameter "timeout"

    .prologue
    .line 756
    const/4 v2, 0x0

    .line 758
    .local v2, r:Lcom/android/server/am/ActivityRecord;
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    .line 759
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v1

    .line 760
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 761
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    move-object v2, v0

    .line 762
    if-nez p3, :cond_0

    .line 763
    iput-object p2, v2, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 764
    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 766
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x9

    invoke-virtual {v3, v5, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 767
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, v2, :cond_2

    .line 768
    sget-object v3, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v3, v2, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 769
    invoke-direct {p0}, Lcom/android/server/am/ActivityStack;->completePauseLocked()V

    .line 777
    :cond_1
    :goto_0
    monitor-exit v4

    .line 778
    return-void

    .line 771
    :cond_2
    const/16 v3, 0x753c

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    :goto_1
    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    goto :goto_0

    .line 777
    .end local v1           #index:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 771
    .restart local v1       #index:I
    :cond_3
    :try_start_1
    const-string v7, "(none)"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method final cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V
    .locals 6
    .parameter "r"
    .parameter "cleanServices"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 3077
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_0

    .line 3078
    iput-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3080
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v3, p1, :cond_1

    .line 3081
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v5, v3, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    .line 3084
    :cond_1
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    .line 3085
    iput-boolean v4, p1, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 3090
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3091
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3094
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_4

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-eqz v3, :cond_4

    .line 3095
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 3096
    .local v0, apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/PendingIntentRecord;

    .line 3097
    .local v2, rec:Lcom/android/server/am/PendingIntentRecord;
    if-eqz v2, :cond_2

    .line 3098
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/am/ActivityManagerService;->cancelIntentSenderLocked(Lcom/android/server/am/PendingIntentRecord;Z)V

    goto :goto_0

    .line 3101
    .end local v0           #apr:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<Lcom/android/server/am/PendingIntentRecord;>;"
    .end local v2           #rec:Lcom/android/server/am/PendingIntentRecord;
    :cond_3
    iput-object v5, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 3104
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    if-eqz p2, :cond_5

    .line 3105
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3108
    :cond_5
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 3112
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3116
    :cond_6
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x9

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3117
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xa

    invoke-virtual {v3, v4, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 3118
    return-void
.end method

.method final cleanUpActivityServicesLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 4
    .parameter "r"

    .prologue
    const/4 v3, 0x0

    .line 3139
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    if-eqz v2, :cond_1

    .line 3140
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3141
    .local v1, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3142
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ConnectionRecord;

    .line 3143
    .local v0, c:Lcom/android/server/am/ConnectionRecord;
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->removeConnectionLocked(Lcom/android/server/am/ConnectionRecord;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    goto :goto_0

    .line 3145
    .end local v0           #c:Lcom/android/server/am/ConnectionRecord;
    :cond_0
    iput-object v3, p1, Lcom/android/server/am/ActivityRecord;->connections:Ljava/util/HashSet;

    .line 3147
    .end local v1           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/am/ConnectionRecord;>;"
    :cond_1
    return-void
.end method

.method final destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z
    .locals 13
    .parameter "r"
    .parameter "removeFromApp"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3160
    const/16 v6, 0x7542

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    iget-object v8, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    const/4 v8, 0x2

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 3164
    const/4 v4, 0x0

    .line 3166
    .local v4, removedFromHistory:Z
    invoke-virtual {p0, p1, v10}, Lcom/android/server/am/ActivityStack;->cleanUpActivityLocked(Lcom/android/server/am/ActivityRecord;Z)V

    .line 3168
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    move v1, v11

    .line 3170
    .local v1, hadApp:Z
    :goto_0
    if-eqz v1, :cond_7

    .line 3171
    if-eqz p2, :cond_2

    .line 3172
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 3173
    .local v2, idx:I
    if-ltz v2, :cond_0

    .line 3174
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3176
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v6, v7, :cond_1

    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_1

    .line 3177
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v12, v6, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 3178
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x19

    invoke-virtual {v6, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3181
    :cond_1
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_2

    .line 3184
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7, v11, v10}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3188
    .end local v2           #idx:I
    :cond_2
    const/4 v5, 0x0

    .line 3192
    .local v5, skipDestroy:Z
    :try_start_0
    iget-object v6, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-boolean v7, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    iget v8, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-interface {v6, p1, v7, v8}, Landroid/app/IApplicationThread;->scheduleDestroyActivity(Landroid/os/IBinder;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3206
    :cond_3
    :goto_1
    iput-object v12, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3207
    iput-boolean v10, p1, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    .line 3209
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_6

    if-nez v5, :cond_6

    .line 3210
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYING:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 3211
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x11

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 3212
    .local v3, msg:Landroid/os/Message;
    iput-object p1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3213
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x2710

    invoke-virtual {v6, v3, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3227
    .end local v3           #msg:Landroid/os/Message;
    .end local v5           #skipDestroy:Z
    :goto_2
    iput v10, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3229
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    if-eqz v1, :cond_4

    .line 3230
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Activity "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " being finished, but not in LRU list"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3233
    :cond_4
    return v4

    .end local v1           #hadApp:Z
    :cond_5
    move v1, v10

    .line 3168
    goto/16 :goto_0

    .line 3194
    .restart local v1       #hadApp:Z
    .restart local v5       #skipDestroy:Z
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 3199
    .local v0, e:Ljava/lang/Exception;
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_3

    .line 3200
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3201
    const/4 v4, 0x1

    .line 3202
    const/4 v5, 0x1

    goto :goto_1

    .line 3215
    .end local v0           #e:Ljava/lang/Exception;
    :cond_6
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2

    .line 3219
    .end local v5           #skipDestroy:Z
    :cond_7
    iget-boolean v6, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_8

    .line 3220
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->removeActivityFromHistoryLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 3221
    const/4 v4, 0x1

    goto :goto_2

    .line 3223
    :cond_8
    sget-object v6, Lcom/android/server/am/ActivityStack$ActivityState;->DESTROYED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v6, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    goto :goto_2
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V
    .locals 2
    .parameter "starting"
    .parameter "configChanges"

    .prologue
    const/4 v1, 0x0

    .line 1058
    invoke-virtual {p0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 1059
    .local v0, r:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    .line 1060
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1062
    :cond_0
    return-void
.end method

.method final ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V
    .locals 11
    .parameter "top"
    .parameter "starting"
    .parameter "onlyThisProcess"
    .parameter "configChanges"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v10, "ActivityManager"

    .line 922
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 923
    .local v1, count:I
    sub-int v4, v1, v9

    .line 924
    .local v4, i:I
    :goto_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eq v6, p1, :cond_0

    .line 925
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 928
    :cond_0
    const/4 v0, 0x0

    .line 929
    .local v0, behindFullscreen:Z
    :goto_1
    if-ltz v4, :cond_a

    .line 930
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 934
    .local v5, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_2

    .line 929
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .line 938
    :cond_2
    if-eqz p3, :cond_3

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    :cond_3
    move v2, v9

    .line 943
    .local v2, doThisProcess:Z
    :goto_2
    if-eq v5, p2, :cond_4

    if-eqz v2, :cond_4

    .line 944
    invoke-virtual {p0, v5, v8}, Lcom/android/server/am/ActivityStack;->ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z

    .line 947
    :cond_4
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_5

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v6, :cond_e

    .line 948
    :cond_5
    if-eqz p3, :cond_6

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {p3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 955
    :cond_6
    if-eq v5, p2, :cond_7

    .line 956
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v5, v6, p4}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 958
    :cond_7
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-nez v6, :cond_8

    .line 961
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v6, v5, v9}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 963
    :cond_8
    if-eq v5, p2, :cond_9

    .line 964
    invoke-direct {p0, v5, v8, v8}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 998
    :cond_9
    :goto_3
    iget v6, v5, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr p4, v6

    .line 1000
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_1

    .line 1004
    const/4 v0, 0x1

    .line 1005
    add-int/lit8 v4, v4, -0x1

    .line 1012
    .end local v2           #doThisProcess:Z
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_a
    :goto_4
    if-ltz v4, :cond_11

    .line 1013
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ActivityRecord;

    .line 1018
    .restart local v5       #r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v6, :cond_c

    .line 1019
    if-eqz v0, :cond_10

    .line 1020
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_c

    .line 1023
    iput-boolean v8, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1025
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1026
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_b

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v6, v7, :cond_c

    :cond_b
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_c

    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v6, :cond_c

    .line 1031
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1049
    :cond_c
    :goto_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    :cond_d
    move v2, v8

    .line 938
    goto :goto_2

    .line 968
    .restart local v2       #doThisProcess:Z
    :cond_e
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v6, :cond_f

    .line 973
    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_3

    .line 975
    :cond_f
    if-nez p3, :cond_9

    .line 978
    iput-boolean v9, v5, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 979
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v6, v7, :cond_9

    if-eq v5, p2, :cond_9

    .line 985
    :try_start_1
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v6, v5, v7}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 986
    iget-object v6, v5, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v6, v6, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    const/4 v7, 0x1

    invoke-interface {v6, v5, v7}, Landroid/app/IApplicationThread;->scheduleWindowVisibility(Landroid/os/IBinder;Z)V

    .line 987
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 988
    :catch_0
    move-exception v6

    move-object v3, v6

    .line 991
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown making visibile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1033
    .end local v2           #doThisProcess:Z
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v6

    move-object v3, v6

    .line 1036
    .restart local v3       #e:Ljava/lang/Exception;
    const-string v6, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception thrown making hidden: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 1043
    .end local v3           #e:Ljava/lang/Exception;
    :cond_10
    iget-boolean v6, v5, Lcom/android/server/am/ActivityRecord;->fullscreen:Z

    if-eqz v6, :cond_c

    .line 1046
    const/4 v0, 0x1

    goto :goto_5

    .line 1051
    .end local v5           #r:Lcom/android/server/am/ActivityRecord;
    :cond_11
    return-void
.end method

.method final ensureActivityConfigurationLocked(Lcom/android/server/am/ActivityRecord;I)Z
    .locals 7
    .parameter "r"
    .parameter "globalChanges"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 3439
    iget-boolean v3, p0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    if-eqz v3, :cond_0

    move v3, v5

    .line 3539
    :goto_0
    return v3

    .line 3450
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v3, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    .line 3451
    .local v1, newConfig:Landroid/content/res/Configuration;
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    if-ne v3, v1, :cond_1

    move v3, v5

    .line 3454
    goto :goto_0

    .line 3458
    :cond_1
    iget-boolean v3, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v3, :cond_2

    .line 3461
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    move v3, v5

    .line 3462
    goto :goto_0

    .line 3467
    :cond_2
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3468
    .local v2, oldConfig:Landroid/content/res/Configuration;
    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->configuration:Landroid/content/res/Configuration;

    .line 3472
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_4

    .line 3475
    :cond_3
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    move v3, v5

    .line 3476
    goto :goto_0

    .line 3480
    :cond_4
    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v0

    .line 3487
    .local v0, changes:I
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v3, v3, Landroid/content/pm/ActivityInfo;->configChanges:I

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    if-eqz v3, :cond_9

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Landroid/app/MiuiThemeHelper;->needRestartActivity(Ljava/lang/String;ILandroid/content/res/Configuration;)Z

    move-result v3

    if-eqz v3, :cond_b

    move v3, v5

    goto :goto_0

    .line 3489
    :cond_b
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    or-int/2addr v3, v0

    iput v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    .line 3490
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p1, v3, p2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 3491
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-nez v3, :cond_6

    .line 3494
    :cond_5
    invoke-virtual {p0, p1, v5}, Lcom/android/server/am/ActivityStack;->destroyActivityLocked(Lcom/android/server/am/ActivityRecord;Z)Z

    :goto_1
    move v3, v6

    .line 3521
    goto :goto_0

    .line 3495
    :cond_6
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_7

    .line 3501
    iput-boolean v5, p1, Lcom/android/server/am/ActivityRecord;->configDestroy:Z

    move v3, v5

    .line 3502
    goto :goto_0

    .line 3503
    :cond_7
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v4, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v3, v4, :cond_8

    .line 3510
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v5}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3511
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 3515
    :cond_8
    iget v3, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    invoke-direct {p0, p1, v3, v6}, Lcom/android/server/am/ActivityStack;->relaunchActivityLocked(Lcom/android/server/am/ActivityRecord;IZ)Z

    .line 3516
    iput v6, p1, Lcom/android/server/am/ActivityRecord;->configChangeFlags:I

    goto :goto_1

    .line 3529
    :cond_9
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v3, :cond_a

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_a

    .line 3532
    :try_start_0
    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v3, p1}, Landroid/app/IApplicationThread;->scheduleActivityConfigurationChanged(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3537
    :cond_a
    :goto_2
    invoke-virtual {p1, v6}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    move v3, v5

    .line 3539
    goto/16 :goto_0

    .line 3533
    :catch_0
    move-exception v3

    goto :goto_2
.end method

.method final finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 8
    .parameter "r"
    .parameter "index"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    .line 2912
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_0

    .line 2913
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Duplicate finish request for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2914
    const/4 v1, 0x0

    .line 3005
    .end local p2
    :goto_0
    return v1

    .line 2917
    .restart local p2
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    .line 2918
    const/16 v1, 0x7531

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v4, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2921
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/server/am/TaskRecord;->numActivities:I

    .line 2922
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p2, v1, :cond_2

    .line 2923
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 2924
    .local v7, next:Lcom/android/server/am/ActivityRecord;
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v1, v2, :cond_2

    .line 2925
    iget-boolean v1, p1, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    if-eqz v1, :cond_1

    .line 2927
    const/4 v1, 0x1

    iput-boolean v1, v7, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    .line 2929
    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v2, 0x8

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 2933
    iget-object v1, v7, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const/high16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2938
    .end local v7           #next:Lcom/android/server/am/ActivityRecord;
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->pauseKeyDispatchingLocked()V

    .line 2939
    iget-boolean v1, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v1, :cond_3

    .line 2940
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFocusedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_3

    .line 2941
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 2946
    :cond_3
    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2947
    .local v0, resultTo:Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_5

    .line 2951
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lez v1, :cond_4

    .line 2952
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v4

    invoke-virtual {v1, v2, v3, p4, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2956
    :cond_4
    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move-object v1, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2958
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2965
    :cond_5
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 2966
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 2967
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 2968
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 2970
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPendingThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 2974
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCancelledThumbnails:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2977
    :cond_6
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v1, p1, :cond_b

    .line 2978
    if-lez p2, :cond_7

    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    const/4 v2, 0x1

    sub-int v2, p2, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/server/am/ActivityRecord;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-eq v1, v2, :cond_9

    :cond_7
    const/4 v1, 0x1

    move v6, v1

    .line 2982
    .local v6, endTask:Z
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    if-eqz v6, :cond_a

    const/16 v2, 0x2009

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 2987
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2989
    iget-object v1, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v1, :cond_8

    .line 2992
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 3005
    .end local v6           #endTask:Z
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_0

    .line 2978
    :cond_9
    const/4 v1, 0x0

    move v6, v1

    goto :goto_1

    .line 2982
    .restart local v6       #endTask:Z
    :cond_a
    const/16 v2, 0x2007

    goto :goto_2

    .line 2995
    .end local v6           #endTask:Z
    .restart local p2
    :cond_b
    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v2, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSING:Lcom/android/server/am/ActivityStack$ActivityState;

    if-eq v1, v2, :cond_8

    .line 2999
    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/am/ActivityStack;->finishCurrentActivityLocked(Lcom/android/server/am/ActivityRecord;II)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method final indexOfTokenLocked(Landroid/os/IBinder;)I
    .locals 5
    .parameter "token"

    .prologue
    .line 367
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 370
    .local v0, count:I
    const/4 v2, -0x1

    .line 371
    .local v2, index:I
    const/4 v4, 0x1

    sub-int v1, v0, v4

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_0

    .line 372
    iget-object v4, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .line 373
    .local v3, o:Ljava/lang/Object;
    if-ne v3, p1, :cond_1

    .line 374
    move v2, v1

    .line 379
    .end local v3           #o:Ljava/lang/Object;
    :cond_0
    return v2

    .line 371
    .restart local v3       #o:Ljava/lang/Object;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method final moveTaskToBackLocked(ILcom/android/server/am/ActivityRecord;)Z
    .locals 13
    .parameter "task"
    .parameter "reason"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 3353
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "moveTaskToBack: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3358
    iget-boolean v8, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v8, :cond_1

    .line 3359
    invoke-virtual {p0, v11, p1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 3360
    .local v5, next:Lcom/android/server/am/ActivityRecord;
    if-nez v5, :cond_0

    .line 3361
    invoke-virtual {p0, v11, v12}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    .line 3363
    :cond_0
    if-eqz v5, :cond_1

    .line 3365
    const/4 v3, 0x1

    .line 3367
    .local v3, moveOK:Z
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    iget-object v9, v5, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v8, v9}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 3371
    :goto_0
    if-nez v3, :cond_1

    move v8, v12

    .line 3418
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v8

    .line 3368
    .restart local v3       #moveOK:Z
    .restart local v5       #next:Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 3369
    .local v2, e:Landroid/os/RemoteException;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v11, v8, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_0

    .line 3377
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #moveOK:Z
    .end local v5           #next:Lcom/android/server/am/ActivityRecord;
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3382
    .local v4, moved:Ljava/util/ArrayList;
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3383
    .local v0, N:I
    const/4 v1, 0x0

    .line 3384
    .local v1, bottom:I
    const/4 v6, 0x0

    .line 3388
    .local v6, pos:I
    :goto_2
    if-ge v6, v0, :cond_3

    .line 3389
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ActivityRecord;

    .line 3392
    .local v7, r:Lcom/android/server/am/ActivityRecord;
    iget-object v8, v7, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v8, p1, :cond_2

    .line 3394
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3395
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v8, v1, v7}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3396
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3397
    add-int/lit8 v1, v1, 0x1

    .line 3399
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 3400
    goto :goto_2

    .line 3402
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz p2, :cond_5

    iget-object v8, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v8}, Landroid/content/Intent;->getFlags()I

    move-result v8

    const/high16 v9, 0x1

    and-int/2addr v8, v9

    if-eqz v8, :cond_5

    .line 3404
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v8, v12}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 3405
    invoke-virtual {p0, v11}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v7

    .line 3406
    .restart local v7       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v7, :cond_4

    .line 3407
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3412
    .end local v7           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_3
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v8, v4}, Lcom/android/server/WindowManagerService;->moveAppTokensToBottom(Ljava/util/List;)V

    .line 3417
    invoke-direct {p0, p1}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 3418
    const/4 v8, 0x1

    goto :goto_1

    .line 3410
    :cond_5
    iget-object v8, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v9, 0x200b

    invoke-virtual {v8, v9}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto :goto_3
.end method

.method final moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 9
    .parameter "tr"
    .parameter "reason"

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 3279
    iget v4, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    .line 3280
    .local v4, task:I
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v5, v6, v7

    .line 3282
    .local v5, top:I
    if-ltz v5, :cond_0

    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v4, :cond_1

    .line 3335
    :cond_0
    :goto_0
    return-void

    .line 3287
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3291
    .local v1, moved:Ljava/util/ArrayList;
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v5, v6, v7

    .line 3292
    move v2, v5

    .line 3296
    .local v2, pos:I
    :goto_1
    if-ltz v2, :cond_3

    .line 3297
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 3300
    .local v3, r:Lcom/android/server/am/ActivityRecord;
    const/4 v0, 0x1

    .line 3301
    .local v0, first:Z
    iget-object v6, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    if-ne v6, v4, :cond_2

    .line 3303
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3304
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v6, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3305
    invoke-virtual {v1, v8, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3306
    add-int/lit8 v5, v5, -0x1

    .line 3307
    if-eqz v0, :cond_2

    iget-boolean v6, p0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    if-eqz v6, :cond_2

    .line 3308
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v3, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 3309
    const/4 v0, 0x0

    .line 3312
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 3313
    goto :goto_1

    .line 3317
    .end local v0           #first:Z
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_3
    if-eqz p2, :cond_5

    iget-object v6, p2, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x1

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 3319
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v6, v8}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 3320
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v3

    .line 3321
    .restart local v3       #r:Lcom/android/server/am/ActivityRecord;
    if-eqz v3, :cond_4

    .line 3322
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3328
    .end local v3           #r:Lcom/android/server/am/ActivityRecord;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v6, v1}, Lcom/android/server/WindowManagerService;->moveAppTokensToTop(Ljava/util/List;)V

    .line 3333
    invoke-direct {p0, v4}, Lcom/android/server/am/ActivityStack;->finishTaskMoveLocked(I)V

    .line 3334
    const/16 v6, 0x7532

    invoke-static {v6, v4}, Landroid/util/EventLog;->writeEvent(II)I

    goto :goto_0

    .line 3325
    :cond_5
    iget-object v6, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v7, 0x100a

    invoke-virtual {v6, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto :goto_2
.end method

.method pauseIfSleepingLocked()V
    .locals 2

    .prologue
    .line 649
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_2

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 651
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mGoingToSleep:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 652
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 653
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLaunchingActivity:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 654
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    if-nez v0, :cond_2

    .line 664
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 667
    :cond_2
    return-void
.end method

.method final processStoppingActivitiesLocked(Z)Ljava/util/ArrayList;
    .locals 7
    .parameter "remove"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2687
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2688
    .local v0, N:I
    if-gtz v0, :cond_0

    const/4 v5, 0x0

    .line 2725
    :goto_0
    return-object v5

    .line 2690
    :cond_0
    const/4 v4, 0x0

    .line 2692
    .local v4, stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    iget-boolean v5, v5, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v5, :cond_4

    const/4 v5, 0x1

    move v2, v5

    .line 2695
    .local v2, nowVisible:Z
    :goto_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_5

    .line 2696
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityRecord;

    .line 2700
    .local v3, s:Lcom/android/server/am/ActivityRecord;
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 2701
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2702
    iput-boolean v6, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 2703
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1

    .line 2710
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5, v3, v6}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 2713
    :cond_1
    iget-boolean v5, v3, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    .line 2715
    if-nez v4, :cond_2

    .line 2716
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2718
    .restart local v4       #stops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/am/ActivityRecord;>;"
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2719
    iget-object v5, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2720
    add-int/lit8 v0, v0, -0x1

    .line 2721
    add-int/lit8 v1, v1, -0x1

    .line 2695
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v2           #nowVisible:Z
    .end local v3           #s:Lcom/android/server/am/ActivityRecord;
    :cond_4
    move v2, v6

    .line 2692
    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #nowVisible:Z
    :cond_5
    move-object v5, v4

    .line 2725
    goto :goto_0
.end method

.method final realStartActivityLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ProcessRecord;ZZZ)Z
    .locals 19
    .parameter "r"
    .parameter "app"
    .parameter "andResume"
    .parameter "checkConfig"
    .parameter "pauseJIT"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/am/ProcessRecord;I)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v6, 0x1

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 473
    if-eqz p4, :cond_0

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object/from16 v7, p1

    :goto_0
    invoke-virtual {v5, v6, v7}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v15

    .line 477
    .local v15, config:Landroid/content/res/Configuration;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v15

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;)Z

    .line 480
    .end local v15           #config:Landroid/content/res/Configuration;
    :cond_0
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 484
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v17

    .line 485
    .local v17, idx:I
    if-gez v17, :cond_1

    .line 486
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 488
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 491
    :try_start_0
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v5, v0

    if-nez v5, :cond_3

    .line 492
    new-instance v5, Landroid/os/RemoteException;

    invoke-direct {v5}, Landroid/os/RemoteException;-><init>()V

    throw v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :catch_0
    move-exception v5

    move-object/from16 v16, v5

    .line 542
    .local v16, e:Landroid/os/RemoteException;
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    move v5, v0

    if-eqz v5, :cond_d

    .line 545
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Second failure launching "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", giving up"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move v6, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v7, v0

    move-object v0, v5

    move-object/from16 v1, p2

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;ILandroid/app/IApplicationThread;)V

    .line 549
    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "2nd-crash"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 551
    const/4 v5, 0x0

    .line 594
    .end local v16           #e:Landroid/os/RemoteException;
    :goto_1
    return v5

    .line 474
    .end local v17           #idx:I
    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 494
    .restart local v17       #idx:I
    :cond_3
    const/4 v11, 0x0

    .line 495
    .local v11, results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v12, 0x0

    .line 496
    .local v12, newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p3, :cond_4

    .line 497
    :try_start_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v11, v0

    .line 498
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    move-object v12, v0

    .line 504
    :cond_4
    if-eqz p3, :cond_5

    .line 505
    const/16 v5, 0x7536

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v8, v0

    iget v8, v8, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    move-object v8, v0

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 509
    :cond_5
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->isHomeActivity:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHomeProcess:Lcom/android/server/am/ProcessRecord;

    .line 512
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->ensurePackageDexOpt(Ljava/lang/String;)V

    .line 513
    if-eqz p5, :cond_7

    .line 514
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v5, v0

    const-wide/16 v6, 0x3

    invoke-interface {v5, v6, v7}, Landroid/app/IApplicationThread;->requestDelayJITCompilation(J)V

    .line 516
    :cond_7
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v5, v0

    new-instance v6, Landroid/content/Intent;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v7, v0

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    move-object v10, v0

    if-nez p3, :cond_c

    const/4 v7, 0x1

    move v13, v7

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v14

    move-object/from16 v7, p1

    invoke-interface/range {v5 .. v14}, Landroid/app/IApplicationThread;->scheduleLaunchActivity(Landroid/content/Intent;Landroid/os/IBinder;ILandroid/content/pm/ActivityInfo;Landroid/os/Bundle;Ljava/util/List;Ljava/util/List;ZZ)V

    .line 521
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800

    and-int/2addr v5, v6

    if-eqz v5, :cond_9

    .line 526
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    move-object v0, v5

    move-object/from16 v1, p2

    if-eq v0, v1, :cond_8

    .line 529
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting new heavy weight process "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " when already running "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p2

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    .line 536
    .local v18, msg:Landroid/os/Message;
    move-object/from16 v0, p1

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 537
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 560
    .end local v18           #msg:Landroid/os/Message;
    :cond_9
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->launchFailed:Z

    .line 561
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 562
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " being launched, but already in LRU list"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_a
    if-eqz p3, :cond_e

    .line 569
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 570
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 571
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 572
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 573
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 574
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 575
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 576
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->pauseIfSleepingLocked()V

    .line 590
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startSetupActivityLocked()V

    .line 594
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 516
    :cond_c
    const/4 v7, 0x0

    move v13, v7

    goto/16 :goto_2

    .line 556
    .end local v11           #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v12           #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    .restart local v16       #e:Landroid/os/RemoteException;
    :cond_d
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 557
    throw v16

    .line 582
    .end local v16           #e:Landroid/os/RemoteException;
    .restart local v11       #results:Ljava/util/List;,"Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v12       #newIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :cond_e
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->STOPPED:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 583
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->stopped:Z

    goto :goto_3
.end method

.method removeHistoryRecordsForAppLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 1
    .parameter "app"

    .prologue
    .line 3270
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mLRUActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3271
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3272
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3273
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/server/am/ActivityStack;->removeHistoryRecordsForAppLocked(Ljava/util/ArrayList;Lcom/android/server/am/ProcessRecord;)V

    .line 3274
    return-void
.end method

.method reportActivityLaunchedLocked(ZLcom/android/server/am/ActivityRecord;JJ)V
    .locals 5
    .parameter "timeout"
    .parameter "r"
    .parameter "thisTime"
    .parameter "totalTime"

    .prologue
    .line 2595
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2596
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 2597
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    iput-boolean p1, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2598
    if-eqz p2, :cond_0

    .line 2599
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2601
    :cond_0
    iput-wide p3, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2602
    iput-wide p5, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2595
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2604
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2605
    return-void
.end method

.method reportActivityVisibleLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 6
    .parameter "r"

    .prologue
    .line 2608
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 2609
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager$WaitResult;

    .line 2610
    .local v1, w:Landroid/app/IActivityManager$WaitResult;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2611
    if-eqz p1, :cond_0

    .line 2612
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2614
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    sub-long/2addr v2, v4

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2615
    iget-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    iput-wide v2, v1, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2608
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2617
    .end local v1           #w:Landroid/app/IActivityManager$WaitResult;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 2618
    return-void
.end method

.method final requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z
    .locals 10
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "reason"

    .prologue
    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 2878
    invoke-virtual {p0, p1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v2

    .line 2879
    .local v2, index:I
    if-gez v2, :cond_0

    move v0, v4

    .line 2903
    :goto_0
    return v0

    .line 2882
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 2885
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x1

    .line 2886
    .local v7, lastActivity:Z
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v6, v0, v9

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    .line 2887
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/ActivityRecord;

    .line 2888
    .local v8, p:Lcom/android/server/am/ActivityRecord;
    iget-boolean v0, v8, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v0, :cond_2

    if-eq v8, v1, :cond_2

    .line 2889
    const/4 v7, 0x0

    .line 2896
    .end local v8           #p:Lcom/android/server/am/ActivityRecord;
    :cond_1
    if-eqz v7, :cond_3

    .line 2897
    iget-object v0, v1, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v4

    .line 2898
    goto :goto_0

    .line 2886
    .restart local v8       #p:Lcom/android/server/am/ActivityRecord;
    :cond_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v8           #p:Lcom/android/server/am/ActivityRecord;
    :cond_3
    move-object v0, p0

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 2902
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->finishActivityLocked(Lcom/android/server/am/ActivityRecord;IILandroid/content/Intent;Ljava/lang/String;)Z

    move v0, v9

    .line 2903
    goto :goto_0
.end method

.method final resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 23
    .parameter "prev"

    .prologue
    .line 1075
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    .line 1079
    .local v6, next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    move/from16 v22, v0

    .line 1080
    .local v22, userLeaving:Z
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 1082
    if-nez v6, :cond_0

    .line 1086
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_0

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->startHomeActivityLocked()Z

    move-result v5

    .line 1369
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    :goto_0
    return v5

    .line 1091
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :cond_0
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 1094
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-ne v5, v6, :cond_1

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_1

    .line 1097
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 1098
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1099
    const/4 v5, 0x0

    goto :goto_0

    .line 1104
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-eqz v5, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mLastPausedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-ne v5, v6, :cond_3

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    sget-object v7, Lcom/android/server/am/ActivityStack$ActivityState;->PAUSED:Lcom/android/server/am/ActivityStack$ActivityState;

    if-ne v5, v7, :cond_3

    .line 1108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1110
    const/4 v5, 0x0

    goto :goto_0

    .line 1115
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mStoppingActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1116
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1122
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mPausingActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_4

    .line 1124
    const/4 v5, 0x0

    goto :goto_0

    .line 1158
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_5

    .line 1160
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->startPausingLocked(ZZ)V

    .line 1161
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1164
    :cond_5
    if-eqz p1, :cond_6

    move-object/from16 v0, p1

    move-object v1, v6

    if-eq v0, v1, :cond_6

    .line 1165
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    move v5, v0

    if-nez v5, :cond_c

    if-eqz v6, :cond_c

    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    if-nez v5, :cond_c

    .line 1166
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->waitingVisible:Z

    .line 1167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingVisibleActivities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1197
    :cond_6
    :goto_1
    if-eqz p1, :cond_12

    .line 1198
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v5, v0

    if-eqz v5, :cond_f

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    .line 1208
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/WindowManagerService;->setAppWillBeHidden(Landroid/os/IBinder;)V

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1235
    :cond_7
    :goto_3
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v5, :cond_1a

    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_1a

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object/from16 v18, v0

    .line 1242
    .local v18, lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    move-object v0, v6

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    move-object/from16 v19, v0

    .line 1244
    .local v19, lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1246
    sget-object v5, Lcom/android/server/am/ActivityStack$ActivityState;->RESUMED:Lcom/android/server/am/ActivityStack$ActivityState;

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1247
    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1248
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->touchActiveTime()V

    .line 1249
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v5, v7, v8, v9}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 1250
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->updateLRUListLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 1254
    const/16 v21, 0x0

    .line 1255
    .local v21, updated:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 1256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1257
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v8, v0

    iget-object v8, v8, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6, v9}, Lcom/android/server/am/ActivityRecord;->mayFreezeScreenLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v9

    if-eqz v9, :cond_14

    move-object v9, v6

    :goto_4
    invoke-virtual {v7, v8, v9}, Lcom/android/server/WindowManagerService;->updateOrientationFromAppTokens(Landroid/content/res/Configuration;Landroid/os/IBinder;)Landroid/content/res/Configuration;

    move-result-object v16

    .line 1260
    .local v16, config:Landroid/content/res/Configuration;
    if-eqz v16, :cond_8

    .line 1261
    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/am/ActivityRecord;->frozenBeforeDestroy:Z

    .line 1263
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;)Z

    move-result v21

    .line 1264
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    .end local v16           #config:Landroid/content/res/Configuration;
    :cond_9
    if-nez v21, :cond_15

    .line 1272
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v20

    .line 1276
    .local v20, nextNext:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v20

    move-object v1, v6

    if-eq v0, v1, :cond_a

    .line 1278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHandler:Landroid/os/Handler;

    move-object v5, v0

    const/16 v7, 0x13

    invoke-virtual {v5, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1280
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_b

    .line 1281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setFocusedActivityLocked(Lcom/android/server/am/ActivityRecord;)V

    .line 1283
    :cond_b
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;I)V

    .line 1284
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    invoke-virtual {v5}, Lcom/android/server/WindowManagerService;->executeAppTransition()V

    .line 1285
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1286
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1179
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v20           #nextNext:Lcom/android/server/am/ActivityRecord;
    .end local v21           #updated:Z
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :cond_c
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v5, v0

    if-eqz v5, :cond_6

    .line 1180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/android/server/WindowManagerService;->setAppVisibility(Landroid/os/IBinder;Z)V

    goto/16 :goto_1

    .line 1204
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v7, v0

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v7, v8, :cond_e

    const/16 v7, 0x2007

    :goto_5
    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_2

    :cond_e
    const/16 v7, 0x2009

    goto :goto_5

    .line 1213
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_3

    .line 1216
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v7, v0

    iget-object v8, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    if-ne v7, v8, :cond_11

    const/16 v7, 0x1006

    :goto_6
    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_3

    :cond_11
    const/16 v7, 0x1008

    goto :goto_6

    .line 1225
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v7, 0x1

    if-le v5, v7, :cond_7

    .line 1228
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mNoAnimActivities:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/4 v7, 0x0

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_3

    .line 1231
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    const/16 v7, 0x1006

    invoke-virtual {v5, v7}, Lcom/android/server/WindowManagerService;->prepareAppTransition(I)V

    goto/16 :goto_3

    .line 1257
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v21       #updated:Z
    :cond_14
    const/4 v9, 0x0

    goto/16 :goto_4

    .line 1264
    .end local v6           #next:Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 1291
    .restart local v6       #next:Lcom/android/server/am/ActivityRecord;
    :cond_15
    :try_start_2
    iget-object v15, v6, Lcom/android/server/am/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1292
    .local v15, a:Ljava/util/ArrayList;
    if-eqz v15, :cond_16

    .line 1293
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 1294
    .local v14, N:I
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v5, :cond_16

    if-lez v14, :cond_16

    .line 1298
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v5, v6, v15}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V

    .line 1302
    .end local v14           #N:I
    :cond_16
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v5, :cond_17

    .line 1303
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    invoke-interface {v5, v7, v6}, Landroid/app/IApplicationThread;->scheduleNewIntent(Ljava/util/List;Landroid/os/IBinder;)V

    .line 1306
    :cond_17
    const/16 v5, 0x7537

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v9, v9, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->shortComponentName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-static {v5, v7}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1310
    iget-object v5, v6, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/server/am/ActivityManagerService;->isNextTransitionForward()Z

    move-result v7

    invoke-interface {v5, v6, v7}, Landroid/app/IApplicationThread;->scheduleResumeActivity(Landroid/os/IBinder;Z)V

    .line 1313
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ActivityStack;->pauseIfSleepingLocked()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1337
    const/4 v5, 0x1

    :try_start_3
    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->visible:Z

    .line 1338
    move-object/from16 v0, p0

    move-object v1, v6

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->completeResumeLocked(Lcom/android/server/am/ActivityRecord;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1349
    const/4 v5, 0x0

    iput-object v5, v6, Lcom/android/server/am/ActivityRecord;->icicle:Landroid/os/Bundle;

    .line 1350
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->haveState:Z

    .line 1351
    const/4 v5, 0x0

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->stopped:Z

    .line 1369
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v21           #updated:Z
    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1315
    .restart local v18       #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .restart local v19       #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .restart local v21       #updated:Z
    :catch_0
    move-exception v5

    move-object/from16 v17, v5

    .line 1317
    .local v17, e:Ljava/lang/Exception;
    move-object/from16 v0, v19

    move-object v1, v6

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->state:Lcom/android/server/am/ActivityStack$ActivityState;

    .line 1318
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 1319
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Restarting because process died: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v5, :cond_19

    .line 1321
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1330
    :cond_18
    :goto_8
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 1331
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1323
    :cond_19
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_18

    .line 1324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v10, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget v11, v6, Lcom/android/server/am/ActivityRecord;->icon:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    goto :goto_8

    .line 1339
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v15       #a:Ljava/util/ArrayList;
    :catch_1
    move-exception v5

    move-object/from16 v17, v5

    .line 1342
    .restart local v17       #e:Ljava/lang/Exception;
    const-string v5, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception thrown during resume of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1343
    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string v8, "resume-exception"

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move-object v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->requestFinishActivityLocked(Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;)Z

    .line 1345
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 1355
    .end local v15           #a:Ljava/util/ArrayList;
    .end local v17           #e:Ljava/lang/Exception;
    .end local v18           #lastResumedActivity:Lcom/android/server/am/ActivityRecord;
    .end local v19           #lastState:Lcom/android/server/am/ActivityStack$ActivityState;
    .end local v21           #updated:Z
    :cond_1a
    iget-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    if-nez v5, :cond_1b

    .line 1356
    const/4 v5, 0x1

    iput-boolean v5, v6, Lcom/android/server/am/ActivityRecord;->hasBeenLaunched:Z

    .line 1366
    :goto_9
    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startSpecificActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    goto/16 :goto_7

    .line 1359
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/WindowManagerService;

    iget-object v7, v6, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget v8, v6, Lcom/android/server/am/ActivityRecord;->theme:I

    iget-object v9, v6, Lcom/android/server/am/ActivityRecord;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iget v10, v6, Lcom/android/server/am/ActivityRecord;->labelRes:I

    iget v11, v6, Lcom/android/server/am/ActivityRecord;->icon:I

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-virtual/range {v5 .. v13}, Lcom/android/server/WindowManagerService;->setAppStartingWindow(Landroid/os/IBinder;Ljava/lang/String;ILjava/lang/CharSequence;IILandroid/os/IBinder;Z)V

    goto :goto_9
.end method

.method sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V
    .locals 8
    .parameter "callingUid"
    .parameter "r"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2623
    if-lez p1, :cond_0

    .line 2624
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v2

    invoke-virtual {v0, p1, v1, p6, v2}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2631
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    if-ne v0, p2, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_1

    .line 2633
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2634
    .local v7, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    new-instance v0, Landroid/app/ResultInfo;

    invoke-direct {v0, p3, p4, p5, p6}, Landroid/app/ResultInfo;-><init>(Ljava/lang/String;IILandroid/content/Intent;)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2636
    iget-object v0, p2, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-interface {v0, p2, v7}, Landroid/app/IApplicationThread;->scheduleSendResult(Landroid/os/IBinder;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2644
    .end local v7           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_0
    return-void

    .line 2638
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 2639
    .local v6, e:Ljava/lang/Exception;
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown sending result to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2643
    .end local v6           #e:Ljava/lang/Exception;
    :cond_1
    const/4 v1, 0x0

    move-object v0, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityRecord;->addResultLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method final startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIZZ)I
    .locals 32
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "aInfo"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "onlyIfNeeded"
    .parameter "componentSpecified"

    .prologue
    .line 1908
    const/16 v24, 0x0

    .line 1910
    .local v24, err:I
    const/16 v22, 0x0

    .line 1911
    .local v22, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_0

    .line 1912
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v22

    .line 1913
    if-eqz v22, :cond_3

    .line 1914
    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 p10, v0

    .line 1915
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 p11, v0

    .line 1924
    :cond_0
    :goto_0
    if-nez v24, :cond_1

    .line 1925
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Starting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " from pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v22, :cond_4

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move v7, v0

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1929
    :cond_1
    const/16 v30, 0x0

    .line 1930
    .local v30, sourceRecord:Lcom/android/server/am/ActivityRecord;
    const/4 v7, 0x0

    .line 1931
    .local v7, resultRecord:Lcom/android/server/am/ActivityRecord;
    if-eqz p7, :cond_2

    .line 1932
    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->indexOfTokenLocked(Landroid/os/IBinder;)I

    move-result v25

    .line 1935
    .local v25, index:I
    if-ltz v25, :cond_2

    .line 1936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    .end local v30           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    check-cast v30, Lcom/android/server/am/ActivityRecord;

    .line 1937
    .restart local v30       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    if-ltz p9, :cond_2

    move-object/from16 v0, v30

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->finishing:Z

    move v5, v0

    if-nez v5, :cond_2

    .line 1938
    move-object/from16 v7, v30

    .line 1943
    .end local v25           #index:I
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v26

    .line 1945
    .local v26, launchFlags:I
    const/high16 v5, 0x200

    and-int v5, v5, v26

    if-eqz v5, :cond_6

    if-eqz v30, :cond_6

    .line 1949
    if-ltz p9, :cond_5

    .line 1950
    const/4 v5, -0x3

    .line 2058
    :goto_2
    return v5

    .line 1917
    .end local v7           #resultRecord:Lcom/android/server/am/ActivityRecord;
    .end local v26           #launchFlags:I
    .end local v30           #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_3
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find app for caller "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") when starting: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1920
    const/16 v24, -0x4

    goto/16 :goto_0

    :cond_4
    move/from16 v7, p10

    .line 1925
    goto :goto_1

    .line 1952
    .restart local v7       #resultRecord:Lcom/android/server/am/ActivityRecord;
    .restart local v26       #launchFlags:I
    .restart local v30       #sourceRecord:Lcom/android/server/am/ActivityRecord;
    :cond_5
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v7, v0

    .line 1953
    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object/from16 p8, v0

    .line 1954
    move-object/from16 v0, v30

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move/from16 p9, v0

    .line 1955
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v30

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 1956
    if-eqz v7, :cond_6

    .line 1957
    move-object v0, v7

    move-object/from16 v1, v30

    move-object/from16 v2, p8

    move/from16 v3, p9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityRecord;->removeResultsLocked(Lcom/android/server/am/ActivityRecord;Ljava/lang/String;I)V

    .line 1962
    :cond_6
    if-nez v24, :cond_7

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_7

    .line 1965
    const/16 v24, -0x1

    .line 1968
    :cond_7
    if-nez v24, :cond_8

    if-nez p6, :cond_8

    .line 1971
    const/16 v24, -0x2

    .line 1974
    :cond_8
    if-eqz v24, :cond_a

    .line 1975
    if-eqz v7, :cond_9

    .line 1976
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    :cond_9
    move/from16 v5, v24

    .line 1980
    goto/16 :goto_2

    .line 1983
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, p6

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    move v8, v0

    if-eqz v8, :cond_c

    const/4 v8, -0x1

    :goto_3
    move-object v0, v5

    move-object v1, v6

    move/from16 v2, p10

    move/from16 v3, p11

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;III)I

    move-result v29

    .line 1985
    .local v29, perm:I
    if-eqz v29, :cond_d

    .line 1986
    if-eqz v7, :cond_b

    .line 1987
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 1991
    :cond_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Permission Denial: starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " requires "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 1995
    .local v27, msg:Ljava/lang/String;
    const-string v5, "ActivityManager"

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    new-instance v5, Ljava/lang/SecurityException;

    move-object v0, v5

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1983
    .end local v27           #msg:Ljava/lang/String;
    .end local v29           #perm:I
    :cond_c
    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    goto/16 :goto_3

    .line 1999
    .restart local v29       #perm:I
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_10

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v5, :cond_10

    .line 2001
    const/16 v21, 0x0

    .line 2005
    .local v21, abort:Z
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v31

    .line 2006
    .local v31, watchIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    move-object/from16 v0, p6

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, v31

    move-object v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityController;->activityStarting(Landroid/content/Intent;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_f

    const/4 v5, 0x1

    move/from16 v21, v5

    .line 2012
    .end local v31           #watchIntent:Landroid/content/Intent;
    :goto_4
    if-eqz v21, :cond_10

    .line 2013
    if-eqz v7, :cond_e

    .line 2014
    const/4 v6, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    move-object/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2020
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_2

    .line 2006
    .restart local v31       #watchIntent:Landroid/content/Intent;
    :cond_f
    const/4 v5, 0x0

    move/from16 v21, v5

    goto :goto_4

    .line 2008
    .end local v31           #watchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v5

    move-object/from16 v23, v5

    .line 2009
    .local v23, e:Landroid/os/RemoteException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mController:Landroid/app/IActivityController;

    goto :goto_4

    .line 2025
    .end local v21           #abort:Z
    .end local v23           #e:Landroid/os/RemoteException;
    :cond_10
    new-instance v8, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object/from16 v16, v0

    move-object/from16 v10, p0

    move-object/from16 v11, v22

    move/from16 v12, p11

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p6

    move-object/from16 v17, v7

    move-object/from16 v18, p8

    move/from16 v19, p9

    move/from16 v20, p13

    invoke-direct/range {v8 .. v20}, Lcom/android/server/am/ActivityRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ProcessRecord;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;Ljava/lang/String;IZ)V

    .line 2029
    .local v8, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_13

    .line 2030
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    move v0, v5

    move/from16 v1, p11

    if-eq v0, v1, :cond_12

    .line 2032
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const-string v6, "Activity start"

    move-object v0, v5

    move/from16 v1, p10

    move/from16 v2, p11

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService;->checkAppSwitchAllowedLocked(IILjava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 2033
    new-instance v28, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;

    invoke-direct/range {v28 .. v28}, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;-><init>()V

    .line 2034
    .local v28, pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    move-object v0, v8

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->r:Lcom/android/server/am/ActivityRecord;

    .line 2035
    move-object/from16 v0, v30

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->sourceRecord:Lcom/android/server/am/ActivityRecord;

    .line 2036
    move-object/from16 v0, p4

    move-object/from16 v1, v28

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->grantedUriPermissions:[Landroid/net/Uri;

    .line 2037
    move/from16 v0, p5

    move-object/from16 v1, v28

    iput v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->grantedMode:I

    .line 2038
    move/from16 v0, p12

    move-object/from16 v1, v28

    iput-boolean v0, v1, Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;->onlyIfNeeded:Z

    .line 2039
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mPendingActivityLaunches:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2040
    const/4 v5, 0x4

    goto/16 :goto_2

    .line 2044
    .end local v28           #pal:Lcom/android/server/am/ActivityManagerService$PendingActivityLaunch;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    if-eqz v5, :cond_14

    .line 2050
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const-wide/16 v9, 0x0

    iput-wide v9, v5, Lcom/android/server/am/ActivityManagerService;->mAppSwitchesAllowedTime:J

    .line 2055
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 2058
    :cond_13
    const/4 v15, 0x1

    move-object/from16 v9, p0

    move-object v10, v8

    move-object/from16 v11, v30

    move-object/from16 v12, p4

    move/from16 v13, p5

    move/from16 v14, p12

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/am/ActivityStack;->startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;[Landroid/net/Uri;IZZ)I

    move-result v5

    goto/16 :goto_2

    .line 2052
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidAppSwitch:Z

    goto :goto_5
.end method

.method final startActivityMayWait(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/os/IBinder;Ljava/lang/String;IZZLandroid/app/IActivityManager$WaitResult;Landroid/content/res/Configuration;)I
    .locals 38
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "onlyIfNeeded"
    .parameter "debug"
    .parameter "outResult"
    .parameter "config"

    .prologue
    .line 2416
    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2417
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "File descriptors passed in Intent"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 2420
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_9

    const/4 v4, 0x1

    move/from16 v25, v4

    .line 2423
    .local v25, componentSpecified:Z
    :goto_0
    new-instance v11, Landroid/content/Intent;

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2428
    .end local p2
    .local v11, intent:Landroid/content/Intent;
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const v5, 0x10400

    move-object v0, v4

    move-object v1, v11

    move-object/from16 v2, p3

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v33

    .line 2433
    .local v33, rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v33, :cond_a

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v18, v4

    .line 2438
    .end local v33           #rInfo:Landroid/content/pm/ResolveInfo;
    .local v18, aInfo:Landroid/content/pm/ActivityInfo;
    :goto_1
    if-eqz v18, :cond_1

    .line 2443
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    move-object v6, v0

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2447
    if-eqz p10, :cond_1

    .line 2448
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v4, v0

    const-string v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService;->setDebugApp(Ljava/lang/String;ZZ)V

    .line 2454
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v37, v0

    monitor-enter v37

    .line 2457
    if-nez p1, :cond_b

    .line 2458
    :try_start_1
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v22

    .line 2459
    .local v22, callingPid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2464
    .local v23, callingUid:I
    :goto_2
    if-eqz p12, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mConfiguration:Landroid/content/res/Configuration;

    move-object v0, v4

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v4

    if-eqz v4, :cond_c

    const/4 v4, 0x1

    :goto_3
    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2469
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v30

    .line 2471
    .local v30, origId:J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v4, v0

    if-eqz v4, :cond_12

    if-eqz v18, :cond_12

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800

    and-int/2addr v4, v5

    if-eqz v4, :cond_12

    .line 2475
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 2476
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v5, v0

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 2479
    :cond_2
    move/from16 v34, v22

    .line 2480
    .local v34, realCallingPid:I
    move/from16 v7, v23

    .line 2481
    .local v7, realCallingUid:I
    if-eqz p1, :cond_3

    .line 2482
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getRecordForAppLocked(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;

    move-result-object v26

    .line 2483
    .local v26, callerApp:Lcom/android/server/am/ProcessRecord;
    if-eqz v26, :cond_d

    .line 2484
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v34, v0

    .line 2485
    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v4, v0

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2494
    .end local v26           #callerApp:Lcom/android/server/am/ProcessRecord;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const/4 v5, 0x2

    const-string v6, "android"

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/high16 v13, 0x5000

    move-object/from16 v12, p3

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->getIntentSenderLocked(ILjava/lang/String;ILandroid/os/IBinder;Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;I)Landroid/content/IIntentSender;

    move-result-object v36

    .line 2500
    .local v36, target:Landroid/content/IIntentSender;
    new-instance v29, Landroid/content/Intent;

    invoke-direct/range {v29 .. v29}, Landroid/content/Intent;-><init>()V

    .line 2501
    .local v29, newIntent:Landroid/content/Intent;
    if-ltz p8, :cond_4

    .line 2503
    const-string v4, "has_result"

    const/4 v5, 0x1

    move-object/from16 v0, v29

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2505
    :cond_4
    const-string v4, "intent"

    new-instance v5, Landroid/content/IntentSender;

    move-object v0, v5

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Landroid/content/IntentSender;-><init>(Landroid/content/IIntentSender;)V

    move-object/from16 v0, v29

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_5

    .line 2508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHeavyWeightProcess:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/ActivityRecord;

    .line 2509
    .local v28, hist:Lcom/android/server/am/ActivityRecord;
    const-string v4, "cur_app"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v29

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2511
    const-string v4, "cur_task"

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, v29

    move-object v1, v4

    move v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2514
    .end local v28           #hist:Lcom/android/server/am/ActivityRecord;
    :cond_5
    const-string v4, "new_app"

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v29

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2516
    invoke-virtual {v11}, Landroid/content/Intent;->getFlags()I

    move-result v4

    move-object/from16 v0, v29

    move v1, v4

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2517
    const-string v4, "android"

    const-class v5, Lcom/android/internal/app/HeavyWeightSwitcherActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v29

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2519
    move-object/from16 p2, v29

    .line 2520
    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    const/16 p3, 0x0

    .line 2521
    const/16 p1, 0x0

    .line 2522
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 2523
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v22

    .line 2524
    const/16 v25, 0x1

    .line 2526
    :try_start_3
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x10400

    move-object v0, v4

    move-object/from16 v1, p2

    move-object v2, v5

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v33

    .line 2531
    .restart local v33       #rInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v33, :cond_e

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v4, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    move-object/from16 v18, v4

    .end local v7           #realCallingUid:I
    .end local v29           #newIntent:Landroid/content/Intent;
    .end local v33           #rInfo:Landroid/content/pm/ResolveInfo;
    .end local v34           #realCallingPid:I
    .end local v36           #target:Landroid/content/IIntentSender;
    :goto_4
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move-object/from16 v16, p4

    move/from16 v17, p5

    move-object/from16 v19, p6

    move-object/from16 v20, p7

    move/from16 v21, p8

    move/from16 v24, p9

    .line 2539
    :try_start_4
    invoke-virtual/range {v12 .. v25}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;[Landroid/net/Uri;ILandroid/content/pm/ActivityInfo;Landroid/os/IBinder;Ljava/lang/String;IIIZZ)I

    move-result v35

    .line 2544
    .local v35, res:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    move v4, v0

    if-eqz v4, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v4, v0

    if-eqz v4, :cond_6

    .line 2549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const-string v5, "android.permission.CHANGE_CONFIGURATION"

    const-string v6, "updateConfiguration()"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2551
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mConfigWillChange:Z

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p12

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/am/ActivityRecord;)Z

    .line 2557
    :cond_6
    invoke-static/range {v30 .. v31}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2559
    if-eqz p11, :cond_8

    .line 2560
    move/from16 v0, v35

    move-object/from16 v1, p11

    iput v0, v1, Landroid/app/IActivityManager$WaitResult;->result:I

    .line 2561
    if-nez v35, :cond_f

    .line 2562
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2565
    :cond_7
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_3

    .line 2568
    :goto_5
    :try_start_6
    move-object/from16 v0, p11

    iget-boolean v0, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    move v4, v0

    if-nez v4, :cond_8

    move-object/from16 v0, p11

    iget-object v0, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    move-object v4, v0

    if-eqz v4, :cond_7

    .line 2589
    :cond_8
    :goto_6
    monitor-exit v37
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move/from16 v4, v35

    .end local v35           #res:I
    :goto_7
    return v4

    .line 2420
    .end local v18           #aInfo:Landroid/content/pm/ActivityInfo;
    .end local v22           #callingPid:I
    .end local v23           #callingUid:I
    .end local v25           #componentSpecified:Z
    .end local v30           #origId:J
    :cond_9
    const/4 v4, 0x0

    move/from16 v25, v4

    goto/16 :goto_0

    .line 2433
    .end local p2
    .restart local v11       #intent:Landroid/content/Intent;
    .restart local v25       #componentSpecified:Z
    .restart local v33       #rInfo:Landroid/content/pm/ResolveInfo;
    :cond_a
    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto/16 :goto_1

    .line 2434
    .end local v33           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_0
    move-exception v4

    move-object/from16 v27, v4

    .line 2435
    .local v27, e:Landroid/os/RemoteException;
    const/16 v18, 0x0

    .restart local v18       #aInfo:Landroid/content/pm/ActivityInfo;
    goto/16 :goto_1

    .line 2461
    .end local v27           #e:Landroid/os/RemoteException;
    :cond_b
    const/16 v23, -0x1

    .restart local v23       #callingUid:I
    move/from16 v22, v23

    .restart local v22       #callingPid:I
    goto/16 :goto_2

    .line 2464
    :cond_c
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 2487
    .restart local v7       #realCallingUid:I
    .restart local v26       #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v30       #origId:J
    .restart local v34       #realCallingPid:I
    :cond_d
    :try_start_7
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to find app for caller "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (pid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") when starting: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2490
    const/4 v4, -0x4

    monitor-exit v37
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-object/from16 p2, v11

    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_7

    .line 2531
    .end local v26           #callerApp:Lcom/android/server/am/ProcessRecord;
    .restart local v29       #newIntent:Landroid/content/Intent;
    .restart local v33       #rInfo:Landroid/content/pm/ResolveInfo;
    .restart local v36       #target:Landroid/content/IIntentSender;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v18, v4

    goto/16 :goto_4

    .line 2532
    .end local v33           #rInfo:Landroid/content/pm/ResolveInfo;
    :catch_1
    move-exception v4

    move-object/from16 v27, v4

    .line 2533
    .restart local v27       #e:Landroid/os/RemoteException;
    const/16 v18, 0x0

    goto/16 :goto_4

    .line 2569
    .end local v7           #realCallingUid:I
    .end local v27           #e:Landroid/os/RemoteException;
    .end local v29           #newIntent:Landroid/content/Intent;
    .end local v34           #realCallingPid:I
    .end local v36           #target:Landroid/content/IIntentSender;
    .restart local v35       #res:I
    :cond_f
    const/4 v4, 0x2

    move/from16 v0, v35

    move v1, v4

    if-ne v0, v1, :cond_8

    .line 2570
    const/4 v4, 0x0

    :try_start_8
    move-object/from16 v0, p0

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v32

    .line 2571
    .local v32, r:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v32

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->nowVisible:Z

    move v4, v0

    if-eqz v4, :cond_10

    .line 2572
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p11

    iput-boolean v0, v1, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    .line 2573
    new-instance v4, Landroid/content/ComponentName;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    iget-object v5, v5, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, p11

    iput-object v0, v1, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    .line 2574
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p11

    iput-wide v0, v2, Landroid/app/IActivityManager$WaitResult;->totalTime:J

    .line 2575
    const-wide/16 v4, 0x0

    move-wide v0, v4

    move-object/from16 v2, p11

    iput-wide v0, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    goto/16 :goto_6

    .line 2590
    .end local v22           #callingPid:I
    .end local v23           #callingUid:I
    .end local v30           #origId:J
    .end local v32           #r:Lcom/android/server/am/ActivityRecord;
    .end local v35           #res:I
    :catchall_0
    move-exception v4

    :goto_8
    monitor-exit v37
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v4

    .line 2577
    .restart local v22       #callingPid:I
    .restart local v23       #callingUid:I
    .restart local v30       #origId:J
    .restart local v32       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v35       #res:I
    :cond_10
    :try_start_9
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-wide v0, v4

    move-object/from16 v2, p11

    iput-wide v0, v2, Landroid/app/IActivityManager$WaitResult;->thisTime:J

    .line 2578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mWaitingActivityVisible:Ljava/util/ArrayList;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2581
    :cond_11
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_2

    .line 2584
    :goto_9
    :try_start_b
    move-object/from16 v0, p11

    iget-boolean v0, v0, Landroid/app/IActivityManager$WaitResult;->timeout:Z

    move v4, v0

    if-nez v4, :cond_8

    move-object/from16 v0, p11

    iget-object v0, v0, Landroid/app/IActivityManager$WaitResult;->who:Landroid/content/ComponentName;

    move-object v4, v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v4, :cond_11

    goto/16 :goto_6

    .line 2590
    .end local v22           #callingPid:I
    .end local v23           #callingUid:I
    .end local v30           #origId:J
    .end local v32           #r:Lcom/android/server/am/ActivityRecord;
    .end local v35           #res:I
    .end local p2
    .restart local v11       #intent:Landroid/content/Intent;
    :catchall_1
    move-exception v4

    move-object/from16 p2, v11

    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    goto :goto_8

    .line 2582
    .restart local v22       #callingPid:I
    .restart local v23       #callingUid:I
    .restart local v30       #origId:J
    .restart local v32       #r:Lcom/android/server/am/ActivityRecord;
    .restart local v35       #res:I
    :catch_2
    move-exception v4

    goto :goto_9

    .line 2566
    .end local v32           #r:Lcom/android/server/am/ActivityRecord;
    :catch_3
    move-exception v4

    goto/16 :goto_5

    .end local v35           #res:I
    .end local p2
    .restart local v11       #intent:Landroid/content/Intent;
    :cond_12
    move-object/from16 p2, v11

    .end local v11           #intent:Landroid/content/Intent;
    .restart local p2
    goto/16 :goto_4
.end method

.method final startActivityUncheckedLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;[Landroid/net/Uri;IZZ)I
    .locals 27
    .parameter "r"
    .parameter "sourceRecord"
    .parameter "grantedUriPermissions"
    .parameter "grantedMode"
    .parameter "onlyIfNeeded"
    .parameter "doResume"

    .prologue
    .line 2065
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object/from16 v19, v0

    .line 2066
    .local v19, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchedFromUid:I

    move v15, v0

    .line 2068
    .local v15, callingUid:I
    invoke-virtual/range {v19 .. v19}, Landroid/content/Intent;->getFlags()I

    move-result v20

    .line 2072
    .local v20, launchFlags:I
    const/high16 v5, 0x4

    and-int v5, v5, v20

    if-nez v5, :cond_c

    const/4 v5, 0x1

    :goto_0
    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/am/ActivityStack;->mUserLeaving:Z

    .line 2079
    if-nez p6, :cond_0

    .line 2080
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p1

    iput-boolean v0, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    .line 2083
    :cond_0
    const/high16 v5, 0x100

    and-int v5, v5, v20

    if-eqz v5, :cond_d

    move-object/from16 v22, p1

    .line 2090
    .local v22, notTop:Lcom/android/server/am/ActivityRecord;
    :goto_1
    if-eqz p5, :cond_2

    .line 2091
    move-object/from16 v16, p2

    .line 2092
    .local v16, checkedCaller:Lcom/android/server/am/ActivityRecord;
    if-nez v16, :cond_1

    .line 2093
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v16

    .line 2095
    :cond_1
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2097
    const/16 p5, 0x0

    .line 2101
    .end local v16           #checkedCaller:Lcom/android/server/am/ActivityRecord;
    :cond_2
    if-nez p2, :cond_e

    .line 2104
    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-nez v5, :cond_3

    .line 2105
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startActivity called from non-Activity context; forcing Intent.FLAG_ACTIVITY_NEW_TASK for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const/high16 v5, 0x1000

    or-int v20, v20, v5

    .line 2121
    :cond_3
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_4

    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-eqz v5, :cond_4

    .line 2127
    const-string v5, "ActivityManager"

    const-string v6, "Activity is launching as a new task, so cancelling activity result."

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2131
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    .line 2134
    :cond_4
    const/4 v13, 0x0

    .line 2135
    .local v13, addingToTask:Z
    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-eqz v5, :cond_5

    const/high16 v5, 0x800

    and-int v5, v5, v20

    if-eqz v5, :cond_6

    :cond_5
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_6

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_1e

    .line 2142
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-nez v5, :cond_1e

    .line 2147
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_11

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findTaskLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    move-object/from16 v24, v5

    .line 2150
    .local v24, taskTop:Lcom/android/server/am/ActivityRecord;
    :goto_3
    if-eqz v24, :cond_1e

    .line 2151
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    if-nez v5, :cond_7

    .line 2156
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v6, v0

    move-object v0, v5

    move-object/from16 v1, v19

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2164
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v17

    .line 2165
    .local v17, curTop:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    if-eq v5, v6, :cond_9

    .line 2166
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    const/high16 v6, 0x40

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2167
    if-eqz p2, :cond_8

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    if-ne v5, v6, :cond_12

    :cond_8
    const/4 v5, 0x1

    move v14, v5

    .line 2169
    .local v14, callerAtFront:Z
    :goto_4
    if-eqz v14, :cond_9

    .line 2172
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 2177
    .end local v14           #callerAtFront:Z
    :cond_9
    const/high16 v5, 0x20

    and-int v5, v5, v20

    if-eqz v5, :cond_a

    .line 2178
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->resetTaskIfNeededLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v24

    .line 2180
    :cond_a
    if-eqz p5, :cond_13

    .line 2185
    if-eqz p6, :cond_b

    .line 2186
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2188
    :cond_b
    const/4 v5, 0x1

    .line 2407
    .end local v17           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v24           #taskTop:Lcom/android/server/am/ActivityRecord;
    .end local p5
    :goto_5
    return v5

    .line 2072
    .end local v13           #addingToTask:Z
    .end local v22           #notTop:Lcom/android/server/am/ActivityRecord;
    .restart local p5
    :cond_c
    const/4 v5, 0x0

    goto/16 :goto_0

    .line 2083
    :cond_d
    const/4 v5, 0x0

    move-object/from16 v22, v5

    goto/16 :goto_1

    .line 2109
    .restart local v22       #notTop:Lcom/android/server/am/ActivityRecord;
    :cond_e
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_f

    .line 2113
    const/high16 v5, 0x1000

    or-int v20, v20, v5

    goto/16 :goto_2

    .line 2114
    :cond_f
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_10

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 2118
    :cond_10
    const/high16 v5, 0x1000

    or-int v20, v20, v5

    goto/16 :goto_2

    .line 2147
    .restart local v13       #addingToTask:Z
    :cond_11
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findActivityLocked(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)Lcom/android/server/am/ActivityRecord;

    move-result-object v5

    move-object/from16 v24, v5

    goto/16 :goto_3

    .line 2167
    .restart local v17       #curTop:Lcom/android/server/am/ActivityRecord;
    .restart local v24       #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_12
    const/4 v5, 0x0

    move v14, v5

    goto :goto_4

    .line 2190
    :cond_13
    const/high16 v5, 0x400

    and-int v5, v5, v20

    if-nez v5, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_14

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_19

    .line 2197
    :cond_14
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move/from16 v3, v20

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2199
    .local v25, top:Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_18

    .line 2200
    move-object/from16 v0, v25

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move v5, v0

    if-eqz v5, :cond_15

    .line 2205
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2207
    :cond_15
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2208
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2259
    .end local v25           #top:Lcom/android/server/am/ActivityRecord;
    :cond_16
    :goto_6
    if-nez v13, :cond_1e

    .line 2263
    if-eqz p6, :cond_17

    .line 2264
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2266
    :cond_17
    const/4 v5, 0x2

    goto/16 :goto_5

    .line 2214
    .restart local v25       #top:Lcom/android/server/am/ActivityRecord;
    :cond_18
    const/4 v13, 0x1

    .line 2218
    move-object/from16 p2, v24

    goto :goto_6

    .line 2220
    .end local v25           #top:Lcom/android/server/am/ActivityRecord;
    :cond_19
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    .line 2227
    const/high16 v5, 0x2000

    and-int v5, v5, v20

    if-eqz v5, :cond_1b

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2229
    const/16 v5, 0x7533

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2230
    move-object/from16 v0, v24

    iget-boolean v0, v0, Lcom/android/server/am/ActivityRecord;->frontOfTask:Z

    move v5, v0

    if-eqz v5, :cond_1a

    .line 2231
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 2233
    :cond_1a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v24

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    goto :goto_6

    .line 2234
    :cond_1b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/TaskRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v5

    if-nez v5, :cond_16

    .line 2238
    const/4 v13, 0x1

    .line 2239
    move-object/from16 p2, v24

    goto/16 :goto_6

    .line 2241
    :cond_1c
    const/high16 v5, 0x20

    and-int v5, v5, v20

    if-nez v5, :cond_1d

    .line 2247
    const/4 v13, 0x1

    .line 2248
    move-object/from16 p2, v24

    goto/16 :goto_6

    .line 2249
    :cond_1d
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/TaskRecord;->rootWasReset:Z

    if-nez v5, :cond_16

    .line 2257
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v6, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    invoke-virtual {v5, v6, v7}, Lcom/android/server/am/TaskRecord;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    goto/16 :goto_6

    .line 2278
    .end local v17           #curTop:Lcom/android/server/am/ActivityRecord;
    .end local v24           #taskTop:Lcom/android/server/am/ActivityRecord;
    :cond_1e
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_22

    .line 2282
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2283
    .restart local v25       #top:Lcom/android/server/am/ActivityRecord;
    if-eqz v25, :cond_24

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-nez v5, :cond_24

    .line 2284
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 2285
    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    if-eqz v5, :cond_24

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v5, :cond_24

    .line 2286
    const/high16 v5, 0x2000

    and-int v5, v5, v20

    if-nez v5, :cond_1f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x1

    if-eq v5, v6, :cond_1f

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->launchMode:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_24

    .line 2289
    :cond_1f
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, v25

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2292
    if-eqz p6, :cond_20

    .line 2293
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2295
    :cond_20
    if-eqz p5, :cond_21

    .line 2299
    const/4 v5, 0x1

    goto/16 :goto_5

    .line 2301
    :cond_21
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2302
    const/4 v5, 0x3

    goto/16 :goto_5

    .line 2309
    .end local v25           #top:Lcom/android/server/am/ActivityRecord;
    :cond_22
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-eqz v5, :cond_23

    .line 2310
    const/4 v6, -0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultWho:Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/am/ActivityRecord;->requestCode:I

    move v9, v0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ActivityStack;->sendActivityResultLocked(ILcom/android/server/am/ActivityRecord;Ljava/lang/String;IILandroid/content/Intent;)V

    .line 2314
    :cond_23
    const/4 v5, -0x2

    goto/16 :goto_5

    .line 2317
    .restart local v25       #top:Lcom/android/server/am/ActivityRecord;
    :cond_24
    const/16 v21, 0x0

    .line 2320
    .local v21, newTask:Z
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->resultTo:Lcom/android/server/am/ActivityRecord;

    move-object v5, v0

    if-nez v5, :cond_28

    if-nez v13, :cond_28

    const/high16 v5, 0x1000

    and-int v5, v5, v20

    if-eqz v5, :cond_28

    .line 2323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget v6, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    if-gtz v5, :cond_25

    .line 2325
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    iput v6, v5, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    .line 2327
    :cond_25
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_27

    const/4 v8, 0x1

    :goto_7
    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    .line 2331
    const/16 v21, 0x1

    .line 2332
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/am/ActivityStack;->mMainStack:Z

    move v5, v0

    if-eqz v5, :cond_26

    .line 2333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->addRecentTaskLocked(Lcom/android/server/am/TaskRecord;)V

    .line 2392
    .end local p5
    :cond_26
    :goto_8
    if-eqz p3, :cond_31

    if-lez v15, :cond_31

    .line 2393
    const/16 v18, 0x0

    .local v18, i:I
    :goto_9
    move-object/from16 v0, p3

    array-length v0, v0

    move v5, v0

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_31

    .line 2394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v7, v0

    aget-object v8, p3, v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v10

    move v6, v15

    move/from16 v9, p4

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionLocked(ILjava/lang/String;Landroid/net/Uri;ILcom/android/server/am/UriPermissionOwner;)V

    .line 2393
    add-int/lit8 v18, v18, 0x1

    goto :goto_9

    .line 2327
    .end local v18           #i:I
    .restart local p5
    :cond_27
    const/4 v8, 0x0

    goto :goto_7

    .line 2336
    :cond_28
    if-eqz p2, :cond_2d

    .line 2337
    if-nez v13, :cond_2a

    const/high16 v5, 0x400

    and-int v5, v5, v20

    if-eqz v5, :cond_2a

    .line 2342
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move/from16 v3, v20

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityStack;->performClearTaskLocked(ILcom/android/server/am/ActivityRecord;IZ)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2344
    if-eqz v25, :cond_2c

    .line 2345
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2346
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2349
    if-eqz p6, :cond_29

    .line 2350
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2352
    :cond_29
    const/4 v5, 0x3

    goto/16 :goto_5

    .line 2354
    :cond_2a
    if-nez v13, :cond_2c

    const/high16 v5, 0x2

    and-int v5, v5, v20

    if-eqz v5, :cond_2c

    .line 2359
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    iget v5, v5, Lcom/android/server/am/TaskRecord;->taskId:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/ActivityStack;->findActivityInHistoryLocked(Lcom/android/server/am/ActivityRecord;I)I

    move-result v26

    .line 2360
    .local v26, where:I
    if-ltz v26, :cond_2c

    .line 2361
    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/server/am/ActivityStack;->moveActivityToFrontLocked(I)Lcom/android/server/am/ActivityRecord;

    move-result-object v25

    .line 2362
    const/16 v5, 0x7533

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2363
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v5, v0

    move-object/from16 v0, v25

    move v1, v15

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;)V

    .line 2364
    if-eqz p6, :cond_2b

    .line 2365
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->resumeTopActivityLocked(Lcom/android/server/am/ActivityRecord;)Z

    .line 2367
    :cond_2b
    const/4 v5, 0x3

    goto/16 :goto_5

    .line 2373
    .end local v26           #where:I
    :cond_2c
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_8

    .line 2381
    :cond_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 2382
    .local v12, N:I
    if-lez v12, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v12, v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    .end local p5
    check-cast p5, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v23, p5

    .line 2384
    .local v23, prev:Lcom/android/server/am/ActivityRecord;
    :goto_a
    if-eqz v23, :cond_2f

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v5, v0

    :goto_b
    move-object v0, v5

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    goto/16 :goto_8

    .line 2382
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    .restart local p5
    :cond_2e
    const/4 v5, 0x0

    move-object/from16 v23, v5

    goto :goto_a

    .line 2384
    .end local p5
    .restart local v23       #prev:Lcom/android/server/am/ActivityRecord;
    :cond_2f
    new-instance v5, Lcom/android/server/am/TaskRecord;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/am/ActivityManagerService;->mCurTask:I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v8, v0

    iget v8, v8, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_30

    const/4 v8, 0x1

    :goto_c
    move-object v0, v5

    move v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    move v4, v8

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/TaskRecord;-><init>(ILandroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)V

    goto :goto_b

    :cond_30
    const/4 v8, 0x0

    goto :goto_c

    .line 2399
    .end local v12           #N:I
    .end local v23           #prev:Lcom/android/server/am/ActivityRecord;
    :cond_31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ActivityRecord;->getUriPermissionsLocked()Lcom/android/server/am/UriPermissionOwner;

    move-result-object v7

    move-object v0, v5

    move v1, v15

    move-object v2, v6

    move-object/from16 v3, v19

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->grantUriPermissionFromIntentLocked(ILjava/lang/String;Landroid/content/Intent;Lcom/android/server/am/UriPermissionOwner;)V

    .line 2402
    if-eqz v21, :cond_32

    .line 2403
    const/16 v5, 0x7534

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    iget v6, v6, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(II)I

    .line 2405
    :cond_32
    const/16 v5, 0x7535

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    move-object v6, v0

    move-object/from16 v0, p0

    move v1, v5

    move-object/from16 v2, p1

    move-object v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->logStartActivity(ILcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V

    .line 2406
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v21

    move/from16 v3, p6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/ActivityStack;->startActivityLocked(Lcom/android/server/am/ActivityRecord;ZZ)V

    .line 2407
    const/4 v5, 0x0

    goto/16 :goto_5
.end method

.method final topRunningActivityLocked(Landroid/os/IBinder;I)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .parameter "token"
    .parameter "taskId"

    .prologue
    .line 354
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 355
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 356
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 358
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq p1, v1, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityRecord;->task:Lcom/android/server/am/TaskRecord;

    iget v2, v2, Lcom/android/server/am/TaskRecord;->taskId:I

    if-eq p2, v2, :cond_0

    move-object v2, v1

    .line 363
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v2

    .line 361
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 362
    goto :goto_0

    .line 363
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final topRunningActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .parameter "notTop"

    .prologue
    .line 321
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 322
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 323
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 324
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    move-object v2, v1

    .line 329
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v2

    .line 327
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 328
    goto :goto_0

    .line 329
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method final topRunningNonDelayedActivityLocked(Lcom/android/server/am/ActivityRecord;)Lcom/android/server/am/ActivityRecord;
    .locals 4
    .parameter "notTop"

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int v0, v2, v3

    .line 334
    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 335
    iget-object v2, p0, Lcom/android/server/am/ActivityStack;->mHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 336
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lcom/android/server/am/ActivityRecord;->delayedResume:Z

    if-nez v2, :cond_0

    if-eq v1, p1, :cond_0

    move-object v2, v1

    .line 341
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return-object v2

    .line 339
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 340
    goto :goto_0

    .line 341
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method
