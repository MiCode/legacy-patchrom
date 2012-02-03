.class Landroid/inputmethodservice/KeyboardView$SwipeTracker;
.super Ljava/lang/Object;
.source "KeyboardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/inputmethodservice/KeyboardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SwipeTracker"
.end annotation


# static fields
.field static final LONGEST_PAST_TIME:I = 0xc8

.field static final NUM_PAST:I = 0x4


# instance fields
.field final mPastTime:[J

.field final mPastX:[F

.field final mPastY:[F

.field mXVelocity:F

.field mYVelocity:F


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1363
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1364
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1365
    new-array v0, v1, [J

    iput-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    return-void
.end method

.method synthetic constructor <init>(Landroid/inputmethodservice/KeyboardView$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 1358
    invoke-direct {p0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;-><init>()V

    return-void
.end method

.method private addPoint(FFJ)V
    .locals 11
    .parameter "x"
    .parameter "y"
    .parameter "time"

    .prologue
    .line 1385
    const/4 v1, -0x1

    .line 1387
    .local v1, drop:I
    iget-object v3, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    .line 1388
    .local v3, pastTime:[J
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/4 v7, 0x4

    if-ge v2, v7, :cond_0

    .line 1389
    aget-wide v7, v3, v2

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-nez v7, :cond_5

    .line 1395
    :cond_0
    const/4 v7, 0x4

    if-ne v2, v7, :cond_1

    if-gez v1, :cond_1

    .line 1396
    const/4 v1, 0x0

    .line 1398
    :cond_1
    if-ne v1, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 1399
    :cond_2
    iget-object v4, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    .line 1400
    .local v4, pastX:[F
    iget-object v5, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    .line 1401
    .local v5, pastY:[F
    if-ltz v1, :cond_3

    .line 1402
    add-int/lit8 v6, v1, 0x1

    .line 1403
    .local v6, start:I
    const/4 v7, 0x4

    sub-int/2addr v7, v1

    const/4 v8, 0x1

    sub-int v0, v7, v8

    .line 1404
    .local v0, count:I
    const/4 v7, 0x0

    invoke-static {v4, v6, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1405
    const/4 v7, 0x0

    invoke-static {v5, v6, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1406
    const/4 v7, 0x0

    invoke-static {v3, v6, v3, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1407
    add-int/lit8 v7, v1, 0x1

    sub-int/2addr v2, v7

    .line 1409
    .end local v0           #count:I
    .end local v6           #start:I
    :cond_3
    aput p1, v4, v2

    .line 1410
    aput p2, v5, v2

    .line 1411
    aput-wide p3, v3, v2

    .line 1412
    add-int/lit8 v2, v2, 0x1

    .line 1413
    const/4 v7, 0x4

    if-ge v2, v7, :cond_4

    .line 1414
    const-wide/16 v7, 0x0

    aput-wide v7, v3, v2

    .line 1416
    :cond_4
    return-void

    .line 1391
    .end local v4           #pastX:[F
    .end local v5           #pastY:[F
    :cond_5
    aget-wide v7, v3, v2

    const-wide/16 v9, 0xc8

    sub-long v9, p3, v9

    cmp-long v7, v7, v9

    if-gez v7, :cond_6

    .line 1392
    move v1, v2

    .line 1388
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    .line 1375
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 1376
    .local v2, time:J
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    .line 1377
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1378
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    move-result v4

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    move-result v5

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v6

    invoke-direct {p0, v4, v5, v6, v7}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1377
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1381
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {p0, v4, v5, v2, v3}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->addPoint(FFJ)V

    .line 1382
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    aput-wide v2, v0, v1

    .line 1372
    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .parameter "units"

    .prologue
    .line 1419
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->computeCurrentVelocity(IF)V

    .line 1420
    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 20
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    .line 1423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastX:[F

    move-object v13, v0

    .line 1424
    .local v13, pastX:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastY:[F

    move-object v14, v0

    .line 1425
    .local v14, pastY:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mPastTime:[J

    move-object v12, v0

    .line 1427
    .local v12, pastTime:[J
    const/16 v16, 0x0

    aget v10, v13, v16

    .line 1428
    .local v10, oldestX:F
    const/16 v16, 0x0

    aget v11, v14, v16

    .line 1429
    .local v11, oldestY:F
    const/16 v16, 0x0

    aget-wide v8, v12, v16

    .line 1430
    .local v8, oldestTime:J
    const/4 v3, 0x0

    .line 1431
    .local v3, accumX:F
    const/4 v4, 0x0

    .line 1432
    .local v4, accumY:F
    const/4 v2, 0x0

    .line 1433
    .local v2, N:I
    :goto_0
    const/16 v16, 0x4

    move v0, v2

    move/from16 v1, v16

    if-ge v0, v1, :cond_0

    .line 1434
    aget-wide v16, v12, v2

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    if-nez v16, :cond_1

    .line 1440
    :cond_0
    const/4 v7, 0x1

    .local v7, i:I
    :goto_1
    if-ge v7, v2, :cond_5

    .line 1441
    aget-wide v16, v12, v7

    sub-long v16, v16, v8

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move v6, v0

    .line 1442
    .local v6, dur:I
    if-nez v6, :cond_2

    .line 1440
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1437
    .end local v6           #dur:I
    .end local v7           #i:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1443
    .restart local v6       #dur:I
    .restart local v7       #i:I
    :cond_2
    aget v16, v13, v7

    sub-float v5, v16, v10

    .line 1444
    .local v5, dist:F
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 1445
    .local v15, vel:F
    const/16 v16, 0x0

    cmpl-float v16, v3, v16

    if-nez v16, :cond_3

    move v3, v15

    .line 1448
    :goto_3
    aget v16, v14, v7

    sub-float v5, v16, v11

    .line 1449
    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v16, v5, v16

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v15, v16, v17

    .line 1450
    const/16 v16, 0x0

    cmpl-float v16, v4, v16

    if-nez v16, :cond_4

    move v4, v15

    goto :goto_2

    .line 1446
    :cond_3
    add-float v16, v3, v15

    const/high16 v17, 0x3f00

    mul-float v3, v16, v17

    goto :goto_3

    .line 1451
    :cond_4
    add-float v16, v4, v15

    const/high16 v17, 0x3f00

    mul-float v4, v16, v17

    goto :goto_2

    .line 1453
    .end local v5           #dist:F
    .end local v6           #dur:I
    .end local v15           #vel:F
    :cond_5
    const/16 v16, 0x0

    cmpg-float v16, v3, v16

    if-gez v16, :cond_6

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move v0, v3

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_4
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    .line 1455
    const/16 v16, 0x0

    cmpg-float v16, v4, v16

    if-gez v16, :cond_7

    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v16, v0

    move v0, v4

    move/from16 v1, v16

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v16

    :goto_5
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    .line 1457
    return-void

    .line 1453
    :cond_6
    move v0, v3

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_4

    .line 1455
    :cond_7
    move v0, v4

    move/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v16

    goto :goto_5
.end method

.method public getXVelocity()F
    .locals 1

    .prologue
    .line 1460
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mXVelocity:F

    return v0
.end method

.method public getYVelocity()F
    .locals 1

    .prologue
    .line 1464
    iget v0, p0, Landroid/inputmethodservice/KeyboardView$SwipeTracker;->mYVelocity:F

    return v0
.end method
