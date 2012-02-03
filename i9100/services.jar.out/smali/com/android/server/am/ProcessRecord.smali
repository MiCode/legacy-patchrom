.class Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"


# instance fields
.field final activities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field adjSeq:I

.field adjSource:Ljava/lang/Object;

.field adjTarget:Ljava/lang/Object;

.field adjType:Ljava/lang/String;

.field adjTypeCode:I

.field anrDialog:Landroid/app/Dialog;

.field bad:Z

.field final batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

.field final conProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/server/am/ContentProviderRecord;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final connections:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ConnectionRecord;",
            ">;"
        }
    .end annotation
.end field

.field crashDialog:Landroid/app/Dialog;

.field crashing:Z

.field crashingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field curAdj:I

.field curCpuTime:J

.field curRawAdj:I

.field curReceiver:Lcom/android/server/am/BroadcastRecord;

.field curSchedGroup:I

.field debugging:Z

.field empty:Z

.field errorReportReceiver:Landroid/content/ComponentName;

.field final executingServices:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field forcingToForeground:Landroid/os/IBinder;

.field foregroundServices:Z

.field hidden:Z

.field hiddenAdj:I

.field final info:Landroid/content/pm/ApplicationInfo;

.field instrumentationArguments:Landroid/os/Bundle;

.field instrumentationClass:Landroid/content/ComponentName;

.field instrumentationInfo:Landroid/content/pm/ApplicationInfo;

.field instrumentationProfileFile:Ljava/lang/String;

.field instrumentationResultClass:Landroid/content/ComponentName;

.field instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

.field keeping:Z

.field killedBackground:Z

.field lastActivityTime:J

.field lastCpuTime:J

.field lastLowMemory:J

.field lastPss:I

.field lastRequestedGc:J

.field lastWakeTime:J

.field lruSeq:I

.field lruWeight:J

.field maxAdj:I

.field notResponding:Z

.field notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

.field persistent:Z

.field pid:I

.field final pkgList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final processName:Ljava/lang/String;

.field final pubProviders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ContentProviderRecord;",
            ">;"
        }
    .end annotation
.end field

.field final receivers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ReceiverList;",
            ">;"
        }
    .end annotation
.end field

.field removed:Z

.field reportLowMemory:Z

.field final services:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/server/am/ServiceRecord;",
            ">;"
        }
    .end annotation
.end field

.field setAdj:I

.field setIsForeground:Z

.field setRawAdj:I

.field setSchedGroup:I

.field shortStringName:Ljava/lang/String;

.field starting:Z

.field stringName:Ljava/lang/String;

.field thread:Landroid/app/IApplicationThread;

.field waitDialog:Landroid/app/Dialog;

.field waitedForDebugger:Z


# direct methods
.method constructor <init>(Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;Landroid/app/IApplicationThread;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 4
    .parameter "_batteryStats"
    .parameter "_thread"
    .parameter "_info"
    .parameter "_processName"

    .prologue
    const/4 v3, 0x0

    const/16 v2, -0x64

    .line 248
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    .line 97
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    .line 100
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    .line 103
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->receivers:Ljava/util/HashSet;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Ljava/util/HashMap;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/HashMap;

    .line 249
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    .line 250
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 251
    iput-object p4, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 252
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    iget-object v1, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 253
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    .line 254
    sget v0, Lcom/android/server/am/ActivityManagerService;->EMPTY_APP_ADJ:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    .line 255
    sget v0, Lcom/android/server/am/ActivityManagerService;->HIDDEN_APP_MIN_ADJ:I

    iput v0, p0, Lcom/android/server/am/ProcessRecord;->hiddenAdj:I

    .line 256
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    .line 257
    iput v2, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    iput v2, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    .line 258
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 259
    iput-boolean v3, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    .line 260
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)Z
    .locals 1
    .parameter "pkg"

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 327
    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12
    .parameter "pw"
    .parameter "prefix"

    .prologue
    .line 134
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 136
    .local v0, now:J
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_0

    .line 137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "class="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    :cond_0
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_1

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "manageSpaceActivityName="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 141
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "dir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    const-string v6, " publicDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 145
    const-string v6, " data="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "packageList="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 147
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    if-eqz v6, :cond_3

    .line 149
    :cond_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "instrumentationClass="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 150
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationClass:Landroid/content/ComponentName;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 151
    const-string v6, " instrumentationProfileFile="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationProfileFile:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "instrumentationArguments="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 154
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationArguments:Landroid/os/Bundle;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "instrumentationInfo="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 156
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 157
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    .line 158
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->instrumentationInfo:Landroid/content/pm/ApplicationInfo;

    new-instance v7, Landroid/util/PrintWriterPrinter;

    invoke-direct {v7, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "  "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/ApplicationInfo;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 161
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "thread="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 162
    const-string v6, " curReceiver="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->curReceiver:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 163
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "pid="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string v6, " starting="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->starting:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    const-string v6, " lastPss="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->lastPss:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 165
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "lastActivityTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 166
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastActivityTime:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 167
    const-string v6, " lruWeight="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lruWeight:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 168
    const-string v6, " keeping="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->keeping:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 169
    const-string v6, " hidden="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->hidden:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 170
    const-string v6, " empty="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->empty:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "oom: max="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->maxAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 172
    const-string v6, " hidden="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->hiddenAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 173
    const-string v6, " curRaw="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curRawAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 174
    const-string v6, " setRaw="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setRawAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 175
    const-string v6, " cur="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 176
    const-string v6, " set="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setAdj:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "curSchedGroup="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->curSchedGroup:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 178
    const-string v6, " setSchedGroup="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 179
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "setIsForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->setIsForeground:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 180
    const-string v6, " foregroundServices="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->foregroundServices:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 181
    const-string v6, " forcingToForeground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->forcingToForeground:Landroid/os/IBinder;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 182
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "persistent="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->persistent:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 183
    const-string v6, " removed="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->removed:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "adjSeq="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->adjSeq:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 185
    const-string v6, " lruSeq="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->lruSeq:I

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 186
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->keeping:Z

    if-nez v6, :cond_4

    .line 188
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    monitor-enter v6

    .line 189
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->batteryStats:Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;

    invoke-virtual {v7}, Lcom/android/internal/os/BatteryStatsImpl$Uid$Proc;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v9, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatteryStatsImpl;->getProcessWakeTime(IIJ)J

    move-result-wide v4

    .line 191
    .local v4, wtime:J
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    sub-long v2, v4, v6

    .line 193
    .local v2, timeUsed:J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "lastWakeTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastWakeTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 194
    const-string v6, " time used="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 195
    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "lastCpuTime="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 197
    const-string v6, " time used="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 198
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iget-wide v8, p0, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    const-string v6, ""

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 200
    .end local v2           #timeUsed:J
    .end local v4           #wtime:J
    :cond_4
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "lastRequestedGc="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 201
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastRequestedGc:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 202
    const-string v6, " lastLowMemory="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 203
    iget-wide v6, p0, Lcom/android/server/am/ProcessRecord;->lastLowMemory:J

    invoke-static {v6, v7, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 204
    const-string v6, " reportLowMemory="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->reportLowMemory:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 205
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedBackground:Z

    if-eqz v6, :cond_5

    .line 206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "killedBackground="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->killedBackground:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 208
    :cond_5
    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    if-eqz v6, :cond_8

    .line 210
    :cond_6
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "debugging="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->debugging:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 211
    const-string v6, " crashing="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->crashing:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 212
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 213
    const-string v6, " notResponding="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->notResponding:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 214
    const-string v6, " "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 215
    const-string v6, " bad="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/android/server/am/ProcessRecord;->bad:Z

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 218
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    if-eqz v6, :cond_7

    .line 219
    const-string v6, " errorReportReceiver="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->errorReportReceiver:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 224
    :cond_8
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9

    .line 225
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "activities="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 227
    :cond_9
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_a

    .line 228
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "services="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->services:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 230
    :cond_a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_b

    .line 231
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "executingServices="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->executingServices:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 233
    :cond_b
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 234
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "connections="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->connections:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 236
    :cond_c
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_d

    .line 237
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "pubProviders="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->pubProviders:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 239
    :cond_d
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    if-lez v6, :cond_e

    .line 240
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "conProviders="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->conProviders:Ljava/util/HashMap;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 242
    :cond_e
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_f

    .line 243
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "receivers="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->receivers:Ljava/util/HashSet;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 245
    :cond_f
    return-void

    .line 191
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public getPackageList()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 342
    .local v1, size:I
    if-nez v1, :cond_0

    .line 343
    const/4 v2, 0x0

    .line 347
    :goto_0
    return-object v2

    .line 345
    :cond_0
    new-array v0, v1, [Ljava/lang/String;

    .line 346
    .local v0, list:[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-object v2, v0

    .line 347
    goto :goto_0
.end method

.method public isInterestingToUserLocked()Z
    .locals 4

    .prologue
    .line 273
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 274
    .local v2, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 275
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 276
    .local v1, r:Lcom/android/server/am/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 277
    const/4 v3, 0x1

    .line 280
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :goto_1
    return v3

    .line 274
    .restart local v1       #r:Lcom/android/server/am/ActivityRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v1           #r:Lcom/android/server/am/ActivityRecord;
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public resetPackageList()V
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 337
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->pkgList:Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public setPid(I)V
    .locals 1
    .parameter "_pid"

    .prologue
    const/4 v0, 0x0

    .line 263
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 264
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 265
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 266
    return-void
.end method

.method public stopFreezingAllLocked()V
    .locals 3

    .prologue
    .line 284
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 285
    .local v0, i:I
    :goto_0
    if-lez v0, :cond_0

    .line 286
    add-int/lit8 v0, v0, -0x1

    .line 287
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityRecord;->stopFreezingScreenLocked(Z)V

    goto :goto_0

    .line 289
    :cond_0
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 293
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    .line 297
    :goto_0
    return-object v1

    .line 295
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 296
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->shortStringName:Ljava/lang/String;

    goto :goto_0
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .locals 1
    .parameter "sb"

    .prologue
    .line 301
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 303
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 304
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 305
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 307
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 308
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 311
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 312
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    .line 318
    :goto_0
    return-object v1

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 315
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "ProcessRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 317
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 318
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->stringName:Ljava/lang/String;

    goto :goto_0
.end method
