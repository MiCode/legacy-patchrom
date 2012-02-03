.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settings/applications/ApplicationsState$MainHandler;,
        Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settings/applications/ApplicationsState$AppEntry;,
        Lcom/android/settings/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settings/applications/ApplicationsState$AppFilter;,
        Lcom/android/settings/applications/ApplicationsState$Callbacks;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field static sInstance:Lcom/android/settings/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurId:J

.field final mEntriesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field mRebuildAsync:Z

.field mRebuildComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field mRebuildRequested:Z

.field mRebuildResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field final mRebuildSync:Ljava/lang/Object;

.field mResumed:Z

.field final mThread:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 146
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 154
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 164
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->THIRD_PARTY_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 179
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->ON_SD_CARD_FILTER:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 323
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4
    .parameter "app"

    .prologue
    const-wide/16 v1, 0x1

    .line 335
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 202
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    .line 203
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 205
    iput-wide v1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    .line 209
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    .line 319
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    .line 336
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 337
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 338
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 340
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 341
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    .line 357
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 359
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    :goto_0
    :try_start_1
    monitor-exit v0

    .line 363
    return-void

    .line 362
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 360
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->getTotalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;
    .locals 2
    .parameter "app"

    .prologue
    .line 327
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 328
    :try_start_0
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    if-nez v1, :cond_0

    .line 329
    new-instance v1, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    .line 331
    :cond_0
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->sInstance:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v0

    return-object v1

    .line 332
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2
    .parameter "size"

    .prologue
    .line 640
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 643
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTotalSize(Landroid/content/pm/PackageStats;)J
    .locals 4
    .parameter "ps"

    .prologue
    .line 633
    if-eqz p1, :cond_0

    .line 634
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 636
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "str"

    .prologue
    .line 65
    sget-object v1, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v1}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, tmp:Ljava/lang/String;
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 563
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :try_start_1
    iget-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v3, :cond_0

    .line 571
    monitor-exit v2

    .line 593
    :goto_0
    return-void

    .line 573
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 576
    monitor-exit v2

    goto :goto_0

    .line 589
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 590
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 591
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "ApplicationsState"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 578
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x2200

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 581
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 583
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 585
    :cond_2
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 586
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 589
    :cond_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method ensureIcon(Lcom/android/settings/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .parameter "entry"

    .prologue
    .line 520
    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 526
    :goto_0
    return-void

    .line 523
    :cond_0
    monitor-enter p1

    .line 524
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/content/pm/PackageManager;)Z

    .line 525
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getEntry(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 5
    .parameter "packageName"

    .prologue
    .line 503
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 504
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 505
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_0

    .line 506
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 507
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 508
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v4, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 509
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 515
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    monitor-exit v3

    return-object v0

    .line 506
    .restart local v1       #i:I
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v1           #i:I
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6
    .parameter "info"

    .prologue
    .line 617
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 619
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-nez v0, :cond_1

    .line 621
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->mCurId:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 622
    .restart local v0       #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 627
    :cond_0
    :goto_0
    return-object v0

    .line 624
    :cond_1
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 625
    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method handleRebuildList()V
    .locals 11

    .prologue
    .line 442
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 443
    :try_start_0
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v9, :cond_0

    .line 444
    monitor-exit v8

    .line 499
    :goto_0
    return-void

    .line 447
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 448
    .local v3, filter:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .line 449
    .local v1, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    .line 450
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 451
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .line 452
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    const/4 v8, -0x2

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    .line 456
    if-eqz v3, :cond_1

    .line 457
    invoke-interface {v3}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 461
    :cond_1
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 462
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 463
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 465
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 467
    .local v4, filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 468
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ApplicationInfo;

    .line 469
    .local v6, info:Landroid/content/pm/ApplicationInfo;
    if-eqz v3, :cond_2

    invoke-interface {v3, v6}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->filterApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 470
    :cond_2
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v8

    .line 472
    :try_start_2
    invoke-virtual {p0, v6}, Lcom/android/settings/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 473
    .local v2, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v9}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 475
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 467
    .end local v2           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 452
    .end local v0           #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .end local v1           #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v3           #filter:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    .end local v4           #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .end local v5           #i:I
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v9

    :try_start_3
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v9

    .line 463
    .restart local v1       #comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v3       #filter:Lcom/android/settings/applications/ApplicationsState$AppFilter;
    :catchall_1
    move-exception v9

    :try_start_4
    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v9

    .line 477
    .restart local v0       #apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    .restart local v4       #filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    .restart local v5       #i:I
    .restart local v6       #info:Landroid/content/pm/ApplicationInfo;
    :catchall_2
    move-exception v9

    :try_start_5
    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v9

    .line 481
    .end local v6           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 483
    iget-object v8, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v8

    .line 484
    :try_start_6
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    if-nez v9, :cond_5

    .line 485
    iget-boolean v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildAsync:Z

    if-nez v9, :cond_6

    .line 486
    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    .line 487
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->notifyAll()V

    .line 496
    :cond_5
    :goto_2
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 498
    const/16 v8, 0xa

    invoke-static {v8}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 489
    :cond_6
    :try_start_7
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v9

    if-nez v9, :cond_5

    .line 490
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v10, 0x1

    invoke-virtual {v9, v10, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 492
    .local v7, msg:Landroid/os/Message;
    iget-object v9, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v9, v7}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 496
    .end local v7           #msg:Landroid/os/Message;
    :catchall_3
    move-exception v9

    monitor-exit v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v9
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;)I
    .locals 3
    .parameter "pkgName"

    .prologue
    .line 553
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 558
    :goto_1
    return v1

    .line 553
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 558
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method pause()V
    .locals 2

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v0

    .line 401
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 402
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 404
    monitor-exit v0

    .line 405
    return-void

    .line 404
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method rebuild(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 9
    .parameter "filter"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/applications/ApplicationsState$AppFilter;",
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, comparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Lcom/android/settings/applications/ApplicationsState$AppEntry;>;"
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    monitor-enter v4

    .line 410
    const/4 v5, 0x1

    :try_start_0
    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildRequested:Z

    .line 411
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildAsync:Z

    .line 412
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildFilter:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 413
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildComparator:Ljava/util/Comparator;

    .line 414
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    .line 415
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 416
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 420
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0xfa

    add-long v2, v5, v7

    .line 422
    .local v2, waitend:J
    :goto_0
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    if-nez v5, :cond_1

    .line 423
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 424
    .local v0, now:J
    cmp-long v5, v0, v2

    if-ltz v5, :cond_2

    .line 433
    .end local v0           #now:J
    :cond_1
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildAsync:Z

    .line 435
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildResult:Ljava/util/ArrayList;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v5

    .line 428
    .restart local v0       #now:J
    :cond_2
    :try_start_1
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState;->mRebuildSync:Ljava/lang/Object;

    sub-long v6, v2, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 429
    :catch_0
    move-exception v5

    goto :goto_0

    .line 436
    .end local v0           #now:J
    .end local v2           #waitend:J
    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v5
.end method

.method removePackage(Ljava/lang/String;)V
    .locals 5
    .parameter "pkgName"

    .prologue
    .line 596
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 598
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;)I

    move-result v1

    .line 600
    .local v1, idx:I
    if-ltz v1, :cond_1

    .line 601
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 603
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 604
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 607
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 608
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 609
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mMainHandler:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 613
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :cond_1
    monitor-exit v2

    .line 614
    return-void

    .line 613
    .end local v1           #idx:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method requestSize(Ljava/lang/String;)V
    .locals 4
    .parameter "packageName"

    .prologue
    .line 530
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 531
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 532
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_0

    .line 533
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 536
    :cond_0
    monitor-exit v1

    .line 537
    return-void

    .line 536
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method resume(Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 6
    .parameter "callbacks"

    .prologue
    .line 367
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 368
    :try_start_0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mCurCallbacks:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 369
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 370
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v3, :cond_0

    .line 371
    new-instance v3, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v5, 0x0

    invoke-direct {v3, p0, v5}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 372
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v3}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 374
    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x2200

    invoke-virtual {v3, v5}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 377
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    if-nez v3, :cond_1

    .line 378
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 380
    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 381
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    const/4 v5, 0x1

    iput-boolean v5, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    .line 384
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 385
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 386
    .local v0, entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    if-eqz v0, :cond_3

    .line 387
    iput-object v2, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 383
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 390
    .end local v0           #entry:Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 391
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 392
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v5, 0x2

    invoke-virtual {v3, v5}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 395
    :cond_5
    monitor-exit v4

    .line 396
    return-void

    .line 395
    .end local v1           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method sumCacheSizes()J
    .locals 7

    .prologue
    .line 540
    const-wide/16 v1, 0x0

    .line 542
    .local v1, sum:J
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->mEntriesMap:Ljava/util/HashMap;

    monitor-enter v4

    .line 544
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    sub-int v0, v3, v5

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_0

    .line 545
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v5, v3, Lcom/android/settings/applications/ApplicationsState$SizeInfo;->cacheSize:J

    add-long/2addr v1, v5

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 548
    :cond_0
    monitor-exit v4

    .line 549
    return-wide v1

    .line 548
    .end local v0           #i:I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
