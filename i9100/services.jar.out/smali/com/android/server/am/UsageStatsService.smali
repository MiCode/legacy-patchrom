.class public final Lcom/android/server/am/UsageStatsService;
.super Lcom/android/internal/app/IUsageStats$Stub;
.source "UsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;,
        Lcom/android/server/am/UsageStatsService$TimeStats;
    }
.end annotation


# static fields
.field private static final CHECKIN_VERSION:I = 0x4

.field private static final FILE_PREFIX:Ljava/lang/String; = "usage-"

.field private static final FILE_WRITE_INTERVAL:I = 0x1b7740

.field private static final LAUNCH_TIME_BINS:[I = null

.field private static final MAX_NUM_FILES:I = 0x5

.field private static final NUM_LAUNCH_TIME_BINS:I = 0xa

.field private static final REPORT_UNEXPECTED:Z = false

.field public static final SERVICE_NAME:Ljava/lang/String; = "usagestats"

.field private static final TAG:Ljava/lang/String; = "UsageStats"

.field private static final VERSION:I = 0x3ed

.field private static final localLOGV:Z

.field static sService:Lcom/android/internal/app/IUsageStats;


# instance fields
.field private mCal:Ljava/util/Calendar;

.field private mContext:Landroid/content/Context;

.field private mDir:Ljava/io/File;

.field private mFile:Ljava/io/File;

.field private mFileLeaf:Ljava/lang/String;

.field final mFileLock:Ljava/lang/Object;

.field private mIsResumed:Z

.field private mLastResumedComp:Ljava/lang/String;

.field private mLastResumedPkg:Ljava/lang/String;

.field private final mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mStats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;",
            ">;"
        }
    .end annotation
.end field

.field final mStatsLock:Ljava/lang/Object;

.field private final mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const/16 v0, 0x9

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-void

    :array_0
    .array-data 0x4
        0xfat 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t
        0xeet 0x2t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t
        0xdct 0x5t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t
        0xb8t 0xbt 0x0t 0x0t
        0xa0t 0xft 0x0t 0x0t
        0x88t 0x13t 0x0t 0x0t
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 7
    .parameter "dir"

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/internal/app/IUsageStats$Stub;-><init>()V

    .line 101
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v5, -0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 102
    new-instance v4, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-direct {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 103
    new-instance v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 225
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    .line 226
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    .line 227
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    .line 228
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    .line 229
    const-string v4, "GMT+0"

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    .line 231
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 234
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    .line 235
    .local v2, parentDir:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, fList:[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 237
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 238
    .local v3, prefix:Ljava/lang/String;
    array-length v1, v0

    .line 239
    .local v1, i:I
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 240
    add-int/lit8 v1, v1, -0x1

    .line 241
    aget-object v4, v0, v1

    invoke-virtual {v4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 242
    const-string v4, "UsageStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Deleting old usage file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v4, Ljava/io/File;

    aget-object v5, v0, v1

    invoke-direct {v4, v2, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 249
    .end local v1           #i:I
    .end local v3           #prefix:Ljava/lang/String;
    :cond_1
    const-string v4, "usage-"

    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 250
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 251
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->readStatsFromFile()V

    .line 252
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 254
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v6, 0x6

    invoke-virtual {v5, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 255
    return-void
.end method

.method static synthetic access$000()[I
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/UsageStatsService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/UsageStatsService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private checkFileLimitFLOCK()V
    .locals 8

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v2

    .line 354
    .local v2, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_1

    .line 372
    :cond_0
    return-void

    .line 358
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 359
    .local v0, count:I
    const/4 v5, 0x5

    if-le v0, v5, :cond_0

    .line 363
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 364
    add-int/lit8 v0, v0, -0x5

    .line 366
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v0, :cond_0

    .line 367
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 368
    .local v3, fileName:Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v1, v5, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 369
    .local v1, file:Ljava/io/File;
    const-string v5, "UsageStats"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Deleting usage file : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V
    .locals 11
    .parameter "pw"
    .parameter "isCompactOutput"
    .parameter "deleteAfterPrint"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "ZZ",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 672
    .local p4, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->getUsageStatsFileListFLOCK()Ljava/util/ArrayList;

    move-result-object v9

    .line 673
    .local v9, fileList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-nez v9, :cond_1

    .line 700
    :cond_0
    :goto_0
    return-void

    .line 676
    :cond_1
    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 677
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 678
    .local v8, file:Ljava/lang/String;
    if-eqz p3, :cond_3

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 683
    :cond_3
    new-instance v6, Ljava/io/File;

    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v0, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 684
    .local v6, dFile:Ljava/io/File;
    const-string v0, "usage-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 686
    .local v3, dateStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v6}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .local v1, in:Landroid/os/Parcel;
    move-object v0, p0

    move-object v2, p1

    move v4, p2

    move-object v5, p4

    .line 687
    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V

    .line 689
    if-eqz p3, :cond_2

    .line 691
    invoke-virtual {v6}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 693
    .end local v1           #in:Landroid/os/Parcel;
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 694
    .local v7, e:Ljava/io/FileNotFoundException;
    const-string v0, "UsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when collecting dump info from file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 696
    .end local v7           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    move-object v7, v0

    .line 697
    .local v7, e:Ljava/io/IOException;
    const-string v0, "UsageStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " when collecting dump info from file : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method

.method private collectDumpInfoFromParcelFLOCK(Landroid/os/Parcel;Ljava/io/PrintWriter;Ljava/lang/String;ZLjava/util/HashSet;)V
    .locals 17
    .parameter "in"
    .parameter "pw"
    .parameter "date"
    .parameter "isCompactOutput"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 704
    .local p5, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v12, Ljava/lang/StringBuilder;

    const/16 v15, 0x200

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 705
    .local v12, sb:Ljava/lang/StringBuilder;
    if-eqz p4, :cond_1

    .line 706
    const-string v15, "D:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const/4 v15, 0x4

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 708
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 713
    :goto_0
    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 715
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 716
    .local v14, vers:I
    const/16 v15, 0x3ed

    if-eq v14, v15, :cond_2

    .line 717
    const-string v15, " (old data version)"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 718
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 811
    .end local p3
    :cond_0
    return-void

    .line 710
    .end local v14           #vers:I
    .restart local p3
    :cond_1
    const-string v15, "Date: "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 722
    .restart local v14       #vers:I
    :cond_2
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 723
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 725
    .end local p3
    .local v3, N:I
    :goto_1
    if-lez v3, :cond_0

    .line 726
    add-int/lit8 v3, v3, -0x1

    .line 727
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 728
    .local v10, pkgName:Ljava/lang/String;
    if-eqz v10, :cond_0

    .line 731
    const/4 v15, 0x0

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 732
    new-instance v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    move-object v0, v11

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 733
    .local v11, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz p5, :cond_4

    move-object/from16 v0, p5

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    .line 809
    :cond_3
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 736
    :cond_4
    if-eqz p4, :cond_7

    .line 737
    const-string v15, "P:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 739
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    iget v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 742
    iget-wide v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    move-object v0, v12

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 743
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 744
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 745
    .local v4, NC:I
    if-lez v4, :cond_3

    .line 746
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 747
    .local v6, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    const-string v15, "A:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 749
    .local v5, activity:Ljava/lang/String;
    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 750
    const/16 v15, 0x2a

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 751
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    :goto_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 757
    .local v13, times:Lcom/android/server/am/UsageStatsService$TimeStats;
    const/16 v15, 0x2c

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 758
    iget v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    const/4 v7, 0x0

    .local v7, i:I
    :goto_4
    const/16 v15, 0xa

    if-ge v7, v15, :cond_6

    .line 760
    const-string v15, ","

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 761
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 759
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 754
    .end local v7           #i:I
    .end local v13           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_5
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 763
    .restart local v7       #i:I
    .restart local v13       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_6
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 768
    .end local v4           #NC:I
    .end local v5           #activity:Ljava/lang/String;
    .end local v6           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    .end local v7           #i:I
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v13           #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    :cond_7
    const-string v15, "  "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 771
    iget v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 772
    const-string v15, " times, "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    iget-wide v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    move-object v0, v12

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 774
    const-string v15, " ms"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 776
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->size()I

    move-result v4

    .line 777
    .restart local v4       #NC:I
    if-lez v4, :cond_3

    .line 778
    iget-object v15, v11, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchTimes:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .restart local v8       #i$:Ljava/util/Iterator;
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 779
    .restart local v6       #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/UsageStatsService$TimeStats;>;"
    const-string v15, "    "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 780
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 781
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/UsageStatsService$TimeStats;

    .line 782
    .restart local v13       #times:Lcom/android/server/am/UsageStatsService$TimeStats;
    const-string v15, ": "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 783
    iget v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->count:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 784
    const-string v15, " starts"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 785
    const/4 v9, 0x0

    .line 786
    .local v9, lastBin:I
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_6
    const/16 v15, 0x9

    if-ge v7, v15, :cond_9

    .line 787
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    if-eqz v15, :cond_8

    .line 788
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 789
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 790
    const/16 v15, 0x2d

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 792
    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    aget v15, v15, v7

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 795
    :cond_8
    sget-object v15, Lcom/android/server/am/UsageStatsService;->LAUNCH_TIME_BINS:[I

    aget v9, v15, v7

    .line 786
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 797
    :cond_9
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    if-eqz v15, :cond_a

    .line 798
    const-string v15, ", "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    const-string v15, ">="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 800
    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 801
    const-string v15, "ms="

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    iget-object v15, v13, Lcom/android/server/am/UsageStatsService$TimeStats;->times:[I

    const/16 v16, 0x9

    aget v15, v15, v16

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 804
    :cond_a
    const/16 v15, 0xa

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_5
.end method

.method private getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "prefix"

    .prologue
    const/16 v7, 0xa

    const-string v3, "0"

    .line 261
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 262
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v3

    .line 263
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 264
    if-eqz p1, :cond_0

    .line 265
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 268
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x0

    sub-int/2addr v4, v5

    add-int/lit8 v1, v4, 0x1

    .line 269
    .local v1, mm:I
    if-ge v1, v7, :cond_1

    .line 270
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 273
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v5, 0x5

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 274
    .local v0, dd:I
    if-ge v0, v7, :cond_2

    .line 275
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 278
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 279
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 278
    .end local v0           #dd:I
    .end local v1           #mm:I
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;
    .locals 5
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 283
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 284
    .local v2, stream:Ljava/io/FileInputStream;
    invoke-static {v2}, Lcom/android/server/am/UsageStatsService;->readFully(Ljava/io/FileInputStream;)[B

    move-result-object v1

    .line 285
    .local v1, raw:[B
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 286
    .local v0, in:Landroid/os/Parcel;
    array-length v3, v1

    invoke-virtual {v0, v1, v4, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 287
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 288
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 289
    return-object v0
.end method

.method public static getService()Lcom/android/internal/app/IUsageStats;
    .locals 2

    .prologue
    .line 505
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    if-eqz v1, :cond_0

    .line 506
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 510
    :goto_0
    return-object v1

    .line 508
    :cond_0
    const-string v1, "usagestats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 509
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Lcom/android/server/am/UsageStatsService;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IUsageStats;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    .line 510
    sget-object v1, Lcom/android/server/am/UsageStatsService;->sService:Lcom/android/internal/app/IUsageStats;

    goto :goto_0
.end method

.method private getUsageStatsFileListFLOCK()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, fList:[Ljava/lang/String;
    if-nez v1, :cond_0

    .line 335
    const/4 v6, 0x0

    .line 348
    :goto_0
    return-object v6

    .line 337
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v3, fileList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object v0, v1

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_3

    aget-object v2, v0, v4

    .line 339
    .local v2, file:Ljava/lang/String;
    const-string v6, "usage-"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 338
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 342
    :cond_1
    const-string v6, ".bak"

    invoke-virtual {v2, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 343
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    invoke-direct {v6, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto :goto_2

    .line 346
    :cond_2
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v2           #file:Ljava/lang/String;
    :cond_3
    move-object v6, v3

    .line 348
    goto :goto_0
.end method

.method static readFully(Ljava/io/FileInputStream;)[B
    .locals 7
    .parameter "stream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 652
    const/4 v4, 0x0

    .line 653
    .local v4, pos:I
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 654
    .local v1, avail:I
    new-array v2, v1, [B

    .line 656
    .local v2, data:[B
    :cond_0
    :goto_0
    array-length v5, v2

    sub-int/2addr v5, v4

    invoke-virtual {p0, v2, v4, v5}, Ljava/io/FileInputStream;->read([BII)I

    move-result v0

    .line 657
    .local v0, amt:I
    if-gtz v0, :cond_1

    .line 658
    return-object v2

    .line 660
    :cond_1
    add-int/2addr v4, v0

    .line 661
    invoke-virtual {p0}, Ljava/io/FileInputStream;->available()I

    move-result v1

    .line 662
    array-length v5, v2

    sub-int/2addr v5, v4

    if-le v1, v5, :cond_0

    .line 663
    add-int v5, v4, v1

    new-array v3, v5, [B

    .line 664
    .local v3, newData:[B
    invoke-static {v2, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 665
    move-object v2, v3

    goto :goto_0
.end method

.method private readStatsFLOCK(Ljava/io/File;)V
    .locals 7
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-direct {p0, p1}, Lcom/android/server/am/UsageStatsService;->getParcelForFile(Ljava/io/File;)Landroid/os/Parcel;

    move-result-object v1

    .line 311
    .local v1, in:Landroid/os/Parcel;
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 312
    .local v4, vers:I
    const/16 v5, 0x3ed

    if-eq v4, v5, :cond_1

    .line 313
    const-string v5, "UsageStats"

    const-string v6, "Usage stats version changed; dropping"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    :cond_0
    return-void

    .line 316
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 317
    .local v0, N:I
    :goto_0
    if-lez v0, :cond_0

    .line 318
    add-int/lit8 v0, v0, -0x1

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 320
    .local v2, pkgName:Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 324
    new-instance v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;Landroid/os/Parcel;)V

    .line 325
    .local v3, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v5

    .line 326
    :try_start_0
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v6, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private readStatsFromFile()V
    .locals 6

    .prologue
    .line 293
    iget-object v1, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 294
    .local v1, newFile:Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v2

    .line 296
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 297
    invoke-direct {p0, v1}, Lcom/android/server/am/UsageStatsService;->readStatsFLOCK(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    return-void

    .line 300
    :cond_0
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 301
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 303
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 304
    .local v0, e:Ljava/io/IOException;
    :try_start_3
    const-string v3, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reading data from file:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 306
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method private static scanArgs([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "args"
    .parameter "value"

    .prologue
    .line 820
    if-eqz p0, :cond_1

    .line 821
    move-object v1, p0

    .local v1, arr$:[Ljava/lang/String;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, v1, v2

    .line 822
    .local v0, arg:Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 823
    const/4 v4, 0x1

    .line 827
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :goto_1
    return v4

    .line 821
    .restart local v0       #arg:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 827
    .end local v0           #arg:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #i$:I
    .end local v3           #len$:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "args"
    .parameter "value"

    .prologue
    const/4 v3, 0x0

    .line 837
    if-eqz p0, :cond_2

    .line 838
    array-length v0, p0

    .line 839
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 840
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 841
    add-int/lit8 v1, v1, 0x1

    .line 842
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 846
    .end local v0           #N:I
    .end local v1           #i:I
    :goto_1
    return-object v2

    .restart local v0       #N:I
    .restart local v1       #i:I
    :cond_0
    move-object v2, v3

    .line 842
    goto :goto_1

    .line 839
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #N:I
    .end local v1           #i:I
    :cond_2
    move-object v2, v3

    .line 846
    goto :goto_1
.end method

.method private writeStatsFLOCK(Ljava/io/File;)V
    .locals 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 468
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 470
    .local v1, stream:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 471
    .local v0, out:Landroid/os/Parcel;
    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToParcelFLOCK(Landroid/os/Parcel;)V

    .line 472
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 474
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 476
    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 477
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 479
    return-void

    .line 476
    .end local v0           #out:Landroid/os/Parcel;
    :catchall_0
    move-exception v2

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 477
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 476
    throw v2
.end method

.method private writeStatsToFile(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v6, "UsageStats"

    .line 387
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    monitor-enter v6

    .line 388
    :try_start_0
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 389
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mCal:Ljava/util/Calendar;

    const/4 v8, 0x6

    invoke-virtual {v7, v8}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 390
    .local v1, curDay:I
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    if-eq v1, v6, :cond_1

    move v4, v11

    .line 396
    .local v4, dayChanged:Z
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 400
    .local v2, currElapsedTime:J
    if-nez p1, :cond_3

    .line 401
    if-nez v4, :cond_2

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    sub-long v6, v2, v6

    const-wide/32 v8, 0x1b7740

    cmp-long v6, v6, v8

    if-gez v6, :cond_2

    .line 465
    :cond_0
    :goto_1
    return-void

    .line 390
    .end local v1           #curDay:I
    .end local v2           #currElapsedTime:J
    .end local v4           #dayChanged:Z
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .restart local v1       #curDay:I
    :cond_1
    move v4, v10

    .line 391
    goto :goto_0

    .line 406
    .restart local v2       #currElapsedTime:J
    .restart local v4       #dayChanged:Z
    :cond_2
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mUnforcedDiskWriteRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v10, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 407
    new-instance v6, Lcom/android/server/am/UsageStatsService$1;

    const-string v7, "UsageStatsService_DiskWriter"

    invoke-direct {v6, p0, v7}, Lcom/android/server/am/UsageStatsService$1;-><init>(Lcom/android/server/am/UsageStatsService;Ljava/lang/String;)V

    invoke-virtual {v6}, Lcom/android/server/am/UsageStatsService$1;->start()V

    goto :goto_1

    .line 422
    :cond_3
    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v6

    .line 424
    :try_start_2
    const-string v7, "usage-"

    invoke-direct {p0, v7}, Lcom/android/server/am/UsageStatsService;->getCurrentDateStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, backupFile:Ljava/io/File;
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 428
    new-instance v0, Ljava/io/File;

    .end local v0           #backupFile:Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".bak"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 429
    .restart local v0       #backupFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_4

    .line 430
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 431
    const-string v7, "UsageStats"

    const-string v8, "Failed to persist new stats"

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    monitor-exit v6

    goto :goto_1

    .line 463
    .end local v0           #backupFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v7

    .line 435
    .restart local v0       #backupFile:Ljava/io/File;
    :cond_4
    :try_start_3
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 441
    :cond_5
    :try_start_4
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-direct {p0, v7}, Lcom/android/server/am/UsageStatsService;->writeStatsFLOCK(Ljava/io/File;)V

    .line 442
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteElapsedTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v7, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 443
    if-eqz v4, :cond_6

    .line 444
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mLastWriteDay:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 446
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 447
    :try_start_5
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->clear()V

    .line 448
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 449
    :try_start_6
    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mDir:Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFileLeaf:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    .line 450
    invoke-direct {p0}, Lcom/android/server/am/UsageStatsService;->checkFileLimitFLOCK()V

    .line 453
    :cond_6
    if-eqz v0, :cond_7

    .line 454
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 463
    :cond_7
    :goto_2
    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/16 :goto_1

    .line 448
    :catchall_2
    move-exception v8

    :try_start_8
    monitor-exit v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    .line 456
    :catch_0
    move-exception v7

    move-object v5, v7

    .line 457
    .local v5, e:Ljava/io/IOException;
    :try_start_a
    const-string v7, "UsageStats"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed writing stats to file:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    if-eqz v0, :cond_7

    .line 459
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 460
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mFile:Ljava/io/File;

    invoke-virtual {v0, v7}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2
.end method

.method private writeStatsToParcelFLOCK(Landroid/os/Parcel;)V
    .locals 6
    .parameter "out"

    .prologue
    .line 482
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 483
    const/16 v5, 0x3ed

    :try_start_0
    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 484
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 485
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {p1, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 486
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 487
    .local v1, key:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 488
    .local v3, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v3, p1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->writeToParcel(Landroid/os/Parcel;)V

    goto :goto_0

    .line 491
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 492
    return-void
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 854
    const-string v10, "--checkin"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    .line 855
    .local v3, isCheckinRequest:Z
    if-nez v3, :cond_0

    const-string v10, "-c"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_0
    const/4 v10, 0x1

    move v4, v10

    .line 856
    .local v4, isCompactOutput:Z
    :goto_0
    if-nez v3, :cond_1

    const-string v10, "-d"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgs([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_5

    :cond_1
    const/4 v10, 0x1

    move v1, v10

    .line 857
    .local v1, deleteAfterPrint:Z
    :goto_1
    const-string v10, "--packages"

    invoke-static {p3, v10}, Lcom/android/server/am/UsageStatsService;->scanArgsData([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 862
    .local v9, rawPackages:Ljava/lang/String;
    if-nez v1, :cond_2

    .line 863
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    .line 866
    :cond_2
    const/4 v8, 0x0

    .line 867
    .local v8, packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v9, :cond_6

    .line 868
    const-string v10, "*"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    .line 870
    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 871
    .local v7, names:[Ljava/lang/String;
    move-object v0, v7

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v5, :cond_7

    aget-object v6, v0, v2

    .line 872
    .local v6, n:Ljava/lang/String;
    if-nez v8, :cond_3

    .line 873
    new-instance v8, Ljava/util/HashSet;

    .end local v8           #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 875
    .restart local v8       #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_3
    invoke-virtual {v8, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 871
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 855
    .end local v0           #arr$:[Ljava/lang/String;
    .end local v1           #deleteAfterPrint:Z
    .end local v2           #i$:I
    .end local v4           #isCompactOutput:Z
    .end local v5           #len$:I
    .end local v6           #n:Ljava/lang/String;
    .end local v7           #names:[Ljava/lang/String;
    .end local v8           #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v9           #rawPackages:Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    move v4, v10

    goto :goto_0

    .line 856
    .restart local v4       #isCompactOutput:Z
    :cond_5
    const/4 v10, 0x0

    move v1, v10

    goto :goto_1

    .line 878
    .restart local v1       #deleteAfterPrint:Z
    .restart local v8       #packages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v9       #rawPackages:Ljava/lang/String;
    :cond_6
    if-eqz v3, :cond_7

    .line 881
    const-string v10, "UsageStats"

    const-string v11, "Checkin without packages"

    invoke-static {v10, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    :goto_3
    return-void

    .line 885
    :cond_7
    iget-object v10, p0, Lcom/android/server/am/UsageStatsService;->mFileLock:Ljava/lang/Object;

    monitor-enter v10

    .line 886
    :try_start_0
    invoke-direct {p0, p2, v4, v1, v8}, Lcom/android/server/am/UsageStatsService;->collectDumpInfoFLOCK(Ljava/io/PrintWriter;ZZLjava/util/HashSet;)V

    .line 887
    monitor-exit v10

    goto :goto_3

    :catchall_0
    move-exception v11

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v11
.end method

.method public enforceCallingPermission()V
    .locals 5

    .prologue
    .line 607
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 612
    :goto_0
    return-void

    .line 610
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getAllPkgUsageStats()[Lcom/android/internal/os/PkgUsageStats;
    .locals 12

    .prologue
    const/4 v9, 0x0

    .line 632
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v8, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    iget-object v7, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v7

    .line 635
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 636
    .local v3, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v6

    .line 637
    .local v6, size:I
    if-gtz v6, :cond_0

    .line 638
    monitor-exit v7

    move-object v7, v9

    .line 647
    :goto_0
    return-object v7

    .line 640
    :cond_0
    new-array v5, v6, [Lcom/android/internal/os/PkgUsageStats;

    .line 641
    .local v5, retArr:[Lcom/android/internal/os/PkgUsageStats;
    const/4 v0, 0x0

    .line 642
    .local v0, i:I
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 643
    .local v2, key:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v8, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 644
    .local v4, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    new-instance v8, Lcom/android/internal/os/PkgUsageStats;

    iget v9, v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    iget-wide v10, v4, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-direct {v8, v2, v9, v10, v11}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJ)V

    aput-object v8, v5, v0

    .line 645
    add-int/lit8 v0, v0, 0x1

    .line 646
    goto :goto_1

    .line 647
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_1
    monitor-exit v7

    move-object v7, v5

    goto :goto_0

    .line 648
    .end local v0           #i:I
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v5           #retArr:[Lcom/android/internal/os/PkgUsageStats;
    .end local v6           #size:I
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v8
.end method

.method public getPkgUsageStats(Landroid/content/ComponentName;)Lcom/android/internal/os/PkgUsageStats;
    .locals 7
    .parameter "componentName"

    .prologue
    const/4 v4, 0x0

    .line 615
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 618
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_1

    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    move-object v2, v4

    .line 627
    :goto_0
    return-object v2

    .line 622
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 623
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 624
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_2

    .line 625
    monitor-exit v2

    move-object v2, v4

    goto :goto_0

    .line 627
    :cond_2
    new-instance v3, Lcom/android/internal/os/PkgUsageStats;

    iget v4, v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mLaunchCount:I

    iget-wide v5, v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->mUsageTime:J

    invoke-direct {v3, v0, v4, v5, v6}, Lcom/android/internal/os/PkgUsageStats;-><init>(Ljava/lang/String;IJ)V

    monitor-exit v2

    move-object v2, v3

    goto :goto_0

    .line 628
    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public noteLaunchTime(Landroid/content/ComponentName;I)V
    .locals 4
    .parameter "componentName"
    .parameter "millis"

    .prologue
    .line 588
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 590
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 604
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 596
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    .line 598
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 599
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 600
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_2

    .line 601
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, p2}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchTime(Ljava/lang/String;I)V

    .line 603
    :cond_2
    monitor-exit v2

    goto :goto_0

    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public notePauseComponent(Landroid/content/ComponentName;)V
    .locals 6
    .parameter "componentName"

    .prologue
    const/4 v4, 0x0

    .line 557
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 559
    iget-object v2, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 561
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 563
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    monitor-exit v2

    .line 585
    :goto_0
    return-void

    .line 565
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_1
    iget-boolean v3, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-nez v3, :cond_2

    .line 568
    monitor-exit v2

    goto :goto_0

    .line 581
    .end local v0           #pkgName:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 570
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 574
    iget-object v3, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 575
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_3

    .line 577
    const-string v3, "UsageStats"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No package stats for pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    monitor-exit v2

    goto :goto_0

    .line 580
    :cond_3
    invoke-virtual {v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 581
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 584
    invoke-direct {p0, v4}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    goto :goto_0
.end method

.method public noteResumeComponent(Landroid/content/ComponentName;)V
    .locals 9
    .parameter "componentName"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 514
    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->enforceCallingPermission()V

    .line 516
    iget-object v4, p0, Lcom/android/server/am/UsageStatsService;->mStatsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 517
    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .local v0, pkgName:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 519
    .end local v0           #pkgName:Ljava/lang/String;
    :cond_0
    monitor-exit v4

    .line 554
    :goto_0
    return-void

    .line 522
    .restart local v0       #pkgName:Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 523
    .local v3, samePackage:Z
    iget-boolean v5, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    if-eqz v5, :cond_2

    .line 524
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v5, :cond_2

    .line 529
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 530
    .local v1, pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-eqz v1, :cond_2

    .line 531
    invoke-virtual {v1}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updatePause()V

    .line 536
    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    :cond_2
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move v2, v7

    .line 539
    .local v2, sameComp:Z
    :goto_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/UsageStatsService;->mIsResumed:Z

    .line 540
    iput-object v0, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedPkg:Ljava/lang/String;

    .line 541
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    .line 544
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .line 545
    .restart local v1       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    if-nez v1, :cond_3

    .line 546
    new-instance v1, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;

    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    invoke-direct {v1, p0}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;-><init>(Lcom/android/server/am/UsageStatsService;)V

    .line 547
    .restart local v1       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mStats:Ljava/util/Map;

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    :cond_3
    if-nez v3, :cond_6

    move v5, v7

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->updateResume(Z)V

    .line 550
    if-nez v2, :cond_4

    .line 551
    iget-object v5, p0, Lcom/android/server/am/UsageStatsService;->mLastResumedComp:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;->addLaunchCount(Ljava/lang/String;)V

    .line 553
    :cond_4
    monitor-exit v4

    goto :goto_0

    .end local v0           #pkgName:Ljava/lang/String;
    .end local v1           #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    .end local v2           #sameComp:Z
    .end local v3           #samePackage:Z
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v0       #pkgName:Ljava/lang/String;
    .restart local v3       #samePackage:Z
    :cond_5
    move v2, v8

    .line 536
    goto :goto_1

    .restart local v1       #pus:Lcom/android/server/am/UsageStatsService$PkgUsageStatsExtended;
    .restart local v2       #sameComp:Z
    :cond_6
    move v5, v8

    .line 549
    goto :goto_2
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 495
    iput-object p1, p0, Lcom/android/server/am/UsageStatsService;->mContext:Landroid/content/Context;

    .line 496
    const-string v0, "usagestats"

    invoke-virtual {p0}, Lcom/android/server/am/UsageStatsService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 497
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 500
    const-string v0, "UsageStats"

    const-string v1, "Writing usage stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/UsageStatsService;->writeStatsToFile(Z)V

    .line 502
    return-void
.end method
