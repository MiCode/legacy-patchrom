.class public final Landroid/view/MotionEvent;
.super Landroid/view/InputEvent;
.source "MotionEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/MotionEvent$PointerCoords;
    }
.end annotation


# static fields
.field public static final ACTION_CANCEL:I = 0x3

.field public static final ACTION_DOWN:I = 0x0

.field public static final ACTION_MASK:I = 0xff

.field public static final ACTION_MOVE:I = 0x2

.field public static final ACTION_OUTSIDE:I = 0x4

.field public static final ACTION_POINTER_1_DOWN:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_1_UP:I = 0x6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_DOWN:I = 0x105
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_2_UP:I = 0x106
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_DOWN:I = 0x205
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_3_UP:I = 0x206
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_DOWN:I = 0x5

.field public static final ACTION_POINTER_ID_MASK:I = 0xff00
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_ID_SHIFT:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ACTION_POINTER_INDEX_MASK:I = 0xff00

.field public static final ACTION_POINTER_INDEX_SHIFT:I = 0x8

.field public static final ACTION_POINTER_UP:I = 0x6

.field public static final ACTION_UP:I = 0x1

.field private static final BASE_AVAIL_POINTERS:I = 0x5

.field private static final BASE_AVAIL_SAMPLES:I = 0x8

.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final EDGE_BOTTOM:I = 0x2

.field public static final EDGE_LEFT:I = 0x4

.field public static final EDGE_RIGHT:I = 0x8

.field public static final EDGE_TOP:I = 0x1

.field public static final FLAG_WINDOW_IS_OBSCURED:I = 0x1

.field private static final MAX_RECYCLED:I = 0xa

.field private static final MS_PER_NS:J = 0xf4240L

.field private static final NUM_SAMPLE_DATA:I = 0x9

.field private static final SAMPLE_ORIENTATION:I = 0x8

.field private static final SAMPLE_PRESSURE:I = 0x2

.field private static final SAMPLE_SIZE:I = 0x3

.field private static final SAMPLE_TOOL_MAJOR:I = 0x6

.field private static final SAMPLE_TOOL_MINOR:I = 0x7

.field private static final SAMPLE_TOUCH_MAJOR:I = 0x4

.field private static final SAMPLE_TOUCH_MINOR:I = 0x5

.field private static final SAMPLE_X:I = 0x0

.field private static final SAMPLE_Y:I = 0x1

.field private static final TRACK_RECYCLED_LOCATION:Z

.field private static gRecyclerLock:Ljava/lang/Object;

.field private static gRecyclerTop:Landroid/view/MotionEvent;

.field private static gRecyclerUsed:I


# instance fields
.field private mAction:I

.field private mDataSamples:[F

.field private mDownTimeNano:J

.field private mEdgeFlags:I

.field private mEventTimeNanoSamples:[J

.field private mFlags:I

.field private mLastDataSampleIndex:I

.field private mLastEventTimeNanoSampleIndex:I

.field private mMetaState:I

.field private mNext:Landroid/view/MotionEvent;

.field private mNumPointers:I

.field private mNumSamples:I

.field private mPointerIdentifiers:[I

.field private mRecycled:Z

.field private mRecycledLocation:Ljava/lang/RuntimeException;

.field private mXOffset:F

.field private mXPrecision:F

.field private mYOffset:F

.field private mYPrecision:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 317
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    .line 318
    const/4 v0, 0x0

    sput v0, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 319
    const/4 v0, 0x0

    sput-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 1542
    new-instance v0, Landroid/view/MotionEvent$1;

    invoke-direct {v0}, Landroid/view/MotionEvent$1;-><init>()V

    sput-object v0, Landroid/view/MotionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 1
    .parameter "pointerCount"
    .parameter "sampleCount"

    .prologue
    .line 352
    invoke-direct {p0}, Landroid/view/InputEvent;-><init>()V

    .line 353
    new-array v0, p1, [I

    iput-object v0, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 354
    mul-int v0, p1, p2

    mul-int/lit8 v0, v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 355
    new-array v0, p2, [J

    iput-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 356
    return-void
.end method

.method public static createFromParcelBody(Landroid/os/Parcel;)Landroid/view/MotionEvent;
    .locals 11
    .parameter "in"

    .prologue
    const/4 v10, 0x1

    .line 1556
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1557
    .local v1, NP:I
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 1558
    .local v2, NS:I
    mul-int v8, v1, v2

    mul-int/lit8 v0, v8, 0x9

    .line 1560
    .local v0, NI:I
    invoke-static {v1, v2}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v4

    .line 1561
    .local v4, ev:Landroid/view/MotionEvent;
    iput v1, v4, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1562
    iput v2, v4, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1564
    invoke-virtual {v4, p0}, Landroid/view/MotionEvent;->readBaseFromParcel(Landroid/os/Parcel;)V

    .line 1566
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    iput-wide v8, v4, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 1567
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mAction:I

    .line 1568
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mXOffset:F

    .line 1569
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mYOffset:F

    .line 1570
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mXPrecision:F

    .line 1571
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mYPrecision:F

    .line 1572
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 1573
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mMetaState:I

    .line 1574
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    iput v8, v4, Landroid/view/MotionEvent;->mFlags:I

    .line 1576
    iget-object v7, v4, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1577
    .local v7, pointerIdentifiers:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v1, :cond_0

    .line 1578
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v8

    aput v8, v7, v6

    .line 1577
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1581
    :cond_0
    iget-object v5, v4, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 1582
    .local v5, eventTimeNanoSamples:[J
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_1

    .line 1583
    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    aput-wide v8, v5, v6

    .line 1582
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1586
    :cond_1
    iget-object v3, v4, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1587
    .local v3, dataSamples:[F
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_2

    .line 1588
    invoke-virtual {p0}, Landroid/os/Parcel;->readFloat()F

    move-result v8

    aput v8, v3, v6

    .line 1587
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1591
    :cond_2
    sub-int v8, v2, v10

    iput v8, v4, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 1592
    sub-int v8, v2, v10

    mul-int/2addr v8, v1

    mul-int/lit8 v8, v8, 0x9

    iput v8, v4, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 1593
    return-object v4
.end method

.method private final getPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .parameter "sampleIndex"
    .parameter "outPointerCoords"

    .prologue
    .line 1420
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1421
    .local v0, dataSamples:[F
    add-int/lit8 v1, p1, 0x0

    aget v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 1422
    add-int/lit8 v1, p1, 0x1

    aget v1, v0, v1

    iget v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v1, v2

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 1423
    add-int/lit8 v1, p1, 0x2

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 1424
    add-int/lit8 v1, p1, 0x3

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 1425
    add-int/lit8 v1, p1, 0x4

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    .line 1426
    add-int/lit8 v1, p1, 0x5

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    .line 1427
    add-int/lit8 v1, p1, 0x6

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    .line 1428
    add-int/lit8 v1, p1, 0x7

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    .line 1429
    add-int/lit8 v1, p1, 0x8

    aget v1, v0, v1

    iput v1, p2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    .line 1430
    return-void
.end method

.method private final incrementNumSamplesAndReserveStorage(I)V
    .locals 6
    .parameter "dataSampleStride"

    .prologue
    const/4 v5, 0x0

    .line 1470
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iget-object v4, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 1471
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    add-int/lit8 v3, v3, 0x8

    new-array v1, v3, [J

    .line 1472
    .local v1, newEventTimeNanoSamples:[J
    iget-object v3, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1473
    iput-object v1, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 1476
    .end local v1           #newEventTimeNanoSamples:[J
    :cond_0
    iget v3, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int v2, v3, p1

    .line 1477
    .local v2, nextDataSampleIndex:I
    add-int v3, v2, p1

    iget-object v4, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    array-length v4, v4

    if-le v3, v4, :cond_1

    .line 1478
    mul-int/lit8 v3, p1, 0x8

    add-int/2addr v3, v2

    new-array v0, v3, [F

    .line 1480
    .local v0, newDataSamples:[F
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    invoke-static {v3, v5, v0, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1481
    iput-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1484
    .end local v0           #newDataSamples:[F
    :cond_1
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iput v3, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 1485
    iput v2, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 1486
    iget v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1487
    return-void
.end method

.method private static obtain(II)Landroid/view/MotionEvent;
    .locals 6
    .parameter "pointerCount"
    .parameter "sampleCount"

    .prologue
    const/4 v5, 0x0

    .line 360
    sget-object v2, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 361
    :try_start_0
    sget-object v3, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    if-nez v3, :cond_2

    .line 362
    const/4 v3, 0x5

    if-ge p0, v3, :cond_0

    .line 363
    const/4 p0, 0x5

    .line 365
    :cond_0
    const/16 v3, 0x8

    if-ge p1, v3, :cond_1

    .line 366
    const/16 p1, 0x8

    .line 368
    :cond_1
    new-instance v3, Landroid/view/MotionEvent;

    invoke-direct {v3, p0, p1}, Landroid/view/MotionEvent;-><init>(II)V

    monitor-exit v2

    move-object v2, v3

    .line 391
    :goto_0
    return-object v2

    .line 370
    :cond_2
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 371
    .local v0, ev:Landroid/view/MotionEvent;
    iget-object v3, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    sput-object v3, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 372
    sget v3, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    sput v3, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 373
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 374
    iput-object v5, v0, Landroid/view/MotionEvent;->mRecycledLocation:Ljava/lang/RuntimeException;

    .line 375
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 376
    iput-object v5, v0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 378
    iget-object v2, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    array-length v2, v2

    if-ge v2, p0, :cond_3

    .line 379
    new-array v2, p0, [I

    iput-object v2, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 382
    :cond_3
    iget-object v2, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    array-length v2, v2

    if-ge v2, p1, :cond_4

    .line 383
    new-array v2, p1, [J

    iput-object v2, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 386
    :cond_4
    mul-int v2, p0, p1

    mul-int/lit8 v1, v2, 0x9

    .line 387
    .local v1, neededDataSamplesLength:I
    iget-object v2, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    array-length v2, v2

    if-ge v2, v1, :cond_5

    .line 388
    new-array v2, v1, [F

    iput-object v2, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    :cond_5
    move-object v2, v0

    .line 391
    goto :goto_0

    .line 373
    .end local v0           #ev:Landroid/view/MotionEvent;
    .end local v1           #neededDataSamplesLength:I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public static obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 8
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"

    .prologue
    .line 488
    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v2

    .line 489
    .local v2, ev:Landroid/view/MotionEvent;
    move/from16 v0, p12

    move-object v1, v2

    iput v0, v1, Landroid/view/InputEvent;->mDeviceId:I

    .line 490
    const/16 p12, 0x0

    move/from16 v0, p12

    move-object v1, v2

    iput v0, v1, Landroid/view/InputEvent;->mSource:I

    .line 491
    .end local p12
    move/from16 v0, p13

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 492
    const-wide/32 p12, 0xf4240

    mul-long p0, p0, p12

    iput-wide p0, v2, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 493
    .end local p0
    iput p4, v2, Landroid/view/MotionEvent;->mAction:I

    .line 494
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mFlags:I

    .line 495
    move/from16 v0, p9

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mMetaState:I

    .line 496
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mXOffset:F

    .line 497
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mYOffset:F

    .line 498
    move/from16 v0, p10

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mXPrecision:F

    .line 499
    move/from16 v0, p11

    move-object v1, v2

    iput v0, v1, Landroid/view/MotionEvent;->mYPrecision:F

    .line 501
    const/4 p0, 0x1

    iput p0, v2, Landroid/view/MotionEvent;->mNumPointers:I

    .line 502
    const/4 p0, 0x1

    iput p0, v2, Landroid/view/MotionEvent;->mNumSamples:I

    .line 504
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 505
    const/4 p0, 0x0

    iput p0, v2, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 507
    iget-object p0, v2, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    const/4 p1, 0x0

    const/4 p4, 0x0

    aput p4, p0, p1

    .line 509
    .end local p4
    iget-object p0, v2, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    const/4 p1, 0x0

    const-wide/32 p9, 0xf4240

    mul-long p2, p2, p9

    aput-wide p2, p0, p1

    .line 511
    .end local p2
    .end local p9
    const/4 v3, 0x0

    move v4, p5

    move v5, p6

    move v6, p7

    move/from16 v7, p8

    invoke-direct/range {v2 .. v7}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(IFFFF)V

    .line 512
    return-object v2
.end method

.method public static obtain(JJIFFI)Landroid/view/MotionEvent;
    .locals 14
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "x"
    .parameter "y"
    .parameter "metaState"

    .prologue
    .line 577
    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v9, p7

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static obtain(JJIIFFFFIFFII)Landroid/view/MotionEvent;
    .locals 14
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointers"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 554
    move-wide v0, p0

    move-wide/from16 v2, p2

    move/from16 v4, p4

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p14

    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object p0

    .end local p0
    return-object p0
.end method

.method public static obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
    .locals 1
    .parameter "downTime"
    .parameter "eventTime"
    .parameter "action"
    .parameter "pointers"
    .parameter "pointerIds"
    .parameter "pointerCoords"
    .parameter "metaState"
    .parameter "xPrecision"
    .parameter "yPrecision"
    .parameter "deviceId"
    .parameter "edgeFlags"
    .parameter "source"
    .parameter "flags"

    .prologue
    .line 426
    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 427
    .local v0, ev:Landroid/view/MotionEvent;
    iput p11, v0, Landroid/view/InputEvent;->mDeviceId:I

    .line 428
    iput p13, v0, Landroid/view/InputEvent;->mSource:I

    .line 429
    iput p12, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 430
    const-wide/32 p11, 0xf4240

    mul-long/2addr p0, p11

    iput-wide p0, v0, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 431
    .end local p0
    .end local p11
    iput p4, v0, Landroid/view/MotionEvent;->mAction:I

    .line 432
    iput p14, v0, Landroid/view/MotionEvent;->mFlags:I

    .line 433
    iput p8, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 434
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mXOffset:F

    .line 435
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mYOffset:F

    .line 436
    iput p9, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 437
    iput p10, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 439
    iput p5, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 440
    const/4 p0, 0x1

    iput p0, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 442
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 443
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 445
    const/4 p0, 0x0

    iget-object p1, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    const/4 p4, 0x0

    invoke-static {p6, p0, p1, p4, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 447
    .end local p4
    iget-object p0, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    const/4 p1, 0x0

    const-wide/32 p4, 0xf4240

    mul-long/2addr p2, p4

    aput-wide p2, p0, p1

    .line 449
    .end local p2
    const/4 p0, 0x0

    invoke-direct {v0, p0, p7}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(I[Landroid/view/MotionEvent$PointerCoords;)V

    .line 451
    return-object v0
.end method

.method public static obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .parameter "o"

    .prologue
    const/4 v6, 0x0

    .line 585
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    invoke-static {v3, v4}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 586
    .local v0, ev:Landroid/view/MotionEvent;
    iget v3, p0, Landroid/view/InputEvent;->mDeviceId:I

    iput v3, v0, Landroid/view/InputEvent;->mDeviceId:I

    .line 587
    iget v3, p0, Landroid/view/InputEvent;->mSource:I

    iput v3, v0, Landroid/view/InputEvent;->mSource:I

    .line 588
    iget v3, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v3, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 589
    iget-wide v3, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    iput-wide v3, v0, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 590
    iget v3, p0, Landroid/view/MotionEvent;->mAction:I

    iput v3, v0, Landroid/view/MotionEvent;->mAction:I

    .line 591
    iget v3, p0, Landroid/view/MotionEvent;->mFlags:I

    iput v3, v0, Landroid/view/MotionEvent;->mFlags:I

    .line 592
    iget v3, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v3, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 593
    iget v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    iput v3, v0, Landroid/view/MotionEvent;->mXOffset:F

    .line 594
    iget v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    iput v3, v0, Landroid/view/MotionEvent;->mYOffset:F

    .line 595
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v3, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 596
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v3, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 597
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v1, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 598
    .local v1, numPointers:I
    iget v2, p0, Landroid/view/MotionEvent;->mNumSamples:I

    iput v2, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 600
    .local v2, numSamples:I
    iget v3, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    iput v3, v0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 601
    iget v3, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    iput v3, v0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 603
    iget-object v3, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    iget-object v4, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-static {v3, v6, v4, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 605
    iget-object v3, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget-object v4, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    invoke-static {v3, v6, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget-object v4, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int v5, v1, v2

    mul-int/lit8 v5, v5, 0x9

    invoke-static {v3, v6, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 609
    return-object v0
.end method

.method public static obtainNoHistory(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 7
    .parameter "o"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 617
    iget v2, p0, Landroid/view/MotionEvent;->mNumPointers:I

    invoke-static {v2, v4}, Landroid/view/MotionEvent;->obtain(II)Landroid/view/MotionEvent;

    move-result-object v0

    .line 618
    .local v0, ev:Landroid/view/MotionEvent;
    iget v2, p0, Landroid/view/InputEvent;->mDeviceId:I

    iput v2, v0, Landroid/view/InputEvent;->mDeviceId:I

    .line 619
    iget v2, p0, Landroid/view/InputEvent;->mSource:I

    iput v2, v0, Landroid/view/InputEvent;->mSource:I

    .line 620
    iget v2, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    iput v2, v0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 621
    iget-wide v2, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    iput-wide v2, v0, Landroid/view/MotionEvent;->mDownTimeNano:J

    .line 622
    iget v2, p0, Landroid/view/MotionEvent;->mAction:I

    iput v2, v0, Landroid/view/MotionEvent;->mAction:I

    .line 623
    iget v2, p0, Landroid/view/MotionEvent;->mFlags:I

    iput v2, p0, Landroid/view/MotionEvent;->mFlags:I

    .line 624
    iget v2, p0, Landroid/view/MotionEvent;->mMetaState:I

    iput v2, v0, Landroid/view/MotionEvent;->mMetaState:I

    .line 625
    iget v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    iput v2, v0, Landroid/view/MotionEvent;->mXOffset:F

    .line 626
    iget v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    iput v2, v0, Landroid/view/MotionEvent;->mYOffset:F

    .line 627
    iget v2, p0, Landroid/view/MotionEvent;->mXPrecision:F

    iput v2, v0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 628
    iget v2, p0, Landroid/view/MotionEvent;->mYPrecision:F

    iput v2, v0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 630
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iput v1, v0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 631
    .local v1, numPointers:I
    iput v4, v0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 633
    iput v6, v0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 634
    iput v6, v0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    .line 636
    iget-object v2, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    iget-object v3, v0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    invoke-static {v2, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 638
    iget-object v2, v0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget-object v3, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v4, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    aget-wide v3, v3, v4

    aput-wide v3, v2, v6

    .line 640
    iget-object v2, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v3, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    iget-object v4, v0, Landroid/view/MotionEvent;->mDataSamples:[F

    mul-int/lit8 v5, v1, 0x9

    invoke-static {v2, v3, v4, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 642
    return-object v0
.end method

.method private final setPointerCoordsAtSampleIndex(IFFFF)V
    .locals 3
    .parameter "sampleIndex"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"

    .prologue
    .line 1457
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1458
    .local v0, dataSamples:[F
    add-int/lit8 v1, p1, 0x0

    iget v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    sub-float v2, p2, v2

    aput v2, v0, v1

    .line 1459
    add-int/lit8 v1, p1, 0x1

    iget v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    sub-float v2, p3, v2

    aput v2, v0, v1

    .line 1460
    add-int/lit8 v1, p1, 0x2

    aput p4, v0, v1

    .line 1461
    add-int/lit8 v1, p1, 0x3

    aput p5, v0, v1

    .line 1462
    add-int/lit8 v1, p1, 0x4

    aput p4, v0, v1

    .line 1463
    add-int/lit8 v1, p1, 0x5

    aput p4, v0, v1

    .line 1464
    add-int/lit8 v1, p1, 0x6

    aput p5, v0, v1

    .line 1465
    add-int/lit8 v1, p1, 0x7

    aput p5, v0, v1

    .line 1466
    add-int/lit8 v1, p1, 0x8

    const/4 v2, 0x0

    aput v2, v0, v1

    .line 1467
    return-void
.end method

.method private final setPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 4
    .parameter "sampleIndex"
    .parameter "pointerCoords"

    .prologue
    .line 1443
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1444
    .local v0, dataSamples:[F
    add-int/lit8 v1, p1, 0x0

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->x:F

    iget v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 1445
    add-int/lit8 v1, p1, 0x1

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->y:F

    iget v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    sub-float/2addr v2, v3

    aput v2, v0, v1

    .line 1446
    add-int/lit8 v1, p1, 0x2

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    aput v2, v0, v1

    .line 1447
    add-int/lit8 v1, p1, 0x3

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->size:F

    aput v2, v0, v1

    .line 1448
    add-int/lit8 v1, p1, 0x4

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->touchMajor:F

    aput v2, v0, v1

    .line 1449
    add-int/lit8 v1, p1, 0x5

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->touchMinor:F

    aput v2, v0, v1

    .line 1450
    add-int/lit8 v1, p1, 0x6

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->toolMajor:F

    aput v2, v0, v1

    .line 1451
    add-int/lit8 v1, p1, 0x7

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->toolMinor:F

    aput v2, v0, v1

    .line 1452
    add-int/lit8 v1, p1, 0x8

    iget v2, p2, Landroid/view/MotionEvent$PointerCoords;->orientation:F

    aput v2, v0, v1

    .line 1453
    return-void
.end method

.method private final setPointerCoordsAtSampleIndex(I[Landroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .parameter "sampleIndex"
    .parameter "pointerCoords"

    .prologue
    .line 1434
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1435
    .local v1, numPointers:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1436
    aget-object v2, p2, v0

    invoke-direct {p0, p1, v2}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1437
    add-int/lit8 p1, p1, 0x9

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1439
    :cond_0
    return-void
.end method


# virtual methods
.method public final addBatch(JFFFFI)V
    .locals 6
    .parameter "eventTime"
    .parameter "x"
    .parameter "y"
    .parameter "pressure"
    .parameter "size"
    .parameter "metaState"

    .prologue
    .line 1505
    const/16 v0, 0x9

    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->incrementNumSamplesAndReserveStorage(I)V

    .line 1507
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v1, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    const-wide/32 v2, 0xf4240

    mul-long/2addr v2, p1

    aput-wide v2, v0, v1

    .line 1508
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    move-object v0, p0

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(IFFFF)V

    .line 1510
    iget v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    or-int/2addr v0, p7

    iput v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 1511
    return-void
.end method

.method public final addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V
    .locals 5
    .parameter "eventTime"
    .parameter "pointerCoords"
    .parameter "metaState"

    .prologue
    .line 1525
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/lit8 v0, v1, 0x9

    .line 1526
    .local v0, dataSampleStride:I
    invoke-direct {p0, v0}, Landroid/view/MotionEvent;->incrementNumSamplesAndReserveStorage(I)V

    .line 1528
    iget-object v1, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v2, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    const-wide/32 v3, 0xf4240

    mul-long/2addr v3, p1

    aput-wide v3, v1, v2

    .line 1529
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    invoke-direct {p0, v1, p3}, Landroid/view/MotionEvent;->setPointerCoordsAtSampleIndex(I[Landroid/view/MotionEvent$PointerCoords;)V

    .line 1531
    iget v1, p0, Landroid/view/MotionEvent;->mMetaState:I

    or-int/2addr v1, p4

    iput v1, p0, Landroid/view/MotionEvent;->mMetaState:I

    .line 1532
    return-void
.end method

.method public final findPointerIndex(I)I
    .locals 2
    .parameter "pointerId"

    .prologue
    .line 869
    iget v0, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 870
    .local v0, i:I
    :cond_0
    if-lez v0, :cond_1

    .line 871
    add-int/lit8 v0, v0, -0x1

    .line 872
    iget-object v1, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    .line 876
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public final getAction()I
    .locals 1

    .prologue
    .line 707
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    return v0
.end method

.method public final getActionIndex()I
    .locals 2

    .prologue
    .line 731
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public final getActionMasked()I
    .locals 1

    .prologue
    .line 719
    iget v0, p0, Landroid/view/MotionEvent;->mAction:I

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final getDownTime()J
    .locals 4

    .prologue
    .line 748
    iget-wide v0, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEdgeFlags()I
    .locals 1

    .prologue
    .line 1373
    iget v0, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    return v0
.end method

.method public final getEventTime()J
    .locals 4

    .prologue
    .line 755
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v1, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    aget-wide v0, v0, v1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getEventTimeNano()J
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    iget v1, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final getFlags()I
    .locals 1

    .prologue
    .line 740
    iget v0, p0, Landroid/view/MotionEvent;->mFlags:I

    return v0
.end method

.method public final getHistoricalEventTime(I)J
    .locals 4
    .parameter "pos"

    .prologue
    .line 1104
    iget-object v0, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    aget-wide v0, v0, p1

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public final getHistoricalOrientation(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1176
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalOrientation(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1337
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"
    .parameter "outPointerCoords"

    .prologue
    .line 1358
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v0, v1, 0x9

    .line 1359
    .local v0, sampleIndex:I
    invoke-direct {p0, v0, p3}, Landroid/view/MotionEvent;->getPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1360
    return-void
.end method

.method public final getHistoricalPressure(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1128
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalPressure(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1229
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1136
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalSize(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1247
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMajor(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1160
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMajor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1301
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMinor(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1168
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalToolMinor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1319
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMajor(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1144
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMajor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1265
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMinor(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1152
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalTouchMinor(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1283
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getHistoricalX(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1112
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistoricalX(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1193
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistoricalY(I)F
    .locals 2
    .parameter "pos"

    .prologue
    .line 1120
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistoricalY(II)F
    .locals 2
    .parameter "pointerIndex"
    .parameter "pos"

    .prologue
    .line 1211
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    mul-int/2addr v1, p2

    add-int/2addr v1, p1

    mul-int/lit8 v1, v1, 0x9

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getHistorySize()I
    .locals 1

    .prologue
    .line 1090
    iget v0, p0, Landroid/view/MotionEvent;->mLastEventTimeNanoSampleIndex:I

    return v0
.end method

.method public final getMetaState()I
    .locals 1

    .prologue
    .line 1038
    iget v0, p0, Landroid/view/MotionEvent;->mMetaState:I

    return v0
.end method

.method public final getOrientation()F
    .locals 2

    .prologue
    .line 837
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getOrientation(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 1010
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x8

    aget v0, v0, v1

    return v0
.end method

.method public final getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
    .locals 3
    .parameter "pointerIndex"
    .parameter "outPointerCoords"

    .prologue
    .line 1023
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int v0, v1, v2

    .line 1024
    .local v0, sampleIndex:I
    invoke-direct {p0, v0, p2}, Landroid/view/MotionEvent;->getPointerCoordsAtSampleIndex(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 1025
    return-void
.end method

.method public final getPointerCount()I
    .locals 1

    .prologue
    .line 845
    iget v0, p0, Landroid/view/MotionEvent;->mNumPointers:I

    return v0
.end method

.method public final getPointerId(I)I
    .locals 1
    .parameter "pointerIndex"

    .prologue
    .line 857
    iget-object v0, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    aget v0, v0, p1

    return v0
.end method

.method public final getPressure()F
    .locals 2

    .prologue
    .line 789
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getPressure(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 919
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public final getRawX()F
    .locals 2

    .prologue
    .line 1048
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public final getRawY()F
    .locals 2

    .prologue
    .line 1058
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public final getSize()F
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getSize(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 936
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x3

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMajor()F
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMajor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 977
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x6

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMinor()F
    .locals 2

    .prologue
    .line 829
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getToolMinor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 992
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMajor()F
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMajor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 949
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMinor()F
    .locals 2

    .prologue
    .line 813
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getTouchMinor(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 962
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    aget v0, v0, v1

    return v0
.end method

.method public final getX()F
    .locals 2

    .prologue
    .line 773
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getX(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 889
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x0

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getXPrecision()F
    .locals 1

    .prologue
    .line 1068
    iget v0, p0, Landroid/view/MotionEvent;->mXPrecision:F

    return v0
.end method

.method public final getY()F
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getY(I)F
    .locals 3
    .parameter "pointerIndex"

    .prologue
    .line 903
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    mul-int/lit8 v2, p1, 0x9

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, v1

    return v0
.end method

.method public final getYPrecision()F
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Landroid/view/MotionEvent;->mYPrecision:F

    return v0
.end method

.method public final offsetLocation(FF)V
    .locals 1
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 1400
    iget v0, p0, Landroid/view/MotionEvent;->mXOffset:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/view/MotionEvent;->mXOffset:F

    .line 1401
    iget v0, p0, Landroid/view/MotionEvent;->mYOffset:F

    add-float/2addr v0, p2

    iput v0, p0, Landroid/view/MotionEvent;->mYOffset:F

    .line 1402
    return-void
.end method

.method public final recycle()V
    .locals 3

    .prologue
    .line 658
    iget-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    if-eqz v0, :cond_0

    .line 659
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/MotionEvent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recycled twice!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 661
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/MotionEvent;->mRecycled:Z

    .line 664
    sget-object v0, Landroid/view/MotionEvent;->gRecyclerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 665
    :try_start_0
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 666
    sget v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/MotionEvent;->gRecyclerUsed:I

    .line 667
    const/4 v1, 0x0

    iput v1, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 668
    sget-object v1, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    iput-object v1, p0, Landroid/view/MotionEvent;->mNext:Landroid/view/MotionEvent;

    .line 669
    sput-object p0, Landroid/view/MotionEvent;->gRecyclerTop:Landroid/view/MotionEvent;

    .line 671
    :cond_1
    monitor-exit v0

    .line 672
    return-void

    .line 671
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final scale(F)V
    .locals 5
    .parameter "scale"

    .prologue
    .line 680
    iget v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mXOffset:F

    .line 681
    iget v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mYOffset:F

    .line 682
    iget v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mXPrecision:F

    .line 683
    iget v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    mul-float/2addr v3, p1

    iput v3, p0, Landroid/view/MotionEvent;->mYPrecision:F

    .line 685
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 686
    .local v0, history:[F
    iget v3, p0, Landroid/view/MotionEvent;->mNumPointers:I

    iget v4, p0, Landroid/view/MotionEvent;->mNumSamples:I

    mul-int/2addr v3, v4

    mul-int/lit8 v2, v3, 0x9

    .line 687
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 688
    add-int/lit8 v3, v1, 0x0

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 689
    add-int/lit8 v3, v1, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 691
    add-int/lit8 v3, v1, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 692
    add-int/lit8 v3, v1, 0x4

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 693
    add-int/lit8 v3, v1, 0x5

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 694
    add-int/lit8 v3, v1, 0x6

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 695
    add-int/lit8 v3, v1, 0x7

    aget v4, v0, v3

    mul-float/2addr v4, p1

    aput v4, v0, v3

    .line 687
    add-int/lit8 v1, v1, 0x9

    goto :goto_0

    .line 697
    :cond_0
    return-void
.end method

.method public final setAction(I)V
    .locals 0
    .parameter "action"

    .prologue
    .line 1391
    iput p1, p0, Landroid/view/MotionEvent;->mAction:I

    .line 1392
    return-void
.end method

.method public final setEdgeFlags(I)V
    .locals 0
    .parameter "flags"

    .prologue
    .line 1384
    iput p1, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    .line 1385
    return-void
.end method

.method public final setLocation(FF)V
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1412
    iget-object v0, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1413
    .local v0, dataSamples:[F
    iget v1, p0, Landroid/view/MotionEvent;->mLastDataSampleIndex:I

    .line 1414
    .local v1, lastDataSampleIndex:I
    add-int/lit8 v2, v1, 0x0

    aget v2, v0, v2

    sub-float v2, p1, v2

    iput v2, p0, Landroid/view/MotionEvent;->mXOffset:F

    .line 1415
    add-int/lit8 v2, v1, 0x1

    aget v2, v0, v2

    sub-float v2, p2, v2

    iput v2, p0, Landroid/view/MotionEvent;->mYOffset:F

    .line 1416
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1536
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1537
    .local v0, nIdx:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MotionEvent{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " x="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " y="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pressure="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 9
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 1597
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1599
    iget v1, p0, Landroid/view/MotionEvent;->mNumPointers:I

    .line 1600
    .local v1, NP:I
    iget v2, p0, Landroid/view/MotionEvent;->mNumSamples:I

    .line 1601
    .local v2, NS:I
    mul-int v7, v1, v2

    mul-int/lit8 v0, v7, 0x9

    .line 1603
    .local v0, NI:I
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1604
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1606
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->writeBaseToParcel(Landroid/os/Parcel;)V

    .line 1608
    iget-wide v7, p0, Landroid/view/MotionEvent;->mDownTimeNano:J

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1609
    iget v7, p0, Landroid/view/MotionEvent;->mAction:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1610
    iget v7, p0, Landroid/view/MotionEvent;->mXOffset:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1611
    iget v7, p0, Landroid/view/MotionEvent;->mYOffset:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1612
    iget v7, p0, Landroid/view/MotionEvent;->mXPrecision:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1613
    iget v7, p0, Landroid/view/MotionEvent;->mYPrecision:F

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1614
    iget v7, p0, Landroid/view/MotionEvent;->mEdgeFlags:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1615
    iget v7, p0, Landroid/view/MotionEvent;->mMetaState:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1616
    iget v7, p0, Landroid/view/MotionEvent;->mFlags:I

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1618
    iget-object v6, p0, Landroid/view/MotionEvent;->mPointerIdentifiers:[I

    .line 1619
    .local v6, pointerIdentifiers:[I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v1, :cond_0

    .line 1620
    aget v7, v6, v5

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 1619
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1623
    :cond_0
    iget-object v4, p0, Landroid/view/MotionEvent;->mEventTimeNanoSamples:[J

    .line 1624
    .local v4, eventTimeNanoSamples:[J
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v2, :cond_1

    .line 1625
    aget-wide v7, v4, v5

    invoke-virtual {p1, v7, v8}, Landroid/os/Parcel;->writeLong(J)V

    .line 1624
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1628
    :cond_1
    iget-object v3, p0, Landroid/view/MotionEvent;->mDataSamples:[F

    .line 1629
    .local v3, dataSamples:[F
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v0, :cond_2

    .line 1630
    aget v7, v3, v5

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1629
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 1632
    :cond_2
    return-void
.end method
