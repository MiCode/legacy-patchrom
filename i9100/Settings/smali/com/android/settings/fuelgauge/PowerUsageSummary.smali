.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Landroid/preference/PreferenceActivity;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$2;
    }
.end annotation


# instance fields
.field private mAbort:Z

.field private mAppListGroup:Landroid/preference/PreferenceGroup;

.field private mAppWifiRunning:J

.field mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field private mBluetoothPower:D

.field private final mBluetoothSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private mMaxPower:D

.field private mPowerProfile:Lcom/android/internal/os/PowerProfile;

.field private mRequestQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mRequestThread:Ljava/lang/Thread;

.field mStats:Lcom/android/internal/os/BatteryStatsImpl;

.field private mStatsPeriod:J

.field private mStatsType:I

.field private mTotalPower:D

.field private final mUsageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiPower:D

.field private final mWifiSippers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 59
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 82
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    .line 743
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addBluetoothUsage(J)V
    .locals 11
    .parameter

    .prologue
    const-wide v9, 0x408f400000000000L

    .line 647
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 648
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "bluetooth.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    div-double/2addr v0, v9

    .line 650
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v2

    .line 651
    int-to-double v5, v2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "bluetooth.at"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    div-double/2addr v5, v9

    add-double v6, v0, v5

    .line 653
    const v0, 0x7f080434

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->BLUETOOTH:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020041

    iget-wide v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    add-double/2addr v6, v8

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v0

    .line 655
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    const-string v2, "Bluetooth"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 656
    return-void
.end method

.method private addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;
    .locals 9
    .parameter "label"
    .parameter "drainType"
    .parameter "time"
    .parameter "iconId"
    .parameter "power"

    .prologue
    .line 703
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    cmpl-double v1, p6, v1

    if-lez v1, :cond_0

    iput-wide p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 704
    :cond_0
    iget-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    add-double/2addr v1, p6

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 705
    new-instance v0, Lcom/android/settings/fuelgauge/BatterySipper;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x0

    const/4 v1, 0x1

    new-array v8, v1, [D

    const/4 v1, 0x0

    aput-wide p6, v8, v1

    move-object v1, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 707
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iput-wide p3, v0, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    .line 708
    iput p5, v0, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    .line 709
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 710
    return-object v0
.end method

.method private addIdleUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, p1, v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 640
    .local v3, idleTimeMs:J
    long-to-double v0, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "cpu.idle"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 642
    .local v6, idlePower:D
    const v0, 0x7f080437

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->IDLE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020049

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 644
    return-void
.end method

.method private addPhoneUsage(J)V
    .locals 10
    .parameter "uSecNow"

    .prologue
    .line 558
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v8, 0x3e8

    div-long v3, v0, v8

    .line 559
    .local v3, phoneOnTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v8, v3

    mul-double/2addr v0, v8

    const-wide v8, 0x408f400000000000L

    div-double v6, v0, v8

    .line 561
    .local v6, phoneOnPower:D
    const v0, 0x7f080436

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->PHONE:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020052

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 563
    return-void
.end method

.method private addRadioUsage(J)V
    .locals 20
    .parameter "uSecNow"

    .prologue
    .line 587
    const-wide/16 v11, 0x0

    .line 588
    .local v11, power:D
    const/4 v13, 0x5

    .line 589
    .local v13, BINS:I
    const-wide/16 v8, 0x0

    .line 590
    .local v8, signalTimeMs:J
    const/4 v15, 0x0

    .end local v13           #BINS:I
    .local v15, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v15, v5, :cond_0

    .line 591
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move v1, v15

    move-wide/from16 v2, p1

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v18, v5, v13

    .line 592
    .local v18, strengthTimeMs:J
    const-wide/16 v5, 0x3e8

    div-long v5, v18, v5

    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "radio.on"

    invoke-virtual {v7, v10, v15}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 594
    add-long v8, v8, v18

    .line 590
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 596
    .end local v18           #strengthTimeMs:J
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v16, v5, v13

    .line 597
    .local v16, scanningTimeMs:J
    const-wide/16 v5, 0x3e8

    div-long v5, v16, v5

    long-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "radio.scanning"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 599
    const v5, 0x7f080435

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->CELL:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v10, 0x7f020043

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v14

    .line 602
    .local v14, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    const-wide/16 v5, 0x0

    cmp-long v5, v8, v5

    if-eqz v5, :cond_1

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v7, v0

    move-object v0, v5

    move v1, v6

    move-wide/from16 v2, p1

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v5

    const-wide/16 v10, 0x3e8

    div-long/2addr v5, v10

    long-to-double v5, v5

    const-wide/high16 v10, 0x4059

    mul-double/2addr v5, v10

    long-to-double v7, v8

    div-double/2addr v5, v7

    iput-wide v5, v14, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    .line 606
    :cond_1
    return-void
.end method

.method private addScreenUsage(J)V
    .locals 20
    .parameter "uSecNow"

    .prologue
    .line 566
    const-wide/16 v11, 0x0

    .line 567
    .local v11, power:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move-wide/from16 v1, p1

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long v8, v5, v7

    .line 568
    .local v8, screenOnTimeMs:J
    long-to-double v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v10, "screen.on"

    invoke-virtual {v7, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v5, v13

    add-double/2addr v11, v5

    .line 569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "screen.full"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v18

    .line 571
    .local v18, screenFullPower:D
    const/4 v15, 0x0

    .local v15, i:I
    :goto_0
    const/4 v5, 0x5

    if-ge v15, v5, :cond_0

    .line 572
    int-to-float v5, v15

    const/high16 v6, 0x3f00

    add-float/2addr v5, v6

    float-to-double v5, v5

    mul-double v5, v5, v18

    const-wide/high16 v13, 0x4014

    div-double v16, v5, v13

    .line 574
    .local v16, screenBinPower:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v6, v0

    move-object v0, v5

    move v1, v15

    move-wide/from16 v2, p1

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v5

    const-wide/16 v13, 0x3e8

    div-long v13, v5, v13

    .line 575
    .local v13, brightnessTime:J
    long-to-double v5, v13

    mul-double v5, v5, v16

    add-double/2addr v11, v5

    .line 571
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 581
    .end local v13           #brightnessTime:J
    .end local v16           #screenBinPower:D
    :cond_0
    const-wide v5, 0x408f400000000000L

    div-double/2addr v11, v5

    .line 582
    const v5, 0x7f080432

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->SCREEN:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v10, 0x7f020045

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    .line 584
    return-void
.end method

.method private addWiFiUsage(J)V
    .locals 13
    .parameter "uSecNow"

    .prologue
    .line 623
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v9, v0, v2

    .line 624
    .local v9, onTimeMs:J
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v3, v0, v2

    .line 627
    .local v3, runningTimeMs:J
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    sub-long/2addr v3, v0

    .line 628
    const-wide/16 v0, 0x0

    cmp-long v0, v3, v0

    if-gez v0, :cond_0

    const-wide/16 v3, 0x0

    .line 629
    :cond_0
    const-wide/16 v0, 0x0

    mul-long/2addr v0, v9

    long-to-double v0, v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v5, "wifi.on"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v5

    mul-double/2addr v0, v5

    long-to-double v5, v3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v7, "wifi.on"

    invoke-virtual {v2, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    const-wide v5, 0x408f400000000000L

    div-double v11, v0, v5

    .line 633
    .local v11, wifiPower:D
    const v0, 0x7f080433

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->WIFI:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const v5, 0x7f020053

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    add-double/2addr v6, v11

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addEntry(Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;JID)Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v8

    .line 635
    .local v8, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    const-string v1, "WIFI"

    invoke-direct {p0, v8, v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V

    .line 636
    return-void
.end method

.method private aggregateSippers(Lcom/android/settings/fuelgauge/BatterySipper;Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .parameter "bs"
    .parameter
    .parameter "tag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/android/settings/fuelgauge/BatterySipper;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 609
    .local p2, from:Ljava/util/List;,"Ljava/util/List<Lcom/android/settings/fuelgauge/BatterySipper;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 610
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 612
    .local v1, wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 613
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 614
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 615
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 616
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 617
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 618
    iget-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    add-long/2addr v2, v4

    iput-wide v2, p1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 609
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    .end local v1           #wbs:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_0
    return-void
.end method

.method private getAverageDataCost()D
    .locals 14

    .prologue
    .line 659
    .line 661
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L

    div-double/2addr v0, v2

    .line 663
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    const-string v3, "radio.active"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v2

    const-wide v4, 0x40ac200000000000L

    div-double/2addr v2, v4

    .line 665
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v4, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 667
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v6, v8

    sub-long/2addr v6, v4

    .line 669
    iget-object v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v8}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    div-long/2addr v8, v10

    .line 670
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v4

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v8, v10, v8

    .line 674
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v8, v10

    long-to-double v8, v8

    div-double/2addr v2, v8

    .line 675
    const-wide v8, 0x40fe848000000000L

    div-double/2addr v0, v8

    .line 676
    add-long v8, v6, v4

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_1

    .line 677
    long-to-double v8, v4

    mul-double/2addr v2, v8

    long-to-double v8, v6

    mul-double/2addr v0, v8

    add-double/2addr v0, v2

    add-long v2, v4, v6

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 680
    :goto_1
    return-wide v0

    .line 670
    :cond_0
    const-wide/32 v8, 0x30d40

    goto :goto_0

    .line 680
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1
.end method

.method private load()V
    .locals 4

    .prologue
    .line 715
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 717
    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 718
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 719
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 721
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 725
    :goto_0
    return-void

    .line 722
    :catch_0
    move-exception v0

    .line 723
    const-string v1, "PowerUsageSummary"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private processAppUsage()V
    .locals 75

    .prologue
    .line 394
    const-string v5, "sensor"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v45

    check-cast v45, Landroid/hardware/SensorManager;

    .line 395
    .local v45, sensorManager:Landroid/hardware/SensorManager;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move/from16 v72, v0

    .line 396
    .local v72, which:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v50

    .line 397
    .local v50, speedSteps:I
    move/from16 v0, v50

    new-array v0, v0, [D

    move-object/from16 v35, v0

    .line 398
    .local v35, powerCpuNormal:[D
    move/from16 v0, v50

    new-array v0, v0, [J

    move-object/from16 v18, v0

    .line 399
    .local v18, cpuSpeedStepTimes:[J
    const/16 v32, 0x0

    .local v32, p:I
    :goto_0
    move/from16 v0, v32

    move/from16 v1, v50

    if-ge v0, v1, :cond_0

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "cpu.active"

    move-object v0, v5

    move-object v1, v6

    move/from16 v2, v32

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v5

    aput-wide v5, v35, v32

    .line 399
    add-int/lit8 v32, v32, 0x1

    goto :goto_0

    .line 402
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getAverageDataCost()D

    move-result-wide v14

    .line 403
    .local v14, averageCostPerByte:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move-object v0, v5

    move-wide v1, v6

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v62

    .line 404
    .local v62, uSecTime:J
    move-wide/from16 v0, v62

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    .line 405
    move-object/from16 v0, p0

    move-wide/from16 v1, v62

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateStatsPeriod(J)V

    .line 406
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v64

    .line 407
    .local v64, uidStats:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v64 .. v64}, Landroid/util/SparseArray;->size()I

    move-result v13

    .line 408
    .local v13, NU:I
    const/16 v29, 0x0

    .local v29, iu:I
    :goto_1
    move/from16 v0, v29

    move v1, v13

    if-ge v0, v1, :cond_13

    .line 409
    move-object/from16 v0, v64

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/os/BatteryStats$Uid;

    .line 410
    .local v11, u:Landroid/os/BatteryStats$Uid;
    const-wide/16 v33, 0x0

    .line 411
    .local v33, power:D
    const-wide/16 v26, 0x0

    .line 412
    .local v26, highestDrain:D
    const/4 v8, 0x0

    .line 414
    .local v8, packageWithHighestDrain:Ljava/lang/String;
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v38

    .line 415
    .local v38, processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    const-wide/16 v19, 0x0

    .line 416
    .local v19, cpuTime:J
    const-wide/16 v16, 0x0

    .line 417
    .local v16, cpuFgTime:J
    const-wide/16 v70, 0x0

    .line 418
    .local v70, wakelockTime:J
    const-wide/16 v24, 0x0

    .line 419
    .local v24, gpsTime:J
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 422
    invoke-interface/range {v38 .. v38}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .local v28, i$:Ljava/util/Iterator;
    :cond_1
    :goto_2
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/util/Map$Entry;

    .line 424
    .local v21, ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Landroid/os/BatteryStats$Uid$Proc;

    .line 425
    .local v39, ps:Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v39

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v65

    .line 426
    .local v65, userTime:J
    move-object/from16 v0, v39

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v52

    .line 427
    .local v52, systemTime:J
    move-object/from16 v0, v39

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v22

    .line 428
    .local v22, foregroundTime:J
    const-wide/16 v5, 0xa

    mul-long v5, v5, v22

    add-long v16, v16, v5

    .line 429
    add-long v5, v65, v52

    const-wide/16 v9, 0xa

    mul-long v59, v5, v9

    .line 430
    .local v59, tmpCpuTime:J
    const/16 v61, 0x0

    .line 432
    .local v61, totalTimeAtSpeeds:I
    const/16 v51, 0x0

    .local v51, step:I
    :goto_3
    move/from16 v0, v51

    move/from16 v1, v50

    if-ge v0, v1, :cond_2

    .line 433
    move-object/from16 v0, v39

    move/from16 v1, v51

    move/from16 v2, v72

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v5

    aput-wide v5, v18, v51

    .line 434
    move/from16 v0, v61

    int-to-long v0, v0

    move-wide v5, v0

    aget-wide v9, v18, v51

    add-long/2addr v5, v9

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v61, v0

    .line 432
    add-int/lit8 v51, v51, 0x1

    goto :goto_3

    .line 436
    :cond_2
    if-nez v61, :cond_3

    const/16 v61, 0x1

    .line 438
    :cond_3
    const-wide/16 v36, 0x0

    .line 439
    .local v36, processPower:D
    const/16 v51, 0x0

    :goto_4
    move/from16 v0, v51

    move/from16 v1, v50

    if-ge v0, v1, :cond_4

    .line 440
    aget-wide v5, v18, v51

    long-to-double v5, v5

    move/from16 v0, v61

    int-to-double v0, v0

    move-wide v9, v0

    div-double v40, v5, v9

    .line 441
    .local v40, ratio:D
    move-wide/from16 v0, v59

    long-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v40

    aget-wide v9, v35, v51

    mul-double/2addr v5, v9

    add-double v36, v36, v5

    .line 439
    add-int/lit8 v51, v51, 0x1

    goto :goto_4

    .line 443
    .end local v40           #ratio:D
    :cond_4
    add-long v19, v19, v59

    .line 444
    add-double v33, v33, v36

    .line 445
    if-eqz v8, :cond_5

    const-string v5, "*"

    invoke-virtual {v8, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 447
    :cond_5
    move-wide/from16 v26, v36

    .line 448
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 449
    :cond_6
    cmpg-double v5, v26, v36

    if-gez v5, :cond_1

    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 451
    move-wide/from16 v26, v36

    .line 452
    invoke-interface/range {v21 .. v21}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .restart local v8       #packageWithHighestDrain:Ljava/lang/String;
    goto/16 :goto_2

    .line 458
    .end local v21           #ent:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v22           #foregroundTime:J
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v36           #processPower:D
    .end local v39           #ps:Landroid/os/BatteryStats$Uid$Proc;
    .end local v51           #step:I
    .end local v52           #systemTime:J
    .end local v59           #tmpCpuTime:J
    .end local v61           #totalTimeAtSpeeds:I
    .end local v65           #userTime:J
    :cond_7
    cmp-long v5, v16, v19

    if-lez v5, :cond_8

    .line 462
    move-wide/from16 v19, v16

    .line 464
    :cond_8
    const-wide v5, 0x408f400000000000L

    div-double v33, v33, v5

    .line 467
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v69

    .line 469
    .local v69, wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v69 .. v69}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    .restart local v28       #i$:Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v68

    check-cast v68, Ljava/util/Map$Entry;

    .line 470
    .local v68, wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-interface/range {v68 .. v68}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v67

    check-cast v67, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 473
    .local v67, wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v5, 0x0

    move-object/from16 v0, v67

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 474
    .local v58, timer:Landroid/os/BatteryStats$Timer;
    if-eqz v58, :cond_9

    .line 475
    move-object/from16 v0, v58

    move-wide/from16 v1, v62

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    add-long v70, v70, v5

    goto :goto_5

    .line 478
    .end local v58           #timer:Landroid/os/BatteryStats$Timer;
    .end local v67           #wakelock:Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v68           #wakelockEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_a
    const-wide/16 v5, 0x3e8

    div-long v70, v70, v5

    .line 481
    move-wide/from16 v0, v70

    long-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v9, "cpu.awake"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v33, v33, v5

    .line 485
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J

    move-result-wide v54

    .line 486
    .local v54, tcpBytesReceived:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    move v5, v0

    invoke-virtual {v11, v5}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J

    move-result-wide v56

    .line 487
    .local v56, tcpBytesSent:J
    add-long v5, v54, v56

    long-to-double v5, v5

    mul-double/2addr v5, v14

    add-double v33, v33, v5

    .line 490
    move-object v0, v11

    move-wide/from16 v1, v62

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v73, v5, v9

    .line 491
    .local v73, wifiRunningTimeMs:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    move-wide v5, v0

    add-long v5, v5, v73

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 492
    move-wide/from16 v0, v73

    long-to-double v0, v0

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v7, v0

    const-string v9, "wifi.on"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v5, v9

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v33, v33, v5

    .line 496
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v46

    .line 498
    .local v46, sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v46 .. v46}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_6
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/util/Map$Entry;

    .line 499
    .local v44, sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-interface/range {v44 .. v44}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v42

    check-cast v42, Landroid/os/BatteryStats$Uid$Sensor;

    .line 500
    .local v42, sensor:Landroid/os/BatteryStats$Uid$Sensor;
    invoke-virtual/range {v42 .. v42}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v49

    .line 501
    .local v49, sensorType:I
    invoke-virtual/range {v42 .. v42}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v58

    .line 502
    .restart local v58       #timer:Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v58

    move-wide/from16 v1, v62

    move/from16 v3, v72

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v5

    const-wide/16 v9, 0x3e8

    div-long v47, v5, v9

    .line 503
    .local v47, sensorTime:J
    const-wide/16 v30, 0x0

    .line 504
    .local v30, multiplier:D
    packed-switch v49, :pswitch_data_0

    .line 510
    move-object/from16 v0, v45

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v43

    .line 512
    .local v43, sensorData:Landroid/hardware/Sensor;
    if-eqz v43, :cond_b

    .line 513
    invoke-virtual/range {v43 .. v43}, Landroid/hardware/Sensor;->getPower()F

    move-result v5

    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v30, v0

    .line 520
    .end local v43           #sensorData:Landroid/hardware/Sensor;
    :cond_b
    :goto_7
    move-wide/from16 v0, v47

    long-to-double v0, v0

    move-wide v5, v0

    mul-double v5, v5, v30

    const-wide v9, 0x408f400000000000L

    div-double/2addr v5, v9

    add-double v33, v33, v5

    .line 521
    goto :goto_6

    .line 506
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    move-object v5, v0

    const-string v6, "gps.on"

    invoke-virtual {v5, v6}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v30

    .line 507
    move-wide/from16 v24, v47

    .line 508
    goto :goto_7

    .line 526
    .end local v30           #multiplier:D
    .end local v42           #sensor:Landroid/os/BatteryStats$Uid$Sensor;
    .end local v44           #sensorEntry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v47           #sensorTime:J
    .end local v49           #sensorType:I
    .end local v58           #timer:Landroid/os/BatteryStats$Timer;
    :cond_c
    const-wide/16 v5, 0x0

    cmpl-double v5, v33, v5

    if-eqz v5, :cond_d

    .line 527
    new-instance v4, Lcom/android/settings/fuelgauge/BatterySipper;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object v7, v0

    sget-object v9, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->APP:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    const/4 v10, 0x0

    const/4 v5, 0x1

    new-array v12, v5, [D

    const/4 v5, 0x0

    aput-wide v33, v12, v5

    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v12}, Lcom/android/settings/fuelgauge/BatterySipper;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/Handler;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V

    .line 530
    .local v4, app:Lcom/android/settings/fuelgauge/BatterySipper;
    move-wide/from16 v0, v19

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    .line 531
    move-wide/from16 v0, v24

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    .line 532
    move-wide/from16 v0, v73

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    .line 533
    move-wide/from16 v0, v16

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    .line 534
    move-wide/from16 v0, v70

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    .line 535
    move-wide/from16 v0, v54

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    .line 536
    move-wide/from16 v0, v56

    move-object v2, v4

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    .line 537
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_e

    .line 538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_d
    :goto_8
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x3f2

    if-ne v5, v6, :cond_10

    .line 546
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    move-wide v5, v0

    add-double v5, v5, v33

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 408
    :goto_9
    add-int/lit8 v29, v29, 0x1

    goto/16 :goto_1

    .line 539
    .restart local v4       #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_e
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_f

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 542
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 547
    .end local v4           #app:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_10
    invoke-virtual {v11}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v6, 0x7d0

    if-ne v5, v6, :cond_11

    .line 548
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    move-wide v5, v0

    add-double v5, v5, v33

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    goto :goto_9

    .line 550
    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    move-wide v5, v0

    cmpl-double v5, v33, v5

    if-lez v5, :cond_12

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 551
    :cond_12
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    move-wide v5, v0

    add-double v5, v5, v33

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    goto :goto_9

    .line 555
    .end local v8           #packageWithHighestDrain:Ljava/lang/String;
    .end local v11           #u:Landroid/os/BatteryStats$Uid;
    .end local v16           #cpuFgTime:J
    .end local v19           #cpuTime:J
    .end local v24           #gpsTime:J
    .end local v26           #highestDrain:D
    .end local v28           #i$:Ljava/util/Iterator;
    .end local v33           #power:D
    .end local v38           #processStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v46           #sensorStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v54           #tcpBytesReceived:J
    .end local v56           #tcpBytesSent:J
    .end local v69           #wakelockStats:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v70           #wakelockTime:J
    .end local v73           #wifiRunningTimeMs:J
    :cond_13
    return-void

    .line 504
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private processMiscUsage()V
    .locals 11

    .prologue
    .line 685
    iget v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 686
    .local v6, which:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long v4, v7, v9

    .line 687
    .local v4, uSecTime:J
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v7, v4, v5, v6}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v2

    .line 688
    .local v2, uSecNow:J
    move-wide v0, v2

    .line 693
    .local v0, timeSinceUnplugged:J
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPhoneUsage(J)V

    .line 694
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addScreenUsage(J)V

    .line 695
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addWiFiUsage(J)V

    .line 696
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addBluetoothUsage(J)V

    .line 697
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addIdleUsage(J)V

    .line 698
    invoke-direct {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addRadioUsage(J)V

    .line 699
    return-void
.end method

.method private refreshStats()V
    .locals 15

    .prologue
    const-wide/high16 v13, 0x4059

    const-wide/16 v10, 0x0

    .line 312
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v9, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->load()V

    .line 315
    :cond_0
    iput-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    .line 316
    iput-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    .line 317
    iput-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiPower:D

    .line 318
    iput-wide v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothPower:D

    .line 319
    const-wide/16 v9, 0x0

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppWifiRunning:J

    .line 321
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 322
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 323
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mWifiSippers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 324
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBluetoothSippers:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->clear()V

    .line 325
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processAppUsage()V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->processMiscUsage()V

    .line 328
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 330
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {v1, p0, v9}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;)V

    .line 331
    .local v1, hist:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
    const/4 v9, -0x1

    invoke-virtual {v1, v9}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 332
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 351
    :try_start_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-static {v9}, Ljava/util/Collections;->sort(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    :goto_0
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mUsageList:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 356
    .local v8, sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    const-wide/high16 v11, 0x4014

    cmpg-double v9, v9, v11

    if-ltz v9, :cond_1

    .line 357
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v9, v11

    mul-double v5, v9, v13

    .line 358
    .local v5, percentOfTotal:D
    const-wide/high16 v9, 0x3ff0

    cmpg-double v9, v5, v9

    if-ltz v9, :cond_1

    .line 359
    new-instance v7, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-direct {v7, p0, v9, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/android/settings/fuelgauge/BatterySipper;)V

    .line 360
    .local v7, pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v9

    mul-double/2addr v9, v13

    iget-wide v11, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double v3, v9, v11

    .line 361
    .local v3, percentOfMax:D
    iput-wide v5, v8, Lcom/android/settings/fuelgauge/BatterySipper;->percent:D

    .line 362
    iget-object v9, v8, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v7, v5, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 364
    const v9, 0x7fffffff

    invoke-virtual {v8}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v10

    double-to-int v10, v10

    sub-int/2addr v9, v10

    invoke-virtual {v7, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 365
    invoke-virtual {v7, v3, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setGaugeValue(D)V

    .line 366
    iget-object v9, v8, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v9, :cond_2

    .line 367
    iget-object v9, v8, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v9}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 369
    :cond_2
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9, v7}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 370
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v9}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v9

    const/16 v10, 0xb

    if-le v9, v10, :cond_1

    .line 373
    .end local v3           #percentOfMax:D
    .end local v5           #percentOfTotal:D
    .end local v7           #pref:Lcom/android/settings/fuelgauge/PowerGaugePreference;
    .end local v8           #sipper:Lcom/android/settings/fuelgauge/BatterySipper;
    :cond_3
    iget-object v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v9

    .line 374
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    .line 375
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    if-nez v10, :cond_4

    .line 376
    new-instance v10, Ljava/lang/Thread;

    const-string v11, "BatteryUsage Icon Loader"

    invoke-direct {v10, p0, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    iput-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 377
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/Thread;->setPriority(I)V

    .line 378
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 380
    :cond_4
    iget-object v10, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 382
    :cond_5
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 383
    return-void

    .line 352
    .end local v2           #i$:Ljava/util/Iterator;
    :catch_0
    move-exception v9

    move-object v0, v9

    .line 353
    .local v0, ex:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 382
    .end local v0           #ex:Ljava/lang/Exception;
    .restart local v2       #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v10

    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v10
.end method

.method private updateStatsPeriod(J)V
    .locals 5
    .parameter "duration"

    .prologue
    .line 386
    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    long-to-double v2, v2

    invoke-static {p0, v2, v3}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, durationString:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsImpl;->isOnBattery()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f080422

    :goto_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, label:Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setTitle(Ljava/lang/CharSequence;)V

    .line 391
    return-void

    .line 387
    .end local v1           #label:Ljava/lang/String;
    :cond_0
    const v2, 0x7f080429

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 98
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 102
    const v0, 0x7f04001a

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 103
    const-string v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    .line 105
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAppListGroup:Landroid/preference/PreferenceGroup;

    .line 106
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p0}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerProfile:Lcom/android/internal/os/PowerProfile;

    .line 107
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x0

    .line 275
    const/4 v0, 0x2

    const v1, 0x7f08045c

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x10801dc

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 278
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 307
    :goto_0
    return v0

    .line 295
    :pswitch_0
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    if-nez v0, :cond_0

    .line 296
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 300
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 301
    goto :goto_0

    .line 298
    :cond_0
    iput v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_1

    .line 303
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    .line 304
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    move v0, v2

    .line 305
    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 123
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 124
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 125
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 127
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 128
    return-void

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 13
    .parameter
    .parameter

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x6

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 132
    instance-of v1, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v1, :cond_0

    .line 133
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v2, v1, v8}, Lcom/android/internal/os/BatteryStatsImpl;->writeToParcelWithoutUids(Landroid/os/Parcel;I)V

    .line 135
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    .line 136
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 137
    const-string v3, "stats"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 138
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 139
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    .line 265
    :goto_0
    return v1

    .line 141
    :cond_0
    instance-of v1, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-nez v1, :cond_1

    move v1, v8

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    move-object v1, v0

    .line 145
    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatterySipper;

    move-result-object v1

    .line 146
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/fuelgauge/PowerUsageDetail;

    invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 147
    const-string v3, "title"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v3, "percent"

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mTotalPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 150
    const-string v3, "gauge"

    invoke-virtual {v1}, Lcom/android/settings/fuelgauge/BatterySipper;->getSortValue()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059

    mul-double/2addr v4, v6

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mMaxPower:D

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string v3, "duration"

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsPeriod:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 153
    const-string v3, "iconPackage"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->defaultPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string v3, "iconId"

    iget v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->iconId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string v3, "noCoverage"

    iget-wide v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 156
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_2

    .line 157
    const-string v3, "uid"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 159
    :cond_2
    const-string v3, "drainType"

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 163
    sget-object v3, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;->$SwitchMap$com$android$settings$fuelgauge$PowerUsageDetail$DrainType:[I

    iget-object v4, v1, Lcom/android/settings/fuelgauge/BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    invoke-virtual {v4}, Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 253
    new-array v3, v9, [I

    const v4, 0x7f080442

    aput v4, v3, v8

    .line 256
    new-array v4, v9, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    move-object v1, v4

    .line 261
    :goto_1
    const-string v4, "types"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 262
    const-string v3, "values"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[D)Landroid/content/Intent;

    .line 263
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    goto/16 :goto_0

    .line 166
    :pswitch_0
    iget-object v3, v1, Lcom/android/settings/fuelgauge/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 167
    const/16 v4, 0x9

    new-array v4, v4, [I

    fill-array-data v4, :array_0

    .line 178
    const/16 v5, 0x9

    new-array v5, v5, [D

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v8

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v9

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v10

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->gpsTime:J

    long-to-double v6, v6

    aput-wide v6, v5, v12

    const/4 v6, 0x4

    iget-wide v7, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wifiRunningTime:J

    long-to-double v7, v7

    aput-wide v7, v5, v6

    const/4 v6, 0x5

    iget-wide v7, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v7, v7

    aput-wide v7, v5, v6

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v5, v11

    const/4 v1, 0x7

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v1

    const/16 v1, 0x8

    const-wide/16 v6, 0x0

    aput-wide v6, v5, v1

    .line 190
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 191
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 192
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    const-string v8, ""

    iget v9, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v10

    invoke-virtual {v7, v6, v8, v9, v10}, Lcom/android/internal/os/BatteryStatsImpl;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;II)V

    .line 193
    const-string v6, "report_details"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 196
    new-instance v6, Ljava/io/PrintWriter;

    invoke-direct {v6, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 197
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    iget v8, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    invoke-virtual {v7, v6, v8, v3}, Lcom/android/internal/os/BatteryStatsImpl;->dumpCheckinLocked(Ljava/io/PrintWriter;II)V

    .line 198
    const-string v3, "report_checkin_details"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object v1, v5

    move-object v3, v4

    .line 200
    goto/16 :goto_1

    .line 203
    :pswitch_1
    new-array v3, v10, [I

    fill-array-data v3, :array_1

    .line 207
    new-array v4, v10, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->noCoveragePercent:D

    aput-wide v5, v4, v9

    move-object v1, v4

    .line 212
    goto/16 :goto_1

    .line 215
    :pswitch_2
    new-array v3, v11, [I

    fill-array-data v3, :array_2

    .line 223
    new-array v4, v11, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v9

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v10

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v12

    const/4 v5, 0x4

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    move-object v1, v4

    .line 231
    goto/16 :goto_1

    .line 234
    :pswitch_3
    new-array v3, v11, [I

    fill-array-data v3, :array_3

    .line 242
    new-array v4, v11, [D

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->usageTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v8

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v9

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->cpuFgTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v10

    iget-wide v5, v1, Lcom/android/settings/fuelgauge/BatterySipper;->wakeLockTime:J

    long-to-double v5, v5

    aput-wide v5, v4, v12

    const/4 v5, 0x4

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesSent:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    const/4 v5, 0x5

    iget-wide v6, v1, Lcom/android/settings/fuelgauge/BatterySipper;->tcpBytesReceived:J

    long-to-double v6, v6

    aput-wide v6, v4, v5

    move-object v1, v4

    .line 250
    goto/16 :goto_1

    .line 163
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 167
    :array_0
    .array-data 0x4
        0x38t 0x4t 0x8t 0x7ft
        0x39t 0x4t 0x8t 0x7ft
        0x3at 0x4t 0x8t 0x7ft
        0x3bt 0x4t 0x8t 0x7ft
        0x3ct 0x4t 0x8t 0x7ft
        0x3et 0x4t 0x8t 0x7ft
        0x3ft 0x4t 0x8t 0x7ft
        0x40t 0x4t 0x8t 0x7ft
        0x41t 0x4t 0x8t 0x7ft
    .end array-data

    .line 203
    :array_1
    .array-data 0x4
        0x42t 0x4t 0x8t 0x7ft
        0x43t 0x4t 0x8t 0x7ft
    .end array-data

    .line 215
    :array_2
    .array-data 0x4
        0x3ct 0x4t 0x8t 0x7ft
        0x38t 0x4t 0x8t 0x7ft
        0x39t 0x4t 0x8t 0x7ft
        0x3at 0x4t 0x8t 0x7ft
        0x3et 0x4t 0x8t 0x7ft
        0x3ft 0x4t 0x8t 0x7ft
    .end array-data

    .line 234
    :array_3
    .array-data 0x4
        0x42t 0x4t 0x8t 0x7ft
        0x38t 0x4t 0x8t 0x7ft
        0x39t 0x4t 0x8t 0x7ft
        0x3at 0x4t 0x8t 0x7ft
        0x3et 0x4t 0x8t 0x7ft
        0x3ft 0x4t 0x8t 0x7ft
    .end array-data
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .parameter "menu"

    .prologue
    .line 288
    const/4 v0, 0x1

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 116
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    .line 118
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshStats()V

    .line 119
    return-void
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStats:Lcom/android/internal/os/BatteryStatsImpl;

    return-object v0
.end method

.method public run()V
    .locals 4

    .prologue
    .line 730
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    monitor-enter v1

    .line 731
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAbort:Z

    if-eqz v2, :cond_1

    .line 732
    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestThread:Ljava/lang/Thread;

    .line 733
    monitor-exit v1

    return-void

    .line 735
    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mRequestQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatterySipper;

    .line 736
    .local v0, bs:Lcom/android/settings/fuelgauge/BatterySipper;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/BatterySipper;->getNameIcon()V

    goto :goto_0

    .line 736
    .end local v0           #bs:Lcom/android/settings/fuelgauge/BatterySipper;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
