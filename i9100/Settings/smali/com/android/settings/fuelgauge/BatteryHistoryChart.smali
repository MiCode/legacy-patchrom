.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mLargeMode:Z

.field mLevelBottom:I

.field mLevelOffset:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I

.field mWakeLockLabel:Ljava/lang/String;

.field mWakeLockOffset:I

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 25
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 178
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 112
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 113
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 114
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 115
    new-instance v20, Landroid/graphics/Paint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/graphics/Paint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 116
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 117
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 118
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 119
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 120
    new-instance v20, Landroid/graphics/Paint;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    .line 121
    new-instance v20, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct/range {v20 .. v20}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 122
    new-instance v20, Landroid/text/TextPaint;

    const/16 v21, 0x1

    invoke-direct/range {v20 .. v21}, Landroid/text/TextPaint;-><init>(I)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 124
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 125
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 126
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 127
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 128
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 129
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 130
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 131
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 132
    new-instance v20, Landroid/graphics/Path;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Path;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    const/16 v22, 0x80

    const/16 v23, 0x80

    const/16 v24, 0x80

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    const/16 v22, 0x0

    const/16 v23, 0xff

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0x80

    const/16 v22, 0xff

    const/16 v23, 0xff

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xc0

    const/16 v22, 0xff

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    const/16 v21, 0xff

    const/16 v22, 0x0

    const/16 v23, 0x80

    const/16 v24, 0x0

    invoke-virtual/range {v20 .. v24}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 189
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual/range {v20 .. v21}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 194
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v20, v0

    const/16 v21, 0x7

    move/from16 v0, v21

    new-array v0, v0, [I

    move-object/from16 v21, v0

    fill-array-data v21, :array_0

    invoke-virtual/range {v20 .. v21}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, v20

    iput v0, v1, Landroid/text/TextPaint;->density:F

    .line 200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    .line 203
    sget-object v20, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 207
    .local v5, a:Landroid/content/res/TypedArray;
    const/16 v16, 0x0

    .line 208
    .local v16, textColor:Landroid/content/res/ColorStateList;
    const/16 v17, 0xf

    .line 209
    .local v17, textSize:I
    const/16 v19, -0x1

    .line 210
    .local v19, typefaceIndex:I
    const/4 v15, -0x1

    .line 212
    .local v15, styleIndex:I
    const/4 v7, 0x0

    .line 213
    .local v7, appearance:Landroid/content/res/TypedArray;
    const/16 v20, 0x0

    const/16 v21, -0x1

    move-object v0, v5

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    .line 214
    .local v6, ap:I
    const/16 v20, -0x1

    move v0, v6

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 215
    sget-object v20, Lcom/android/internal/R$styleable;->TextAppearance:[I

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 219
    :cond_0
    if-eqz v7, :cond_2

    .line 220
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 221
    .local v12, n:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v12, :cond_1

    .line 222
    invoke-virtual {v7, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 224
    .local v8, attr:I
    packed-switch v8, :pswitch_data_0

    .line 221
    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 226
    :pswitch_0
    invoke-virtual {v7, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 227
    goto :goto_1

    .line 230
    :pswitch_1
    move-object v0, v7

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 231
    goto :goto_1

    .line 234
    :pswitch_2
    const/16 v20, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 235
    goto :goto_1

    .line 238
    :pswitch_3
    const/16 v20, -0x1

    move-object v0, v7

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 239
    goto :goto_1

    .line 245
    .end local v8           #attr:I
    :cond_1
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 248
    .end local v11           #i:I
    .end local v12           #n:I
    :cond_2
    const/4 v14, 0x0

    .line 249
    .local v14, shadowcolor:I
    const/4 v9, 0x0

    .local v9, dx:F
    const/4 v10, 0x0

    .local v10, dy:F
    const/4 v13, 0x0

    .line 251
    .local v13, r:F
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v12

    .line 252
    .restart local v12       #n:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-ge v11, v12, :cond_3

    .line 253
    invoke-virtual {v5, v11}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v8

    .line 255
    .restart local v8       #attr:I
    packed-switch v8, :pswitch_data_1

    .line 252
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 257
    :pswitch_4
    const/16 v20, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    .line 258
    goto :goto_3

    .line 261
    :pswitch_5
    const/16 v20, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 262
    goto :goto_3

    .line 265
    :pswitch_6
    const/16 v20, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    .line 266
    goto :goto_3

    .line 269
    :pswitch_7
    const/16 v20, 0x0

    move-object v0, v5

    move v1, v8

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v13

    .line 270
    goto :goto_3

    .line 273
    :pswitch_8
    invoke-virtual {v5, v8}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v16

    .line 274
    goto :goto_3

    .line 277
    :pswitch_9
    move-object v0, v5

    move v1, v8

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v17

    .line 278
    goto :goto_3

    .line 281
    :pswitch_a
    move-object v0, v5

    move v1, v8

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v19

    .line 282
    goto :goto_3

    .line 285
    :pswitch_b
    invoke-virtual {v5, v8, v15}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    .line 286
    goto :goto_3

    .line 292
    .end local v8           #attr:I
    :cond_3
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v21

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setColor(I)V

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 297
    const/16 v18, 0x0

    .line 298
    .local v18, tf:Landroid/graphics/Typeface;
    packed-switch v19, :pswitch_data_2

    .line 314
    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 316
    if-eqz v14, :cond_4

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v13

    move v2, v9

    move v3, v10

    move v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 319
    :cond_4
    return-void

    .line 300
    :pswitch_c
    sget-object v18, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    .line 301
    goto :goto_4

    .line 304
    :pswitch_d
    sget-object v18, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    .line 305
    goto :goto_4

    .line 308
    :pswitch_e
    sget-object v18, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    .line 309
    goto :goto_4

    .line 194
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa0t 0xfft
        0x0t 0xa0t 0xa0t 0xfft
        0x20t 0x80t 0x80t 0xfft
        0x40t 0x80t 0x80t 0xfft
        0x60t 0x80t 0x80t 0xfft
        0x0t 0x80t 0x0t 0xfft
    .end array-data

    .line 224
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 255
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 298
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method


# virtual methods
.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 6
    .parameter "w"
    .parameter "h"
    .parameter "levelh"
    .parameter "startX"
    .parameter "y"
    .parameter "curLevelPath"
    .parameter "lastX"
    .parameter "lastCharging"
    .parameter "lastScreenOn"
    .parameter "lastGpsOn"
    .parameter "lastWifiRunning"
    .parameter "lastWakeLock"
    .parameter "lastPath"

    .prologue
    .line 403
    if-eqz p6, :cond_2

    .line 404
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 405
    if-eqz p13, :cond_0

    .line 406
    int-to-float v3, p1

    int-to-float v4, p5

    move-object/from16 v0, p13

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    :cond_0
    int-to-float v3, p1

    int-to-float v4, p5

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    :cond_1
    int-to-float v3, p1

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 411
    int-to-float v3, p4

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v4, p3

    int-to-float v4, v4

    invoke-virtual {p6, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 412
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 415
    :cond_2
    if-eqz p8, :cond_3

    .line 416
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 418
    :cond_3
    if-eqz p9, :cond_4

    .line 419
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 421
    :cond_4
    if-eqz p10, :cond_5

    .line 422
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 424
    :cond_5
    if-eqz p11, :cond_6

    .line 425
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 427
    :cond_6
    if-eqz p12, :cond_7

    .line 428
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    int-to-float v4, p1

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 430
    :cond_7
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v3, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 431
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .parameter "canvas"

    .prologue
    const/4 v1, 0x0

    .line 646
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 648
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v9

    .line 649
    .local v9, width:I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v6

    .line 651
    .local v6, height:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 652
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_a

    .line 653
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 655
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    div-int/lit8 v2, v9, 0x2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 661
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 667
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 668
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 670
    :cond_2
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v0, v6, v0

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int v8, v0, v2

    .line 671
    .local v8, top:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v0, p1, v8, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 672
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 673
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 675
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 678
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_5

    .line 679
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 680
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 683
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_6

    .line 684
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 685
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 688
    :cond_6
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 689
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 692
    :cond_7
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v0, :cond_b

    .line 693
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 695
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v0, :cond_8

    .line 696
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 699
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v0, :cond_9

    .line 700
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 703
    :cond_9
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 705
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 707
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, v6, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 709
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v2, v0

    int-to-float v3, v9

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 711
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v2, v0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 713
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    const/16 v0, 0xa

    if-ge v7, v0, :cond_b

    .line 714
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v7

    div-int/lit8 v2, v2, 0xa

    add-int v10, v0, v2

    .line 715
    .local v10, y:I
    int-to-float v2, v10

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v3, v0

    int-to-float v4, v10

    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 713
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 658
    .end local v7           #i:I
    .end local v8           #top:I
    .end local v10           #y:I
    :cond_a
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    div-int/lit8 v2, v9, 0x2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-int/lit8 v3, v6, 0x2

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 718
    .restart local v8       #top:I
    :cond_b
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 395
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    .line 396
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 397
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 398
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 38
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 435
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 437
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    move v4, v0

    sub-int v28, v3, v4

    .line 438
    .local v28, textHeight:I
    const/4 v3, 0x1

    const/high16 v4, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v3, v4, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v3

    float-to-int v3, v3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 440
    mul-int/lit8 v3, v28, 0x6

    move/from16 v0, p2

    move v1, v3

    if-le v0, v1, :cond_9

    .line 441
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 442
    div-int/lit8 v3, v28, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    add-int v3, v3, v28

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 444
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 446
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/16 v5, 0x20

    const/16 v6, 0x40

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 457
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    if-gtz v3, :cond_0

    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 458
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v4, v0

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 468
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    move v3, v0

    if-eqz v3, :cond_c

    .line 469
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    add-int v18, v28, v3

    .line 470
    .local v18, barOffset:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 471
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move v3, v0

    add-int v3, v3, v18

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 472
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move v3, v0

    add-int v3, v3, v18

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    .line 473
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move v3, v0

    add-int v3, v3, v18

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 474
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    move v4, v0

    if-eqz v4, :cond_a

    move/from16 v4, v18

    :goto_1
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 475
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    move v4, v0

    if-eqz v4, :cond_b

    move/from16 v4, v18

    :goto_2
    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 476
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    move v3, v0

    add-int v3, v3, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v4, v0

    add-int/2addr v3, v4

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 487
    .end local v18           #barOffset:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 494
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 497
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v31, v0

    .line 498
    .local v31, timeStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide v3, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide v5, v0

    sub-long v29, v3, v5

    .line 500
    .local v29, timeChange:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v20, v0

    .line 501
    .local v20, batLow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move v3, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move v4, v0

    sub-int v19, v3, v4

    .line 503
    .local v19, batChange:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    move v3, v0

    sub-int v3, p2, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move v4, v0

    sub-int v6, v3, v4

    .line 504
    .local v6, levelh:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move v3, v0

    add-int/2addr v3, v6

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 506
    const/16 v36, 0x0

    .local v36, x:I
    const/16 v37, 0x0

    .local v37, y:I
    const/4 v7, 0x0

    .local v7, startX:I
    const/4 v10, -0x1

    .local v10, lastX:I
    const/4 v8, -0x1

    .line 507
    .local v8, lastY:I
    const/16 v24, 0x0

    .line 508
    .local v24, i:I
    const/4 v9, 0x0

    .line 509
    .local v9, curLevelPath:Landroid/graphics/Path;
    const/16 v16, 0x0

    .line 510
    .local v16, lastLinePath:Landroid/graphics/Path;
    const/4 v11, 0x0

    .local v11, lastCharging:Z
    const/4 v12, 0x0

    .local v12, lastScreenOn:Z
    const/4 v13, 0x0

    .line 511
    .local v13, lastGpsOn:Z
    const/4 v14, 0x0

    .local v14, lastWifiRunning:Z
    const/4 v15, 0x0

    .line 512
    .local v15, lastWakeLock:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move/from16 v17, v0

    .line 513
    .local v17, N:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 514
    new-instance v26, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v26 .. v26}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 515
    .local v26, rec:Landroid/os/BatteryStats$HistoryItem;
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v3

    if-eqz v3, :cond_1e

    move/from16 v0, v24

    move/from16 v1, v17

    if-ge v0, v1, :cond_1e

    .line 516
    move-object/from16 v0, v26

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v3, v0

    if-nez v3, :cond_1d

    .line 517
    move-object/from16 v0, v26

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v3, v0

    sub-long v3, v3, v31

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v3, v3, v21

    div-long v3, v3, v29

    move-wide v0, v3

    long-to-int v0, v0

    move/from16 v36, v0

    .line 518
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move v3, v0

    add-int/2addr v3, v6

    move-object/from16 v0, v26

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move v4, v0

    sub-int v4, v4, v20

    const/4 v5, 0x1

    sub-int v5, v6, v5

    mul-int/2addr v4, v5

    div-int v4, v4, v19

    sub-int v37, v3, v4

    .line 520
    move v0, v10

    move/from16 v1, v36

    if-eq v0, v1, :cond_8

    .line 522
    move v0, v8

    move/from16 v1, v37

    if-eq v0, v1, :cond_2

    .line 525
    move-object/from16 v0, v26

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v33, v0

    .line 526
    .local v33, value:B
    const/16 v3, 0xe

    move/from16 v0, v33

    move v1, v3

    if-gt v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    .line 530
    .local v25, path:Landroid/graphics/Path;
    :goto_5
    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 531
    if-eqz v16, :cond_1

    .line 532
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v16

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 534
    :cond_1
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 535
    move-object/from16 v16, v25

    .line 540
    :goto_6
    if-nez v9, :cond_10

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    move-object v9, v0

    .line 542
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 543
    move/from16 v7, v36

    .line 547
    :goto_7
    move/from16 v10, v36

    .line 548
    move/from16 v8, v37

    .line 551
    .end local v25           #path:Landroid/graphics/Path;
    .end local v33           #value:B
    :cond_2
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    const/high16 v4, 0x4000

    and-int/2addr v3, v4

    if-eqz v3, :cond_11

    const/4 v3, 0x1

    move/from16 v22, v3

    .line 553
    .local v22, charging:Z
    :goto_8
    move/from16 v0, v22

    move v1, v11

    if-eq v0, v1, :cond_3

    .line 554
    if-eqz v22, :cond_12

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 559
    :goto_9
    move/from16 v11, v22

    .line 562
    :cond_3
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    const/high16 v4, 0x2000

    and-int/2addr v3, v4

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    move/from16 v27, v3

    .line 564
    .local v27, screenOn:Z
    :goto_a
    move/from16 v0, v27

    move v1, v12

    if-eq v0, v1, :cond_4

    .line 565
    if-eqz v27, :cond_14

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 570
    :goto_b
    move/from16 v12, v27

    .line 573
    :cond_4
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    const/high16 v4, 0x1000

    and-int/2addr v3, v4

    if-eqz v3, :cond_15

    const/4 v3, 0x1

    move/from16 v23, v3

    .line 575
    .local v23, gpsOn:Z
    :goto_c
    move/from16 v0, v23

    move v1, v13

    if-eq v0, v1, :cond_5

    .line 576
    if-eqz v23, :cond_16

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 581
    :goto_d
    move/from16 v13, v23

    .line 584
    :cond_5
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    const/high16 v4, 0x100

    and-int/2addr v3, v4

    if-eqz v3, :cond_17

    const/4 v3, 0x1

    move/from16 v35, v3

    .line 586
    .local v35, wifiRunning:Z
    :goto_e
    move/from16 v0, v35

    move v1, v14

    if-eq v0, v1, :cond_6

    .line 587
    if-eqz v35, :cond_18

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 592
    :goto_f
    move/from16 v14, v35

    .line 595
    :cond_6
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    const/high16 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_19

    const/4 v3, 0x1

    move/from16 v34, v3

    .line 597
    .local v34, wakeLock:Z
    :goto_10
    move/from16 v0, v34

    move v1, v15

    if-eq v0, v1, :cond_7

    .line 598
    if-eqz v34, :cond_1a

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 603
    :goto_11
    move/from16 v15, v34

    .line 606
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    move v3, v0

    if-eqz v3, :cond_8

    .line 608
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    and-int/lit16 v3, v3, 0xf00

    shr-int/lit8 v3, v3, 0x8

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1b

    .line 611
    const/16 v21, 0x0

    .line 619
    .local v21, bin:I
    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v36

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 635
    .end local v21           #bin:I
    .end local v22           #charging:Z
    .end local v23           #gpsOn:Z
    .end local v27           #screenOn:Z
    .end local v34           #wakeLock:Z
    .end local v35           #wifiRunning:Z
    :cond_8
    :goto_13
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_4

    .line 449
    .end local v6           #levelh:I
    .end local v7           #startX:I
    .end local v8           #lastY:I
    .end local v9           #curLevelPath:Landroid/graphics/Path;
    .end local v10           #lastX:I
    .end local v11           #lastCharging:Z
    .end local v12           #lastScreenOn:Z
    .end local v13           #lastGpsOn:Z
    .end local v14           #lastWifiRunning:Z
    .end local v15           #lastWakeLock:Z
    .end local v16           #lastLinePath:Landroid/graphics/Path;
    .end local v17           #N:I
    .end local v19           #batChange:I
    .end local v20           #batLow:I
    .end local v24           #i:I
    .end local v26           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v29           #timeChange:J
    .end local v31           #timeStart:J
    .end local v36           #x:I
    .end local v37           #y:I
    :cond_9
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 450
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 451
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 452
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object v3, v0

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xff

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    goto/16 :goto_0

    .line 474
    .restart local v18       #barOffset:I
    :cond_a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 475
    :cond_b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 479
    .end local v18           #barOffset:I
    :cond_c
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 481
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    mul-int/lit8 v3, v3, 0x2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 482
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 483
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move v3, v0

    mul-int/lit8 v3, v3, 0x3

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_3

    .line 527
    .restart local v6       #levelh:I
    .restart local v7       #startX:I
    .restart local v8       #lastY:I
    .restart local v9       #curLevelPath:Landroid/graphics/Path;
    .restart local v10       #lastX:I
    .restart local v11       #lastCharging:Z
    .restart local v12       #lastScreenOn:Z
    .restart local v13       #lastGpsOn:Z
    .restart local v14       #lastWifiRunning:Z
    .restart local v15       #lastWakeLock:Z
    .restart local v16       #lastLinePath:Landroid/graphics/Path;
    .restart local v17       #N:I
    .restart local v19       #batChange:I
    .restart local v20       #batLow:I
    .restart local v24       #i:I
    .restart local v26       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v29       #timeChange:J
    .restart local v31       #timeStart:J
    .restart local v33       #value:B
    .restart local v36       #x:I
    .restart local v37       #y:I
    :cond_d
    const/16 v3, 0x1d

    move/from16 v0, v33

    move v1, v3

    if-gt v0, v1, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    .restart local v25       #path:Landroid/graphics/Path;
    goto/16 :goto_5

    .line 528
    .end local v25           #path:Landroid/graphics/Path;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    .restart local v25       #path:Landroid/graphics/Path;
    goto/16 :goto_5

    .line 537
    :cond_f
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, v25

    move v1, v3

    move v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_6

    .line 545
    :cond_10
    move/from16 v0, v36

    int-to-float v0, v0

    move v3, v0

    move/from16 v0, v37

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_7

    .line 551
    .end local v25           #path:Landroid/graphics/Path;
    .end local v33           #value:B
    :cond_11
    const/4 v3, 0x0

    move/from16 v22, v3

    goto/16 :goto_8

    .line 557
    .restart local v22       #charging:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 562
    :cond_13
    const/4 v3, 0x0

    move/from16 v27, v3

    goto/16 :goto_a

    .line 568
    .restart local v27       #screenOn:Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_b

    .line 573
    :cond_15
    const/4 v3, 0x0

    move/from16 v23, v3

    goto/16 :goto_c

    .line 579
    .restart local v23       #gpsOn:Z
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_d

    .line 584
    :cond_17
    const/4 v3, 0x0

    move/from16 v35, v3

    goto/16 :goto_e

    .line 590
    .restart local v35       #wifiRunning:Z
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    .line 595
    :cond_19
    const/4 v3, 0x0

    move/from16 v34, v3

    goto/16 :goto_10

    .line 601
    .restart local v34       #wakeLock:Z
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v3, v0

    move/from16 v0, v36

    int-to-float v0, v0

    move v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockOffset:I

    move v5, v0

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_11

    .line 612
    :cond_1b
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    const/high16 v4, 0x400

    and-int/2addr v3, v4

    if-eqz v3, :cond_1c

    .line 613
    const/16 v21, 0x1

    .restart local v21       #bin:I
    goto/16 :goto_12

    .line 615
    .end local v21           #bin:I
    :cond_1c
    move-object/from16 v0, v26

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move v3, v0

    and-int/lit16 v3, v3, 0xf0

    shr-int/lit8 v21, v3, 0x4

    .line 617
    .restart local v21       #bin:I
    add-int/lit8 v21, v21, 0x2

    goto/16 :goto_12

    .line 623
    .end local v21           #bin:I
    .end local v22           #charging:Z
    .end local v23           #gpsOn:Z
    .end local v27           #screenOn:Z
    .end local v34           #wakeLock:Z
    .end local v35           #wifiRunning:Z
    :cond_1d
    move-object/from16 v0, v26

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move v3, v0

    const/4 v4, 0x2

    if-eq v3, v4, :cond_8

    .line 624
    if-eqz v9, :cond_8

    .line 625
    add-int/lit8 v4, v36, 0x1

    move-object/from16 v3, p0

    move/from16 v5, p2

    invoke-virtual/range {v3 .. v16}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 628
    const/4 v8, -0x1

    move v10, v8

    .line 629
    const/4 v9, 0x0

    .line 630
    const/16 v16, 0x0

    .line 631
    const/4 v15, 0x0

    move v13, v15

    move v12, v15

    move v11, v15

    goto/16 :goto_13

    .end local v26           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_1e
    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    .line 639
    invoke-virtual/range {v3 .. v16}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 642
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 14
    .parameter "stats"

    .prologue
    .line 343
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    .line 345
    iget-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    const/4 v12, 0x0

    invoke-virtual {v9, v10, v11, v12}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v7

    .line 347
    .local v7, uSecTime:J
    iput-wide v7, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v1

    .line 349
    .local v1, durationString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080421

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v1, v11, v12

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080423

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080424

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080425

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    .line 354
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080426

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080427

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWakeLockLabel:Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f080428

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    .line 358
    const/4 v5, 0x0

    .line 359
    .local v5, pos:I
    const/4 v3, 0x0

    .line 360
    .local v3, lastInteresting:I
    const/4 v4, -0x1

    .line 361
    .local v4, lastLevel:B
    const/4 v9, 0x0

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 362
    const/16 v9, 0x64

    iput v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    .line 363
    const/4 v0, 0x0

    .line 364
    .local v0, aggrStates:I
    const/4 v2, 0x1

    .line 365
    .local v2, first:Z
    invoke-virtual {p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 366
    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 367
    .local v6, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-virtual {p1, v6}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 368
    add-int/lit8 v5, v5, 0x1

    .line 369
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v9, :cond_0

    .line 370
    if-eqz v2, :cond_1

    .line 371
    const/4 v2, 0x0

    .line 372
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    .line 374
    :cond_1
    iget-byte v9, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v9, v4, :cond_2

    const/4 v9, 0x1

    if-ne v5, v9, :cond_3

    .line 375
    :cond_2
    iget-byte v4, v6, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 376
    move v3, v5

    .line 377
    iget-wide v9, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 379
    :cond_3
    iget v9, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v0, v9

    goto :goto_0

    .line 383
    .end local v6           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    iput v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 384
    const/high16 v9, 0x1000

    and-int/2addr v9, v0

    if-eqz v9, :cond_6

    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    .line 385
    const/high16 v9, 0x100

    and-int/2addr v9, v0

    if-eqz v9, :cond_7

    const/4 v9, 0x1

    :goto_2
    iput-boolean v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    .line 387
    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v11, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v9, v9, v11

    if-gtz v9, :cond_5

    iget-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    const-wide/16 v11, 0x1

    add-long/2addr v9, v11

    iput-wide v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    .line 388
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v9

    iget-wide v10, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v12, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v10, v12

    long-to-double v10, v10

    invoke-static {v9, v10, v11}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    .line 389
    return-void

    .line 384
    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    .line 385
    :cond_7
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public setTypeface(Landroid/graphics/Typeface;I)V
    .locals 6
    .parameter "tf"
    .parameter "style"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 322
    if-lez p2, :cond_4

    .line 323
    if-nez p1, :cond_0

    .line 324
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p1

    .line 329
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 331
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Typeface;->getStyle()I

    move-result v2

    move v1, v2

    .line 332
    .local v1, typefaceStyle:I
    :goto_1
    xor-int/lit8 v2, v1, -0x1

    and-int v0, p2, v2

    .line 333
    .local v0, need:I
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    :goto_2
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 334
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    const/high16 v3, -0x4180

    :goto_3
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 340
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :goto_4
    return-void

    .line 326
    :cond_0
    invoke-static {p1, p2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    goto :goto_0

    :cond_1
    move v1, v4

    .line 331
    goto :goto_1

    .restart local v0       #need:I
    .restart local v1       #typefaceStyle:I
    :cond_2
    move v3, v4

    .line 333
    goto :goto_2

    :cond_3
    move v3, v5

    .line 334
    goto :goto_3

    .line 336
    .end local v0           #need:I
    .end local v1           #typefaceStyle:I
    :cond_4
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 337
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 338
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto :goto_4
.end method
