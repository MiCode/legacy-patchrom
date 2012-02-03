.class public Lcom/android/server/TwilightCalculator;
.super Ljava/lang/Object;
.source "TwilightCalculator.java"


# static fields
.field private static final ALTIDUTE_CORRECTION_CIVIL_TWILIGHT:F = -0.10471976f

.field private static final C1:F = 0.0334196f

.field private static final C2:F = 3.49066E-4f

.field private static final C3:F = 5.236E-6f

.field public static final DAY:I = 0x0

.field private static final DEGREES_TO_RADIANS:F = 0.017453292f

.field private static final J0:F = 9.0E-4f

.field public static final NIGHT:I = 0x1

.field private static final OBLIQUITY:F = 0.4092797f

.field private static final UTC_2000:J = 0xdc6d62da00L


# instance fields
.field public mState:I

.field public mSunrise:J

.field public mSunset:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateTwilight(JDD)V
    .locals 25
    .parameter "time"
    .parameter "latiude"
    .parameter "longitude"

    .prologue
    .line 72
    const-wide v19, 0xdc6d62da00L

    sub-long v19, p1, v19

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move/from16 v19, v0

    const v20, 0x4ca4cb80

    div-float v7, v19, v20

    .line 75
    .local v7, daysSince2000:F
    const v19, 0x40c7ae92

    const v20, 0x3c8ceb25

    mul-float v20, v20, v7

    add-float v11, v19, v20

    .line 78
    .local v11, meanAnomaly:F
    const v19, 0x3d08e2fe

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v20

    mul-float v19, v19, v20

    add-float v19, v19, v11

    const v20, 0x39b702d8

    const/high16 v21, 0x4000

    mul-float v21, v21, v11

    invoke-static/range {v21 .. v21}, Landroid/util/FloatMath;->sin(F)F

    move-result v21

    mul-float v20, v20, v21

    add-float v19, v19, v20

    const v20, 0x36afb0e6

    const/high16 v21, 0x4040

    mul-float v21, v21, v11

    invoke-static/range {v21 .. v21}, Landroid/util/FloatMath;->sin(F)F

    move-result v21

    mul-float v20, v20, v21

    add-float v18, v19, v20

    .line 82
    .local v18, trueAnomaly:F
    const v19, 0x3fe5f6c3

    add-float v19, v19, v18

    const v20, 0x40490fdb

    add-float v15, v19, v20

    .line 85
    .local v15, solarLng:F
    move-wide/from16 v0, p5

    neg-double v0, v0

    move-wide/from16 v19, v0

    const-wide v21, 0x4076800000000000L

    div-double v3, v19, v21

    .line 86
    .local v3, arcLongitude:D
    const v19, 0x3a6bedfa

    sub-float v19, v7, v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v19, v3

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-float v0, v0

    move v12, v0

    .line 87
    .local v12, n:F
    const v19, 0x3a6bedfa

    add-float v19, v19, v12

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v3

    const v21, 0x3badab9f

    invoke-static {v11}, Landroid/util/FloatMath;->sin(F)F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v19, v19, v21

    const v21, -0x441de69b

    const/high16 v22, 0x4000

    mul-float v22, v22, v15

    invoke-static/range {v22 .. v22}, Landroid/util/FloatMath;->sin(F)F

    move-result v22

    mul-float v21, v21, v22

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    add-double v16, v19, v21

    .line 91
    .local v16, solarTransitJ2000:D
    invoke-static {v15}, Landroid/util/FloatMath;->sin(F)F

    move-result v19

    const v20, 0x3ed18d1c

    invoke-static/range {v20 .. v20}, Landroid/util/FloatMath;->sin(F)F

    move-result v20

    mul-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->asin(D)D

    move-result-wide v13

    .line 93
    .local v13, solarDec:D
    const-wide v19, 0x3f91df46a0000000L

    mul-double v9, p3, v19

    .line 95
    .local v9, latRad:D
    const v19, -0x422988b0

    invoke-static/range {v19 .. v19}, Landroid/util/FloatMath;->sin(F)F

    move-result v19

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v21

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    sub-double v19, v19, v21

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v21

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    div-double v5, v19, v21

    .line 99
    .local v5, cosHourAngle:D
    const-wide/high16 v19, 0x3ff0

    cmpl-double v19, v5, v19

    if-ltz v19, :cond_0

    .line 100
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 101
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 102
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 121
    :goto_0
    return-void

    .line 104
    :cond_0
    const-wide/high16 v19, -0x4010

    cmpg-double v19, v5, v19

    if-gtz v19, :cond_1

    .line 105
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    .line 106
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 107
    const-wide/16 v19, -0x1

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    goto :goto_0

    .line 111
    :cond_1
    invoke-static {v5, v6}, Ljava/lang/Math;->acos(D)D

    move-result-wide v19

    const-wide v21, 0x401921fb54442d18L

    div-double v19, v19, v21

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move v8, v0

    .line 113
    .local v8, hourAngle:F
    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v19, v0

    add-double v19, v19, v16

    const-wide v21, 0x4194997000000000L

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    const-wide v21, 0xdc6d62da00L

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunset:J

    .line 114
    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v19, v0

    sub-double v19, v16, v19

    const-wide v21, 0x4194997000000000L

    mul-double v19, v19, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->round(D)J

    move-result-wide v19

    const-wide v21, 0xdc6d62da00L

    add-long v19, v19, v21

    move-wide/from16 v0, v19

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/TwilightCalculator;->mSunrise:J

    .line 116
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunrise:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, p1

    if-gez v19, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/TwilightCalculator;->mSunset:J

    move-wide/from16 v19, v0

    cmp-long v19, v19, p1

    if-lez v19, :cond_2

    .line 117
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    goto/16 :goto_0

    .line 119
    :cond_2
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/TwilightCalculator;->mState:I

    goto/16 :goto_0
.end method
