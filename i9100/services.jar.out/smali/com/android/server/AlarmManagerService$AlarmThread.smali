.class Lcom/android/server/AlarmManagerService$AlarmThread;
.super Ljava/lang/Thread;
.source "AlarmManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/AlarmManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/AlarmManagerService;)V
    .locals 1
    .parameter

    .prologue
    .line 648
    iput-object p1, p0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    .line 649
    const-string v0, "AlarmManager"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 650
    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 656
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mDescriptor:I
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$000(Lcom/android/server/AlarmManagerService;)I

    move-result v6

    #calls: Lcom/android/server/AlarmManagerService;->waitForAlarm(I)I
    invoke-static {v5, v6}, Lcom/android/server/AlarmManagerService;->access$100(Lcom/android/server/AlarmManagerService;I)I

    move-result v20

    .line 658
    .local v20, result:I
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 660
    .local v21, triggerList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/AlarmManagerService$Alarm;>;"
    const/high16 v5, 0x1

    and-int v5, v5, v20

    if-eqz v5, :cond_0

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mTimeTickSender:Landroid/app/PendingIntent;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$200(Lcom/android/server/AlarmManagerService;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mClockReceiver:Lcom/android/server/AlarmManagerService$ClockReceiver;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ClockReceiver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/AlarmManagerService$ClockReceiver;->scheduleTimeTickEvent()V

    .line 663
    new-instance v14, Landroid/content/Intent;

    const-string v5, "android.intent.action.TIME_SET"

    invoke-direct {v14, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 664
    .local v14, intent:Landroid/content/Intent;
    const/high16 v5, 0x2000

    invoke-virtual {v14, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 675
    .end local v14           #intent:Landroid/content/Intent;
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$500(Lcom/android/server/AlarmManagerService;)Ljava/lang/Object;

    move-result-object v14

    monitor-enter v14

    .line 676
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 677
    .local v18, nowRTC:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    .line 682
    .local v16, nowELAPSED:J
    and-int/lit8 v5, v20, 0x1

    if-eqz v5, :cond_1

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$600(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 685
    :cond_1
    and-int/lit8 v5, v20, 0x2

    if-eqz v5, :cond_2

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mRtcAlarms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$800(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v18

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 688
    :cond_2
    and-int/lit8 v5, v20, 0x4

    if-eqz v5, :cond_3

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeWakeupAlarms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$900(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v16

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 691
    :cond_3
    and-int/lit8 v5, v20, 0x8

    if-eqz v5, :cond_4

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mElapsedRealtimeAlarms:Ljava/util/ArrayList;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$1000(Lcom/android/server/AlarmManagerService;)Ljava/util/ArrayList;

    move-result-object v6

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-wide/from16 v3, v16

    #calls: Lcom/android/server/AlarmManagerService;->triggerAlarmsLocked(Ljava/util/ArrayList;Ljava/util/ArrayList;J)V
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/AlarmManagerService;->access$700(Lcom/android/server/AlarmManagerService;Ljava/util/ArrayList;Ljava/util/ArrayList;J)V

    .line 695
    :cond_4
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 696
    .local v15, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    :cond_5
    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    .line 697
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/AlarmManagerService$Alarm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 700
    .local v11, alarm:Lcom/android/server/AlarmManagerService$Alarm;
    :try_start_1
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v6, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/server/AlarmManagerService;->access$400(Lcom/android/server/AlarmManagerService;)Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/server/AlarmManagerService;->access$1100()Landroid/content/Intent;

    move-result-object v8

    const-string v9, "android.intent.extra.ALARM_COUNT"

    iget v10, v11, Lcom/android/server/AlarmManagerService$Alarm;->count:I

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v9, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mResultReceiver:Lcom/android/server/AlarmManagerService$ResultReceiver;
    invoke-static {v9}, Lcom/android/server/AlarmManagerService;->access$1200(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$ResultReceiver;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v10, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mHandler:Lcom/android/server/AlarmManagerService$AlarmHandler;
    invoke-static {v10}, Lcom/android/server/AlarmManagerService;->access$1300(Lcom/android/server/AlarmManagerService;)Lcom/android/server/AlarmManagerService$AlarmHandler;

    move-result-object v10

    invoke-virtual/range {v5 .. v10}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;)V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mBroadcastRefCount:I
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1400(Lcom/android/server/AlarmManagerService;)I

    move-result v5

    if-nez v5, :cond_6

    .line 707
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    #getter for: Lcom/android/server/AlarmManagerService;->mWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1500(Lcom/android/server/AlarmManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 709
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    invoke-static {v5}, Lcom/android/server/AlarmManagerService;->access$1408(Lcom/android/server/AlarmManagerService;)I

    .line 711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    #calls: Lcom/android/server/AlarmManagerService;->getStatsLocked(Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;
    invoke-static {v5, v6}, Lcom/android/server/AlarmManagerService;->access$1600(Lcom/android/server/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/AlarmManagerService$BroadcastStats;

    move-result-object v12

    .line 712
    .local v12, bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    iget v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    if-nez v5, :cond_8

    .line 713
    move-wide/from16 v0, v16

    move-object v2, v12

    iput-wide v0, v2, Lcom/android/server/AlarmManagerService$BroadcastStats;->startTime:J

    .line 717
    :goto_2
    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_7

    iget v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->type:I

    if-nez v5, :cond_5

    .line 719
    :cond_7
    iget v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->numWakeup:I

    .line 720
    iget-object v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-static {v5}, Landroid/app/ActivityManagerNative;->noteWakeupAlarm(Landroid/app/PendingIntent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 723
    .end local v12           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_0
    move-exception v5

    move-object v13, v5

    .line 724
    .local v13, e:Landroid/app/PendingIntent$CanceledException;
    :try_start_2
    iget-wide v5, v11, Lcom/android/server/AlarmManagerService$Alarm;->repeatInterval:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_5

    .line 727
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/AlarmManagerService$AlarmThread;->this$0:Lcom/android/server/AlarmManagerService;

    move-object v5, v0

    iget-object v6, v11, Lcom/android/server/AlarmManagerService$Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {v5, v6}, Lcom/android/server/AlarmManagerService;->remove(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    .line 733
    .end local v11           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13           #e:Landroid/app/PendingIntent$CanceledException;
    .end local v15           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .end local v16           #nowELAPSED:J
    .end local v18           #nowRTC:J
    :catchall_0
    move-exception v5

    monitor-exit v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5

    .line 715
    .restart local v11       #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .restart local v12       #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    .restart local v15       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/AlarmManagerService$Alarm;>;"
    .restart local v16       #nowELAPSED:J
    .restart local v18       #nowRTC:J
    :cond_8
    :try_start_3
    iget v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v12, Lcom/android/server/AlarmManagerService$BroadcastStats;->nesting:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 729
    .end local v12           #bs:Lcom/android/server/AlarmManagerService$BroadcastStats;
    :catch_1
    move-exception v5

    move-object v13, v5

    .line 730
    .local v13, e:Ljava/lang/RuntimeException;
    :try_start_4
    const-string v5, "AlarmManager"

    const-string v6, "Failure sending alarm."

    invoke-static {v5, v6, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    .line 733
    .end local v11           #alarm:Lcom/android/server/AlarmManagerService$Alarm;
    .end local v13           #e:Ljava/lang/RuntimeException;
    :cond_9
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0
.end method
