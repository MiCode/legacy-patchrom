.class Landroid/gesture/Instance;
.super Ljava/lang/Object;
.source "Instance.java"


# static fields
.field private static final ORIENTATIONS:[F = null

.field private static final PATCH_SAMPLE_SIZE:I = 0x10

.field private static final SEQUENCE_SAMPLE_SIZE:I = 0x10


# instance fields
.field final id:J

.field final label:Ljava/lang/String;

.field final vector:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/gesture/Instance;->ORIENTATIONS:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0xft 0x49t 0x3ft
        0xdbt 0xft 0xc9t 0x3ft
        0xe4t 0xcbt 0x16t 0x40t
        0xdbt 0xft 0x49t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0xdbt 0xft 0x49t 0xbft
        0xdbt 0xft 0xc9t 0xbft
        0xe4t 0xcbt 0x16t 0xc0t
        0xdbt 0xft 0x49t 0xc0t
    .end array-data
.end method

.method private constructor <init>(J[FLjava/lang/String;)V
    .locals 0
    .parameter "id"
    .parameter "sample"
    .parameter "sampleName"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/gesture/Instance;->id:J

    iput-object p3, p0, Landroid/gesture/Instance;->vector:[F

    iput-object p4, p0, Landroid/gesture/Instance;->label:Ljava/lang/String;

    return-void
.end method

.method static createInstance(IILandroid/gesture/Gesture;Ljava/lang/String;)Landroid/gesture/Instance;
    .locals 4
    .parameter "sequenceType"
    .parameter "orientationType"
    .parameter "gesture"
    .parameter "label"

    .prologue
    const/4 v2, 0x2

    if-ne p0, v2, :cond_0

    invoke-static {p1, p2}, Landroid/gesture/Instance;->temporalSampler(ILandroid/gesture/Gesture;)[F

    move-result-object v1

    .local v1, pts:[F
    new-instance v0, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .local v0, instance:Landroid/gesture/Instance;
    invoke-direct {v0}, Landroid/gesture/Instance;->normalize()V

    :goto_0
    return-object v0

    .end local v0           #instance:Landroid/gesture/Instance;
    .end local v1           #pts:[F
    :cond_0
    invoke-static {p2}, Landroid/gesture/Instance;->spatialSampler(Landroid/gesture/Gesture;)[F

    move-result-object v1

    .restart local v1       #pts:[F
    new-instance v0, Landroid/gesture/Instance;

    invoke-virtual {p2}, Landroid/gesture/Gesture;->getID()J

    move-result-wide v2

    invoke-direct {v0, v2, v3, v1, p3}, Landroid/gesture/Instance;-><init>(J[FLjava/lang/String;)V

    .restart local v0       #instance:Landroid/gesture/Instance;
    goto :goto_0
.end method

.method private normalize()V
    .locals 7

    .prologue
    iget-object v2, p0, Landroid/gesture/Instance;->vector:[F

    .local v2, sample:[F
    const/4 v4, 0x0

    .local v4, sum:F
    array-length v3, v2

    .local v3, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    aget v5, v2, v0

    aget v6, v2, v0

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    float-to-double v5, v4

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v1, v5

    .local v1, magnitude:F
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v3, :cond_1

    aget v5, v2, v0

    div-float/2addr v5, v1

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static spatialSampler(Landroid/gesture/Gesture;)[F
    .locals 2
    .parameter "gesture"

    .prologue
    const/16 v0, 0x10

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method private static temporalSampler(ILandroid/gesture/Gesture;)[F
    .locals 13
    .parameter "orientationType"
    .parameter "gesture"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/gesture/GestureStroke;

    const/16 v8, 0x10

    invoke-static {v7, v8}, Landroid/gesture/GestureUtils;->temporalSampling(Landroid/gesture/GestureStroke;I)[F

    move-result-object v6

    .local v6, pts:[F
    invoke-static {v6}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    .local v1, center:[F
    aget v7, v6, v12

    aget v8, v1, v12

    sub-float/2addr v7, v8

    float-to-double v7, v7

    aget v9, v6, v11

    aget v10, v1, v11

    sub-float/2addr v9, v10

    float-to-double v9, v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v7

    double-to-float v5, v7

    .local v5, orientation:F
    neg-float v0, v5

    .local v0, adjustment:F
    if-eq p0, v12, :cond_1

    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    array-length v2, v7

    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_1

    sget-object v7, Landroid/gesture/Instance;->ORIENTATIONS:[F

    aget v7, v7, v4

    sub-float v3, v7, v5

    .local v3, delta:F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_0

    move v0, v3

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2           #count:I
    .end local v3           #delta:F
    .end local v4           #i:I
    :cond_1
    aget v7, v1, v11

    neg-float v7, v7

    aget v8, v1, v12

    neg-float v8, v8

    invoke-static {v6, v7, v8}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    invoke-static {v6, v0}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    return-object v6
.end method
