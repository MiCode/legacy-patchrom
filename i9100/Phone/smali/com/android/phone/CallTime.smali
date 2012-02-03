.class public Lcom/android/phone/CallTime;
.super Landroid/os/Handler;
.source "CallTime.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallTime$PeriodicTimerCallback;,
        Lcom/android/phone/CallTime$OnTickListener;
    }
.end annotation


# static fields
.field private static sProfileState:I


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mCall:Lcom/android/internal/telephony/Call;

.field private mInterval:J

.field private mLastReportedTime:J

.field private mListener:Lcom/android/phone/CallTime$OnTickListener;

.field private mPendingIntent:Landroid/app/PendingIntent;

.field private mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

.field private mTimerRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    return-void
.end method

.method public constructor <init>(Lcom/android/phone/CallTime$OnTickListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 51
    iput-object v0, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    .line 52
    iput-object v0, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    .line 66
    iput-object p1, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    .line 67
    new-instance v0, Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime$PeriodicTimerCallback;-><init>(Lcom/android/phone/CallTime;)V

    iput-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    .line 68
    return-void
.end method

.method static synthetic access$002(Lcom/android/phone/CallTime;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    return p1
.end method

.method static getCallDuration(Lcom/android/internal/telephony/Call;)J
    .locals 9
    .parameter "call"

    .prologue
    .line 142
    const-wide/16 v3, 0x0

    .line 143
    .local v3, duration:J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 144
    .local v1, connections:Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 147
    .local v2, count:I
    const/4 v8, 0x1

    if-ne v2, v8, :cond_1

    .line 148
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 151
    .local v0, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v3

    .line 165
    .end local v0           #c:Lcom/android/internal/telephony/Connection;
    :cond_0
    return-wide v3

    .line 153
    :cond_1
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_0

    .line 154
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 157
    .restart local v0       #c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v6

    .line 158
    .local v6, t:J
    cmp-long v8, v6, v3

    if-lez v8, :cond_2

    .line 159
    move-wide v3, v6

    .line 153
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 169
    const-string v0, "PHONE/CallTime"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[CallTime] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    return-void
.end method

.method private updateElapsedTime(Lcom/android/internal/telephony/Call;)V
    .locals 5
    .parameter "call"

    .prologue
    .line 131
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    if-eqz v2, :cond_0

    .line 132
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 133
    .local v0, duration:J
    iget-object v2, p0, Lcom/android/phone/CallTime;->mListener:Lcom/android/phone/CallTime$OnTickListener;

    const-wide/16 v3, 0x3e8

    div-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lcom/android/phone/CallTime$OnTickListener;->onTickForCallTimeElapsed(J)V

    .line 135
    .end local v0           #duration:J
    :cond_0
    return-void
.end method


# virtual methods
.method cancelTimer()V
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v0}, Lcom/android/phone/CallTime;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 127
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 128
    return-void
.end method

.method isTraceReady()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 197
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTraceRunning()Z
    .locals 2

    .prologue
    .line 201
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method periodicUpdateTimer()Z
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 92
    iget-boolean v5, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    if-nez v5, :cond_4

    .line 93
    iput-boolean v9, p0, Lcom/android/phone/CallTime;->mTimerRunning:Z

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 96
    .local v2, now:J
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    iget-wide v7, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long v0, v5, v7

    .line 98
    .local v0, nextReport:J
    :goto_0
    cmp-long v5, v2, v0

    if-ltz v5, :cond_0

    .line 99
    iget-wide v5, p0, Lcom/android/phone/CallTime;->mInterval:J

    add-long/2addr v0, v5

    goto :goto_0

    .line 103
    :cond_0
    iget-object v5, p0, Lcom/android/phone/CallTime;->mTimerCallback:Lcom/android/phone/CallTime$PeriodicTimerCallback;

    invoke-virtual {p0, v5, v0, v1}, Lcom/android/phone/CallTime;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 104
    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 106
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    if-eqz v5, :cond_2

    .line 107
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 109
    .local v4, state:Lcom/android/internal/telephony/Call$State;
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    sget-object v5, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    .line 110
    :cond_1
    iget-object v5, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-direct {p0, v5}, Lcom/android/phone/CallTime;->updateElapsedTime(Lcom/android/internal/telephony/Call;)V

    .line 114
    .end local v4           #state:Lcom/android/internal/telephony/Call$State;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->isTraceReady()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/android/phone/CallTime;->startTrace()V

    :cond_3
    move v5, v9

    .line 121
    .end local v0           #nextReport:J
    .end local v2           #now:J
    :goto_1
    return v5

    .line 119
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method reset()V
    .locals 4

    .prologue
    .line 88
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/CallTime;->mInterval:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mLastReportedTime:J

    .line 89
    return-void
.end method

.method setActiveCallMode(Lcom/android/internal/telephony/Call;)V
    .locals 2
    .parameter "call"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    .line 83
    const-wide/16 v0, 0x3e8

    iput-wide v0, p0, Lcom/android/phone/CallTime;->mInterval:J

    .line 84
    return-void
.end method

.method startMinuteMinderAlarm()V
    .locals 14

    .prologue
    const-wide/32 v4, 0xea60

    const/4 v2, 0x0

    .line 244
    const v7, 0xea60

    .line 246
    .local v7, INTERVAL:I
    const-string v8, "min_minder"

    .line 247
    .local v8, MINUTE_MINDER:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "min_minder"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    .line 249
    .local v13, minuteMinderTone:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMinuteMinderAlarm: minuteMinderTone = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 250
    const/4 v0, 0x1

    if-ne v13, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    .line 251
    const-string v0, "startMinuteMinderAlarm:.."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 253
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    .line 254
    .local v9, context:Landroid/content/Context;
    const-string v0, "alarm"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    .line 256
    new-instance v12, Landroid/content/Intent;

    const-string v0, "com.android.phone.MINUTE_MINDER_ALARM"

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v12, intent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-static {v9, v2, v12, v0}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    .line 259
    iget-object v0, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-static {v0}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    sub-long v10, v4, v0

    .line 260
    .local v10, firstAlertTime:J
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startMinuteMinderAlarm:.. first "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " base "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallTime;->mCall:Lcom/android/internal/telephony/Call;

    invoke-static {v1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 262
    iget-object v0, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, v10

    iget-object v6, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 265
    .end local v9           #context:Landroid/content/Context;
    .end local v10           #firstAlertTime:J
    .end local v12           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method startTrace()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 205
    sget v4, Lcom/android/phone/CallTime;->sProfileState:I

    if-ne v4, v6, :cond_4

    move v4, v6

    :goto_0
    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    .line 209
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    const-string v5, "phoneTrace"

    invoke-virtual {v4, v5, v7}, Lcom/android/phone/PhoneApp;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 210
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 211
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    .line 213
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "callstate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, baseName:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".data"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    .local v1, dataFile:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".key"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 217
    .local v3, keyFile:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v6, :cond_1

    .line 219
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 222
    :cond_1
    new-instance v2, Ljava/io/File;

    .end local v2           #file:Ljava/io/File;
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 223
    .restart local v2       #file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-ne v4, v6, :cond_2

    .line 224
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 227
    :cond_2
    const/4 v4, 0x2

    sput v4, Lcom/android/phone/CallTime;->sProfileState:I

    .line 228
    const-string v4, "startTrace"

    invoke-static {v4}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 229
    const/high16 v4, 0x80

    invoke-static {v0, v4}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;I)V

    .line 231
    .end local v0           #baseName:Ljava/lang/String;
    .end local v1           #dataFile:Ljava/lang/String;
    .end local v2           #file:Ljava/io/File;
    .end local v3           #keyFile:Ljava/lang/String;
    :cond_3
    return-void

    :cond_4
    move v4, v7

    .line 205
    goto/16 :goto_0
.end method

.method stopMinuteMinderAlarm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 269
    const-string v0, "stopMinuteMinderAlarm:.."

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 271
    iput-object v2, p0, Lcom/android/phone/CallTime;->mAlarmManager:Landroid/app/AlarmManager;

    .line 272
    iput-object v2, p0, Lcom/android/phone/CallTime;->mPendingIntent:Landroid/app/PendingIntent;

    .line 274
    :cond_0
    return-void
.end method

.method stopTrace()V
    .locals 2

    .prologue
    .line 235
    sget v0, Lcom/android/phone/CallTime;->sProfileState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 236
    const/4 v0, 0x0

    sput v0, Lcom/android/phone/CallTime;->sProfileState:I

    .line 237
    const-string v0, "stopTrace"

    invoke-static {v0}, Lcom/android/phone/CallTime;->log(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 241
    :cond_0
    return-void
.end method
