.class Lcom/android/server/sip/SipService$WakeupTimer;
.super Landroid/content/BroadcastReceiver;
.source "SipService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sip/SipService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WakeupTimer"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "_SIP.WkTimer_"

.field private static final TRIGGER_TIME:Ljava/lang/String; = "TriggerTime"


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mEventQueue:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Lcom/android/server/sip/SipService$MyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lcom/android/server/sip/SipService;


# direct methods
.method public constructor <init>(Lcom/android/server/sip/SipService;Landroid/content/Context;)V
    .locals 4
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/server/sip/SipService$WakeupTimer;->this$0:Lcom/android/server/sip/SipService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v1, Ljava/util/TreeSet;

    new-instance v2, Lcom/android/server/sip/SipService$MyEventComparator;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/android/server/sip/SipService$MyEventComparator;-><init>(Lcom/android/server/sip/SipService$1;)V

    invoke-direct {v1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v1, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    iput-object p2, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .local v0, filter:Landroid/content/IntentFilter;
    invoke-virtual {p2, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private cancelAlarm()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    return-void
.end method

.method private declared-synchronized execute(J)V
    .locals 6
    .parameter "triggerTime"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->stopped()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$MyEvent;

    .local v0, event:Lcom/android/server/sip/SipService$MyEvent;
    iget-wide v2, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    cmp-long v2, v2, p1

    if-eqz v2, :cond_3

    .end local v0           #event:Lcom/android/server/sip/SipService$MyEvent;
    :cond_2
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->scheduleNext()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v0       #event:Lcom/android/server/sip/SipService$MyEvent;
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_2
    iget-wide v2, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iput-wide v2, v0, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    iget-wide v2, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iget v4, v0, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iget-object v2, p0, Lcom/android/server/sip/SipService$WakeupTimer;->this$0:Lcom/android/server/sip/SipService;

    #calls: Lcom/android/server/sip/SipService;->getExecutor()Lcom/android/server/sip/SipService$MyExecutor;
    invoke-static {v2}, Lcom/android/server/sip/SipService;->access$1400(Lcom/android/server/sip/SipService;)Lcom/android/server/sip/SipService$MyExecutor;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/sip/SipService$MyEvent;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Lcom/android/server/sip/SipService$MyExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private getAction()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private insertEvent(Lcom/android/server/sip/SipService$MyEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .local v3, now:J
    iget-object v7, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    iget v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    int-to-long v7, v7

    add-long/2addr v7, v3

    iput-wide v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iget-object v7, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$MyEvent;

    .local v0, firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    iget v2, v0, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    .local v2, minPeriod:I
    iget v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    if-gt v2, v7, :cond_1

    iget v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    div-int/2addr v7, v2

    mul-int/2addr v7, v2

    iput v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    iget v1, p1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    .local v1, interval:I
    iget-wide v7, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    sub-long/2addr v7, v3

    long-to-int v7, v7

    sub-int/2addr v1, v7

    div-int v7, v1, v2

    mul-int v1, v7, v2

    iget-wide v7, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    int-to-long v9, v1

    add-long/2addr v7, v9

    iput-wide v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iget-object v7, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v1           #interval:I
    :cond_1
    iget v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    int-to-long v7, v7

    add-long v5, v3, v7

    .local v5, triggerTime:J
    iget-wide v7, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    cmp-long v7, v7, v5

    if-gez v7, :cond_2

    iget-wide v7, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iput-wide v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    iget-wide v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    iget v9, p1, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    int-to-long v9, v9

    sub-long/2addr v7, v9

    iput-wide v7, p1, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    :goto_1
    iget-object v7, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->recalculatePeriods()V

    goto :goto_0

    :cond_2
    iput-wide v5, p1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    goto :goto_1
.end method

.method private printQueue()V
    .locals 7

    .prologue
    const-string v6, "_SIP.WkTimer_"

    const/4 v0, 0x0

    .local v0, count:I
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$MyEvent;

    .local v1, event:Lcom/android/server/sip/SipService$MyEvent;
    const-string v3, "_SIP.WkTimer_"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": scheduled at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipService$WakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": last at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    invoke-direct {p0, v4, v5}, Lcom/android/server/sip/SipService$WakeupTimer;->showTime(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    const/4 v3, 0x5

    if-lt v0, v3, :cond_0

    .end local v1           #event:Lcom/android/server/sip/SipService$MyEvent;
    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v3

    if-le v3, v0, :cond_3

    const-string v3, "_SIP.WkTimer_"

    const-string v3, "     ....."

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    if-nez v0, :cond_2

    const-string v3, "_SIP.WkTimer_"

    const-string v3, "     <empty>"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private recalculatePeriods()V
    .locals 12

    .prologue
    iget-object v8, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v8, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$MyEvent;

    .local v1, firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    iget v4, v1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    .local v4, minPeriod:I
    iget-wide v5, v1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    .local v5, minTriggerTime:J
    iget-object v8, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$MyEvent;

    .local v0, e:Lcom/android/server/sip/SipService$MyEvent;
    iget v8, v0, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    div-int/2addr v8, v4

    mul-int/2addr v8, v4

    iput v8, v0, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    iget-wide v8, v0, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    iget v10, v0, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    int-to-long v10, v10

    add-long/2addr v8, v10

    sub-long/2addr v8, v5

    long-to-int v3, v8

    .local v3, interval:I
    div-int v8, v3, v4

    mul-int v3, v8, v4

    int-to-long v8, v3

    add-long/2addr v8, v5

    iput-wide v8, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    goto :goto_1

    .end local v0           #e:Lcom/android/server/sip/SipService$MyEvent;
    .end local v3           #interval:I
    :cond_1
    new-instance v7, Ljava/util/TreeSet;

    iget-object v8, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->comparator()Ljava/util/Comparator;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .local v7, newQueue:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Lcom/android/server/sip/SipService$MyEvent;>;"
    iget-object v8, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v7, v8}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    iget-object v8, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v8}, Ljava/util/TreeSet;->clear()V

    iput-object v7, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    goto :goto_0
.end method

.method private scheduleNext()V
    .locals 7

    .prologue
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->stopped()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "pendingIntent is not null!"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$MyEvent;

    .local v0, event:Lcom/android/server/sip/SipService$MyEvent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v3, "TriggerTime"

    iget-wide v4, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x800

    invoke-static {v3, v4, v1, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    .local v2, pendingIntent:Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-wide v5, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    invoke-virtual {v3, v4, v5, v6, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private showTime(J)Ljava/lang/String;
    .locals 7
    .parameter "time"

    .prologue
    const-wide/16 v5, 0x3e8

    rem-long v3, p1, v5

    long-to-int v1, v3

    .local v1, ms:I
    div-long v3, p1, v5

    long-to-int v2, v3

    .local v2, s:I
    div-int/lit8 v0, v2, 0x3c

    .local v0, m:I
    rem-int/lit8 v2, v2, 0x3c

    const-string v3, "%d.%d.%d"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private declared-synchronized stopped()Z
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    if-nez v0, :cond_0

    const-string v0, "_SIP.WkTimer_"

    const-string v1, "Timer stopped"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Runnable;)V
    .locals 7
    .parameter "callback"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->stopped()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/sip/SipService$MyEvent;

    .local v1, firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/sip/SipService$MyEvent;>;"
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/sip/SipService$MyEvent;

    .local v0, event:Lcom/android/server/sip/SipService$MyEvent;
    iget-object v3, v0, Lcom/android/server/sip/SipService$MyEvent;->mCallback:Ljava/lang/Runnable;

    if-ne v3, p1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v0           #event:Lcom/android/server/sip/SipService$MyEvent;
    .end local v1           #firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    .end local v2           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/sip/SipService$MyEvent;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1       #firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    .restart local v2       #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/server/sip/SipService$MyEvent;>;"
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancelAlarm()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancelAlarm()V

    iget-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v3}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    check-cast v1, Lcom/android/server/sip/SipService$MyEvent;

    .restart local v1       #firstEvent:Lcom/android/server/sip/SipService$MyEvent;
    iget v3, v1, Lcom/android/server/sip/SipService$MyEvent;->mMaxPeriod:I

    iput v3, v1, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    iget-wide v3, v1, Lcom/android/server/sip/SipService$MyEvent;->mLastTriggerTime:J

    iget v5, v1, Lcom/android/server/sip/SipService$MyEvent;->mPeriod:I

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, v1, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->recalculatePeriods()V

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->scheduleNext()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v5, "TriggerTime"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .local v0, action:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "TriggerTime"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    const-string v3, "TriggerTime"

    const-wide/16 v3, -0x1

    invoke-virtual {p2, v5, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .local v1, triggerTime:J
    invoke-direct {p0, v1, v2}, Lcom/android/server/sip/SipService$WakeupTimer;->execute(J)V

    .end local v1           #triggerTime:J
    :goto_0
    return-void

    :cond_0
    const-string v3, "_SIP.WkTimer_"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unrecognized intent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public declared-synchronized set(ILjava/lang/Runnable;)V
    .locals 7
    .parameter "period"
    .parameter "callback"

    .prologue
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->stopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .local v1, now:J
    new-instance v0, Lcom/android/server/sip/SipService$MyEvent;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/android/server/sip/SipService$MyEvent;-><init>(ILjava/lang/Runnable;J)V

    .local v0, event:Lcom/android/server/sip/SipService$MyEvent;
    invoke-direct {p0, v0}, Lcom/android/server/sip/SipService$WakeupTimer;->insertEvent(Lcom/android/server/sip/SipService$MyEvent;)V

    iget-object v5, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    iget-object v5, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v5}, Ljava/util/TreeSet;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_1

    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->cancelAlarm()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/sip/SipService$WakeupTimer;->scheduleNext()V

    :cond_2
    iget-wide v3, v0, Lcom/android/server/sip/SipService$MyEvent;->mTriggerTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v3, triggerTime:J
    goto :goto_0

    .end local v0           #event:Lcom/android/server/sip/SipService$MyEvent;
    .end local v1           #now:J
    .end local v3           #triggerTime:J
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized stop()V
    .locals 2

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    iget-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/sip/SipService$WakeupTimer;->mEventQueue:Ljava/util/TreeSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
