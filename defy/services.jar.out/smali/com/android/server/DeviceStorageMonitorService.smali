.class Lcom/android/server/DeviceStorageMonitorService;
.super Landroid/os/Binder;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;
    }
.end annotation


# static fields
.field private static final CACHE_PATH:Ljava/lang/String; = "/cache"

.field private static final DATA_PATH:Ljava/lang/String; = "/data"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_DISK_FREE_CHANGE_REPORTING_THRESHOLD:J = 0x200000L

.field private static final DEFAULT_FREE_STORAGE_LOG_INTERVAL_IN_MINUTES:I = 0x2d0

.field private static final DEFAULT_FULL_THRESHOLD_BYTES:I = 0x100000

.field private static final DEFAULT_THRESHOLD_PERCENTAGE:I = 0xa

.field private static final DEFAULT_VOLUME_MONITOR_INTERVAL:I = 0x5

.field private static final DEFAULT_VOLUME_THRESHOLD_PERCENTAGE:I = 0x3

.field private static final DEVICE_MEMORY_WHAT:I = 0x1

.field private static final LOW_MEMORY_NOTIFICATION_ID:I = 0x1

.field private static final LOW_VOLUME_NOTIFICATION_ID:I = 0x2

.field private static final MONITOR_INTERVAL:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final SYSTEM_PATH:Ljava/lang/String; = "/system"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final _FALSE:I = 0x0

.field private static final _TRUE:I = 0x1

.field private static final localLOGV:Z


# instance fields
.field private mCacheFileStats:Landroid/os/StatFs;

.field private mCheckVolume:[Z

.field private mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

.field private mClearSucceeded:Z

.field private mClearingCache:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCountdown:I

.field private mDataFileStats:Landroid/os/StatFs;

.field private mEmmcEnabled:Z

.field private mFreeMem:J

.field private mFreeVolume:[J

.field mHandler:Landroid/os/Handler;

.field private mLastReportedFreeMem:J

.field private mLastReportedFreeMemTime:J

.field private mLowMemFlag:Z

.field private mLowVolumeFlag:[Z

.field private mMemFullFlag:Z

.field private mMemFullThreshold:I

.field private mMemLowThreshold:J

.field private mMountService:Landroid/os/storage/IMountService;

.field private mStorageFullIntent:Landroid/content/Intent;

.field private mStorageLowIntent:Landroid/content/Intent;

.field private mStorageNotFullIntent:Landroid/content/Intent;

.field private mStorageOkIntent:Landroid/content/Intent;

.field private mSystemFileStats:Landroid/os/StatFs;

.field private mThreadStartTime:J

.field private mTotalMemory:J

.field private mUnmountReceiver:Landroid/content/BroadcastReceiver;

.field private mVolumeFileStats:[Landroid/os/StatFs;

.field private mVolumeMonitorInterval:I

.field private mVolumeThresholdPercentage:I

.field private mVolumes:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x1000

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    iput-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    const-string v0, "ro.mot.internalsdcard"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v5

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mEmmcEnabled:Z

    iput-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeVolume:[J

    iput-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    iput-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    iput-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    iput-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    iput v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeMonitorInterval:I

    iput v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCountdown:I

    iput v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeThresholdPercentage:I

    new-instance v0, Lcom/android/server/DeviceStorageMonitorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    iput-object p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/system"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/cache"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemThreshold()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->getMemFullThreshold()I

    move-result v0

    iput v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    iget-boolean v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mEmmcEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->initVolume()V

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void

    :cond_1
    move v0, v2

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/server/DeviceStorageMonitorService;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->checkMemory(Z)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/server/DeviceStorageMonitorService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/DeviceStorageMonitorService;ZJ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/DeviceStorageMonitorService;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/DeviceStorageMonitorService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/DeviceStorageMonitorService;)[Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/DeviceStorageMonitorService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/DeviceStorageMonitorService;->cancelVolumeNotification(I)V

    return-void
.end method

.method private final cancelFullNotification()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageNotFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final cancelNotification()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->removeStickyBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageOkIntent:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final cancelVolumeNotification(I)V
    .locals 3
    .parameter "index"

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .local v0, mNotificationMgr:Landroid/app/NotificationManager;
    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method private final checkMemory(Z)V
    .locals 9
    .parameter "checkCache"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "DeviceStorageMonitorService"

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    sub-long v0, v2, v4

    .local v0, diffTime:J
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const-string v2, "DeviceStorageMonitorService"

    const-string v2, "Thread that clears cache file seems to run for ever"

    invoke-static {v8, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #diffTime:J
    :cond_0
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mEmmcEnabled:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCountdown:I

    sub-int/2addr v2, v6

    iput v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCountdown:I

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatVolume()V

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->checkVolume()V

    iget v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeMonitorInterval:I

    iput v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mCountdown:I

    :cond_1
    const-wide/32 v2, 0xea60

    invoke-direct {p0, v6, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->restatDataDir()V

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget-wide v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mThreadStartTime:J

    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->clearCache()V

    :cond_3
    :goto_1
    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    iget v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullThreshold:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendFullNotification()V

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_0

    :cond_4
    const-string v2, "DeviceStorageMonitorService"

    const-string v2, "Running low on memory. Sending notification"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->sendNotification()V

    iput-boolean v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    if-eqz v2, :cond_3

    const-string v2, "DeviceStorageMonitorService"

    const-string v2, "Memory available. Cancelling notification"

    invoke-static {v8, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelNotification()V

    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowMemFlag:Z

    goto :goto_1

    :cond_6
    iget-boolean v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/server/DeviceStorageMonitorService;->cancelFullNotification()V

    iput-boolean v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemFullFlag:Z

    goto :goto_0
.end method

.method private checkVolume()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->getVolumeThreshold(I)J

    move-result-wide v1

    .local v1, volumeThreshold:J
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeVolume:[J

    aget-wide v3, v3, v0

    cmp-long v3, v3, v1

    if-gez v3, :cond_2

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    aget-boolean v3, v3, v0

    if-nez v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->sendVolumeNotification(I)V

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    const/4 v4, 0x1

    aput-boolean v4, v3, v0

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/DeviceStorageMonitorService;->cancelVolumeNotification(I)V

    iget-object v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    const/4 v4, 0x0

    aput-boolean v4, v3, v0

    goto :goto_1

    .end local v1           #volumeThreshold:J
    :cond_3
    return-void
.end method

.method private final clearCache()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-direct {v1, p0}, Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;-><init>(Lcom/android/server/DeviceStorageMonitorService;)V

    iput-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    :try_start_0
    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mMemLowThreshold:J

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearCacheObserver:Lcom/android/server/DeviceStorageMonitorService$CachePackageDataObserver;

    invoke-interface {v1, v2, v3, v4}, Landroid/content/pm/IPackageManager;->freeStorageAndNotify(JLandroid/content/pm/IPackageDataObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get handle for PackageManger Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearingCache:Z

    iput-boolean v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mClearSucceeded:Z

    goto :goto_0
.end method

.method private getMemFullThreshold()I
    .locals 4

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_full_threshold_bytes"

    const/high16 v3, 0x10

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, value:I
    return v0
.end method

.method private getMemThreshold()J
    .locals 5

    .prologue
    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "sys_storage_threshold_percentage"

    const/16 v3, 0xa

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .local v0, value:I
    const-string v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mTotalMemory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mTotalMemory:J

    int-to-long v3, v0

    mul-long/2addr v1, v3

    return-wide v1
.end method

.method private getVolumeThreshold(I)J
    .locals 4
    .parameter "i"

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x64

    div-long/2addr v0, v2

    iget v2, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeThresholdPercentage:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method private initVolume()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const-string v5, "DeviceStorageMonitorService"

    const-string v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    if-nez v4, :cond_0

    const-string v4, "DeviceStorageMonitorService"

    const-string v4, "Unable to connect to mount service! - is it running yet?"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mMountService:Landroid/os/storage/IMountService;

    invoke-interface {v4}, Landroid/os/storage/IMountService;->getVolumeList()[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    if-nez v4, :cond_1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    array-length v3, v4

    .local v3, maxVolume:I
    new-array v4, v3, [J

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeVolume:[J

    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    new-array v4, v3, [Landroid/os/StatFs;

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    new-array v4, v3, [Z

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mLowVolumeFlag:[Z

    aput-boolean v7, v4, v1

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeVolume:[J

    const-wide/16 v5, -0x1

    aput-wide v5, v4, v1

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    const/4 v5, 0x0

    aput-object v5, v4, v1

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    aput-boolean v7, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #i:I
    .end local v3           #maxVolume:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Landroid/os/RemoteException;
    const-string v4, "DeviceStorageMonitorService"

    const-string v4, "Unable to get volume list"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v7, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v1       #i:I
    .restart local v3       #maxVolume:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_threshold_precentage"

    const/4 v6, 0x3

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeThresholdPercentage:I

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "volume_monitor_interval"

    const/4 v6, 0x5

    invoke-static {v4, v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeMonitorInterval:I

    iget v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeMonitorInterval:I

    iput v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCountdown:I

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .local v2, iFilter:Landroid/content/IntentFilter;
    const-string v4, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "file"

    invoke-virtual {v2, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mUnmountReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private postCheckMemoryMsg(ZJ)V
    .locals 5
    .parameter "clearCache"
    .parameter "delay"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v1, v3, v2, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method private final restatDataDir()V
    .locals 21

    .prologue
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    const-string v17, "/data"

    invoke-virtual/range {v16 .. v17}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mDataFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const-string v16, "debug.freemem"

    invoke-static/range {v16 .. v16}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .local v5, debugFreeMem:Ljava/lang/String;
    const-string v16, ""

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_0

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "sys_free_storage_log_interval"

    const-wide/16 v18, 0x2d0

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v16

    const-wide/16 v18, 0x3c

    mul-long v16, v16, v18

    const-wide/16 v18, 0x3e8

    mul-long v8, v16, v18

    .local v8, freeMemLogInterval:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .local v3, currTime:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    move-wide/from16 v16, v0

    sub-long v16, v3, v16

    cmp-long v16, v16, v8

    if-ltz v16, :cond_2

    :cond_1
    move-wide v0, v3

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    const-wide/16 v12, -0x1

    .local v12, mFreeSystem:J
    const-wide/16 v10, -0x1

    .local v10, mFreeCache:J
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    const-string v17, "/system"

    invoke-virtual/range {v16 .. v17}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mSystemFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v12, v16, v18

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    const-string v17, "/cache"

    invoke-virtual/range {v16 .. v17}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v16

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v18

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    mul-long v10, v16, v18

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mCacheFileStats:Landroid/os/StatFs;

    move-object/from16 v16, v0

    const-string v17, "/cache"

    invoke-virtual/range {v16 .. v17}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    const/16 v16, 0xaba

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    const/16 v18, 0x2

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .end local v10           #mFreeCache:J
    .end local v12           #mFreeSystem:J
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v16, v0

    const-string v17, "disk_free_change_reporting_threshold"

    const-wide/32 v18, 0x200000

    invoke-static/range {v16 .. v19}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v14

    .local v14, threshold:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    move-wide/from16 v18, v0

    sub-long v6, v16, v18

    .local v6, delta:J
    cmp-long v16, v6, v14

    if-gtz v16, :cond_3

    move-wide v0, v14

    neg-long v0, v0

    move-wide/from16 v16, v0

    cmp-long v16, v6, v16

    if-gez v16, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/DeviceStorageMonitorService;->mLastReportedFreeMem:J

    const/16 v16, 0xab8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    move-wide/from16 v17, v0

    invoke-static/range {v16 .. v18}, Landroid/util/EventLog;->writeEvent(IJ)I

    :cond_4
    return-void

    .end local v6           #delta:J
    .end local v14           #threshold:J
    .restart local v10       #mFreeCache:J
    .restart local v12       #mFreeSystem:J
    :catch_0
    move-exception v16

    goto :goto_2

    :catch_1
    move-exception v16

    goto/16 :goto_1

    .end local v3           #currTime:J
    .end local v5           #debugFreeMem:Ljava/lang/String;
    .end local v8           #freeMemLogInterval:J
    .end local v10           #mFreeCache:J
    .end local v12           #mFreeSystem:J
    :catch_2
    move-exception v16

    goto/16 :goto_0
.end method

.method private restatVolume()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    aget-object v3, v4, v2

    .local v3, path:Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    aget-boolean v4, v4, v2

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    aget-object v4, v4, v2

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    new-instance v5, Landroid/os/StatFs;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    aput-object v5, v4, v2

    :cond_2
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/os/StatFs;->restat(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeVolume:[J

    iget-object v5, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v5, v5

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumeFileStats:[Landroid/os/StatFs;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v7, v7

    mul-long/2addr v5, v7

    aput-wide v5, v4, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "debug.freevolume"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, debugFree:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeVolume:[J

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    aput-wide v5, v4, v2

    goto :goto_1

    .end local v0           #debugFree:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, e:Ljava/lang/Exception;
    iget-object v4, p0, Lcom/android/server/DeviceStorageMonitorService;->mCheckVolume:[Z

    const/4 v5, 0x0

    aput-boolean v5, v4, v2

    goto :goto_2

    .end local v1           #e:Ljava/lang/Exception;
    .end local v3           #path:Ljava/lang/String;
    :cond_3
    return-void
.end method

.method private final sendFullNotification()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageFullIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendNotification()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/16 v6, 0xab9

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-static {v6, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.intent.action.MANAGE_PACKAGE_STORAGE"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, lowMemIntent:Landroid/content/Intent;
    const-string v6, "memory"

    iget-wide v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mFreeMem:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const/high16 v6, 0x1000

    invoke-virtual {v2, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v7, "notification"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x1040302

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .local v5, title:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v7, 0x1040303

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, details:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v6, v9, v2, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .local v1, intent:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .local v4, notification:Landroid/app/Notification;
    const v6, 0x10802d2

    iput v6, v4, Landroid/app/Notification;->icon:I

    iput-object v5, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v6, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Landroid/app/Notification;->flags:I

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v6, v5, v0, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object v6, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mStorageLowIntent:Landroid/content/Intent;

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private final sendVolumeNotification(I)V
    .locals 10
    .parameter "index"

    .prologue
    const/4 v9, 0x0

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const-string v8, "notification"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    .local v3, mNotificationMgr:Landroid/app/NotificationManager;
    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mVolumes:[Ljava/lang/String;

    aget-object v7, v7, p1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .local v2, isInt:Z
    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    const v8, 0x104046d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .local v6, title:Ljava/lang/CharSequence;
    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    const v8, 0x104046e

    :goto_0
    invoke-virtual {v7, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .local v0, details:Ljava/lang/CharSequence;
    new-instance v1, Landroid/content/Intent;

    const-string v7, "com.motorola.intent.action.USB_LAUNCH_FILE_MANAGER"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v1, intent:Landroid/content/Intent;
    const-string v7, "com.motorola.filemanager"

    const-string v8, "com.motorola.filemanager.FileManager"

    invoke-virtual {v1, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x1000

    invoke-virtual {v1, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-static {v7, v9, v1, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .local v5, pi:Landroid/app/PendingIntent;
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    .local v4, notification:Landroid/app/Notification;
    const v7, 0x10802d2

    iput v7, v4, Landroid/app/Notification;->icon:I

    iput-object v6, v4, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iget v7, v4, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v4, Landroid/app/Notification;->flags:I

    iget-object v7, p0, Lcom/android/server/DeviceStorageMonitorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v6, v0, v5}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    add-int/lit8 v7, p1, 0x2

    invoke-virtual {v3, v7, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    .end local v0           #details:Ljava/lang/CharSequence;
    .end local v1           #intent:Landroid/content/Intent;
    .end local v4           #notification:Landroid/app/Notification;
    .end local v5           #pi:Landroid/app/PendingIntent;
    :cond_0
    const v8, 0x104046f

    goto :goto_0
.end method


# virtual methods
.method public updateMemory()V
    .locals 4

    .prologue
    invoke-static {}, Lcom/android/server/DeviceStorageMonitorService;->getCallingUid()I

    move-result v0

    .local v0, callingUid:I
    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/DeviceStorageMonitorService;->postCheckMemoryMsg(ZJ)V

    goto :goto_0
.end method
