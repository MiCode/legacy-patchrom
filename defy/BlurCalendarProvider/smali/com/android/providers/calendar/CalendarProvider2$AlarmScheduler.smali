.class Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;
.super Ljava/lang/Thread;
.source "CalendarProvider2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/CalendarProvider2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlarmScheduler"
.end annotation


# instance fields
.field mRemoveAlarms:Z

.field final synthetic this$0:Lcom/android/providers/calendar/CalendarProvider2;


# direct methods
.method public constructor <init>(Lcom/android/providers/calendar/CalendarProvider2;Z)V
    .locals 0
    .parameter
    .parameter "removeAlarms"

    .prologue
    .line 238
    iput-object p1, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 239
    iput-boolean p2, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    .line 240
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const-class v7, Lcom/android/providers/calendar/EmptyService;

    const-string v6, "CalendarProvider2"

    .line 244
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    invoke-virtual {v3}, Lcom/android/providers/calendar/CalendarProvider2;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 250
    .local v0, context:Landroid/content/Context;
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v3, v0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 255
    :goto_0
    const-wide/16 v3, 0x1388

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #getter for: Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarProvider2;->access$000(Lcom/android/providers/calendar/CalendarProvider2;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 264
    :try_start_1
    iget-boolean v4, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    if-nez v4, :cond_1

    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->access$100()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    const/4 v4, 0x1

    :goto_2
    iput-boolean v4, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    .line 265
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$202(Z)Z

    .line 266
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$102(Z)Z

    .line 267
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    const/16 v3, 0xa

    :try_start_2
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    .line 271
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    iget-boolean v4, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->mRemoveAlarms:Z

    #calls: Lcom/android/providers/calendar/CalendarProvider2;->runScheduleNextAlarm(Z)V
    invoke-static {v3, v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$300(Lcom/android/providers/calendar/CalendarProvider2;Z)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_1

    .line 279
    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;->this$0:Lcom/android/providers/calendar/CalendarProvider2;

    #getter for: Lcom/android/providers/calendar/CalendarProvider2;->mAlarmLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/providers/calendar/CalendarProvider2;->access$000(Lcom/android/providers/calendar/CalendarProvider2;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 280
    :try_start_3
    invoke-static {}, Lcom/android/providers/calendar/CalendarProvider2;->access$200()Z

    move-result v4

    if-nez v4, :cond_4

    .line 281
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$402(Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;)Lcom/android/providers/calendar/CalendarProvider2$AlarmScheduler;

    .line 282
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$202(Z)Z

    .line 283
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/providers/calendar/CalendarProvider2;->access$102(Z)Z

    .line 284
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/providers/calendar/EmptyService;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    .line 285
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-void

    .line 256
    :catch_0
    move-exception v2

    .line 257
    .local v2, e1:Ljava/lang/InterruptedException;
    const-string v3, "CalendarProvider2"

    const/4 v3, 0x3

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 258
    const-string v3, "CalendarProvider2"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AlarmScheduler woke up early: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e1:Ljava/lang/InterruptedException;
    :cond_3
    move v4, v5

    .line 264
    goto :goto_2

    .line 267
    :catchall_0
    move-exception v4

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v4

    .line 272
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 273
    .local v1, e:Landroid/database/SQLException;
    const-string v3, "CalendarProvider2"

    const/4 v3, 0x6

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 274
    const-string v3, "CalendarProvider2"

    const-string v3, "runScheduleNextAlarm() failed"

    invoke-static {v6, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 287
    .end local v1           #e:Landroid/database/SQLException;
    :cond_4
    :try_start_5
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v4

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v4
.end method
