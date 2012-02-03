.class Lcom/android/server/BatteryService;
.super Landroid/os/Binder;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/BatteryService$PowerSavingModeObserver;,
        Lcom/android/server/BatteryService$BootCompletedReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_POWERSAVINGMODE:Ljava/lang/String; = "android.settings.POWERSAVING_POPUP"

.field private static final BATTERY_PLUGGED_NONE:I = 0x0

.field static final BATTERY_SCALE:I = 0x64

.field private static final BATTERY_STATS_SERVICE_NAME:Ljava/lang/String; = "batteryinfo"

.field private static final CRITICAL_BATTERY_LEVEL:I = 0x5

.field private static final DUMPSYS_ARGS:[Ljava/lang/String; = null

.field private static final DUMPSYS_DATA_PATH:Ljava/lang/String; = "/data/system/"

.field private static final DUMP_MAX_LENGTH:I = 0x6000

.field private static final LOCAL_LOGV:Z = false

.field private static final POWERSAVINGMODE_DEFAULT_LEVEL:I = 0x32

.field private static final POWERSAVINGMODE_DEFAULT_STATUS:I = 0x0

.field private static final POWERSAVINGMODE_LEVEL:Ljava/lang/String; = "psm_battery_level"

.field private static final POWERSAVINGMODE_ON_STATUS:I = 0x1

.field private static final POWERSAVINGMODE_STATUS:Ljava/lang/String; = "new_power_saving_mode"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAcOnline:Z

.field private mBatteryHealth:I

.field private mBatteryLevel:I

.field private mBatteryLevelCritical:Z

.field private mBatteryPresent:Z

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mBatteryStatus:I

.field private mBatteryTechnology:Ljava/lang/String;

.field private mBatteryTemperature:I

.field private mBatteryVoltage:I

.field private mBootCompleted:Z

.field private final mContext:Landroid/content/Context;

.field private mDischargeStartLevel:I

.field private mDischargeStartTime:J

.field private mIsPowerSavingModeEnabled:Z

.field private mLastBatteryHealth:I

.field private mLastBatteryLevel:I

.field private mLastBatteryLevelCritical:Z

.field private mLastBatteryPresent:Z

.field private mLastBatteryStatus:I

.field private mLastBatteryTemperature:I

.field private mLastBatteryVoltage:I

.field private mLastPlugType:I

.field private mLowBatteryCloseWarningLevel:I

.field private mLowBatteryWarningLevel:I

.field private mPlugNotification:Landroid/app/Notification;

.field private mPlugType:I

.field private mPowerSavingModeLevel:I

.field private mPowerSavingModeObserver:Lcom/android/server/BatteryService$PowerSavingModeObserver;

.field private mSentLowBatteryBroadcast:Z

.field private mUEventObserver:Landroid/os/UEventObserver;

.field private mUsbOnline:Z

.field private mWasBatteryLowButNotSend:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 81
    const-class v0, Lcom/android/server/BatteryService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    .line 92
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "--checkin"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "-u"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "psm_battery_level"

    const-string v6, "new_power_saving_mode"

    .line 178
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 133
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 138
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 140
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 144
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    .line 147
    iput-boolean v4, p0, Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z

    .line 234
    new-instance v2, Lcom/android/server/BatteryService$1;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$1;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    .line 179
    iput-object p1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    .line 180
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 182
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    .line 184
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    .line 187
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 188
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v2, "psm_battery_level"

    const/16 v2, 0x32

    invoke-static {v0, v7, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/server/BatteryService;->mPowerSavingModeLevel:I

    .line 189
    const-string v2, "new_power_saving_mode"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_0

    move v2, v5

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z

    .line 191
    new-instance v2, Lcom/android/server/BatteryService$PowerSavingModeObserver;

    invoke-direct {v2, p0}, Lcom/android/server/BatteryService$PowerSavingModeObserver;-><init>(Lcom/android/server/BatteryService;)V

    iput-object v2, p0, Lcom/android/server/BatteryService;->mPowerSavingModeObserver:Lcom/android/server/BatteryService$PowerSavingModeObserver;

    .line 192
    const-string v2, "psm_battery_level"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mPowerSavingModeObserver:Lcom/android/server/BatteryService$PowerSavingModeObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 193
    const-string v2, "new_power_saving_mode"

    invoke-static {v6}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/BatteryService;->mPowerSavingModeObserver:Lcom/android/server/BatteryService$PowerSavingModeObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 195
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 196
    .local v1, filter:Landroid/content/IntentFilter;
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1           #filter:Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 197
    .restart local v1       #filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 198
    iget-object v2, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/BatteryService$BootCompletedReceiver;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/BatteryService$BootCompletedReceiver;-><init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService$1;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 200
    iget-object v2, p0, Lcom/android/server/BatteryService;->mUEventObserver:Landroid/os/UEventObserver;

    const-string v3, "SUBSYSTEM=power_supply"

    invoke-virtual {v2, v3}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 203
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    .line 204
    return-void

    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    move v2, v4

    .line 189
    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyIfPowerSavingMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/BatteryService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/android/server/BatteryService;->mPowerSavingModeLevel:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/BatteryService;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/android/server/BatteryService;->mPowerSavingModeLevel:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/BatteryService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/BatteryService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/BatteryService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/server/BatteryService;->update()V

    return-void
.end method

.method private final getIcon(I)I
    .locals 2
    .parameter "level"

    .prologue
    .line 624
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 625
    const v0, 0x10802d8

    .line 631
    :goto_0
    return v0

    .line 626
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 629
    :cond_1
    const v0, 0x10802c2

    goto :goto_0

    .line 631
    :cond_2
    const v0, 0x10802df

    goto :goto_0
.end method

.method private final logBatteryStats()V
    .locals 12

    .prologue
    const-string v9, "BATTERY_DISCHARGE_INFO"

    const-string v11, "failed to delete temporary dumpsys file: "

    const-string v10, "failed to close dumpsys output stream"

    .line 558
    const-string v7, "batteryinfo"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 559
    .local v0, batteryInfoService:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 593
    :cond_0
    :goto_0
    return-void

    .line 561
    :cond_1
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v8, "dropbox"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/DropBoxManager;

    .line 562
    .local v1, db:Landroid/os/DropBoxManager;
    if-eqz v1, :cond_0

    const-string v7, "BATTERY_DISCHARGE_INFO"

    invoke-virtual {v1, v9}, Landroid/os/DropBoxManager;->isTagEnabled(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 564
    const/4 v2, 0x0

    .line 565
    .local v2, dumpFile:Ljava/io/File;
    const/4 v4, 0x0

    .line 568
    .local v4, dumpStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/File;

    const-string v7, "/data/system/batteryinfo.dump"

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 569
    .end local v2           #dumpFile:Ljava/io/File;
    .local v3, dumpFile:Ljava/io/File;
    :try_start_1
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    .line 570
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .local v5, dumpStream:Ljava/io/FileOutputStream;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v7

    sget-object v8, Lcom/android/server/BatteryService;->DUMPSYS_ARGS:[Ljava/lang/String;

    invoke-interface {v0, v7, v8}, Landroid/os/IBinder;->dump(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 571
    invoke-static {v5}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 574
    const-string v7, "BATTERY_DISCHARGE_INFO"

    const/4 v8, 0x2

    invoke-virtual {v1, v7, v3, v8}, Landroid/os/DropBoxManager;->addFile(Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    .line 581
    if-eqz v5, :cond_2

    .line 583
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 588
    :cond_2
    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_7

    .line 589
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_0

    .line 584
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_0
    move-exception v6

    .line 585
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 575
    .end local v3           #dumpFile:Ljava/io/File;
    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v2       #dumpFile:Ljava/io/File;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v7

    move-object v6, v7

    .line 576
    .local v6, e:Landroid/os/RemoteException;
    :goto_2
    :try_start_4
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to dump battery service"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 581
    if-eqz v4, :cond_3

    .line 583
    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    .line 588
    .end local v6           #e:Landroid/os/RemoteException;
    :cond_3
    :goto_3
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 589
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 584
    .restart local v6       #e:Landroid/os/RemoteException;
    :catch_2
    move-exception v6

    .line 585
    .local v6, e:Ljava/io/IOException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 577
    .end local v6           #e:Ljava/io/IOException;
    :catch_3
    move-exception v7

    move-object v6, v7

    .line 578
    .restart local v6       #e:Ljava/io/IOException;
    :goto_4
    :try_start_6
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to write dumpsys file"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 581
    if-eqz v4, :cond_4

    .line 583
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    .line 588
    :cond_4
    :goto_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_0

    .line 589
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to delete temporary dumpsys file: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 584
    :catch_4
    move-exception v6

    .line 585
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v8, "failed to close dumpsys output stream"

    invoke-static {v7, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 581
    .end local v6           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_6
    if-eqz v4, :cond_5

    .line 583
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 588
    :cond_5
    :goto_7
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_6

    .line 589
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "failed to delete temporary dumpsys file: "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    throw v7

    .line 584
    :catch_5
    move-exception v6

    .line 585
    .restart local v6       #e:Ljava/io/IOException;
    sget-object v8, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v9, "failed to close dumpsys output stream"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 581
    .end local v2           #dumpFile:Ljava/io/File;
    .end local v6           #e:Ljava/io/IOException;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_6

    .line 577
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_6
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_7
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto :goto_4

    .line 575
    .end local v2           #dumpFile:Ljava/io/File;
    .restart local v3       #dumpFile:Ljava/io/File;
    :catch_8
    move-exception v7

    move-object v6, v7

    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :catch_9
    move-exception v7

    move-object v6, v7

    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_2

    .end local v2           #dumpFile:Ljava/io/File;
    .end local v4           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v3       #dumpFile:Ljava/io/File;
    .restart local v5       #dumpStream:Ljava/io/FileOutputStream;
    :cond_7
    move-object v4, v5

    .end local v5           #dumpStream:Ljava/io/FileOutputStream;
    .restart local v4       #dumpStream:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #dumpFile:Ljava/io/File;
    .restart local v2       #dumpFile:Ljava/io/File;
    goto/16 :goto_0
.end method

.method private final logOutlier(J)V
    .locals 10
    .parameter "duration"

    .prologue
    .line 596
    iget-object v7, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 597
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v7, "battery_discharge_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 599
    .local v2, dischargeThresholdString:Ljava/lang/String;
    const-string v7, "battery_discharge_duration_threshold"

    invoke-static {v0, v7}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 602
    .local v5, durationThresholdString:Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    .line 604
    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 605
    .local v3, durationThreshold:J
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 606
    .local v1, dischargeThreshold:I
    cmp-long v7, p1, v3

    if-gtz v7, :cond_0

    iget v7, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v8, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    sub-int/2addr v7, v8

    if-lt v7, v1, :cond_0

    .line 609
    invoke-direct {p0}, Lcom/android/server/BatteryService;->logBatteryStats()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .end local v1           #dischargeThreshold:I
    .end local v3           #durationThreshold:J
    :cond_0
    :goto_0
    return-void

    .line 615
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 616
    .local v6, e:Ljava/lang/NumberFormatException;
    sget-object v7, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid DischargeThresholds GService string: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " or "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private native native_update()V
.end method

.method private final notifyIfPlugged()V
    .locals 7

    .prologue
    .line 283
    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    iget v5, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eq v4, v5, :cond_1

    iget v4, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v4, :cond_1

    .line 284
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v5, "notification"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 286
    .local v2, notificationManager:Landroid/app/NotificationManager;
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    .line 287
    iget-object v4, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    if-nez v4, :cond_0

    .line 288
    new-instance v4, Landroid/app/Notification;

    invoke-direct {v4}, Landroid/app/Notification;-><init>()V

    iput-object v4, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    .line 289
    iget-object v4, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    const-wide/16 v5, 0x0

    iput-wide v5, v4, Landroid/app/Notification;->when:J

    .line 292
    :cond_0
    if-eqz v2, :cond_4

    .line 293
    const v1, 0x108001e

    .line 294
    .local v1, notificationId:I
    const/4 v3, -0x1

    .line 296
    .local v3, ringerMode:I
    iget-object v4, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v5, "audio"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 297
    .local v0, audioManager:Landroid/media/AudioManager;
    if-eqz v0, :cond_3

    .line 298
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 300
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 301
    iget-object v4, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    const-string v5, "system/media/audio/ui/Charger_Connection.ogg"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, v4, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 306
    :goto_0
    const v4, 0x108001e

    iget-object v5, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    invoke-virtual {v2, v4, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 314
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #notificationId:I
    .end local v2           #notificationManager:Landroid/app/NotificationManager;
    .end local v3           #ringerMode:I
    :cond_1
    :goto_1
    return-void

    .line 303
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #notificationId:I
    .restart local v2       #notificationManager:Landroid/app/NotificationManager;
    .restart local v3       #ringerMode:I
    :cond_2
    iget-object v4, p0, Lcom/android/server/BatteryService;->mPlugNotification:Landroid/app/Notification;

    iget v5, v4, Landroid/app/Notification;->defaults:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v4, Landroid/app/Notification;->defaults:I

    goto :goto_0

    .line 308
    :cond_3
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "fail to get AudioManager reference."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 311
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #notificationId:I
    .end local v3           #ringerMode:I
    :cond_4
    sget-object v4, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v5, "fail to get NotificationManager reference."

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private notifyIfPowerSavingMode()V
    .locals 3

    .prologue
    .line 317
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mIsPowerSavingModeEnabled:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v2, p0, Lcom/android/server/BatteryService;->mPowerSavingModeLevel:I

    if-gt v1, v2, :cond_0

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-eq v1, v2, :cond_0

    .line 319
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 320
    .local v0, statusIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 321
    const-string v1, "android.settings.POWERSAVING_POPUP"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 322
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 323
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Send PowerSavingMode popup intent."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    .end local v0           #statusIntent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final sendIntent()V
    .locals 6

    .prologue
    const/16 v5, 0x64

    .line 526
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 527
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x6000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 530
    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-direct {p0, v2}, Lcom/android/server/BatteryService;->getIcon(I)I

    move-result v0

    .line 532
    .local v0, icon:I
    const-string v2, "status"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 533
    const-string v2, "health"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 534
    const-string v2, "present"

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 535
    const-string v2, "level"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 536
    const-string v2, "scale"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 537
    const-string v2, "icon-small"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 538
    const-string v2, "plugged"

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 539
    const-string v2, "voltage"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 540
    const-string v2, "temperature"

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 541
    const-string v2, "technology"

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 544
    sget-object v2, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBattery level:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " health:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " present:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " voltage: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " temperature: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " technology: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AC powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " USB powered:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " icon:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;)V

    .line 555
    return-void
.end method

.method private final shutdownIfNoPower()V
    .locals 3

    .prologue
    .line 255
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 256
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 257
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 260
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "No power and Send ACTION_REQUEST_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final shutdownIfOverTemp()V
    .locals 3

    .prologue
    .line 273
    const/4 v1, 0x4

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBootCompleted:Z

    if-eqz v1, :cond_0

    .line 274
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 276
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 277
    iget-object v1, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 278
    sget-object v1, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v2, "Tripping and Send ACTION_REQUEST_SHUTDOWN"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private final declared-synchronized update()V
    .locals 15

    .prologue
    .line 330
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "update start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-direct {p0}, Lcom/android/server/BatteryService;->native_update()V

    .line 333
    const/4 v9, 0x0

    .line 334
    .local v9, logOutlier:Z
    const-wide/16 v7, 0x0

    .line 336
    .local v7, dischargeDuration:J
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_11

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    .line 337
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v0, :cond_12

    .line 338
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    :goto_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/BatteryService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v2, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v4, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v5, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v6, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/app/IBatteryStats;->setBatteryState(IIIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    :goto_2
    :try_start_2
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfOverTemp()V

    .line 357
    invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyIfPlugged()V

    .line 359
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v1, :cond_10

    .line 367
    :cond_0
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_1

    .line 368
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_14

    .line 373
    iget-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    if-eq v0, v1, :cond_1

    .line 374
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v0, v2

    .line 375
    const/4 v9, 0x1

    .line 376
    const/16 v0, 0xaaa

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 379
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 387
    :cond_1
    :goto_3
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    if-ne v0, v1, :cond_2

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    if-ne v0, v1, :cond_2

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_3

    .line 391
    :cond_2
    const/16 v0, 0xaa3

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-boolean v3, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    :goto_4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/android/server/BatteryService;->mPlugType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 395
    :cond_3
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    if-eq v0, v1, :cond_5

    .line 398
    :cond_4
    const/16 v0, 0xaa2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 401
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-nez v0, :cond_6

    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_6

    .line 405
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    sub-long v7, v0, v2

    .line 406
    const/4 v9, 0x1

    .line 409
    :cond_6
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    move v11, v0

    .line 410
    .local v11, plugged:Z
    :goto_5
    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_17

    const/4 v0, 0x1

    move v10, v0

    .line 428
    .local v10, oldPlugged:Z
    :goto_6
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_7

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_8

    iget v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_8

    :cond_7
    if-eqz v10, :cond_18

    if-nez v11, :cond_18

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_18

    :cond_8
    const/4 v0, 0x1

    move v13, v0

    .line 435
    .local v13, sendBatteryLow:Z
    :goto_7
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_9

    const/4 v0, -0x1

    iget v1, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eq v0, v1, :cond_a

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z

    if-eqz v0, :cond_a

    :cond_9
    if-eqz v10, :cond_19

    if-nez v11, :cond_19

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    if-eqz v0, :cond_19

    :cond_a
    const/4 v0, 0x1

    move v12, v0

    .line 442
    .local v12, sendBatteryCritical:Z
    :goto_8
    invoke-direct {p0}, Lcom/android/server/BatteryService;->sendIntent()V

    .line 447
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 448
    .local v14, statusIntent:Landroid/content/Intent;
    const/high16 v0, 0x1000

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 449
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-eqz v0, :cond_1a

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-nez v0, :cond_1a

    .line 450
    const-string v0, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 451
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 460
    :cond_b
    :goto_9
    if-nez v13, :cond_c

    if-nez v12, :cond_c

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v0, :cond_d

    .line 461
    :cond_c
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 462
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is (critical) low but system is not ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 464
    const/4 v13, 0x0

    .line 465
    const/4 v12, 0x0

    .line 481
    :cond_d
    :goto_a
    if-eqz v12, :cond_1f

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 482
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 483
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 485
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is critical and send ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_e
    :goto_b
    if-eqz v9, :cond_f

    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-eqz v0, :cond_f

    .line 510
    invoke-direct {p0, v7, v8}, Lcom/android/server/BatteryService;->logOutlier(J)V

    .line 513
    :cond_f
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryStatus:I

    .line 514
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryHealth:I

    .line 515
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryPresent:Z

    .line 516
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevel:I

    .line 517
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    .line 518
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryVoltage:I

    .line 519
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    iput v0, p0, Lcom/android/server/BatteryService;->mLastBatteryTemperature:I

    .line 520
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mLastBatteryLevelCritical:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    .end local v12           #sendBatteryCritical:Z
    .end local v13           #sendBatteryLow:Z
    .end local v14           #statusIntent:Landroid/content/Intent;
    :cond_10
    monitor-exit p0

    return-void

    .line 336
    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 339
    :cond_12
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v0, :cond_13

    .line 340
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 330
    .end local v7           #dischargeDuration:J
    .end local v9           #logOutlier:Z
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 342
    .restart local v7       #dischargeDuration:J
    .restart local v9       #logOutlier:Z
    :cond_13
    const/4 v0, 0x0

    :try_start_4
    iput v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    goto/16 :goto_1

    .line 381
    :cond_14
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_1

    .line 383
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/BatteryService;->mDischargeStartTime:J

    .line 384
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iput v0, p0, Lcom/android/server/BatteryService;->mDischargeStartLevel:I

    goto/16 :goto_3

    .line 391
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 409
    :cond_16
    const/4 v0, 0x0

    move v11, v0

    goto/16 :goto_5

    .line 410
    .restart local v11       #plugged:Z
    :cond_17
    const/4 v0, 0x0

    move v10, v0

    goto/16 :goto_6

    .line 428
    .restart local v10       #oldPlugged:Z
    :cond_18
    const/4 v0, 0x0

    move v13, v0

    goto/16 :goto_7

    .line 435
    .restart local v13       #sendBatteryLow:Z
    :cond_19
    const/4 v0, 0x0

    move v12, v0

    goto/16 :goto_8

    .line 453
    .restart local v12       #sendBatteryCritical:Z
    .restart local v14       #statusIntent:Landroid/content/Intent;
    :cond_1a
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    if-nez v0, :cond_b

    iget v0, p0, Lcom/android/server/BatteryService;->mLastPlugType:I

    if-eqz v0, :cond_b

    .line 454
    const-string v0, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 455
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 457
    invoke-direct {p0}, Lcom/android/server/BatteryService;->notifyIfPowerSavingMode()V

    goto/16 :goto_9

    .line 466
    :cond_1b
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v0, :cond_1c

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-le v0, v1, :cond_1c

    .line 467
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "System is ready now but battery is not low"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 469
    const/4 v13, 0x0

    .line 470
    const/4 v12, 0x0

    goto/16 :goto_a

    .line 472
    :cond_1c
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    if-eqz v0, :cond_1d

    .line 473
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "System was not ready but system is ready now"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mWasBatteryLowButNotSend:Z

    .line 476
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryWarningLevel:I

    if-gt v0, v1, :cond_1e

    const/4 v0, 0x1

    move v13, v0

    .line 477
    :goto_c
    iget-boolean v12, p0, Lcom/android/server/BatteryService;->mBatteryLevelCritical:Z

    goto/16 :goto_a

    .line 476
    :cond_1e
    const/4 v0, 0x0

    move v13, v0

    goto :goto_c

    .line 486
    :cond_1f
    if-eqz v13, :cond_20

    invoke-static {}, Lcom/android/internal/app/ShutdownThread;->IsShutDownStarted()Z

    move-result v0

    if-nez v0, :cond_20

    .line 487
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 488
    const-string v0, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 489
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 490
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is low and send ACTION_BATTERY_LOW"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    .line 491
    :cond_20
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    iget v1, p0, Lcom/android/server/BatteryService;->mLowBatteryCloseWarningLevel:I

    if-lt v0, v1, :cond_e

    .line 492
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BatteryService;->mSentLowBatteryBroadcast:Z

    .line 493
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 494
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    sget-object v0, Lcom/android/server/BatteryService;->TAG:Ljava/lang/String;

    const-string v1, "Battery is recovered and send ACTION_BATTERY_OKAY"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_b

    .line 350
    .end local v10           #oldPlugged:Z
    .end local v11           #plugged:Z
    .end local v12           #sendBatteryCritical:Z
    .end local v13           #sendBatteryLow:Z
    .end local v14           #statusIntent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    goto/16 :goto_2
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/server/BatteryService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump Battery service from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 659
    :goto_0
    return-void

    .line 646
    :cond_0
    monitor-enter p0

    .line 647
    :try_start_0
    const-string v0, "Current Battery Service state:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  AC powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 649
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  USB powered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  health: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryHealth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mBatteryPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 653
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  level: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 654
    const-string v0, "  scale: 100"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  voltage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryVoltage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 656
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  temperature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryTemperature:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 657
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  technology: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BatteryService;->mBatteryTechnology:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final getBatteryLevel()I
    .locals 1

    .prologue
    .line 243
    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryLevel:I

    return v0
.end method

.method final getPlugType()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lcom/android/server/BatteryService;->mPlugType:I

    return v0
.end method

.method final isPowered()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 208
    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final isPowered(I)Z
    .locals 4
    .parameter "plugTypeSet"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 214
    iget v1, p0, Lcom/android/server/BatteryService;->mBatteryStatus:I

    if-ne v1, v2, :cond_0

    move v1, v2

    .line 227
    :goto_0
    return v1

    .line 217
    :cond_0
    if-nez p1, :cond_1

    move v1, v3

    .line 218
    goto :goto_0

    .line 220
    :cond_1
    const/4 v0, 0x0

    .line 221
    .local v0, plugTypeBit:I
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mAcOnline:Z

    if-eqz v1, :cond_2

    .line 222
    or-int/lit8 v0, v0, 0x1

    .line 224
    :cond_2
    iget-boolean v1, p0, Lcom/android/server/BatteryService;->mUsbOnline:Z

    if-eqz v1, :cond_3

    .line 225
    or-int/lit8 v0, v0, 0x2

    .line 227
    :cond_3
    and-int v1, p1, v0

    if-eqz v1, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v3

    goto :goto_0
.end method

.method systemReady()V
    .locals 0

    .prologue
    .line 248
    invoke-direct {p0}, Lcom/android/server/BatteryService;->shutdownIfNoPower()V

    .line 250
    return-void
.end method
