.class public Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/calendar/RecurrenceProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DaySet"
.end annotation


# instance fields
.field private mDays:I

.field private mMonth:I

.field private mR:Landroid/pim/EventRecurrence;

.field private mTime:Landroid/text/format/Time;

.field private mYear:I


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .parameter "zulu"

    .prologue
    .line 305
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 307
    return-void
.end method

.method private static generateDaysList(Landroid/text/format/Time;Landroid/pim/EventRecurrence;)I
    .locals 13
    .parameter "generated"
    .parameter "r"

    .prologue
    const/4 v12, 0x1

    .line 382
    const/4 v4, 0x0

    .line 390
    .local v4, days:I
    const/4 v10, 0x4

    invoke-virtual {p0, v10}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v8

    .line 393
    .local v8, lastDayThisMonth:I
    iget v3, p1, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 394
    .local v3, count:I
    if-lez v3, :cond_7

    .line 396
    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    .line 397
    .local v7, j:I
    :goto_0
    const/16 v10, 0x8

    if-lt v7, v10, :cond_0

    .line 398
    add-int/lit8 v7, v7, -0x7

    goto :goto_0

    .line 400
    :cond_0
    iget v5, p0, Landroid/text/format/Time;->weekDay:I

    .line 401
    .local v5, first:I
    if-lt v5, v7, :cond_2

    .line 402
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x1

    .line 411
    :goto_1
    iget-object v0, p1, Landroid/pim/EventRecurrence;->byday:[I

    .line 412
    .local v0, byday:[I
    iget-object v1, p1, Landroid/pim/EventRecurrence;->bydayNum:[I

    .line 413
    .local v1, bydayNum:[I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v3, :cond_7

    .line 414
    aget v9, v1, v6

    .line 415
    .local v9, v:I
    aget v10, v0, v6

    invoke-static {v10}, Landroid/pim/EventRecurrence;->day2TimeDay(I)I

    move-result v10

    sub-int/2addr v10, v5

    add-int/lit8 v7, v10, 0x1

    .line 416
    if-gtz v7, :cond_1

    .line 417
    add-int/lit8 v7, v7, 0x7

    .line 419
    :cond_1
    if-nez v9, :cond_3

    .line 421
    :goto_3
    if-gt v7, v8, :cond_4

    .line 424
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 421
    add-int/lit8 v7, v7, 0x7

    goto :goto_3

    .line 404
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v6           #i:I
    .end local v9           #v:I
    :cond_2
    sub-int v10, v5, v7

    add-int/lit8 v5, v10, 0x8

    goto :goto_1

    .line 427
    .restart local v0       #byday:[I
    .restart local v1       #bydayNum:[I
    .restart local v6       #i:I
    .restart local v9       #v:I
    :cond_3
    if-lez v9, :cond_5

    .line 430
    sub-int v10, v9, v12

    mul-int/lit8 v10, v10, 0x7

    add-int/2addr v7, v10

    .line 431
    if-gt v7, v8, :cond_4

    .line 435
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    .line 413
    :cond_4
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 441
    :cond_5
    :goto_5
    if-gt v7, v8, :cond_6

    add-int/lit8 v7, v7, 0x7

    goto :goto_5

    .line 447
    :cond_6
    mul-int/lit8 v10, v9, 0x7

    add-int/2addr v7, v10

    .line 448
    if-lt v7, v12, :cond_4

    .line 451
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_4

    .line 461
    .end local v0           #byday:[I
    .end local v1           #bydayNum:[I
    .end local v5           #first:I
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_7
    iget v10, p1, Landroid/pim/EventRecurrence;->freq:I

    const/4 v11, 0x5

    if-le v10, v11, :cond_e

    .line 462
    iget v3, p1, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    .line 463
    if-eqz v3, :cond_e

    .line 464
    iget-object v2, p1, Landroid/pim/EventRecurrence;->bymonthday:[I

    .line 465
    .local v2, bymonthday:[I
    iget v10, p1, Landroid/pim/EventRecurrence;->bydayCount:I

    if-nez v10, :cond_a

    .line 466
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    if-ge v6, v3, :cond_e

    .line 467
    aget v9, v2, v6

    .line 468
    .restart local v9       #v:I
    if-ltz v9, :cond_9

    .line 469
    shl-int v10, v12, v9

    or-int/2addr v4, v10

    .line 466
    :cond_8
    :goto_7
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 471
    :cond_9
    add-int v10, v8, v9

    add-int/lit8 v7, v10, 0x1

    .line 472
    .restart local v7       #j:I
    if-lt v7, v12, :cond_8

    if-gt v7, v8, :cond_8

    .line 473
    shl-int v10, v12, v7

    or-int/2addr v4, v10

    goto :goto_7

    .line 480
    .end local v6           #i:I
    .end local v7           #j:I
    .end local v9           #v:I
    :cond_a
    const/4 v7, 0x1

    .restart local v7       #j:I
    :goto_8
    if-gt v7, v8, :cond_e

    .line 482
    shl-int v10, v12, v7

    and-int/2addr v10, v4

    if-eqz v10, :cond_b

    .line 483
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_9
    if-ge v6, v3, :cond_d

    .line 484
    aget v10, v2, v6

    if-ne v10, v7, :cond_c

    .line 480
    .end local v6           #i:I
    :cond_b
    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    .line 483
    .restart local v6       #i:I
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 488
    :cond_d
    shl-int v10, v12, v7

    xor-int/lit8 v10, v10, -0x1

    and-int/2addr v4, v10

    goto :goto_a

    .line 495
    .end local v2           #bymonthday:[I
    .end local v6           #i:I
    .end local v7           #j:I
    :cond_e
    return v4
.end method


# virtual methods
.method get(Landroid/text/format/Time;I)Z
    .locals 6
    .parameter "iterator"
    .parameter "day"

    .prologue
    const/4 v5, 0x1

    .line 318
    iget v1, p1, Landroid/text/format/Time;->year:I

    .line 319
    .local v1, realYear:I
    iget v0, p1, Landroid/text/format/Time;->month:I

    .line 321
    .local v0, realMonth:I
    const/4 v2, 0x0

    .line 329
    .local v2, t:Landroid/text/format/Time;
    if-lt p2, v5, :cond_0

    const/16 v3, 0x1c

    if-le p2, v3, :cond_1

    .line 331
    :cond_0
    iget-object v2, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 332
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 333
    invoke-static {v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 334
    iget v1, v2, Landroid/text/format/Time;->year:I

    .line 335
    iget v0, v2, Landroid/text/format/Time;->month:I

    .line 336
    iget p2, v2, Landroid/text/format/Time;->monthDay:I

    .line 349
    :cond_1
    iget v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mYear:I

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mMonth:I

    if-eq v0, v3, :cond_4

    .line 350
    :cond_2
    if-nez v2, :cond_3

    .line 351
    iget-object v2, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mTime:Landroid/text/format/Time;

    .line 352
    invoke-virtual {v2, p2, v0, v1}, Landroid/text/format/Time;->set(III)V

    .line 353
    invoke-static {v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 361
    :cond_3
    iput v1, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mYear:I

    .line 362
    iput v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mMonth:I

    .line 363
    iget-object v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mR:Landroid/pim/EventRecurrence;

    invoke-static {v2, v3}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->generateDaysList(Landroid/text/format/Time;Landroid/pim/EventRecurrence;)I

    move-result v3

    iput v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mDays:I

    .line 368
    :cond_4
    iget v3, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mDays:I

    shl-int v4, v5, p2

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    move v3, v5

    :goto_0
    return v3

    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method setRecurrence(Landroid/pim/EventRecurrence;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 311
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mYear:I

    .line 312
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mMonth:I

    .line 313
    iput-object p1, p0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->mR:Landroid/pim/EventRecurrence;

    .line 314
    return-void
.end method
