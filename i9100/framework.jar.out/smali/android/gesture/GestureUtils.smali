.class public final Landroid/gesture/GestureUtils;
.super Ljava/lang/Object;
.source "GestureUtils.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final NONUNIFORM_SCALE:F = 0.0f

.field private static final SCALING_THRESHOLD:F = 0.26f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 42
    const-wide/high16 v0, 0x4000

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    return-void
.end method

.method static closeStream(Ljava/io/Closeable;)V
    .locals 3
    .parameter "stream"

    .prologue
    .line 53
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, e:Ljava/io/IOException;
    const-string v1, "Gestures"

    const-string v2, "Could not close stream"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static computeCentroid([F)[F
    .locals 9
    .parameter "points"

    .prologue
    const/high16 v8, 0x4000

    .line 331
    const/4 v1, 0x0

    .line 332
    .local v1, centerX:F
    const/4 v2, 0x0

    .line 333
    .local v2, centerY:F
    array-length v3, p0

    .line 334
    .local v3, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_0

    .line 335
    aget v5, p0, v4

    add-float/2addr v1, v5

    .line 336
    add-int/lit8 v4, v4, 0x1

    .line 337
    aget v5, p0, v4

    add-float/2addr v2, v5

    .line 334
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 339
    :cond_0
    const/4 v5, 0x2

    new-array v0, v5, [F

    .line 340
    .local v0, center:[F
    const/4 v5, 0x0

    mul-float v6, v8, v1

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 341
    const/4 v5, 0x1

    mul-float v6, v8, v2

    int-to-float v7, v3

    div-float/2addr v6, v7

    aput v6, v0, v5

    .line 343
    return-object v0
.end method

.method private static computeCoVariance([F)[[F
    .locals 10
    .parameter "points"

    .prologue
    const/4 v5, 0x2

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 353
    filled-new-array {v5, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    .line 354
    .local v0, array:[[F
    aget-object v5, v0, v8

    aput v7, v5, v8

    .line 355
    aget-object v5, v0, v8

    aput v7, v5, v9

    .line 356
    aget-object v5, v0, v9

    aput v7, v5, v8

    .line 357
    aget-object v5, v0, v9

    aput v7, v5, v9

    .line 358
    array-length v1, p0

    .line 359
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 360
    aget v3, p0, v2

    .line 361
    .local v3, x:F
    add-int/lit8 v2, v2, 0x1

    .line 362
    aget v4, p0, v2

    .line 363
    .local v4, y:F
    aget-object v5, v0, v8

    aget v6, v5, v8

    mul-float v7, v3, v3

    add-float/2addr v6, v7

    aput v6, v5, v8

    .line 364
    aget-object v5, v0, v8

    aget v6, v5, v9

    mul-float v7, v3, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 365
    aget-object v5, v0, v9

    aget-object v6, v0, v8

    aget v6, v6, v9

    aput v6, v5, v8

    .line 366
    aget-object v5, v0, v9

    aget v6, v5, v9

    mul-float v7, v4, v4

    add-float/2addr v6, v7

    aput v6, v5, v9

    .line 359
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 368
    .end local v3           #x:F
    .end local v4           #y:F
    :cond_0
    aget-object v5, v0, v8

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    .line 369
    aget-object v5, v0, v8

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    .line 370
    aget-object v5, v0, v9

    aget v6, v5, v8

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v8

    .line 371
    aget-object v5, v0, v9

    aget v6, v5, v9

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    div-float/2addr v6, v7

    aput v6, v5, v9

    .line 373
    return-object v0
.end method

.method private static computeOrientation([[F)[F
    .locals 8
    .parameter "covarianceMatrix"

    .prologue
    .line 538
    const/4 v0, 0x2

    new-array v2, v0, [F

    .line 539
    .local v2, targetVector:[F
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 540
    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    aput v1, v2, v0

    .line 541
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, v2, v0

    .line 544
    :cond_1
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x0

    aget v0, v0, v1

    neg-float v0, v0

    const/4 v1, 0x1

    aget-object v1, p0, v1

    const/4 v3, 0x1

    aget v1, v1, v3

    sub-float/2addr v0, v1

    .line 545
    .local v0, a:F
    const/4 v1, 0x0

    aget-object v1, p0, v1

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x1

    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget v3, v3, v4

    mul-float/2addr v1, v3

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v4, 0x1

    aget v3, v3, v4

    const/4 v4, 0x1

    aget-object v4, p0, v4

    const/4 v5, 0x0

    aget v4, v4, v5

    mul-float/2addr v3, v4

    sub-float/2addr v1, v3

    .line 547
    .local v1, b:F
    const/high16 v3, 0x4000

    div-float v3, v0, v3

    .line 548
    .local v3, value:F
    float-to-double v4, v3

    const-wide/high16 v6, 0x4000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    float-to-double v0, v1

    sub-double v0, v4, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .end local v0           #a:F
    move-result-wide v0

    double-to-float v1, v0

    .line 549
    .local v1, rightside:F
    neg-float v0, v3

    add-float/2addr v0, v1

    .line 550
    .local v0, lambda1:F
    neg-float v3, v3

    sub-float v1, v3, v1

    .line 551
    .local v1, lambda2:F
    cmpl-float v3, v0, v1

    if-nez v3, :cond_2

    .line 552
    .end local v3           #value:F
    const/4 p0, 0x0

    const/4 v0, 0x0

    aput v0, v2, p0

    .line 553
    .end local v0           #lambda1:F
    .end local p0
    const/4 p0, 0x1

    const/4 v0, 0x0

    aput v0, v2, p0

    .line 559
    .end local v1           #lambda2:F
    :goto_0
    return-object v2

    .line 555
    .restart local v0       #lambda1:F
    .restart local v1       #lambda2:F
    .restart local p0
    :cond_2
    cmpl-float v3, v0, v1

    if-lez v3, :cond_3

    .line 556
    .local v0, lambda:F
    :goto_1
    const/4 v1, 0x0

    const/high16 v3, 0x3f80

    aput v3, v2, v1

    .line 557
    .end local v1           #lambda2:F
    const/4 v1, 0x1

    const/4 v3, 0x0

    aget-object v3, p0, v3

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-float/2addr v0, v3

    const/4 v3, 0x0

    aget-object p0, p0, v3

    .end local v0           #lambda:F
    .end local p0
    const/4 v3, 0x1

    aget p0, p0, v3

    div-float p0, v0, p0

    aput p0, v2, v1

    goto :goto_0

    .local v0, lambda1:F
    .restart local v1       #lambda2:F
    .restart local p0
    :cond_3
    move v0, v1

    .line 555
    goto :goto_1
.end method

.method public static computeOrientedBoundingBox(Ljava/util/ArrayList;)Landroid/gesture/OrientedBoundingBox;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;)",
            "Landroid/gesture/OrientedBoundingBox;"
        }
    .end annotation

    .prologue
    .line 471
    .local p0, originalPoints:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GesturePoint;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 472
    .local v0, count:I
    mul-int/lit8 v6, v0, 0x2

    new-array v5, v6, [F

    .line 473
    .local v5, points:[F
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 474
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/gesture/GesturePoint;

    .line 475
    .local v4, point:Landroid/gesture/GesturePoint;
    mul-int/lit8 v2, v1, 0x2

    .line 476
    .local v2, index:I
    iget v6, v4, Landroid/gesture/GesturePoint;->x:F

    aput v6, v5, v2

    .line 477
    add-int/lit8 v6, v2, 0x1

    iget v7, v4, Landroid/gesture/GesturePoint;->y:F

    aput v7, v5, v6

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 479
    .end local v2           #index:I
    .end local v4           #point:Landroid/gesture/GesturePoint;
    :cond_0
    invoke-static {v5}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v3

    .line 480
    .local v3, meanVector:[F
    invoke-static {v5, v3}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v6

    return-object v6
.end method

.method public static computeOrientedBoundingBox([F)Landroid/gesture/OrientedBoundingBox;
    .locals 5
    .parameter "originalPoints"

    .prologue
    .line 490
    array-length v3, p0

    .line 491
    .local v3, size:I
    new-array v2, v3, [F

    .line 492
    .local v2, points:[F
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 493
    aget v4, p0, v0

    aput v4, v2, v0

    .line 492
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-static {v2}, Landroid/gesture/GestureUtils;->computeCentroid([F)[F

    move-result-object v1

    .line 496
    .local v1, meanVector:[F
    invoke-static {v2, v1}, Landroid/gesture/GestureUtils;->computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;

    move-result-object v4

    return-object v4
.end method

.method private static computeOrientedBoundingBox([F[F)Landroid/gesture/OrientedBoundingBox;
    .locals 10
    .parameter "points"
    .parameter "centroid"

    .prologue
    .line 500
    const/4 v0, 0x0

    aget v0, p1, v0

    neg-float v0, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    neg-float v1, v1

    invoke-static {p0, v0, v1}, Landroid/gesture/GestureUtils;->translate([FFF)[F

    .line 502
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeCoVariance([F)[[F

    move-result-object v0

    .line 503
    .local v0, array:[[F
    invoke-static {v0}, Landroid/gesture/GestureUtils;->computeOrientation([[F)[F

    move-result-object v0

    .line 506
    .local v0, targetVector:[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/4 v1, 0x1

    aget v1, v0, v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 507
    const v0, -0x4036f025

    .local v0, angle:F
    move v1, v0

    .line 513
    .end local v0           #angle:F
    .local v1, angle:F
    :goto_0
    const v5, 0x7f7fffff

    .line 514
    .local v5, minx:F
    const v6, 0x7f7fffff

    .line 515
    .local v6, miny:F
    const/4 v3, 0x1

    .line 516
    .local v3, maxx:F
    const/4 v4, 0x1

    .line 517
    .local v4, maxy:F
    array-length v0, p0

    .line 518
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    move v7, v6

    .end local v6           #miny:F
    .local v7, miny:F
    move v6, v5

    .end local v5           #minx:F
    .local v6, minx:F
    move v5, v4

    .end local v4           #maxy:F
    .local v5, maxy:F
    move v4, v3

    .end local v3           #maxx:F
    .local v4, maxx:F
    :goto_1
    if-ge v2, v0, :cond_3

    .line 519
    aget v3, p0, v2

    cmpg-float v3, v3, v6

    if-gez v3, :cond_0

    .line 520
    aget v3, p0, v2

    .end local v6           #minx:F
    .local v3, minx:F
    move v6, v3

    .line 522
    .end local v3           #minx:F
    .restart local v6       #minx:F
    :cond_0
    aget v3, p0, v2

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 523
    aget v3, p0, v2

    .line 525
    .end local v4           #maxx:F
    .local v3, maxx:F
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 526
    aget v4, p0, v2

    cmpg-float v4, v4, v7

    if-gez v4, :cond_1

    .line 527
    aget v4, p0, v2

    .end local v7           #miny:F
    .local v4, miny:F
    move v7, v4

    .line 529
    .end local v4           #miny:F
    .restart local v7       #miny:F
    :cond_1
    aget v4, p0, v2

    cmpl-float v4, v4, v5

    if-lez v4, :cond_4

    .line 530
    aget v4, p0, v2

    .line 518
    .end local v5           #maxy:F
    .local v4, maxy:F
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v5, v4

    .end local v4           #maxy:F
    .restart local v5       #maxy:F
    move v4, v3

    .end local v3           #maxx:F
    .local v4, maxx:F
    goto :goto_1

    .line 509
    .end local v1           #angle:F
    .end local v2           #i:I
    .end local v4           #maxx:F
    .end local v5           #maxy:F
    .end local v6           #minx:F
    .end local v7           #miny:F
    .local v0, targetVector:[F
    :cond_2
    const/4 v1, 0x1

    aget v1, v0, v1

    float-to-double v1, v1

    const/4 v3, 0x0

    aget v0, v0, v3

    .end local v0           #targetVector:[F
    float-to-double v3, v0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    .line 510
    .local v0, angle:F
    neg-float v1, v0

    invoke-static {p0, v1}, Landroid/gesture/GestureUtils;->rotate([FF)[F

    move v1, v0

    .end local v0           #angle:F
    .restart local v1       #angle:F
    goto :goto_0

    .line 534
    .local v0, count:I
    .restart local v2       #i:I
    .restart local v4       #maxx:F
    .restart local v5       #maxy:F
    .restart local v6       #minx:F
    .restart local v7       #miny:F
    :cond_3
    new-instance v0, Landroid/gesture/OrientedBoundingBox;

    .end local v0           #count:I
    const/high16 p0, 0x4334

    mul-float/2addr p0, v1

    float-to-double v1, p0

    const-wide v8, 0x400921fb54442d18L

    div-double/2addr v1, v8

    double-to-float v1, v1

    const/4 p0, 0x0

    aget v2, p1, p0

    .end local v1           #angle:F
    .end local v2           #i:I
    .end local p0
    const/4 p0, 0x1

    aget v3, p1, p0

    sub-float/2addr v4, v6

    sub-float/2addr v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/gesture/OrientedBoundingBox;-><init>(FFFFF)V

    .end local v4           #maxx:F
    .end local v5           #maxy:F
    return-object v0

    .restart local v0       #count:I
    .restart local v1       #angle:F
    .restart local v2       #i:I
    .restart local v3       #maxx:F
    .restart local v5       #maxy:F
    .restart local p0
    :cond_4
    move v4, v5

    .end local v5           #maxy:F
    .local v4, maxy:F
    goto :goto_3

    .end local v3           #maxx:F
    .local v4, maxx:F
    .restart local v5       #maxy:F
    :cond_5
    move v3, v4

    .end local v4           #maxx:F
    .restart local v3       #maxx:F
    goto :goto_2
.end method

.method static computeStraightness([F)F
    .locals 5
    .parameter "points"

    .prologue
    .line 388
    invoke-static {p0}, Landroid/gesture/GestureUtils;->computeTotalLength([F)F

    move-result v2

    .line 389
    .local v2, totalLen:F
    const/4 v3, 0x2

    aget v3, p0, v3

    const/4 v4, 0x0

    aget v4, p0, v4

    sub-float v0, v3, v4

    .line 390
    .local v0, dx:F
    const/4 v3, 0x3

    aget v3, p0, v3

    const/4 v4, 0x1

    aget v4, p0, v4

    sub-float v1, v3, v4

    .line 391
    .local v1, dy:F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float v3, v3

    div-float/2addr v3, v2

    return v3
.end method

.method static computeStraightness([FF)F
    .locals 4
    .parameter "points"
    .parameter "totalLen"

    .prologue
    .line 395
    const/4 v2, 0x2

    aget v2, p0, v2

    const/4 v3, 0x0

    aget v3, p0, v3

    sub-float v0, v2, v3

    .line 396
    .local v0, dx:F
    const/4 v2, 0x3

    aget v2, p0, v2

    const/4 v3, 0x1

    aget v3, p0, v3

    sub-float v1, v2, v3

    .line 397
    .local v1, dy:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v2, p1

    return v2
.end method

.method static computeTotalLength([F)F
    .locals 9
    .parameter "points"

    .prologue
    .line 377
    const/4 v4, 0x0

    .line 378
    .local v4, sum:F
    array-length v5, p0

    const/4 v6, 0x4

    sub-int v0, v5, v6

    .line 379
    .local v0, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 380
    add-int/lit8 v5, v3, 0x2

    aget v5, p0, v5

    aget v6, p0, v3

    sub-float v1, v5, v6

    .line 381
    .local v1, dx:F
    add-int/lit8 v5, v3, 0x3

    aget v5, p0, v5

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    sub-float v2, v5, v6

    .line 382
    .local v2, dy:F
    float-to-double v5, v4

    mul-float v7, v1, v1

    mul-float v8, v2, v2

    add-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 379
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 384
    .end local v1           #dx:F
    .end local v2           #dy:F
    :cond_0
    return v4
.end method

.method static cosineDistance([F[F)F
    .locals 5
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    .line 425
    const/4 v2, 0x0

    .line 426
    .local v2, sum:F
    array-length v1, p0

    .line 427
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 428
    aget v3, p0, v0

    aget v4, p1, v0

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 427
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 430
    :cond_0
    float-to-double v3, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->acos(D)D

    move-result-wide v3

    double-to-float v3, v3

    return v3
.end method

.method static minimumCosineDistance([F[FI)F
    .locals 9
    .parameter "vector1"
    .parameter "vector2"
    .parameter "numOrientations"

    .prologue
    .line 442
    array-length v3, p0

    .line 443
    .local v3, len:I
    const/4 v0, 0x0

    .line 444
    .local v0, a:F
    const/4 v1, 0x0

    .line 445
    .local v1, b:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 446
    aget v4, p0, v2

    aget v5, p1, v2

    mul-float/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget v5, p0, v5

    add-int/lit8 v6, v2, 0x1

    aget v6, p1, v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    add-float/2addr v0, v4

    .line 447
    aget v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    aget v5, p1, v5

    mul-float/2addr v4, v5

    add-int/lit8 v5, v2, 0x1

    aget v5, p0, v5

    aget v6, p1, v2

    mul-float/2addr v5, v6

    sub-float/2addr v4, v5

    add-float/2addr v1, v4

    .line 445
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 449
    :cond_0
    const/4 p0, 0x0

    cmpl-float p0, v0, p0

    if-eqz p0, :cond_2

    .line 450
    .end local p0
    div-float v2, v1, v0

    .line 451
    .local v2, tan:F
    float-to-double p0, v2

    invoke-static {p0, p1}, Ljava/lang/Math;->atan(D)D

    move-result-wide p0

    .line 452
    .end local p1
    .local p0, angle:D
    const/4 v3, 0x2

    if-le p2, v3, :cond_1

    .end local v3           #len:I
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v5, 0x400921fb54442d18L

    int-to-double v7, p2

    div-double/2addr v5, v7

    cmpl-double p2, v3, v5

    if-ltz p2, :cond_1

    .line 453
    .end local p2
    float-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    .end local p0           #angle:D
    move-result-wide p0

    double-to-float p0, p0

    .line 460
    .end local v0           #a:F
    .end local v2           #tan:F
    :goto_1
    return p0

    .line 455
    .restart local v0       #a:F
    .restart local v2       #tan:F
    .restart local p0       #angle:D
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    .line 456
    .local p0, cosine:D
    float-to-double v2, v2

    mul-double/2addr v2, p0

    .line 457
    .local v2, sine:D
    float-to-double v4, v0

    mul-double/2addr p0, v4

    float-to-double v0, v1

    mul-double/2addr v0, v2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->acos(D)D

    .end local v0           #a:F
    .end local p0           #cosine:D
    move-result-wide p0

    double-to-float p0, p0

    goto :goto_1

    .line 460
    .restart local v0       #a:F
    .local v2, i:I
    .restart local v3       #len:I
    .restart local p1
    .restart local p2
    :cond_2
    const p0, 0x3fc90fdb

    goto :goto_1
.end method

.method private static plot(FF[FI)V
    .locals 14
    .parameter "x"
    .parameter "y"
    .parameter "sample"
    .parameter "sampleSize"

    .prologue
    .line 210
    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    .line 211
    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    const/4 p1, 0x0

    .line 212
    :cond_1
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v7, v0

    .line 213
    .local v7, xFloor:I
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v4, v0

    .line 214
    .local v4, xCeiling:I
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v13, v0

    .line 215
    .local v13, yFloor:I
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v10, v0

    .line 218
    .local v10, yCeiling:I
    int-to-float v0, v7

    cmpl-float v0, p0, v0

    if-nez v0, :cond_3

    int-to-float v0, v13

    cmpl-float v0, p1, v0

    if-nez v0, :cond_3

    .line 219
    mul-int p0, v10, p3

    add-int/2addr p0, v4

    .line 220
    .local p0, index:I
    aget p1, p2, p0

    .end local p1
    const/high16 p3, 0x3f80

    cmpg-float p1, p1, p3

    if-gez p1, :cond_2

    .line 221
    .end local p3
    const/high16 p1, 0x3f80

    aput p1, p2, p0

    .line 258
    :cond_2
    :goto_0
    return-void

    .line 224
    .local p0, x:F
    .restart local p1
    .restart local p3
    :cond_3
    int-to-float v0, v7

    sub-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    .line 225
    .local v8, xFloorSq:D
    int-to-float v0, v13

    sub-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    .line 226
    .local v1, yFloorSq:D
    int-to-float v0, v4

    sub-float p0, v0, p0

    float-to-double v5, p0

    const-wide/high16 v11, 0x4000

    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .end local p0           #x:F
    move-result-wide v5

    .line 227
    .local v5, xCeilingSq:D
    int-to-float p0, v10

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/high16 v11, 0x4000

    invoke-static {p0, p1, v11, v12}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v11

    .line 228
    .local v11, yCeilingSq:D
    add-double p0, v8, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float v0, p0

    .line 229
    .local v0, topLeft:F
    add-double p0, v5, v1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float v2, p0

    .line 230
    .end local v1           #yFloorSq:D
    .local v2, topRight:F
    add-double p0, v8, v11

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    .line 231
    .local p0, btmLeft:F
    add-double/2addr v5, v11

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    .end local v5           #xCeilingSq:D
    move-result-wide v5

    double-to-float p1, v5

    .line 232
    .local p1, btmRight:F
    add-float v1, v0, v2

    add-float/2addr v1, p0

    add-float/2addr v1, p1

    .line 234
    .local v1, sum:F
    div-float v3, v0, v1

    .line 235
    .local v3, value:F
    mul-int v0, v13, p3

    add-int/2addr v0, v7

    .line 236
    .local v0, index:I
    aget v5, p2, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    .line 237
    aput v3, p2, v0

    .line 240
    :cond_4
    div-float/2addr v2, v1

    .line 241
    .end local v3           #value:F
    .local v2, value:F
    mul-int v0, v13, p3

    add-int/2addr v0, v4

    .line 242
    aget v3, p2, v0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5

    .line 243
    aput v2, p2, v0

    .line 246
    :cond_5
    div-float v0, p0, v1

    .line 247
    .end local v2           #value:F
    .local v0, value:F
    mul-int p0, v10, p3

    add-int/2addr p0, v7

    .line 248
    .local p0, index:I
    aget v2, p2, p0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_6

    .line 249
    aput v0, p2, p0

    .line 252
    :cond_6
    div-float/2addr p1, v1

    .line 253
    .end local v0           #value:F
    .local p1, value:F
    mul-int p0, v10, p3

    add-int/2addr p0, v4

    .line 254
    aget p3, p2, p0

    .end local p3
    cmpl-float p3, p1, p3

    if-lez p3, :cond_2

    .line 255
    aput p1, p2, p0

    goto :goto_0
.end method

.method static rotate([FF)[F
    .locals 8
    .parameter "points"
    .parameter "angle"

    .prologue
    .line 564
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    double-to-float v0, v6

    .line 565
    .local v0, cos:F
    float-to-double v6, p1

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    double-to-float v2, v6

    .line 566
    .local v2, sin:F
    array-length v3, p0

    .line 567
    .local v3, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 568
    aget v6, p0, v1

    mul-float/2addr v6, v0

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v2

    sub-float v4, v6, v7

    .line 569
    .local v4, x:F
    aget v6, p0, v1

    mul-float/2addr v6, v2

    add-int/lit8 v7, v1, 0x1

    aget v7, p0, v7

    mul-float/2addr v7, v0

    add-float v5, v6, v7

    .line 570
    .local v5, y:F
    aput v4, p0, v1

    .line 571
    add-int/lit8 v6, v1, 0x1

    aput v5, p0, v6

    .line 567
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 573
    .end local v4           #x:F
    .end local v5           #y:F
    :cond_0
    return-object p0
.end method

.method static scale([FFF)[F
    .locals 4
    .parameter "points"
    .parameter "sx"
    .parameter "sy"

    .prologue
    .line 586
    array-length v1, p0

    .line 587
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 588
    aget v2, p0, v0

    mul-float/2addr v2, p1

    aput v2, p0, v0

    .line 589
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    mul-float/2addr v3, p2

    aput v3, p0, v2

    .line 587
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 591
    :cond_0
    return-object p0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;I)[F
    .locals 1
    .parameter "gesture"
    .parameter "bitmapSize"

    .prologue
    .line 74
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/gesture/GestureUtils;->spatialSampling(Landroid/gesture/Gesture;IZ)[F

    move-result-object v0

    return-object v0
.end method

.method public static spatialSampling(Landroid/gesture/Gesture;IZ)[F
    .locals 23
    .parameter "gesture"
    .parameter "bitmapSize"
    .parameter "keepAspectRatio"

    .prologue
    .line 92
    const/4 v4, 0x1

    sub-int v4, p1, v4

    move v0, v4

    int-to-float v0, v0

    move/from16 v20, v0

    .line 93
    .local v20, targetPatchSize:F
    mul-int v4, p1, p1

    new-array v11, v4, [F

    .line 94
    .local v11, sample:[F
    const/4 v4, 0x0

    invoke-static {v11, v4}, Ljava/util/Arrays;->fill([FF)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getBoundingBox()Landroid/graphics/RectF;

    move-result-object v6

    .line 97
    .local v6, rect:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v5

    .line 98
    .local v5, gestureWidth:F
    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 99
    .local v4, gestureHeight:F
    div-float v7, v20, v5

    .line 100
    .local v7, sx:F
    div-float v8, v20, v4

    .line 102
    .local v8, sy:F
    if-eqz p2, :cond_1

    .line 103
    cmpg-float p2, v7, v8

    if-gez p2, :cond_0

    .end local p2
    move/from16 p2, v7

    .line 104
    .local p2, scale:F
    :goto_0
    move/from16 v4, p2

    .line 105
    .end local v7           #sx:F
    .local v4, sx:F
    move/from16 p2, p2

    .end local v8           #sy:F
    .local p2, sy:F
    move/from16 v19, p2

    .end local p2           #sy:F
    .local v19, sy:F
    move/from16 v18, v4

    .line 130
    .end local v4           #sx:F
    .local v18, sx:F
    :goto_1
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerX()F

    move-result p2

    move/from16 v0, p2

    neg-float v0, v0

    move v8, v0

    .line 131
    .local v8, preDx:F
    invoke-virtual {v6}, Landroid/graphics/RectF;->centerY()F

    move-result p2

    move/from16 v0, p2

    neg-float v0, v0

    move v9, v0

    .line 132
    .local v9, preDy:F
    const/high16 p2, 0x4000

    div-float v6, v20, p2

    .line 133
    .local v6, postDx:F
    const/high16 p2, 0x4000

    div-float v7, v20, p2

    .line 134
    .local v7, postDy:F
    invoke-virtual/range {p0 .. p0}, Landroid/gesture/Gesture;->getStrokes()Ljava/util/ArrayList;

    move-result-object v17

    .line 135
    .local v17, strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result p0

    .line 139
    .local p0, count:I
    const/16 p2, 0x0

    .local p2, index:I
    move/from16 v4, p2

    .end local v5           #gestureWidth:F
    .end local p2           #index:I
    .local v4, index:I
    :goto_2
    move v0, v4

    move/from16 v1, p0

    if-ge v0, v1, :cond_10

    .line 140
    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/gesture/GestureStroke;

    .line 141
    .local p2, stroke:Landroid/gesture/GestureStroke;
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/gesture/GestureStroke;->points:[F

    move-object v5, v0

    .line 142
    .local v5, strokepoints:[F
    array-length v15, v5

    .line 143
    .local v15, size:I
    new-array v10, v15, [F

    .line 144
    .local v10, pts:[F
    const/16 p2, 0x0

    .local p2, i:I
    :goto_3
    move/from16 v0, p2

    move v1, v15

    if-ge v0, v1, :cond_6

    .line 145
    aget v12, v5, p2

    add-float/2addr v12, v8

    mul-float v12, v12, v18

    add-float/2addr v12, v6

    aput v12, v10, p2

    .line 146
    add-int/lit8 v12, p2, 0x1

    add-int/lit8 v13, p2, 0x1

    aget v13, v5, v13

    add-float/2addr v13, v9

    mul-float v13, v13, v19

    add-float/2addr v13, v7

    aput v13, v10, v12

    .line 144
    add-int/lit8 p2, p2, 0x2

    goto :goto_3

    .end local v9           #preDy:F
    .end local v10           #pts:[F
    .end local v15           #size:I
    .end local v17           #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    .end local v18           #sx:F
    .end local v19           #sy:F
    .end local p2           #i:I
    .local v4, gestureHeight:F
    .local v5, gestureWidth:F
    .local v6, rect:Landroid/graphics/RectF;
    .local v7, sx:F
    .local v8, sy:F
    .local p0, gesture:Landroid/gesture/Gesture;
    :cond_0
    move/from16 p2, v8

    .line 103
    goto :goto_0

    .line 108
    .local p2, keepAspectRatio:Z
    :cond_1
    div-float p2, v5, v4

    .line 109
    .local p2, aspectRatio:F
    const/high16 v4, 0x3f80

    cmpl-float v4, p2, v4

    if-lez v4, :cond_2

    .line 110
    .end local v4           #gestureHeight:F
    const/high16 v4, 0x3f80

    div-float p2, v4, p2

    .line 112
    :cond_2
    const v4, 0x3e851eb8

    cmpg-float p2, p2, v4

    if-gez p2, :cond_4

    .line 113
    .end local p2           #aspectRatio:F
    cmpg-float p2, v7, v8

    if-gez p2, :cond_3

    move/from16 p2, v7

    .line 114
    .local p2, scale:F
    :goto_4
    move/from16 v4, p2

    .line 115
    .end local v7           #sx:F
    .local v4, sx:F
    move/from16 p2, p2

    .end local v8           #sy:F
    .local p2, sy:F
    move/from16 v19, p2

    .end local p2           #sy:F
    .restart local v19       #sy:F
    move/from16 v18, v4

    .line 116
    .end local v4           #sx:F
    .restart local v18       #sx:F
    goto :goto_1

    .end local v18           #sx:F
    .end local v19           #sy:F
    .restart local v7       #sx:F
    .restart local v8       #sy:F
    :cond_3
    move/from16 p2, v8

    .line 113
    goto :goto_4

    .line 117
    :cond_4
    cmpl-float p2, v7, v8

    if-lez p2, :cond_5

    .line 118
    sget p2, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float p2, p2, v8

    .line 119
    .local p2, scale:F
    cmpg-float v4, p2, v7

    if-gez v4, :cond_12

    .line 120
    move/from16 p2, p2

    .end local v7           #sx:F
    .local p2, sx:F
    :goto_5
    move/from16 v19, v8

    .end local v8           #sy:F
    .restart local v19       #sy:F
    move/from16 v18, p2

    .line 122
    .end local p2           #sx:F
    .restart local v18       #sx:F
    goto/16 :goto_1

    .line 123
    .end local v18           #sx:F
    .end local v19           #sy:F
    .restart local v7       #sx:F
    .restart local v8       #sy:F
    :cond_5
    sget p2, Landroid/gesture/GestureUtils;->NONUNIFORM_SCALE:F

    mul-float p2, p2, v7

    .line 124
    .local p2, scale:F
    cmpg-float v4, p2, v8

    if-gez v4, :cond_11

    .line 125
    move/from16 p2, p2

    .end local v8           #sy:F
    .local p2, sy:F
    move/from16 v19, p2

    .end local p2           #sy:F
    .restart local v19       #sy:F
    move/from16 v18, v7

    .end local v7           #sx:F
    .restart local v18       #sx:F
    goto/16 :goto_1

    .line 148
    .local v4, index:I
    .local v5, strokepoints:[F
    .local v6, postDx:F
    .local v7, postDy:F
    .local v8, preDx:F
    .restart local v9       #preDy:F
    .restart local v10       #pts:[F
    .restart local v15       #size:I
    .restart local v17       #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    .local p0, count:I
    .local p2, i:I
    :cond_6
    const/high16 v5, -0x4080

    .line 149
    .local v5, segmentEndX:F
    const/high16 v12, -0x4080

    .line 150
    .local v12, segmentEndY:F
    const/16 p2, 0x0

    :goto_6
    move/from16 v0, p2

    move v1, v15

    if-ge v0, v1, :cond_f

    .line 151
    aget v13, v10, p2

    const/4 v14, 0x0

    cmpg-float v13, v13, v14

    if-gez v13, :cond_9

    const/4 v13, 0x0

    .line 152
    .local v13, segmentStartX:F
    :goto_7
    add-int/lit8 v14, p2, 0x1

    aget v14, v10, v14

    const/16 v16, 0x0

    cmpg-float v14, v14, v16

    if-gez v14, :cond_a

    const/4 v14, 0x0

    .line 153
    .local v14, segmentStartY:F
    :goto_8
    cmpl-float v16, v13, v20

    if-lez v16, :cond_7

    .line 154
    move/from16 v13, v20

    .line 156
    :cond_7
    cmpl-float v16, v14, v20

    if-lez v16, :cond_8

    .line 157
    move/from16 v14, v20

    .line 159
    :cond_8
    move v0, v13

    move v1, v14

    move-object v2, v11

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 160
    const/high16 v16, -0x4080

    cmpl-float v16, v5, v16

    if-eqz v16, :cond_e

    .line 162
    cmpl-float v16, v5, v13

    if-lez v16, :cond_b

    .line 163
    move v0, v13

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    .line 164
    .local v21, xpos:F
    sub-float v16, v12, v14

    sub-float v22, v5, v13

    div-float v16, v16, v22

    .line 166
    .local v16, slope:F
    :goto_9
    cmpg-float v22, v21, v5

    if-gez v22, :cond_c

    .line 167
    sub-float v22, v21, v13

    mul-float v22, v22, v16

    add-float v22, v22, v14

    .line 168
    .local v22, ypos:F
    move/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v11

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 169
    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    goto :goto_9

    .line 151
    .end local v13           #segmentStartX:F
    .end local v14           #segmentStartY:F
    .end local v16           #slope:F
    .end local v21           #xpos:F
    .end local v22           #ypos:F
    :cond_9
    aget v13, v10, p2

    goto :goto_7

    .line 152
    .restart local v13       #segmentStartX:F
    :cond_a
    add-int/lit8 v14, p2, 0x1

    aget v14, v10, v14

    goto :goto_8

    .line 171
    .restart local v14       #segmentStartY:F
    :cond_b
    cmpg-float v16, v5, v13

    if-gez v16, :cond_c

    .line 172
    move v0, v5

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    .line 173
    .restart local v21       #xpos:F
    sub-float v16, v12, v14

    sub-float v22, v5, v13

    div-float v16, v16, v22

    .line 175
    .restart local v16       #slope:F
    :goto_a
    cmpg-float v22, v21, v13

    if-gez v22, :cond_c

    .line 176
    sub-float v22, v21, v13

    mul-float v22, v22, v16

    add-float v22, v22, v14

    .line 177
    .restart local v22       #ypos:F
    move/from16 v0, v21

    move/from16 v1, v22

    move-object v2, v11

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 178
    const/high16 v22, 0x3f80

    add-float v21, v21, v22

    goto :goto_a

    .line 182
    .end local v16           #slope:F
    .end local v21           #xpos:F
    .end local v22           #ypos:F
    :cond_c
    cmpl-float v16, v12, v14

    if-lez v16, :cond_d

    .line 183
    move v0, v14

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v16, v0

    .line 184
    .local v16, ypos:F
    sub-float/2addr v5, v13

    sub-float v21, v12, v14

    div-float v5, v5, v21

    .local v5, invertSlope:F
    move/from16 v21, v16

    .line 186
    .end local v16           #ypos:F
    .local v21, ypos:F
    :goto_b
    cmpg-float v16, v21, v12

    if-gez v16, :cond_e

    .line 187
    sub-float v16, v21, v14

    mul-float v16, v16, v5

    add-float v16, v16, v13

    .line 188
    .local v16, xpos:F
    move/from16 v0, v16

    move/from16 v1, v21

    move-object v2, v11

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 189
    const/high16 v16, 0x3f80

    add-float v16, v16, v21

    .end local v21           #ypos:F
    .local v16, ypos:F
    move/from16 v21, v16

    .end local v16           #ypos:F
    .restart local v21       #ypos:F
    goto :goto_b

    .line 191
    .end local v21           #ypos:F
    .local v5, segmentEndX:F
    :cond_d
    cmpg-float v16, v12, v14

    if-gez v16, :cond_e

    .line 192
    move v0, v12

    float-to-double v0, v0

    move-wide/from16 v21, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v16, v0

    .line 193
    .restart local v16       #ypos:F
    sub-float/2addr v5, v13

    sub-float/2addr v12, v14

    div-float/2addr v5, v12

    .line 195
    .end local v12           #segmentEndY:F
    .local v5, invertSlope:F
    :goto_c
    cmpg-float v12, v16, v14

    if-gez v12, :cond_e

    .line 196
    sub-float v12, v16, v14

    mul-float/2addr v12, v5

    add-float/2addr v12, v13

    .line 197
    .local v12, xpos:F
    move v0, v12

    move/from16 v1, v16

    move-object v2, v11

    move/from16 v3, p1

    invoke-static {v0, v1, v2, v3}, Landroid/gesture/GestureUtils;->plot(FF[FI)V

    .line 198
    const/high16 v12, 0x3f80

    add-float v12, v12, v16

    .end local v16           #ypos:F
    .local v12, ypos:F
    move/from16 v16, v12

    .end local v12           #ypos:F
    .restart local v16       #ypos:F
    goto :goto_c

    .line 202
    .end local v5           #invertSlope:F
    .end local v16           #ypos:F
    :cond_e
    move v5, v13

    .line 203
    .local v5, segmentEndX:F
    move v12, v14

    .line 150
    .local v12, segmentEndY:F
    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_6

    .line 139
    .end local v13           #segmentStartX:F
    .end local v14           #segmentStartY:F
    :cond_f
    add-int/lit8 p2, v4, 0x1

    .end local v4           #index:I
    .local p2, index:I
    move/from16 v4, p2

    .end local p2           #index:I
    .restart local v4       #index:I
    goto/16 :goto_2

    .line 206
    .end local v5           #segmentEndX:F
    .end local v10           #pts:[F
    .end local v12           #segmentEndY:F
    .end local v15           #size:I
    :cond_10
    return-object v11

    .end local v4           #index:I
    .end local v9           #preDy:F
    .end local v17           #strokes:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/gesture/GestureStroke;>;"
    .end local v18           #sx:F
    .end local v19           #sy:F
    .local v5, gestureWidth:F
    .local v6, rect:Landroid/graphics/RectF;
    .local v7, sx:F
    .local v8, sy:F
    .local p0, gesture:Landroid/gesture/Gesture;
    .local p2, scale:F
    :cond_11
    move/from16 v19, v8

    .end local v8           #sy:F
    .restart local v19       #sy:F
    move/from16 v18, v7

    .end local v7           #sx:F
    .restart local v18       #sx:F
    goto/16 :goto_1

    .end local v18           #sx:F
    .end local v19           #sy:F
    .restart local v7       #sx:F
    .restart local v8       #sy:F
    :cond_12
    move/from16 p2, v7

    .end local v7           #sx:F
    .local p2, sx:F
    goto/16 :goto_5
.end method

.method static squaredEuclideanDistance([F[F)F
    .locals 6
    .parameter "vector1"
    .parameter "vector2"

    .prologue
    .line 408
    const/4 v3, 0x0

    .line 409
    .local v3, squaredDistance:F
    array-length v2, p0

    .line 410
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 411
    aget v4, p0, v1

    aget v5, p1, v1

    sub-float v0, v4, v5

    .line 412
    .local v0, difference:F
    mul-float v4, v0, v0

    add-float/2addr v3, v4

    .line 410
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 414
    .end local v0           #difference:F
    :cond_0
    int-to-float v4, v2

    div-float v4, v3, v4

    return v4
.end method

.method public static temporalSampling(Landroid/gesture/GestureStroke;I)[F
    .locals 15
    .parameter "stroke"
    .parameter "numPoints"

    .prologue
    .line 269
    iget v0, p0, Landroid/gesture/GestureStroke;->length:F

    const/4 v1, 0x1

    sub-int v1, p1, v1

    int-to-float v1, v1

    div-float v6, v0, v1

    .line 270
    .local v6, increment:F
    mul-int/lit8 v12, p1, 0x2

    .line 271
    .local v12, vectorLength:I
    new-array v11, v12, [F

    .line 272
    .local v11, vector:[F
    const/4 v1, 0x0

    .line 273
    .local v1, distanceSoFar:F
    iget-object v10, p0, Landroid/gesture/GestureStroke;->points:[F

    .line 274
    .local v10, pts:[F
    const/4 p0, 0x0

    aget v4, v10, p0

    .line 275
    .end local p0
    .local v4, lstPointX:F
    const/4 p0, 0x1

    aget v5, v10, p0

    .line 276
    .local v5, lstPointY:F
    const/4 p0, 0x0

    .line 277
    .local p0, index:I
    const/16 p1, 0x1

    .line 278
    .local p1, currentPointX:F
    const/4 v0, 0x1

    .line 279
    .local v0, currentPointY:F
    aput v4, v11, p0

    .line 280
    add-int/lit8 p0, p0, 0x1

    .line 281
    aput v5, v11, p0

    .line 282
    add-int/lit8 v3, p0, 0x1

    .line 283
    .end local p0           #index:I
    .local v3, index:I
    const/4 v2, 0x0

    .line 284
    .local v2, i:I
    array-length p0, v10

    div-int/lit8 p0, p0, 0x2

    .local p0, count:I
    move v7, v3

    .end local v3           #index:I
    .local v7, index:I
    move v9, v5

    .end local v5           #lstPointY:F
    .local v9, lstPointY:F
    move v8, v4

    .end local v4           #lstPointX:F
    .local v8, lstPointX:F
    move v4, v1

    .end local v1           #distanceSoFar:F
    .local v4, distanceSoFar:F
    move v1, v2

    .line 285
    .end local v2           #i:I
    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_4

    .line 286
    const/4 v2, 0x1

    cmpl-float v2, p1, v2

    if-nez v2, :cond_3

    .line 287
    add-int/lit8 v1, v1, 0x1

    .line 288
    if-lt v1, p0, :cond_0

    move p0, v1

    .line 317
    .end local v1           #i:I
    .local p0, i:I
    :goto_1
    move p0, v7

    .end local p1           #currentPointX:F
    :goto_2
    if-ge p0, v12, :cond_2

    .line 318
    aput v8, v11, p0

    .line 319
    add-int/lit8 p1, p0, 0x1

    aput v9, v11, p1

    .line 317
    add-int/lit8 p0, p0, 0x2

    goto :goto_2

    .line 291
    .restart local v1       #i:I
    .local p0, count:I
    .restart local p1       #currentPointX:F
    :cond_0
    mul-int/lit8 p1, v1, 0x2

    aget p1, v10, p1

    .line 292
    mul-int/lit8 v0, v1, 0x2

    add-int/lit8 v0, v0, 0x1

    aget v0, v10, v0

    move v5, v1

    .line 294
    .end local v1           #i:I
    .local v5, i:I
    :goto_3
    sub-float v1, p1, v8

    .line 295
    .local v1, deltaX:F
    sub-float v2, v0, v9

    .line 296
    .local v2, deltaY:F
    mul-float v3, v1, v1

    mul-float v13, v2, v2

    add-float/2addr v3, v13

    float-to-double v13, v3

    invoke-static {v13, v14}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v13

    double-to-float v3, v13

    .line 297
    .local v3, distance:F
    add-float v13, v4, v3

    cmpl-float v13, v13, v6

    if-ltz v13, :cond_1

    .line 298
    sub-float v4, v6, v4

    div-float/2addr v4, v3

    .line 299
    .local v4, ratio:F
    mul-float/2addr v1, v4

    add-float v3, v8, v1

    .line 300
    .local v3, nx:F
    mul-float v1, v4, v2

    add-float v4, v9, v1

    .line 301
    .local v4, ny:F
    aput v3, v11, v7

    .line 302
    .end local v1           #deltaX:F
    add-int/lit8 v1, v7, 0x1

    .line 303
    .end local v7           #index:I
    .local v1, index:I
    aput v4, v11, v1

    .line 304
    add-int/lit8 v2, v1, 0x1

    .line 305
    .end local v1           #index:I
    .local v2, index:I
    move v3, v3

    .line 306
    .end local v8           #lstPointX:F
    .local v3, lstPointX:F
    move v4, v4

    .line 307
    .end local v9           #lstPointY:F
    .local v4, lstPointY:F
    const/4 v1, 0x0

    .local v1, distanceSoFar:F
    :goto_4
    move v7, v2

    .end local v2           #index:I
    .restart local v7       #index:I
    move v9, v4

    .end local v4           #lstPointY:F
    .restart local v9       #lstPointY:F
    move v8, v3

    .end local v3           #lstPointX:F
    .restart local v8       #lstPointX:F
    move v4, v1

    .end local v1           #distanceSoFar:F
    .local v4, distanceSoFar:F
    move v1, v5

    .line 315
    .end local v5           #i:I
    .local v1, i:I
    goto :goto_0

    .line 309
    .local v1, deltaX:F
    .local v2, deltaY:F
    .local v3, distance:F
    .restart local v5       #i:I
    :cond_1
    move/from16 v2, p1

    .line 310
    .end local v8           #lstPointX:F
    .local v2, lstPointX:F
    move v8, v0

    .line 311
    .end local v9           #lstPointY:F
    .local v8, lstPointY:F
    const/16 p1, 0x1

    .line 312
    const/4 v0, 0x1

    .line 313
    add-float v1, v4, v3

    .end local v4           #distanceSoFar:F
    .local v1, distanceSoFar:F
    move v4, v8

    .end local v8           #lstPointY:F
    .local v4, lstPointY:F
    move v3, v2

    .end local v2           #lstPointX:F
    .local v3, lstPointX:F
    move v2, v7

    .end local v7           #index:I
    .local v2, index:I
    goto :goto_4

    .line 321
    .end local v1           #distanceSoFar:F
    .end local v2           #index:I
    .end local v3           #lstPointX:F
    .end local v5           #i:I
    .end local p1           #currentPointX:F
    .local v4, distanceSoFar:F
    .restart local v7       #index:I
    .local v8, lstPointX:F
    .restart local v9       #lstPointY:F
    .local p0, i:I
    :cond_2
    return-object v11

    .local v1, i:I
    .local p0, count:I
    .restart local p1       #currentPointX:F
    :cond_3
    move v5, v1

    .end local v1           #i:I
    .restart local v5       #i:I
    goto :goto_3

    .end local v5           #i:I
    .restart local v1       #i:I
    :cond_4
    move p0, v1

    .end local v1           #i:I
    .local p0, i:I
    goto :goto_1
.end method

.method static translate([FFF)[F
    .locals 4
    .parameter "points"
    .parameter "dx"
    .parameter "dy"

    .prologue
    .line 577
    array-length v1, p0

    .line 578
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 579
    aget v2, p0, v0

    add-float/2addr v2, p1

    aput v2, p0, v0

    .line 580
    add-int/lit8 v2, v0, 0x1

    aget v3, p0, v2

    add-float/2addr v3, p2

    aput v3, p0, v2

    .line 578
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 582
    :cond_0
    return-object p0
.end method
