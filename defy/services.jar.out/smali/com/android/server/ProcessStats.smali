.class public Lcom/android/server/ProcessStats;
.super Ljava/lang/Object;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ProcessStats$Stats;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOAD_AVERAGE_FORMAT:[I = null

.field private static final PROCESS_FULL_STATS_FORMAT:[I = null

.field static final PROCESS_FULL_STAT_MAJOR_FAULTS:I = 0x2

.field static final PROCESS_FULL_STAT_MINOR_FAULTS:I = 0x1

.field static final PROCESS_FULL_STAT_STIME:I = 0x4

.field static final PROCESS_FULL_STAT_UTIME:I = 0x3

.field static final PROCESS_FULL_STAT_VSIZE:I = 0x5

.field private static final PROCESS_STATS_FORMAT:[I = null

.field static final PROCESS_STAT_MAJOR_FAULTS:I = 0x1

.field static final PROCESS_STAT_MINOR_FAULTS:I = 0x0

.field static final PROCESS_STAT_STIME:I = 0x3

.field static final PROCESS_STAT_UTIME:I = 0x2

.field private static final SYSTEM_CPU_FORMAT:[I = null

.field private static final TAG:Ljava/lang/String; = "ProcessStats"

.field private static final localLOGV:Z

.field private static final sLoadComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBaseIdleTime:J

.field private mBaseIoWaitTime:J

.field private mBaseIrqTime:J

.field private mBaseSoftIrqTime:J

.field private mBaseSystemTime:J

.field private mBaseUserTime:J

.field private mBuffer:[B

.field private mCpuSpeedTimes:[J

.field private mCpuSpeeds:[J

.field private mCurPids:[I

.field private mCurThreadPids:[I

.field private mCurrentSampleRealTime:J

.field private mCurrentSampleTime:J

.field private mFirst:Z

.field private final mIncludeThreads:Z

.field private mLastSampleRealTime:J

.field private mLastSampleTime:J

.field private mLoad1:F

.field private mLoad15:F

.field private mLoad5:F

.field private final mLoadAverageData:[F

.field private final mProcStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcessFullStatsData:[J

.field private final mProcessFullStatsStringData:[Ljava/lang/String;

.field private final mProcessStatsData:[J

.field private mRelCpuSpeedTimes:[J

.field private mRelIdleTime:I

.field private mRelIoWaitTime:I

.field private mRelIrqTime:I

.field private mRelSoftIrqTime:I

.field private mRelSystemTime:I

.field private mRelUserTime:I

.field private final mSinglePidStatsData:[J

.field private final mSystemCpuData:[J

.field private final mWorkingProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkingProcsSorted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/16 v0, 0x16

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    new-instance v0, Lcom/android/server/ProcessStats$1;

    invoke-direct {v0}, Lcom/android/server/ProcessStats$1;-><init>()V

    sput-object v0, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    return-void

    nop

    :array_0
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x2t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x12t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x20t 0x1t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
        0x20t 0x20t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
        0x20t 0x40t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 4
    .parameter "includeThreads"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    new-array v0, v2, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    new-array v0, v3, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    const/4 v0, 0x7

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad1:F

    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad5:F

    iput v1, p0, Lcom/android/server/ProcessStats;->mLoad15:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    iput-boolean p1, p0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    return-void
.end method

.method private collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I
    .locals 29
    .parameter "statsFile"
    .parameter "parentPid"
    .parameter "first"
    .parameter "curPids"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IZ[I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/ProcessStats$Stats;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .local p5, allProcs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/ProcessStats$Stats;>;"
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v19

    .local v19, pids:[I
    if-nez v19, :cond_1

    const/4 v5, 0x0

    move v11, v5

    .local v11, NP:I
    :goto_0
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v12

    .local v12, NS:I
    const/4 v13, 0x0

    .local v13, curStatsIndex:I
    const/4 v14, 0x0

    .end local p1
    .local v14, i:I
    :goto_1
    if-ge v14, v11, :cond_0

    aget v7, v19, v14

    .local v7, pid:I
    if-gez v7, :cond_2

    move v11, v7

    .end local v7           #pid:I
    :cond_0
    :goto_2
    if-ge v13, v12, :cond_f

    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/server/ProcessStats$Stats;

    .local v22, st:Lcom/android/server/ProcessStats$Stats;
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    goto :goto_2

    .end local v11           #NP:I
    .end local v12           #NS:I
    .end local v13           #curStatsIndex:I
    .end local v14           #i:I
    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    .restart local p1
    :cond_1
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move v11, v5

    goto :goto_0

    .end local p1
    .restart local v7       #pid:I
    .restart local v11       #NP:I
    .restart local v12       #NS:I
    .restart local v13       #curStatsIndex:I
    .restart local v14       #i:I
    :cond_2
    if-ge v13, v12, :cond_4

    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/ProcessStats$Stats;

    move-object/from16 v22, p1

    .restart local v22       #st:Lcom/android/server/ProcessStats$Stats;
    :goto_3
    if-eqz v22, :cond_9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-ne v5, v7, :cond_9

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    move v5, v0

    if-eqz v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v25

    .local v25, uptime:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessStatsData:[J

    move-object/from16 v20, v0

    .local v20, procStats:[J
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v8

    move-object/from16 v3, v20

    move-object v4, v9

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-nez v5, :cond_5

    .end local v20           #procStats:[J
    .end local v25           #uptime:J
    :cond_3
    :goto_4
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_4
    const/4 v5, 0x0

    move-object/from16 v22, v5

    goto :goto_3

    .restart local v20       #procStats:[J
    .restart local v22       #st:Lcom/android/server/ProcessStats$Stats;
    .restart local v25       #uptime:J
    :cond_5
    const/4 v5, 0x0

    aget-wide v17, v20, v5

    .local v17, minfaults:J
    const/4 v5, 0x1

    aget-wide v15, v20, v5

    .local v15, majfaults:J
    const/4 v5, 0x2

    aget-wide v27, v20, v5

    .local v27, utime:J
    const/4 v5, 0x3

    aget-wide v23, v20, v5

    .local v23, stime:J
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    cmp-long v5, v27, v5

    if-nez v5, :cond_6

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    cmp-long v5, v23, v5

    if-nez v5, :cond_6

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    goto :goto_4

    :cond_6
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->active:Z

    move v5, v0

    if-nez v5, :cond_7

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->active:Z

    :cond_7
    if-gez p2, :cond_8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_8

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    :cond_8
    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_uptime:J

    move-wide v5, v0

    sub-long v5, v25, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->rel_uptime:J

    move-wide/from16 v0, v25

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_uptime:J

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide v5, v0

    sub-long v5, v27, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v5, v0

    sub-long v5, v23, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move-wide/from16 v0, v27

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    move-wide/from16 v0, v23

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    move-wide v5, v0

    sub-long v5, v17, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v5, v0

    sub-long v5, v15, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    move-wide/from16 v0, v17

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    move-wide v0, v15

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    .end local v15           #majfaults:J
    .end local v17           #minfaults:J
    .end local v20           #procStats:[J
    .end local v23           #stime:J
    .end local v25           #uptime:J
    .end local v27           #utime:J
    :cond_9
    if-eqz v22, :cond_a

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v5, v0

    if-le v5, v7, :cond_e

    :cond_a
    new-instance v22, Lcom/android/server/ProcessStats$Stats;

    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mIncludeThreads:Z

    move v5, v0

    move-object/from16 v0, v22

    move v1, v7

    move/from16 v2, p2

    move v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ProcessStats$Stats;-><init>(IIZ)V

    .restart local v22       #st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, p5

    move v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsStringData:[Ljava/lang/String;

    move-object/from16 v21, v0

    .local v21, procStatsString:[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcessFullStatsData:[J

    move-object/from16 v20, v0

    .restart local v20       #procStats:[J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_uptime:J

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->statFile:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/server/ProcessStats;->PROCESS_FULL_STATS_FORMAT:[I

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    move-object/from16 v3, v20

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    const/4 v5, 0x0

    aget-object v5, v21, v5

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const/4 v5, 0x1

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    const/4 v5, 0x2

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    const/4 v5, 0x3

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    const/4 v5, 0x4

    aget-wide v5, v20, v5

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    :goto_5
    if-gez p2, :cond_d

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->cmdlineFile:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Lcom/android/server/ProcessStats;->getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadsDir:Ljava/lang/String;

    move-object v6, v0

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    move-object v9, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurThreadPids:[I

    :cond_b
    :goto_6
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->added:Z

    if-nez p3, :cond_3

    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    move v5, v0

    if-eqz v5, :cond_3

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    goto/16 :goto_4

    :cond_c
    const-string v5, "ProcessStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skipping unknown process pid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "<unknown>"

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_stime:J

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_utime:J

    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_majfaults:J

    move-wide v0, v5

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/server/ProcessStats$Stats;->base_minfaults:J

    goto/16 :goto_5

    :cond_d
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->interesting:Z

    move v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    goto/16 :goto_6

    .end local v20           #procStats:[J
    .end local v21           #procStatsString:[Ljava/lang/String;
    :cond_e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->removed:Z

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v22

    iput-boolean v0, v1, Lcom/android/server/ProcessStats$Stats;->working:Z

    move-object/from16 v0, p5

    move v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v12, v12, -0x1

    add-int/lit8 v14, v14, -0x1

    goto/16 :goto_4

    .end local v7           #pid:I
    .end local v22           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_f
    return-object v19
.end method

.method private getCpuSpeedTimes([J)[J
    .locals 14
    .parameter "out"

    .prologue
    const/16 v13, 0x14

    const/4 v12, 0x0

    move-object v6, p1

    .local v6, tempTimes:[J
    iget-object v5, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    .local v5, tempSpeeds:[J
    const/16 v0, 0x14

    .local v0, MAX_SPEEDS:I
    if-nez p1, :cond_0

    new-array v6, v13, [J

    new-array v5, v13, [J

    :cond_0
    const/4 v3, 0x0

    .local v3, speed:I
    const-string v10, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-direct {p0, v10, v12}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v1

    .local v1, file:Ljava/lang/String;
    if-eqz v1, :cond_2

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v10, "\n "

    invoke-direct {v4, v1, v10}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v4, st:Ljava/util/StringTokenizer;
    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    .local v7, token:Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .local v8, val:J
    aput-wide v8, v5, v3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    aput-wide v8, v6, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v13, :cond_1

    .end local v4           #st:Ljava/util/StringTokenizer;
    .end local v7           #token:Ljava/lang/String;
    .end local v8           #val:J
    :cond_2
    if-nez p1, :cond_3

    new-array p1, v3, [J

    new-array v10, v3, [J

    iput-object v10, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    iget-object v10, p0, Lcom/android/server/ProcessStats;->mCpuSpeeds:[J

    invoke-static {v5, v12, v10, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v6, v12, p1, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    return-object p1

    .restart local v4       #st:Ljava/util/StringTokenizer;
    .restart local v7       #token:Ljava/lang/String;
    :catch_0
    move-exception v10

    move-object v2, v10

    .local v2, nfe:Ljava/lang/NumberFormatException;
    const-string v10, "ProcessStats"

    const-string v11, "Unable to parse time_in_state"

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getName(Lcom/android/server/ProcessStats$Stats;Ljava/lang/String;)V
    .locals 6
    .parameter "st"
    .parameter "cmdlineFile"

    .prologue
    const/4 v5, 0x1

    iget-object v2, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    .local v2, newName:Ljava/lang/String;
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "app_process"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    const-string v4, "<pre-initialized>"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    const/4 v3, 0x0

    invoke-direct {p0, p2, v3}, Lcom/android/server/ProcessStats;->readFile(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    .local v0, cmdName:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    move-object v2, v0

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .local v1, i:I
    if-lez v1, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v1, v3, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .end local v1           #i:I
    :cond_1
    if-nez v2, :cond_2

    iget-object v2, p1, Lcom/android/server/ProcessStats$Stats;->baseName:Ljava/lang/String;

    .end local v0           #cmdName:Ljava/lang/String;
    :cond_2
    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    if-eqz v3, :cond_3

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    iput-object v2, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/ProcessStats;->onMeasureProcessName(Ljava/lang/String;)I

    move-result v3

    iput v3, p1, Lcom/android/server/ProcessStats$Stats;->nameWidth:I

    :cond_4
    return-void
.end method

.method private printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V
    .locals 8
    .parameter "pw"
    .parameter "prefix"
    .parameter "pid"
    .parameter "label"
    .parameter "totalTime"
    .parameter "user"
    .parameter "system"
    .parameter "iowait"
    .parameter "irq"
    .parameter "softIrq"
    .parameter "minFaults"
    .parameter "majFaults"

    .prologue
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez p5, :cond_0

    const/4 p5, 0x1

    :cond_0
    add-int v2, p6, p7

    add-int v2, v2, p8

    add-int v2, v2, p9

    add-int v2, v2, p10

    int-to-long v4, v2

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v2, "% "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-ltz p3, :cond_1

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v4, p6

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v2, "% user + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    int-to-long v4, p7

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v2, "% kernel"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-lez p8, :cond_2

    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p8

    int-to-long v0, v0

    move-wide v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v2, "% iowait"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_2
    if-lez p9, :cond_3

    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p9

    int-to-long v0, v0

    move-wide v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v2, "% irq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    if-lez p10, :cond_4

    const-string v2, " + "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v0, p10

    int-to-long v0, v0

    move-wide v4, v0

    int-to-long v6, p5

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/ProcessStats;->printRatio(Ljava/io/PrintWriter;JJ)V

    const-string v2, "% softirq"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    if-gtz p11, :cond_5

    if-lez p12, :cond_7

    :cond_5
    const-string v2, " / faults:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-lez p11, :cond_6

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, p1

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " minor"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    if-lez p12, :cond_7

    const-string v2, " "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, p1

    move/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, " major"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method private printRatio(Ljava/io/PrintWriter;JJ)V
    .locals 10
    .parameter "pw"
    .parameter "numerator"
    .parameter "denominator"

    .prologue
    const-wide/16 v8, 0xa

    const-wide/16 v6, 0x3e8

    mul-long/2addr v6, p2

    div-long v4, v6, p4

    .local v4, thousands:J
    div-long v0, v4, v8

    .local v0, hundreds:J
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    cmp-long v6, v0, v8

    if-gez v6, :cond_0

    mul-long v6, v0, v8

    sub-long v2, v4, v6

    .local v2, remainder:J
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    const/16 v6, 0x2e

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(C)V

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .end local v2           #remainder:J
    :cond_0
    return-void
.end method

.method private readFile(Ljava/lang/String;C)Ljava/lang/String;
    .locals 7
    .parameter "file"
    .parameter "endChar"

    .prologue
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v1, is:Ljava/io/FileInputStream;
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    invoke-virtual {v1, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    .local v2, len:I
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    if-lez v2, :cond_2

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    aget-byte v3, v3, v0

    if-ne v3, p2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/ProcessStats;->mBuffer:[B

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6, v0}, Ljava/lang/String;-><init>([BIII)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :goto_1
    return-object v3

    .restart local v0       #i:I
    .restart local v1       #is:Ljava/io/FileInputStream;
    .restart local v2       #len:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #is:Ljava/io/FileInputStream;
    .end local v2           #len:I
    :catch_0
    move-exception v3

    :cond_2
    :goto_2
    const/4 v3, 0x0

    goto :goto_1

    :catch_1
    move-exception v3

    goto :goto_2
.end method


# virtual methods
.method final buildWorkingProcs()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    iget-boolean v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_3

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/ProcessStats$Stats;

    .local v4, stats:Lcom/android/server/ProcessStats$Stats;
    iget-boolean v6, v4, Lcom/android/server/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-le v6, v8, :cond_2

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, M:I
    const/4 v3, 0x0

    .local v3, j:I
    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->threadStats:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/ProcessStats$Stats;

    .local v5, tstats:Lcom/android/server/ProcessStats$Stats;
    iget-boolean v6, v5, Lcom/android/server/ProcessStats$Stats;->working:Z

    if-eqz v6, :cond_0

    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v5           #tstats:Lcom/android/server/ProcessStats$Stats;
    :cond_1
    iget-object v6, v4, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .end local v0           #M:I
    .end local v3           #j:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v4           #stats:Lcom/android/server/ProcessStats$Stats;
    :cond_3
    iget-object v6, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/ProcessStats;->sLoadComparator:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iput-boolean v8, p0, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    .end local v1           #N:I
    .end local v2           #i:I
    :cond_4
    return-void
.end method

.method public final countStats()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public final countWorkingStats()I
    .locals 1

    .prologue
    invoke-virtual {p0}, Lcom/android/server/ProcessStats;->buildWorkingProcs()V

    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCpuTimeForPid(I)J
    .locals 8
    .parameter "pid"

    .prologue
    const/4 v6, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/proc/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/stat"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, statFile:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/ProcessStats;->mSinglePidStatsData:[J

    .local v1, statsData:[J
    sget-object v4, Lcom/android/server/ProcessStats;->PROCESS_STATS_FORMAT:[I

    invoke-static {v0, v4, v6, v1, v6}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x2

    aget-wide v4, v1, v4

    const/4 v6, 0x3

    aget-wide v6, v1, v6

    add-long v2, v4, v6

    .local v2, time:J
    move-wide v4, v2

    .end local v2           #time:J
    :goto_0
    return-wide v4

    :cond_0
    const-wide/16 v4, 0x0

    goto :goto_0
.end method

.method public getLastCpuSpeedTimes()[J
    .locals 8

    .prologue
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    if-nez v3, :cond_0

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/server/ProcessStats;->getCpuSpeedTimes([J)[J

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    new-array v3, v3, [J

    iput-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    const-wide/16 v4, 0x1

    aput-wide v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    :cond_0
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    invoke-direct {p0, v3}, Lcom/android/server/ProcessStats;->getCpuSpeedTimes([J)[J

    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v1, v3, v0

    .local v1, temp:J
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    aget-wide v6, v6, v0

    sub-long/2addr v4, v6

    aput-wide v4, v3, v0

    iget-object v3, p0, Lcom/android/server/ProcessStats;->mCpuSpeedTimes:[J

    aput-wide v1, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #temp:J
    :cond_1
    iget-object v3, p0, Lcom/android/server/ProcessStats;->mRelCpuSpeedTimes:[J

    return-object v3
.end method

.method public final getLastIdleTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    return v0
.end method

.method public final getLastIoWaitTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    return v0
.end method

.method public final getLastIrqTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    return v0
.end method

.method public final getLastSoftIrqTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    return v0
.end method

.method public final getLastSystemTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    return v0
.end method

.method public final getLastUserTime()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    return v0
.end method

.method public final getStats(I)Lcom/android/server/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/ProcessStats$Stats;

    return-object p0
.end method

.method public final getTotalCpuPercent()F
    .locals 3

    .prologue
    iget v0, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x42c8

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public final getWorkingStats(I)Lcom/android/server/ProcessStats$Stats;
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/server/ProcessStats$Stats;

    return-object p0
.end method

.method public init()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ProcessStats;->mFirst:Z

    invoke-virtual {p0}, Lcom/android/server/ProcessStats;->update()V

    return-void
.end method

.method public onLoadChanged(FFF)V
    .locals 0
    .parameter "load1"
    .parameter "load5"
    .parameter "load15"

    .prologue
    return-void
.end method

.method public onMeasureProcessName(Ljava/lang/String;)I
    .locals 1
    .parameter "name"

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public final printCurrentLoad()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v3, " / "

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .local v1, sw:Ljava/io/StringWriter;
    new-instance v0, Ljava/io/PrintWriter;

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v0, pw:Ljava/io/PrintWriter;
    const-string v2, "Load: "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/ProcessStats;->mLoad1:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/ProcessStats;->mLoad5:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(F)V

    const-string v2, " / "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/ProcessStats;->mLoad15:F

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(F)V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public final printCurrentState(J)Ljava/lang/String;
    .locals 30
    .parameter "now"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/ProcessStats;->buildWorkingProcs()V

    new-instance v27, Ljava/io/StringWriter;

    invoke-direct/range {v27 .. v27}, Ljava/io/StringWriter;-><init>()V

    .local v27, sw:Ljava/io/StringWriter;
    new-instance v4, Ljava/io/PrintWriter;

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .local v4, pw:Ljava/io/PrintWriter;
    const-string v3, "CPU usage from "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v5, v0

    cmp-long v3, p1, v5

    if-lez v3, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v5, v0

    sub-long v5, p1, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "ms to "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    sub-long v5, p1, v5

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "ms ago"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v7, v0

    sub-long v24, v5, v7

    .local v24, sampleTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleRealTime:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleRealTime:J

    move-wide v7, v0

    sub-long v22, v5, v7

    .local v22, sampleRealTime:J
    const-wide/16 v5, 0x64

    mul-long v5, v5, v24

    div-long v20, v5, v22

    .local v20, percAwake:J
    const-wide/16 v5, 0x64

    cmp-long v3, v20, v5

    if-eqz v3, :cond_0

    const-string v3, " with "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "% awake"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    const-string v3, ":"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v5, v0

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    move v5, v0

    add-int v28, v3, v5

    .local v28, totalTime:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, N:I
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, v17

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mWorkingProcs:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/ProcessStats$Stats;

    .local v26, st:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v3, v0

    if-eqz v3, :cond_2

    const-string v3, " +"

    move-object v5, v3

    :goto_2
    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v6, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_uptime:J

    move-wide v8, v0

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v3, v8

    div-int/lit8 v8, v3, 0xa

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v9, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_minfaults:I

    move v14, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_majfaults:I

    move v15, v0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v3, v0

    if-nez v3, :cond_6

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v3, v0

    if-eqz v3, :cond_6

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    .local v16, M:I
    const/16 v19, 0x0

    .local v19, j:I
    :goto_3
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->workingThreads:Ljava/util/ArrayList;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/ProcessStats$Stats;

    .local v29, tst:Lcom/android/server/ProcessStats$Stats;
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->added:Z

    move v3, v0

    if-eqz v3, :cond_4

    const-string v3, "   +"

    move-object v5, v3

    :goto_4
    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->pid:I

    move v6, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/ProcessStats$Stats;->name:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_uptime:J

    move-wide v8, v0

    const-wide/16 v10, 0x5

    add-long/2addr v8, v10

    long-to-int v3, v8

    div-int/lit8 v8, v3, 0xa

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_utime:I

    move v9, v0

    move-object/from16 v0, v29

    iget v0, v0, Lcom/android/server/ProcessStats$Stats;->rel_stime:I

    move v10, v0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v15}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .end local v16           #M:I
    .end local v17           #N:I
    .end local v18           #i:I
    .end local v19           #j:I
    .end local v20           #percAwake:J
    .end local v22           #sampleRealTime:J
    .end local v24           #sampleTime:J
    .end local v26           #st:Lcom/android/server/ProcessStats$Stats;
    .end local v28           #totalTime:I
    .end local v29           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    move-wide v5, v0

    sub-long v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "ms to "

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    sub-long v5, v5, p1

    invoke-virtual {v4, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    const-string v3, "ms later"

    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_0

    .restart local v17       #N:I
    .restart local v18       #i:I
    .restart local v20       #percAwake:J
    .restart local v22       #sampleRealTime:J
    .restart local v24       #sampleTime:J
    .restart local v26       #st:Lcom/android/server/ProcessStats$Stats;
    .restart local v28       #totalTime:I
    :cond_2
    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v3, v0

    if-eqz v3, :cond_3

    const-string v3, " -"

    move-object v5, v3

    goto/16 :goto_2

    :cond_3
    const-string v3, "  "

    move-object v5, v3

    goto/16 :goto_2

    .restart local v16       #M:I
    .restart local v19       #j:I
    .restart local v29       #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_4
    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/ProcessStats$Stats;->removed:Z

    move v3, v0

    if-eqz v3, :cond_5

    const-string v3, "   -"

    move-object v5, v3

    goto :goto_4

    :cond_5
    const-string v3, "    "

    move-object v5, v3

    goto :goto_4

    .end local v16           #M:I
    .end local v19           #j:I
    .end local v29           #tst:Lcom/android/server/ProcessStats$Stats;
    :cond_6
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_1

    .end local v26           #st:Lcom/android/server/ProcessStats$Stats;
    :cond_7
    const-string v5, ""

    const/4 v6, -0x1

    const-string v7, "TOTAL"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move v12, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move v13, v0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v3, p0

    move/from16 v8, v28

    invoke-direct/range {v3 .. v15}, Lcom/android/server/ProcessStats;->printProcessCPU(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;IIIIIIII)V

    invoke-virtual/range {v27 .. v27}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public update()V
    .locals 28

    .prologue
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mLastSampleTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mCurrentSampleTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mCurrentSampleRealTime:J

    move-wide v5, v0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mLastSampleRealTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mCurrentSampleRealTime:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mSystemCpuData:[J

    move-object/from16 v23, v0

    .local v23, sysCpu:[J
    const-string v5, "/proc/stat"

    sget-object v6, Lcom/android/server/ProcessStats;->SYSTEM_CPU_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v23

    move-object v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    aget-wide v5, v23, v5

    const/4 v7, 0x1

    aget-wide v7, v23, v7

    add-long v26, v5, v7

    .local v26, usertime:J
    const/4 v5, 0x2

    aget-wide v24, v23, v5

    .local v24, systemtime:J
    const/4 v5, 0x3

    aget-wide v11, v23, v5

    .local v11, idletime:J
    const/4 v5, 0x4

    aget-wide v13, v23, v5

    .local v13, iowaittime:J
    const/4 v5, 0x5

    aget-wide v15, v23, v5

    .local v15, irqtime:J
    const/4 v5, 0x6

    aget-wide v21, v23, v5

    .local v21, softirqtime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    move-wide v5, v0

    sub-long v5, v26, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelUserTime:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    move-wide v5, v0

    sub-long v5, v24, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSystemTime:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    move-wide v5, v0

    sub-long v5, v13, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIoWaitTime:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    move-wide v5, v0

    sub-long v5, v15, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIrqTime:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    move-wide v5, v0

    sub-long v5, v21, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelSoftIrqTime:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    move-wide v5, v0

    sub-long v5, v11, v5

    long-to-int v5, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mRelIdleTime:I

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseUserTime:J

    move-wide/from16 v0, v24

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSystemTime:J

    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIoWaitTime:J

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIrqTime:J

    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseSoftIrqTime:J

    move-wide v0, v11

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/ProcessStats;->mBaseIdleTime:J

    .end local v11           #idletime:J
    .end local v13           #iowaittime:J
    .end local v15           #irqtime:J
    .end local v21           #softirqtime:J
    .end local v24           #systemtime:J
    .end local v26           #usertime:J
    :cond_0
    const-string v6, "/proc"

    const/4 v7, -0x1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/ProcessStats;->mFirst:Z

    move v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mCurPids:[I

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mProcStats:Ljava/util/ArrayList;

    move-object v10, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/ProcessStats;->collectStats(Ljava/lang/String;IZ[ILjava/util/ArrayList;)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/ProcessStats;->mCurPids:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/ProcessStats;->mLoadAverageData:[F

    move-object/from16 v20, v0

    .local v20, loadAverages:[F
    const-string v5, "/proc/loadavg"

    sget-object v6, Lcom/android/server/ProcessStats;->LOAD_AVERAGE_FORMAT:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v5

    move-object v1, v6

    move-object v2, v7

    move-object v3, v8

    move-object/from16 v4, v20

    invoke-static {v0, v1, v2, v3, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x0

    aget v17, v20, v5

    .local v17, load1:F
    const/4 v5, 0x1

    aget v19, v20, v5

    .local v19, load5:F
    const/4 v5, 0x2

    aget v18, v20, v5

    .local v18, load15:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad1:F

    move v5, v0

    cmpl-float v5, v17, v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad5:F

    move v5, v0

    cmpl-float v5, v19, v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/ProcessStats;->mLoad15:F

    move v5, v0

    cmpl-float v5, v18, v5

    if-eqz v5, :cond_2

    :cond_1
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad1:F

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad5:F

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/ProcessStats;->mLoad15:F

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v19

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/ProcessStats;->onLoadChanged(FFF)V

    .end local v17           #load1:F
    .end local v18           #load15:F
    .end local v19           #load5:F
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mWorkingProcsSorted:Z

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/ProcessStats;->mFirst:Z

    return-void
.end method
