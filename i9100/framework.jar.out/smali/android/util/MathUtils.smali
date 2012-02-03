.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f

.field private static final sRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 35
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    neg-float v0, p0

    goto :goto_0
.end method

.method public static acos(F)F
    .locals 2
    .parameter "value"

    .prologue
    .line 124
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static asin(F)F
    .locals 2
    .parameter "value"

    .prologue
    .line 128
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan(F)F
    .locals 2
    .parameter "value"

    .prologue
    .line 132
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 136
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static constrain(FFF)F
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 43
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 1
    .parameter "amount"
    .parameter "low"
    .parameter "high"

    .prologue
    .line 39
    if-ge p0, p1, :cond_0

    move v0, p1

    :goto_0
    return v0

    :cond_0
    if-le p0, p2, :cond_1

    move v0, p2

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_0
.end method

.method public static degrees(F)F
    .locals 1
    .parameter "radians"

    .prologue
    .line 120
    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dist(FFFF)F
    .locals 4
    .parameter "x1"
    .parameter "y1"
    .parameter "x2"
    .parameter "y2"

    .prologue
    .line 91
    sub-float v0, p2, p0

    .line 92
    .local v0, x:F
    sub-float v1, p3, p1

    .line 93
    .local v1, y:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(FFFFFF)F
    .locals 5
    .parameter "x1"
    .parameter "y1"
    .parameter "z1"
    .parameter "x2"
    .parameter "y2"
    .parameter "z2"

    .prologue
    .line 97
    sub-float v0, p3, p0

    .line 98
    .local v0, x:F
    sub-float v1, p4, p1

    .line 99
    .local v1, y:F
    sub-float v2, p5, p2

    .line 100
    .local v2, z:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method public static exp(F)F
    .locals 2
    .parameter "a"

    .prologue
    .line 51
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .parameter "start"
    .parameter "stop"
    .parameter "amount"

    .prologue
    .line 144
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static log(F)F
    .locals 2
    .parameter "a"

    .prologue
    .line 47
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FF)F
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 104
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FFF)F
    .locals 2
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 108
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static map(FFFFF)F
    .locals 3
    .parameter "minStart"
    .parameter "minStop"
    .parameter "maxStart"
    .parameter "maxStop"
    .parameter "value"

    .prologue
    .line 152
    sub-float v0, p2, p3

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 59
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 67
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public static max(II)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 63
    if-le p0, p1, :cond_0

    int-to-float v0, p0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method

.method public static max(III)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 71
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    move v0, p0

    :goto_0
    int-to-float v0, v0

    :goto_1
    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    if-le p1, p2, :cond_2

    move v0, p1

    :goto_2
    int-to-float v0, v0

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_2
.end method

.method public static min(FF)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 75
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 83
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    cmpg-float v0, p0, p2

    if-gez v0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_2

    move v0, p1

    goto :goto_0

    :cond_2
    move v0, p2

    goto :goto_0
.end method

.method public static min(II)F
    .locals 1
    .parameter "a"
    .parameter "b"

    .prologue
    .line 79
    if-ge p0, p1, :cond_0

    int-to-float v0, p0

    :goto_0
    return v0

    :cond_0
    int-to-float v0, p1

    goto :goto_0
.end method

.method public static min(III)F
    .locals 1
    .parameter "a"
    .parameter "b"
    .parameter "c"

    .prologue
    .line 87
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    move v0, p0

    :goto_0
    int-to-float v0, v0

    :goto_1
    return v0

    :cond_0
    move v0, p2

    goto :goto_0

    :cond_1
    if-ge p1, p2, :cond_2

    move v0, p1

    :goto_2
    int-to-float v0, v0

    goto :goto_1

    :cond_2
    move v0, p2

    goto :goto_2
.end method

.method public static norm(FFF)F
    .locals 2
    .parameter "start"
    .parameter "stop"
    .parameter "value"

    .prologue
    .line 148
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .parameter "a"
    .parameter "b"

    .prologue
    .line 55
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static radians(F)F
    .locals 1
    .parameter "degrees"

    .prologue
    .line 116
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(F)F
    .locals 1
    .parameter "howbig"

    .prologue
    .line 165
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    mul-float/2addr v0, p0

    return v0
.end method

.method public static random(FF)F
    .locals 2
    .parameter "howsmall"
    .parameter "howbig"

    .prologue
    .line 169
    cmpl-float v0, p0, p1

    if-ltz v0, :cond_0

    move v0, p0

    .line 170
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-float v1, p1, p0

    mul-float/2addr v0, v1

    add-float/2addr v0, p0

    goto :goto_0
.end method

.method public static random(I)I
    .locals 2
    .parameter "howbig"

    .prologue
    .line 156
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    int-to-float v1, p0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static random(II)I
    .locals 2
    .parameter "howsmall"
    .parameter "howbig"

    .prologue
    .line 160
    if-lt p0, p1, :cond_0

    move v0, p0

    .line 161
    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextFloat()F

    move-result v0

    sub-int v1, p1, p0

    int-to-float v1, v1

    mul-float/2addr v0, v1

    int-to-float v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static randomSeed(J)V
    .locals 1
    .parameter "seed"

    .prologue
    .line 174
    sget-object v0, Landroid/util/MathUtils;->sRandom:Ljava/util/Random;

    invoke-virtual {v0, p0, p1}, Ljava/util/Random;->setSeed(J)V

    .line 175
    return-void
.end method

.method public static sq(F)F
    .locals 1
    .parameter "v"

    .prologue
    .line 112
    mul-float v0, p0, p0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .parameter "angle"

    .prologue
    .line 140
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
