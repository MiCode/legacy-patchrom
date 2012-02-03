.class public Landroid/hardware/GeomagneticField;
.super Ljava/lang/Object;
.source "GeomagneticField.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/GeomagneticField$LegendreTable;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

#the value of this static final field might be set in the static constructor
.field private static final BASE_TIME:J = 0x0L

.field private static final DELTA_G:[[F = null

.field private static final DELTA_H:[[F = null

.field private static final EARTH_REFERENCE_RADIUS_KM:F = 6371.2f

.field private static final EARTH_SEMI_MAJOR_AXIS_KM:F = 6378.137f

.field private static final EARTH_SEMI_MINOR_AXIS_KM:F = 6356.7524f

.field private static final G_COEFF:[[F

.field private static final H_COEFF:[[F

.field private static final SCHMIDT_QUASI_NORM_FACTORS:[[F


# instance fields
.field private mGcLatitudeRad:F

.field private mGcLongitudeRad:F

.field private mGcRadiusKm:F

.field private mX:F

.field private mY:F

.field private mZ:F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 33
    const-class v0, Landroid/hardware/GeomagneticField;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Landroid/hardware/GeomagneticField;->$assertionsDisabled:Z

    .line 52
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v3, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    new-array v1, v6, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v7, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    new-array v2, v2, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    .line 67
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v3, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v3

    new-array v1, v6, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v7, [F

    fill-array-data v1, :array_e

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    new-array v2, v2, [F

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    .line 82
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v3, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_18

    aput-object v1, v0, v3

    new-array v1, v6, [F

    fill-array-data v1, :array_19

    aput-object v1, v0, v5

    new-array v1, v7, [F

    fill-array-data v1, :array_1a

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_1b

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    new-array v2, v2, [F

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    .line 97
    const/16 v0, 0xd

    new-array v0, v0, [[F

    new-array v1, v3, [F

    const/4 v2, 0x0

    aput v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v5, [F

    fill-array-data v1, :array_24

    aput-object v1, v0, v3

    new-array v1, v6, [F

    fill-array-data v1, :array_25

    aput-object v1, v0, v5

    new-array v1, v7, [F

    fill-array-data v1, :array_26

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [F

    fill-array-data v1, :array_27

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [F

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x8

    new-array v2, v2, [F

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0x9

    new-array v2, v2, [F

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xa

    new-array v2, v2, [F

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0xb

    new-array v2, v2, [F

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0xc

    new-array v2, v2, [F

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0xd

    new-array v2, v2, [F

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    sput-object v0, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    .line 112
    new-instance v0, Ljava/util/GregorianCalendar;

    const/16 v1, 0x7da

    invoke-direct {v0, v1, v3, v3}, Ljava/util/GregorianCalendar;-><init>(III)V

    invoke-virtual {v0}, Ljava/util/GregorianCalendar;->getTimeInMillis()J

    move-result-wide v0

    sput-wide v0, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    .line 118
    sget-object v0, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    array-length v0, v0

    invoke-static {v0}, Landroid/hardware/GeomagneticField;->computeSchmidtQuasiNormFactors(I)[[F

    move-result-object v0

    sput-object v0, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    return-void

    :cond_0
    move v0, v4

    .line 33
    goto/16 :goto_0

    .line 52
    :array_0
    .array-data 0x4
        0x33t 0x71t 0xe6t 0xc6t
        0x9at 0x49t 0xc6t 0xc4t
    .end array-data

    :array_1
    .array-data 0x4
        0x9at 0xc9t 0x15t 0xc5t
        0x9at 0x21t 0x3dt 0x45t
        0x33t 0x93t 0xd0t 0x44t
    .end array-data

    :array_2
    .array-data 0x4
        0x33t 0x83t 0xa7t 0x44t
        0x33t 0x63t 0x11t 0xc5t
        0xcdt 0xfct 0x99t 0x44t
        0x0t 0x80t 0x1et 0x44t
    .end array-data

    :array_3
    .array-data 0x4
        0x66t 0x26t 0x64t 0x44t
        0x9at 0x39t 0x4at 0x44t
        0x33t 0xb3t 0x26t 0x43t
        0xcdt 0x8ct 0xb2t 0xc3t
        0xcdt 0xcct 0xb2t 0x42t
    .end array-data

    :array_4
    .array-data 0x4
        0x66t 0xe6t 0x66t 0xc3t
        0x9at 0x99t 0xb2t 0x43t
        0xcdt 0x4ct 0x48t 0x43t
        0x9at 0x19t 0xdt 0xc3t
        0x0t 0x0t 0x23t 0xc3t
        0x9at 0x99t 0xf9t 0xc0t
    .end array-data

    :array_5
    .array-data 0x4
        0x9at 0x99t 0x91t 0x42t
        0x33t 0x33t 0x89t 0x42t
        0x0t 0x0t 0x98t 0x42t
        0x66t 0x66t 0xdt 0xc3t
        0x66t 0x66t 0xb6t 0xc1t
        0x33t 0x33t 0x53t 0x41t
        0xcdt 0xcct 0x9bt 0xc2t
    .end array-data

    :array_6
    .array-data 0x4
        0x0t 0x0t 0xa1t 0x42t
        0x33t 0x33t 0x96t 0xc2t
        0x66t 0x66t 0x96t 0xc0t
        0x33t 0x33t 0x35t 0x42t
        0x66t 0x66t 0x5et 0x41t
        0x66t 0x66t 0x26t 0x41t
        0x9at 0x99t 0xd9t 0x3ft
        0xcdt 0xcct 0x9ct 0x40t
    .end array-data

    :array_7
    .array-data 0x4
        0x33t 0x33t 0xc3t 0x41t
        0x9at 0x99t 0x1t 0x41t
        0x0t 0x0t 0x68t 0xc1t
        0x33t 0x33t 0xb3t 0xc0t
        0x66t 0x66t 0x9at 0xc1t
        0x0t 0x0t 0x38t 0x41t
        0x66t 0x66t 0x2et 0x41t
        0x9at 0x99t 0x61t 0xc1t
        0xcdt 0xcct 0x6ct 0xc0t
    .end array-data

    :array_8
    .array-data 0x4
        0xcdt 0xcct 0xact 0x40t
        0x66t 0x66t 0x16t 0x41t
        0x9at 0x99t 0x59t 0x40t
        0x66t 0x66t 0xa6t 0xc0t
        0x66t 0x66t 0x46t 0x40t
        0x66t 0x66t 0x46t 0xc1t
        0x33t 0x33t 0x33t 0xbft
        0x66t 0x66t 0x6t 0x41t
        0x0t 0x0t 0x8t 0xc1t
        0x9at 0x99t 0x21t 0xc1t
    .end array-data

    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0xc0t
        0x9at 0x99t 0xc9t 0xc0t
        0x66t 0x66t 0x66t 0x3ft
        0xcdt 0xcct 0x8ct 0xbft
        0xcdt 0xcct 0x4ct 0xbet
        0x0t 0x0t 0x20t 0x40t
        0x9at 0x99t 0x99t 0xbet
        0xcdt 0xcct 0xct 0x40t
        0x66t 0x66t 0x46t 0x40t
        0x0t 0x0t 0x80t 0xbft
        0x33t 0x33t 0x33t 0xc0t
    .end array-data

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0xc0t 0xbft
        0x66t 0x66t 0x6t 0xc0t
        0x9at 0x99t 0xd9t 0x3ft
        0x0t 0x0t 0x0t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0xcdt 0xcct 0x4ct 0xbft
        0xcdt 0xcct 0xcct 0x3et
        0x66t 0x66t 0xe6t 0x3ft
        0xcdt 0xcct 0xcct 0x3dt
        0x33t 0x33t 0x33t 0x3ft
        0x33t 0x33t 0x73t 0x40t
    .end array-data

    :array_b
    .array-data 0x4
        0xcdt 0xcct 0xct 0xc0t
        0xcdt 0xcct 0x4ct 0xbet
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
        0x9at 0x99t 0x19t 0xbft
        0x66t 0x66t 0x66t 0x3ft
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x3ft
        0xcdt 0xcct 0xcct 0xbet
        0xcdt 0xcct 0xcct 0xbet
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0xbft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 67
    :array_c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x83t 0x9at 0x45t
    .end array-data

    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x3bt 0x29t 0xc5t
        0x66t 0x6t 0x10t 0xc4t
    .end array-data

    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0x20t 0xc3t
        0x66t 0xe6t 0x7bt 0x43t
        0x66t 0x26t 0x6t 0xc4t
    .end array-data

    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0x8ft 0x43t
        0x33t 0x33t 0x53t 0xc3t
        0xcdt 0x4ct 0x24t 0x43t
        0xcdt 0x8ct 0x9at 0xc3t
    .end array-data

    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0x32t 0x42t
        0x66t 0xe6t 0x3ct 0x43t
        0x66t 0x66t 0xect 0xc2t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xc9t 0x42t
    .end array-data

    :array_11
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0xa6t 0xc1t
        0x66t 0x66t 0x30t 0x42t
        0x0t 0x0t 0x76t 0x42t
        0x9at 0x99t 0x84t 0xc2t
        0x66t 0x66t 0x46t 0x40t
        0x0t 0x0t 0x5ct 0x42t
    .end array-data

    :array_12
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x67t 0xc2t
        0xcdt 0xcct 0xa8t 0xc1t
        0x0t 0x0t 0xd0t 0x40t
        0x33t 0x33t 0xc7t 0x41t
        0x0t 0x0t 0xe0t 0x40t
        0x9at 0x99t 0xddt 0xc1t
        0x33t 0x33t 0x53t 0xc0t
    .end array-data

    :array_13
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x30t 0x41t
        0x0t 0x0t 0xa0t 0xc1t
        0x66t 0x66t 0x3et 0x41t
        0x33t 0x33t 0x8bt 0xc1t
        0x9at 0x99t 0x85t 0x41t
        0x0t 0x0t 0xe0t 0x40t
        0xcdt 0xcct 0x2ct 0xc1t
        0x9at 0x99t 0xd9t 0x3ft
    .end array-data

    :array_14
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xa4t 0xc1t
        0x0t 0x0t 0x38t 0x41t
        0xcdt 0xcct 0x4ct 0x41t
        0x66t 0x66t 0xe6t 0xc0t
        0xcdt 0xcct 0xect 0xc0t
        0x0t 0x0t 0x0t 0x41t
        0x66t 0x66t 0x6t 0x40t
        0x33t 0x33t 0xc3t 0xc0t
        0x0t 0x0t 0xe0t 0x40t
    .end array-data

    :array_15
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0x33t 0x40t
        0xcdt 0xcct 0xcct 0xbdt
        0x66t 0x66t 0x96t 0x40t
        0xcdt 0xcct 0x8ct 0x40t
        0x66t 0x66t 0xe6t 0xc0t
        0x0t 0x0t 0x80t 0xbft
        0x9at 0x99t 0x79t 0xc0t
        0x0t 0x0t 0x0t 0xc0t
        0x0t 0x0t 0x0t 0xc0t
        0xcdt 0xcct 0x4t 0xc1t
    .end array-data

    :array_16
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0x3et
        0x9at 0x99t 0xd9t 0x3ft
        0x9at 0x99t 0x19t 0xbft
        0x66t 0x66t 0xe6t 0xbft
        0x66t 0x66t 0x66t 0x3ft
        0xcdt 0xcct 0xcct 0xbet
        0x0t 0x0t 0x20t 0xc0t
        0x66t 0x66t 0xa6t 0xbft
        0x66t 0x66t 0x6t 0xc0t
        0x33t 0x33t 0xf3t 0xbft
        0x66t 0x66t 0xe6t 0xbft
    .end array-data

    :array_17
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x66t 0x66t 0x66t 0xbft
        0x9at 0x99t 0x99t 0x3et
        0x66t 0x66t 0x6t 0x40t
        0x0t 0x0t 0x20t 0xc0t
        0x0t 0x0t 0x0t 0x3ft
        0x9at 0x99t 0x19t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x9at 0x99t 0x99t 0x3et
        0x66t 0x66t 0x66t 0xbft
        0xcdt 0xcct 0x4ct 0xbet
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    .line 82
    :array_18
    .array-data 0x4
        0x9at 0x99t 0x39t 0x41t
        0x0t 0x0t 0x84t 0x41t
    .end array-data

    :array_19
    .array-data 0x4
        0x9at 0x99t 0x41t 0xc1t
        0xcdt 0xcct 0x8ct 0xc0t
        0x33t 0x33t 0xf3t 0x3ft
    .end array-data

    :array_1a
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3et
        0x33t 0x33t 0x83t 0xc0t
        0x9at 0x99t 0x39t 0xc0t
        0x66t 0x66t 0xf6t 0xc0t
    .end array-data

    :array_1b
    .array-data 0x4
        0x66t 0x66t 0xe6t 0xbft
        0x33t 0x33t 0x13t 0x40t
        0x33t 0x33t 0xbt 0xc1t
        0x33t 0x33t 0x93t 0x40t
        0x66t 0x66t 0x6t 0xc0t
    .end array-data

    :array_1c
    .array-data 0x4
        0x0t 0x0t 0x80t 0xbft
        0x9at 0x99t 0x19t 0x3ft
        0x66t 0x66t 0xe6t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x66t 0x66t 0x66t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    :array_1d
    .array-data 0x4
        0xcdt 0xcct 0x4ct 0xbet
        0xcdt 0xcct 0x4ct 0xbet
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x40t
        0x9at 0x99t 0xd9t 0xbft
        0x9at 0x99t 0x99t 0xbet
        0x9at 0x99t 0xd9t 0x3ft
    .end array-data

    :array_1e
    .array-data 0x4
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0xbdt
        0x9at 0x99t 0x19t 0xbft
        0x66t 0x66t 0xa6t 0x3ft
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x33t 0x33t 0x33t 0xbft
        0x9at 0x99t 0x19t 0x3ft
    .end array-data

    :array_1f
    .array-data 0x4
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0x3dt
        0x9at 0x99t 0x19t 0xbft
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0x4ct 0xbet
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x19t 0xbft
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data

    :array_20
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0xcct 0xbet
        0x9at 0x99t 0x99t 0xbet
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0xbet
        0xcdt 0xcct 0x4ct 0xbet
    .end array-data

    :array_21
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0x4ct 0xbet
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0x4ct 0xbet
        0xcdt 0xcct 0x4ct 0xbet
    .end array-data

    :array_22
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_23
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0x3dt
    .end array-data

    .line 97
    :array_24
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0xcft 0xc1t
    .end array-data

    :array_25
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0xb4t 0xc1t
        0xcdt 0xcct 0x3ct 0xc1t
    .end array-data

    :array_26
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x9at 0x99t 0xe9t 0x40t
        0x9at 0x99t 0x79t 0xc0t
        0x66t 0x66t 0x26t 0xc0t
    .end array-data

    :array_27
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x8ct 0x3ft
        0xcdt 0xcct 0x2ct 0x40t
        0x9at 0x99t 0x79t 0x40t
        0xcdt 0xcct 0x4ct 0xbft
    .end array-data

    :array_28
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3et
        0x66t 0x66t 0xe6t 0x3ft
        0x9at 0x99t 0x99t 0x3ft
        0x0t 0x0t 0x80t 0x40t
        0x9at 0x99t 0x19t 0xbft
    .end array-data

    :array_29
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0xbet
        0x66t 0x66t 0x6t 0xc0t
        0xcdt 0xcct 0xcct 0xbet
        0x9at 0x99t 0x19t 0xbft
        0x0t 0x0t 0x0t 0x3ft
        0x66t 0x66t 0x66t 0x3ft
    .end array-data

    :array_2a
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x33t 0x33t 0x33t 0x3ft
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0x4ct 0xbft
        0x9at 0x99t 0x99t 0xbet
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    :array_2b
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0x4ct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0xcdt 0xcct 0xcct 0x3et
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0x3et
        0x9at 0x99t 0x99t 0x3et
    .end array-data

    :array_2c
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0xbet
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0x4ct 0xbet
        0x9at 0x99t 0x99t 0x3et
        0xcdt 0xcct 0x4ct 0x3et
    .end array-data

    :array_2d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0x4ct 0xbet
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
    .end array-data

    :array_2e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
        0xcdt 0xcct 0xcct 0xbdt
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0xbdt
    .end array-data

    :array_2f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0xcdt 0xcct 0xcct 0x3dt
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(FFFJ)V
    .locals 27
    .parameter "gdLatitudeDeg"
    .parameter "gdLongitudeDeg"
    .parameter "altitudeMeters"
    .parameter "timeMillis"

    .prologue
    .line 138
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    sget-object v21, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    move-object/from16 v0, v21

    array-length v0, v0

    move v3, v0

    .line 143
    .local v3, MAX_N:I
    const v21, 0x42b3ffff

    const v22, -0x3d4c0001

    move/from16 v0, v22

    move/from16 v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v22

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 145
    invoke-direct/range {p0 .. p3}, Landroid/hardware/GeomagneticField;->computeGeocentricCoordinates(FFF)V

    .line 149
    sget-boolean v21, Landroid/hardware/GeomagneticField;->$assertionsDisabled:Z

    if-nez v21, :cond_0

    sget-object v21, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    sget-object v22, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_0

    new-instance v21, Ljava/lang/AssertionError;

    invoke-direct/range {v21 .. v21}, Ljava/lang/AssertionError;-><init>()V

    throw v21

    .line 155
    :cond_0
    new-instance v14, Landroid/hardware/GeomagneticField$LegendreTable;

    const/16 v21, 0x1

    sub-int v21, v3, v21

    const-wide v22, 0x3ff921fb54442d18L

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v24, v0

    move/from16 v0, v24

    float-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object v0, v14

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Landroid/hardware/GeomagneticField$LegendreTable;-><init>(IF)V

    .line 161
    .local v14, legendre:Landroid/hardware/GeomagneticField$LegendreTable;
    add-int/lit8 v21, v3, 0x2

    move/from16 v0, v21

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 162
    .local v17, relativeRadiusPower:[F
    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v17, v21

    .line 163
    const/16 v21, 0x1

    const v22, 0x45c7199a

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    move/from16 v23, v0

    div-float v22, v22, v23

    aput v22, v17, v21

    .line 164
    const/4 v10, 0x2

    .local v10, i:I
    :goto_0
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v10

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 165
    const/16 v21, 0x1

    sub-int v21, v10, v21

    aget v21, v17, v21

    const/16 v22, 0x1

    aget v22, v17, v22

    mul-float v21, v21, v22

    aput v21, v17, v10

    .line 164
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 171
    :cond_1
    move v0, v3

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 172
    .local v18, sinMLon:[F
    new-array v4, v3, [F

    .line 173
    .local v4, cosMLon:[F
    const/16 v21, 0x0

    const/16 v22, 0x0

    aput v22, v18, v21

    .line 174
    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v4, v21

    .line 175
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    aput v22, v18, v21

    .line 176
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    aput v22, v4, v21

    .line 178
    const/4 v15, 0x2

    .local v15, m:I
    :goto_1
    if-ge v15, v3, :cond_2

    .line 181
    shr-int/lit8 v19, v15, 0x1

    .line 182
    .local v19, x:I
    sub-int v21, v15, v19

    aget v21, v18, v21

    aget v22, v4, v19

    mul-float v21, v21, v22

    sub-int v22, v15, v19

    aget v22, v4, v22

    aget v23, v18, v19

    mul-float v22, v22, v23

    add-float v21, v21, v22

    aput v21, v18, v15

    .line 183
    sub-int v21, v15, v19

    aget v21, v4, v21

    aget v22, v4, v19

    mul-float v21, v21, v22

    sub-int v22, v15, v19

    aget v22, v18, v22

    aget v23, v18, v19

    mul-float v22, v22, v23

    sub-float v21, v21, v22

    aput v21, v4, v15

    .line 178
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 186
    .end local v19           #x:I
    :cond_2
    const/high16 v21, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v22, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    div-float v11, v21, v22

    .line 187
    .local v11, inverseCosLatitude:F
    sget-wide v21, Landroid/hardware/GeomagneticField;->BASE_TIME:J

    sub-long v21, p4, v21

    move-wide/from16 v0, v21

    long-to-float v0, v0

    move/from16 v21, v0

    const v22, 0x50eaf626

    div-float v20, v21, v22

    .line 194
    .local v20, yearsSinceBase:F
    const/4 v6, 0x0

    .line 195
    .local v6, gcX:F
    const/4 v7, 0x0

    .line 196
    .local v7, gcY:F
    const/4 v8, 0x0

    .line 198
    .local v8, gcZ:F
    const/16 v16, 0x1

    .local v16, n:I
    :goto_2
    move/from16 v0, v16

    move v1, v3

    if-ge v0, v1, :cond_4

    .line 199
    const/4 v15, 0x0

    :goto_3
    move v0, v15

    move/from16 v1, v16

    if-gt v0, v1, :cond_3

    .line 201
    sget-object v21, Landroid/hardware/GeomagneticField;->G_COEFF:[[F

    aget-object v21, v21, v16

    aget v21, v21, v15

    sget-object v22, Landroid/hardware/GeomagneticField;->DELTA_G:[[F

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v22, v22, v20

    add-float v5, v21, v22

    .line 202
    .local v5, g:F
    sget-object v21, Landroid/hardware/GeomagneticField;->H_COEFF:[[F

    aget-object v21, v21, v16

    aget v21, v21, v15

    sget-object v22, Landroid/hardware/GeomagneticField;->DELTA_H:[[F

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v22, v22, v20

    add-float v9, v21, v22

    .line 209
    .local v9, h:F
    add-int/lit8 v21, v16, 0x2

    aget v21, v17, v21

    aget v22, v4, v15

    mul-float v22, v22, v5

    aget v23, v18, v15

    mul-float v23, v23, v9

    add-float v22, v22, v23

    mul-float v21, v21, v22

    move-object v0, v14

    iget-object v0, v0, Landroid/hardware/GeomagneticField$LegendreTable;->mPDeriv:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v21, v21, v22

    sget-object v22, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v21, v21, v22

    add-float v6, v6, v21

    .line 216
    add-int/lit8 v21, v16, 0x2

    aget v21, v17, v21

    move v0, v15

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    aget v22, v18, v15

    mul-float v22, v22, v5

    aget v23, v4, v15

    mul-float v23, v23, v9

    sub-float v22, v22, v23

    mul-float v21, v21, v22

    move-object v0, v14

    iget-object v0, v0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v21, v21, v22

    sget-object v22, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v21, v21, v22

    mul-float v21, v21, v11

    add-float v7, v7, v21

    .line 223
    add-int/lit8 v21, v16, 0x1

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    add-int/lit8 v22, v16, 0x2

    aget v22, v17, v22

    mul-float v21, v21, v22

    aget v22, v4, v15

    mul-float v22, v22, v5

    aget v23, v18, v15

    mul-float v23, v23, v9

    add-float v22, v22, v23

    mul-float v21, v21, v22

    move-object v0, v14

    iget-object v0, v0, Landroid/hardware/GeomagneticField$LegendreTable;->mP:[[F

    move-object/from16 v22, v0

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v21, v21, v22

    sget-object v22, Landroid/hardware/GeomagneticField;->SCHMIDT_QUASI_NORM_FACTORS:[[F

    aget-object v22, v22, v16

    aget v22, v22, v15

    mul-float v21, v21, v22

    sub-float v8, v8, v21

    .line 199
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_3

    .line 198
    .end local v5           #g:F
    .end local v9           #h:F
    :cond_3
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .line 233
    :cond_4
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v21

    move-object/from16 v0, p0

    iget v0, v0, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    move/from16 v23, v0

    move/from16 v0, v23

    float-to-double v0, v0

    move-wide/from16 v23, v0

    sub-double v12, v21, v23

    .line 234
    .local v12, latDiffRad:D
    move v0, v6

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mX:F

    .line 236
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mY:F

    .line 237
    move v0, v6

    neg-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v23

    mul-double v21, v21, v23

    move v0, v8

    float-to-double v0, v0

    move-wide/from16 v23, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    mul-double v23, v23, v25

    add-double v21, v21, v23

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mZ:F

    .line 239
    return-void
.end method

.method private computeGeocentricCoordinates(FFF)V
    .locals 16
    .parameter "gdLatitudeDeg"
    .parameter "gdLongitudeDeg"
    .parameter "altitudeMeters"

    .prologue
    .line 307
    const/high16 v12, 0x447a

    div-float v3, p3, v12

    .line 308
    .local v3, altitudeKm:F
    const v2, 0x4c1b2f2f

    .line 309
    .local v2, a2:F
    const v4, 0x4c1a253b

    .line 310
    .local v4, b2:F
    move/from16 v0, p1

    float-to-double v0, v0

    move-wide v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 311
    .local v6, gdLatRad:D
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v5, v12

    .line 312
    .local v5, clat:F
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v10, v12

    .line 313
    .local v10, slat:F
    div-float v11, v10, v5

    .line 314
    .local v11, tlat:F
    mul-float v12, v2, v5

    mul-float/2addr v12, v5

    mul-float v13, v4, v10

    mul-float/2addr v13, v10

    add-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v8, v12

    .line 317
    .local v8, latRad:F
    mul-float v12, v8, v3

    add-float/2addr v12, v4

    mul-float/2addr v12, v11

    mul-float v13, v8, v3

    add-float/2addr v13, v2

    div-float/2addr v12, v13

    float-to-double v12, v12

    invoke-static {v12, v13}, Ljava/lang/Math;->atan(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mGcLatitudeRad:F

    .line 320
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mGcLongitudeRad:F

    .line 322
    mul-float v12, v3, v3

    const/high16 v13, 0x4000

    mul-float/2addr v13, v3

    mul-float v14, v2, v5

    mul-float/2addr v14, v5

    mul-float v15, v4, v10

    mul-float/2addr v15, v10

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    mul-float/2addr v13, v14

    add-float/2addr v12, v13

    mul-float v13, v2, v2

    mul-float/2addr v13, v5

    mul-float/2addr v13, v5

    mul-float v14, v4, v4

    mul-float/2addr v14, v10

    mul-float/2addr v14, v10

    add-float/2addr v13, v14

    mul-float v14, v2, v5

    mul-float/2addr v14, v5

    mul-float v15, v4, v10

    mul-float/2addr v15, v10

    add-float/2addr v14, v15

    div-float/2addr v13, v14

    add-float v9, v12, v13

    .line 327
    .local v9, radSq:F
    float-to-double v12, v9

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    double-to-float v12, v12

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Landroid/hardware/GeomagneticField;->mGcRadiusKm:F

    .line 328
    return-void
.end method

.method private static computeSchmidtQuasiNormFactors(I)[[F
    .locals 9
    .parameter "maxN"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 394
    add-int/lit8 v3, p0, 0x1

    new-array v2, v3, [[F

    .line 395
    .local v2, schmidtQuasiNorm:[[F
    new-array v3, v7, [F

    const/high16 v4, 0x3f80

    aput v4, v3, v8

    aput-object v3, v2, v8

    .line 396
    const/4 v1, 0x1

    .local v1, n:I
    :goto_0
    if-gt v1, p0, :cond_2

    .line 397
    add-int/lit8 v3, v1, 0x1

    new-array v3, v3, [F

    aput-object v3, v2, v1

    .line 398
    aget-object v3, v2, v1

    sub-int v4, v1, v7

    aget-object v4, v2, v4

    aget v4, v4, v8

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v4, v5

    int-to-float v5, v1

    div-float/2addr v4, v5

    aput v4, v3, v8

    .line 400
    const/4 v0, 0x1

    .local v0, m:I
    :goto_1
    if-gt v0, v1, :cond_1

    .line 401
    aget-object v3, v2, v1

    aget-object v4, v2, v1

    sub-int v5, v0, v7

    aget v4, v4, v5

    sub-int v5, v1, v0

    add-int/lit8 v5, v5, 0x1

    if-ne v0, v7, :cond_0

    const/4 v6, 0x2

    :goto_2
    mul-int/2addr v5, v6

    int-to-float v5, v5

    add-int v6, v1, v0

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v5, v5

    mul-float/2addr v4, v5

    aput v4, v3, v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    move v6, v7

    .line 401
    goto :goto_2

    .line 396
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0           #m:I
    :cond_2
    return-object v2
.end method


# virtual methods
.method public getDeclination()F
    .locals 4

    .prologue
    .line 268
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    float-to-double v0, v0

    iget v2, p0, Landroid/hardware/GeomagneticField;->mX:F

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getFieldStrength()F
    .locals 3

    .prologue
    .line 291
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mZ:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mZ:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getHorizontalStrength()F
    .locals 3

    .prologue
    .line 284
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    iget v1, p0, Landroid/hardware/GeomagneticField;->mX:F

    mul-float/2addr v0, v1

    iget v1, p0, Landroid/hardware/GeomagneticField;->mY:F

    iget v2, p0, Landroid/hardware/GeomagneticField;->mY:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getInclination()F
    .locals 4

    .prologue
    .line 276
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    float-to-double v0, v0

    invoke-virtual {p0}, Landroid/hardware/GeomagneticField;->getHorizontalStrength()F

    move-result v2

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 245
    iget v0, p0, Landroid/hardware/GeomagneticField;->mX:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 252
    iget v0, p0, Landroid/hardware/GeomagneticField;->mY:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .prologue
    .line 259
    iget v0, p0, Landroid/hardware/GeomagneticField;->mZ:F

    return v0
.end method
