.class public final Landroid/view/VelocityTracker;
.super Ljava/lang/Object;
.source "VelocityTracker.java"

# interfaces
.implements Landroid/util/Poolable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/VelocityTracker$Pointer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/util/Poolable",
        "<",
        "Landroid/view/VelocityTracker;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_AGE_MILLISECONDS:I = 0xc8

.field private static final NUM_PAST:I = 0xa

.field private static final POINTER_POOL_CAPACITY:I = 0x14

.field private static final TAG:Ljava/lang/String; = "VelocityTracker"

.field private static final localLOGV:Z

.field private static final sPool:Landroid/util/Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pool",
            "<",
            "Landroid/view/VelocityTracker;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecycledPointerCount:I

.field private static sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;


# instance fields
.field private mGeneration:I

.field private mLastTouchIndex:I

.field private mNext:Landroid/view/VelocityTracker;

.field private mPointerListHead:Landroid/view/VelocityTracker$Pointer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    new-instance v0, Landroid/view/VelocityTracker$1;

    invoke-direct {v0}, Landroid/view/VelocityTracker$1;-><init>()V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Pools;->finitePool(Landroid/util/PoolableManager;I)Landroid/util/Pool;

    move-result-object v0

    invoke-static {v0}, Landroid/util/Pools;->synchronizedPool(Landroid/util/Pool;)Landroid/util/Pool;

    move-result-object v0

    sput-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->clear()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/VelocityTracker$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/VelocityTracker;-><init>()V

    return-void
.end method

.method private final getPointer(I)Landroid/view/VelocityTracker$Pointer;
    .locals 2
    .parameter "id"

    .prologue
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_0
    if-eqz v0, :cond_1

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->id:I

    if-ne v1, p1, :cond_0

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_0
    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static obtain()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0}, Landroid/util/Pool;->acquire()Landroid/util/Poolable;

    move-result-object v0

    check-cast v0, Landroid/view/VelocityTracker;

    return-object v0
.end method

.method private static final obtainPointer()Landroid/view/VelocityTracker$Pointer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    sget-object v1, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v1

    :try_start_0
    sget v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    if-eqz v2, :cond_0

    sget-object v0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    .local v0, element:Landroid/view/VelocityTracker$Pointer;
    sget v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    sput v2, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    iget-object v2, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    sput-object v2, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    const/4 v2, 0x0

    iput-object v2, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    monitor-exit v1

    move-object v1, v0

    .end local v0           #element:Landroid/view/VelocityTracker$Pointer;
    :goto_0
    return-object v1

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Landroid/view/VelocityTracker$Pointer;

    invoke-direct {v1, v3}, Landroid/view/VelocityTracker$Pointer;-><init>(Landroid/view/VelocityTracker$1;)V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static final releasePointer(Landroid/view/VelocityTracker$Pointer;)V
    .locals 3
    .parameter "pointer"

    .prologue
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v0

    :try_start_0
    sget v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    const/16 v2, 0x14

    if-ge v1, v2, :cond_0

    sget-object v1, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iput-object v1, p0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    sget v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    sput-object p0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static final releasePointerList(Landroid/view/VelocityTracker$Pointer;)V
    .locals 5
    .parameter "pointer"

    .prologue
    const/16 v4, 0x14

    if-eqz p0, :cond_0

    sget-object v3, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    monitor-enter v3

    :try_start_0
    sget v0, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    .local v0, count:I
    if-lt v0, v4, :cond_1

    monitor-exit v3

    .end local v0           #count:I
    :cond_0
    :goto_0
    return-void

    .restart local v0       #count:I
    :cond_1
    move-object v2, p0

    .local v2, tail:Landroid/view/VelocityTracker$Pointer;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-lt v0, v4, :cond_3

    :cond_2
    sget-object v4, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    iput-object v4, v2, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    sput v0, Landroid/view/VelocityTracker;->sRecycledPointerCount:I

    sput-object p0, Landroid/view/VelocityTracker;->sRecycledPointerListHead:Landroid/view/VelocityTracker$Pointer;

    monitor-exit v3

    goto :goto_0

    .end local v0           #count:I
    .end local v2           #tail:Landroid/view/VelocityTracker$Pointer;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .restart local v0       #count:I
    .restart local v2       #tail:Landroid/view/VelocityTracker$Pointer;
    :cond_3
    :try_start_1
    iget-object v1, v2, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .local v1, next:Landroid/view/VelocityTracker$Pointer;
    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1
.end method


# virtual methods
.method public addMovement(Landroid/view/MotionEvent;)V
    .locals 23
    .parameter "ev"

    .prologue
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v5

    .local v5, historySize:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v16

    .local v16, pointerCount:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    move v8, v0

    .local v8, lastTouchIndex:I
    add-int/lit8 v20, v8, 0x1

    rem-int/lit8 v11, v20, 0xa

    .local v11, nextTouchIndex:I
    add-int v20, v11, v5

    rem-int/lit8 v3, v20, 0xa

    .local v3, finalTouchIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mGeneration:I

    move v4, v0

    add-int/lit8 v20, v4, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mGeneration:I

    .local v4, generation:I
    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    const/16 v18, 0x0

    .local v18, previousPointer:Landroid/view/VelocityTracker$Pointer;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    move v0, v6

    move/from16 v1, v16

    if-ge v0, v1, :cond_6

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v17

    .local v17, pointerId:I
    if-eqz v18, :cond_0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->id:I

    move/from16 v20, v0

    move/from16 v0, v17

    move/from16 v1, v20

    if-ge v0, v1, :cond_1

    :cond_0
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object v9, v0

    .local v9, nextPointer:Landroid/view/VelocityTracker$Pointer;
    :goto_1
    if-eqz v9, :cond_3

    iget v10, v9, Landroid/view/VelocityTracker$Pointer;->id:I

    .local v10, nextPointerId:I
    move v0, v10

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    move-object v15, v9

    .end local v10           #nextPointerId:I
    .local v15, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_2
    iput v4, v15, Landroid/view/VelocityTracker$Pointer;->generation:I

    move-object/from16 v18, v15

    iget-object v13, v15, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    .local v13, pastX:[F
    iget-object v14, v15, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    .local v14, pastY:[F
    iget-object v12, v15, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    .local v12, pastTime:[J
    const/4 v7, 0x0

    .local v7, j:I
    :goto_3
    if-ge v7, v5, :cond_5

    add-int v20, v11, v7

    rem-int/lit8 v19, v20, 0xa

    .local v19, touchIndex:I
    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v20

    aput v20, v13, v19

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v20

    aput v20, v14, v19

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v20

    aput-wide v20, v12, v19

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .end local v7           #j:I
    .end local v9           #nextPointer:Landroid/view/VelocityTracker$Pointer;
    .end local v12           #pastTime:[J
    .end local v13           #pastX:[F
    .end local v14           #pastY:[F
    .end local v15           #pointer:Landroid/view/VelocityTracker$Pointer;
    .end local v19           #touchIndex:I
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    move-object v9, v0

    .restart local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;
    goto :goto_1

    .restart local v10       #nextPointerId:I
    :cond_2
    move v0, v10

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    iget-object v9, v9, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_1

    .end local v10           #nextPointerId:I
    :cond_3
    invoke-static {}, Landroid/view/VelocityTracker;->obtainPointer()Landroid/view/VelocityTracker$Pointer;

    move-result-object v15

    .restart local v15       #pointer:Landroid/view/VelocityTracker$Pointer;
    move/from16 v0, v17

    move-object v1, v15

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->id:I

    move-object v0, v15

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    move-object/from16 v20, v0

    const-wide/high16 v21, -0x8000

    aput-wide v21, v20, v8

    iput-object v9, v15, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    if-nez v18, :cond_4

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    goto :goto_2

    :cond_4
    move-object v0, v15

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_2

    .restart local v7       #j:I
    .restart local v12       #pastTime:[J
    .restart local v13       #pastX:[F
    .restart local v14       #pastY:[F
    :cond_5
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v20

    aput v20, v13, v3

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v20

    aput v20, v14, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v20

    aput-wide v20, v12, v3

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .end local v7           #j:I
    .end local v9           #nextPointer:Landroid/view/VelocityTracker$Pointer;
    .end local v12           #pastTime:[J
    .end local v13           #pastX:[F
    .end local v14           #pastY:[F
    .end local v15           #pointer:Landroid/view/VelocityTracker$Pointer;
    .end local v17           #pointerId:I
    :cond_6
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object v15, v0

    .restart local v15       #pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_4
    if-eqz v15, :cond_9

    iget-object v9, v15, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    .restart local v9       #nextPointer:Landroid/view/VelocityTracker$Pointer;
    move-object v0, v15

    iget v0, v0, Landroid/view/VelocityTracker$Pointer;->generation:I

    move/from16 v20, v0

    move/from16 v0, v20

    move v1, v4

    if-eq v0, v1, :cond_8

    if-nez v18, :cond_7

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    :goto_5
    invoke-static {v15}, Landroid/view/VelocityTracker;->releasePointer(Landroid/view/VelocityTracker$Pointer;)V

    :goto_6
    move-object v15, v9

    goto :goto_4

    :cond_7
    move-object v0, v9

    move-object/from16 v1, v18

    iput-object v0, v1, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    goto :goto_5

    :cond_8
    move-object/from16 v18, v15

    goto :goto_6

    .end local v9           #nextPointer:Landroid/view/VelocityTracker$Pointer;
    :cond_9
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    invoke-static {v0}, Landroid/view/VelocityTracker;->releasePointerList(Landroid/view/VelocityTracker$Pointer;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    const/4 v0, 0x0

    iput v0, p0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    return-void
.end method

.method public computeCurrentVelocity(I)V
    .locals 1
    .parameter "units"

    .prologue
    const v0, 0x7f7fffff

    invoke-virtual {p0, p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    return-void
.end method

.method public computeCurrentVelocity(IF)V
    .locals 29
    .parameter "units"
    .parameter "maxVelocity"

    .prologue
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/VelocityTracker;->mLastTouchIndex:I

    move v7, v0

    .local v7, lastTouchIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/VelocityTracker;->mPointerListHead:Landroid/view/VelocityTracker$Pointer;

    move-object/from16 v22, v0

    .local v22, pointer:Landroid/view/VelocityTracker$Pointer;
    :goto_0
    if-eqz v22, :cond_b

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastTime:[J

    move-object/from16 v19, v0

    .local v19, pastTime:[J
    move/from16 v16, v7

    .local v16, oldestTouchIndex:I
    const/4 v13, 0x1

    .local v13, numTouches:I
    aget-wide v25, v19, v7

    const-wide/16 v27, 0xc8

    sub-long v8, v25, v27

    .local v8, minTime:J
    :goto_1
    const/16 v25, 0xa

    move v0, v13

    move/from16 v1, v25

    if-ge v0, v1, :cond_0

    add-int/lit8 v25, v16, 0xa

    const/16 v26, 0x1

    sub-int v25, v25, v26

    rem-int/lit8 v12, v25, 0xa

    .local v12, nextOldestTouchIndex:I
    aget-wide v10, v19, v12

    .local v10, nextOldestTime:J
    cmp-long v25, v10, v8

    if-gez v25, :cond_2

    .end local v10           #nextOldestTime:J
    .end local v12           #nextOldestTouchIndex:I
    :cond_0
    const/16 v25, 0x3

    move v0, v13

    move/from16 v1, v25

    if-le v0, v1, :cond_1

    add-int/lit8 v13, v13, -0x1

    :cond_1
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastX:[F

    move-object/from16 v20, v0

    .local v20, pastX:[F
    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->pastY:[F

    move-object/from16 v21, v0

    .local v21, pastY:[F
    aget v17, v20, v16

    .local v17, oldestX:F
    aget v18, v21, v16

    .local v18, oldestY:F
    aget-wide v14, v19, v16

    .local v14, oldestTime:J
    const/4 v2, 0x0

    .local v2, accumX:F
    const/4 v3, 0x0

    .local v3, accumY:F
    const/4 v6, 0x1

    .local v6, i:I
    :goto_2
    if-ge v6, v13, :cond_6

    add-int v25, v16, v6

    rem-int/lit8 v23, v25, 0xa

    .local v23, touchIndex:I
    aget-wide v25, v19, v23

    sub-long v25, v25, v14

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move v5, v0

    .local v5, duration:I
    if-nez v5, :cond_3

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .end local v2           #accumX:F
    .end local v3           #accumY:F
    .end local v5           #duration:I
    .end local v6           #i:I
    .end local v14           #oldestTime:J
    .end local v17           #oldestX:F
    .end local v18           #oldestY:F
    .end local v20           #pastX:[F
    .end local v21           #pastY:[F
    .end local v23           #touchIndex:I
    .restart local v10       #nextOldestTime:J
    .restart local v12       #nextOldestTouchIndex:I
    :cond_2
    move/from16 v16, v12

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .end local v10           #nextOldestTime:J
    .end local v12           #nextOldestTouchIndex:I
    .restart local v2       #accumX:F
    .restart local v3       #accumY:F
    .restart local v5       #duration:I
    .restart local v6       #i:I
    .restart local v14       #oldestTime:J
    .restart local v17       #oldestX:F
    .restart local v18       #oldestY:F
    .restart local v20       #pastX:[F
    .restart local v21       #pastY:[F
    .restart local v23       #touchIndex:I
    :cond_3
    aget v25, v20, v23

    sub-float v4, v25, v17

    .local v4, delta:F
    move v0, v5

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v4, v25

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v24, v25, v26

    .local v24, velocity:F
    const/16 v25, 0x0

    cmpl-float v25, v2, v25

    if-nez v25, :cond_4

    move/from16 v2, v24

    :goto_4
    aget v25, v21, v23

    sub-float v4, v25, v18

    move v0, v5

    int-to-float v0, v0

    move/from16 v25, v0

    div-float v25, v4, v25

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v26, v0

    mul-float v24, v25, v26

    const/16 v25, 0x0

    cmpl-float v25, v3, v25

    if-nez v25, :cond_5

    move/from16 v3, v24

    :goto_5
    goto :goto_3

    :cond_4
    add-float v25, v2, v24

    const/high16 v26, 0x3f00

    mul-float v25, v25, v26

    move/from16 v2, v25

    goto :goto_4

    :cond_5
    add-float v25, v3, v24

    const/high16 v26, 0x3f00

    mul-float v25, v25, v26

    move/from16 v3, v25

    goto :goto_5

    .end local v4           #delta:F
    .end local v5           #duration:I
    .end local v23           #touchIndex:I
    .end local v24           #velocity:F
    :cond_6
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v2, v25

    if-gez v25, :cond_9

    move/from16 v0, p2

    neg-float v0, v0

    move v2, v0

    :cond_7
    :goto_6
    move/from16 v0, p2

    neg-float v0, v0

    move/from16 v25, v0

    cmpg-float v25, v3, v25

    if-gez v25, :cond_a

    move/from16 v0, p2

    neg-float v0, v0

    move v3, v0

    :cond_8
    :goto_7
    move v0, v2

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    move v0, v3

    move-object/from16 v1, v22

    iput v0, v1, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/view/VelocityTracker$Pointer;->next:Landroid/view/VelocityTracker$Pointer;

    move-object/from16 v22, v0

    goto/16 :goto_0

    :cond_9
    cmpl-float v25, v2, p2

    if-lez v25, :cond_7

    move/from16 v2, p2

    goto :goto_6

    :cond_a
    cmpl-float v25, v3, p2

    if-lez v25, :cond_8

    move/from16 v3, p2

    goto :goto_7

    .end local v2           #accumX:F
    .end local v3           #accumY:F
    .end local v6           #i:I
    .end local v8           #minTime:J
    .end local v13           #numTouches:I
    .end local v14           #oldestTime:J
    .end local v16           #oldestTouchIndex:I
    .end local v17           #oldestX:F
    .end local v18           #oldestY:F
    .end local v19           #pastTime:[J
    .end local v20           #pastX:[F
    .end local v21           #pastY:[F
    :cond_b
    return-void
.end method

.method public getNextPoolable()Landroid/view/VelocityTracker;
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-object v0
.end method

.method public bridge synthetic getNextPoolable()Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getNextPoolable()Landroid/view/VelocityTracker;

    move-result-object v0

    return-object v0
.end method

.method public getXVelocity()F
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getXVelocity(I)F
    .locals 2
    .parameter "id"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->xVelocity:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getYVelocity()F
    .locals 2

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getYVelocity(I)F
    .locals 2
    .parameter "id"

    .prologue
    invoke-direct {p0, p1}, Landroid/view/VelocityTracker;->getPointer(I)Landroid/view/VelocityTracker$Pointer;

    move-result-object v0

    .local v0, pointer:Landroid/view/VelocityTracker$Pointer;
    if-eqz v0, :cond_0

    iget v1, v0, Landroid/view/VelocityTracker$Pointer;->yVelocity:F

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public recycle()V
    .locals 1

    .prologue
    sget-object v0, Landroid/view/VelocityTracker;->sPool:Landroid/util/Pool;

    invoke-interface {v0, p0}, Landroid/util/Pool;->release(Landroid/util/Poolable;)V

    return-void
.end method

.method public setNextPoolable(Landroid/view/VelocityTracker;)V
    .locals 0
    .parameter "element"

    .prologue
    iput-object p1, p0, Landroid/view/VelocityTracker;->mNext:Landroid/view/VelocityTracker;

    return-void
.end method

.method public bridge synthetic setNextPoolable(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/view/VelocityTracker;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->setNextPoolable(Landroid/view/VelocityTracker;)V

    return-void
.end method
