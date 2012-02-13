.class public Lcom/android/providers/calendar/RecurrenceProcessor;
.super Ljava/lang/Object;
.source "RecurrenceProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    }
.end annotation


# static fields
.field private static BOGUS_TIME:Ljava/lang/Long; = null

.field private static final DAYS_IN_YEAR_PRECEDING_MONTH:[I = null

.field private static final DAYS_PER_MONTH:[I = null

.field private static final MAX_ALLOWED_ITERATIONS:I = 0x7d0

.field private static final SPEW:Z = false

.field private static final TAG:Ljava/lang/String; = "RecurrenceProcessor"

.field private static final USE_BYLIST:I = 0x1

.field private static final USE_ITERATOR:I


# instance fields
.field private mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

.field private mGenerated:Landroid/text/format/Time;

.field private mIterator:Landroid/text/format/Time;

.field private mStringBuilder:Ljava/lang/StringBuilder;

.field private mUntil:Landroid/text/format/Time;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 40
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->BOGUS_TIME:Ljava/lang/Long;

    .line 1144
    new-array v0, v2, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    .line 1146
    new-array v0, v2, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    return-void

    .line 1144
    nop

    :array_0
    .array-data 0x4
        0x1ft 0x0t 0x0t 0x0t
        0x1ct 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
    .end array-data

    .line 1146
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x3bt 0x0t 0x0t 0x0t
        0x5at 0x0t 0x0t 0x0t
        0x78t 0x0t 0x0t 0x0t
        0x97t 0x0t 0x0t 0x0t
        0xb4t 0x0t 0x0t 0x0t
        0xd4t 0x0t 0x0t 0x0t
        0xf3t 0x0t 0x0t 0x0t
        0x11t 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x4et 0x1t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const-string v2, "UTC"

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    .line 34
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 36
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    .line 37
    new-instance v0, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;-><init>(Z)V

    iput-object v0, p0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    .line 44
    return-void
.end method

.method private static filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I
    .locals 6
    .parameter "r"
    .parameter "iterator"

    .prologue
    .line 186
    iget v2, p0, Landroid/pim/EventRecurrence;->freq:I

    .line 188
    .local v2, freq:I
    const/4 v0, 0x6

    if-lt v0, v2, :cond_0

    .line 190
    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    if-lez v0, :cond_0

    .line 191
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bymonth:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->bymonthCount:I

    iget v3, p1, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([III)Z

    move-result v0

    .line 193
    .local v0, found:Z
    if-nez v0, :cond_0

    .line 194
    const/4 p0, 0x1

    .line 274
    .end local v0           #found:Z
    .end local v2           #freq:I
    .end local p0
    .end local p1
    :goto_0
    return p0

    .line 198
    .restart local v2       #freq:I
    .restart local p0
    .restart local p1
    :cond_0
    const/4 v0, 0x5

    if-lt v0, v2, :cond_1

    .line 201
    iget v0, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    if-lez v0, :cond_1

    .line 202
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byweekno:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byweeknoCount:I

    invoke-virtual {p1}, Landroid/text/format/Time;->getWeekNumber()I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 205
    .restart local v0       #found:Z
    if-nez v0, :cond_1

    .line 206
    const/4 p0, 0x2

    goto :goto_0

    .line 210
    .end local v0           #found:Z
    :cond_1
    const/4 v0, 0x4

    if-lt v0, v2, :cond_4

    .line 212
    iget v0, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    if-lez v0, :cond_2

    .line 213
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byyearday:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byyeardayCount:I

    iget v3, p1, Landroid/text/format/Time;->yearDay:I

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 215
    .restart local v0       #found:Z
    if-nez v0, :cond_2

    .line 216
    const/4 p0, 0x3

    goto :goto_0

    .line 220
    .end local v0           #found:Z
    :cond_2
    iget v0, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    if-lez v0, :cond_3

    .line 221
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bymonthday:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    iget v3, p1, Landroid/text/format/Time;->monthDay:I

    const/4 v4, 0x4

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 224
    .restart local v0       #found:Z
    if-nez v0, :cond_3

    .line 225
    const/4 p0, 0x4

    goto :goto_0

    .line 231
    .end local v0           #found:Z
    :cond_3
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    if-lez v0, :cond_4

    .line 232
    iget-object v1, p0, Landroid/pim/EventRecurrence;->byday:[I

    .line 233
    .local v1, a:[I
    iget v0, p0, Landroid/pim/EventRecurrence;->bydayCount:I

    .line 234
    .local v0, N:I
    iget v3, p1, Landroid/text/format/Time;->weekDay:I

    invoke-static {v3}, Landroid/pim/EventRecurrence;->timeDay2Day(I)I

    move-result v4

    .line 235
    .local v4, v:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v0, :cond_6

    .line 236
    aget v5, v1, v3

    if-ne v5, v4, :cond_5

    .line 243
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v3           #i:I
    .end local v4           #v:I
    :cond_4
    const/4 v0, 0x3

    if-lt v0, v2, :cond_7

    .line 245
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byhour:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byhourCount:I

    iget v3, p1, Landroid/text/format/Time;->hour:I

    const/4 v4, 0x3

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 248
    .local v0, found:Z
    if-nez v0, :cond_7

    .line 249
    const/4 p0, 0x6

    goto :goto_0

    .line 235
    .local v0, N:I
    .restart local v1       #a:[I
    .restart local v3       #i:I
    .restart local v4       #v:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 240
    :cond_6
    const/4 p0, 0x5

    goto :goto_0

    .line 252
    .end local v0           #N:I
    .end local v1           #a:[I
    .end local v3           #i:I
    .end local v4           #v:I
    :cond_7
    const/4 v0, 0x2

    if-lt v0, v2, :cond_8

    .line 254
    iget-object v0, p0, Landroid/pim/EventRecurrence;->byminute:[I

    iget v1, p0, Landroid/pim/EventRecurrence;->byminuteCount:I

    iget v3, p1, Landroid/text/format/Time;->minute:I

    const/4 v4, 0x2

    invoke-virtual {p1, v4}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v4

    invoke-static {v0, v1, v3, v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result v0

    .line 257
    .local v0, found:Z
    if-nez v0, :cond_8

    .line 258
    const/4 p0, 0x7

    goto/16 :goto_0

    .line 261
    .end local v0           #found:Z
    :cond_8
    const/4 v0, 0x1

    if-lt v0, v2, :cond_9

    .line 263
    iget-object v0, p0, Landroid/pim/EventRecurrence;->bysecond:[I

    iget p0, p0, Landroid/pim/EventRecurrence;->bysecondCount:I

    .end local p0
    iget v1, p1, Landroid/text/format/Time;->second:I

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/text/format/Time;->getActualMaximum(I)I

    .end local v2           #freq:I
    move-result p1

    .end local p1
    invoke-static {v0, p0, v1, p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->listContains([IIII)Z

    move-result p0

    .line 266
    .local p0, found:Z
    if-nez p0, :cond_9

    .line 267
    const/16 p0, 0x8

    goto/16 :goto_0

    .line 274
    .end local p0           #found:Z
    :cond_9
    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method private filterBySetPos(Landroid/pim/EventRecurrence;Ljava/util/ArrayList;)V
    .locals 16
    .parameter "r"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/pim/EventRecurrence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1668
    .local p2, set:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 1726
    :cond_0
    :goto_0
    return-void

    .line 1672
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysetpos:[I

    move-object v14, v0

    array-length v14, v14

    new-array v13, v14, [I

    .line 1674
    .local v13, tempPositions:[I
    const/4 v8, 0x0

    .line 1675
    .local v8, numOfPositions:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysetpos:[I

    move-object v14, v0

    array-length v14, v14

    if-ge v3, v14, :cond_4

    .line 1676
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysetpos:[I

    move-object v14, v0

    aget v9, v14, v3

    .line 1678
    .local v9, pos:I
    if-lez v9, :cond_2

    .line 1679
    add-int/lit8 v9, v9, -0x1

    .line 1681
    add-int/lit8 v8, v8, 0x1

    .line 1690
    :goto_2
    aput v9, v13, v3

    .line 1675
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1682
    :cond_2
    if-gez v9, :cond_3

    .line 1683
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->size()I

    move-result v14

    add-int/2addr v9, v14

    .line 1685
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 1688
    :cond_3
    const/4 v9, -0x1

    goto :goto_2

    .line 1693
    .end local v9           #pos:I
    :cond_4
    if-nez v8, :cond_5

    .line 1694
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    .line 1698
    :cond_5
    new-array v1, v8, [I

    .line 1700
    .local v1, adjustedPositions:[I
    const/4 v3, 0x0

    .line 1701
    move-object v2, v13

    .local v2, arr$:[I
    array-length v7, v2

    .local v7, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    move v4, v3

    .end local v3           #i:I
    .local v4, i:I
    :goto_3
    if-ge v5, v7, :cond_6

    aget v11, v2, v5

    .line 1702
    .local v11, position:I
    if-ltz v11, :cond_9

    .line 1703
    add-int/lit8 v3, v4, 0x1

    .end local v4           #i:I
    .restart local v3       #i:I
    aput v11, v1, v4

    .line 1701
    :goto_4
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    .end local v3           #i:I
    .restart local v4       #i:I
    goto :goto_3

    .line 1707
    .end local v11           #position:I
    :cond_6
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    .line 1709
    const/4 v10, 0x0

    .line 1710
    .local v10, posIndex:I
    const/4 v12, 0x0

    .line 1711
    .local v12, setIndex:I
    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 1713
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1714
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1715
    aget v14, v1, v10

    if-eq v12, v14, :cond_8

    .line 1716
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    .line 1722
    :cond_7
    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 1718
    :cond_8
    add-int/lit8 v14, v10, 0x1

    array-length v15, v1

    if-ge v14, v15, :cond_7

    .line 1719
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v10           #posIndex:I
    .end local v12           #setIndex:I
    .restart local v11       #position:I
    :cond_9
    move v3, v4

    .end local v4           #i:I
    .restart local v3       #i:I
    goto :goto_4
.end method

.method static isLeapYear(I)Z
    .locals 1
    .parameter "year"

    .prologue
    .line 1131
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_1

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_0

    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static listContains([III)Z
    .locals 2
    .parameter "a"
    .parameter "N"
    .parameter "v"

    .prologue
    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 142
    aget v1, p0, v0

    if-ne v1, p2, :cond_0

    .line 143
    const/4 v1, 0x1

    .line 146
    :goto_1
    return v1

    .line 141
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static listContains([IIII)Z
    .locals 3
    .parameter "a"
    .parameter "N"
    .parameter "v"
    .parameter "max"

    .prologue
    const/4 v2, 0x1

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_3

    .line 160
    aget v1, p0, v0

    .line 161
    .local v1, w:I
    if-lez v1, :cond_1

    .line 162
    if-ne v1, p2, :cond_2

    .line 172
    .end local v1           #w:I
    :cond_0
    :goto_1
    return v2

    .line 166
    .restart local v1       #w:I
    :cond_1
    add-int/2addr p3, v1

    .line 167
    if-eq p3, p2, :cond_0

    .line 159
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    .end local v1           #w:I
    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method

.method static monthLength(II)I
    .locals 3
    .parameter "year"
    .parameter "month"

    .prologue
    const/16 v2, 0x1c

    .line 1157
    sget-object v1, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_PER_MONTH:[I

    aget v0, v1, p1

    .line 1158
    .local v0, n:I
    if-eq v0, v2, :cond_0

    move v1, v0

    .line 1161
    :goto_0
    return v1

    :cond_0
    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x1d

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private static final normDateTimeComparisonValue(Landroid/text/format/Time;)J
    .locals 4
    .parameter "normalized"

    .prologue
    .line 1212
    iget v0, p0, Landroid/text/format/Time;->year:I

    int-to-long v0, v0

    const/16 v2, 0x1a

    shl-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->month:I

    shl-int/lit8 v2, v2, 0x16

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->monthDay:I

    shl-int/lit8 v2, v2, 0x11

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->hour:I

    shl-int/lit8 v2, v2, 0xc

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->minute:I

    shl-int/lit8 v2, v2, 0x6

    int-to-long v2, v2

    add-long/2addr v0, v2

    iget v2, p0, Landroid/text/format/Time;->second:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static final setTimeFromLongValue(Landroid/text/format/Time;J)V
    .locals 2
    .parameter "date"
    .parameter "val"

    .prologue
    .line 1218
    const/16 v0, 0x1a

    shr-long v0, p1, v0

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->year:I

    .line 1219
    const/16 v0, 0x16

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0xf

    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1220
    const/16 v0, 0x11

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->monthDay:I

    .line 1221
    const/16 v0, 0xc

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x1f

    iput v0, p0, Landroid/text/format/Time;->hour:I

    .line 1222
    const/4 v0, 0x6

    shr-long v0, p1, v0

    long-to-int v0, v0

    and-int/lit8 v0, v0, 0x3f

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 1223
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/text/format/Time;->second:I

    .line 1224
    return-void
.end method

.method static unsafeNormalize(Landroid/text/format/Time;)V
    .locals 8
    .parameter "date"

    .prologue
    .line 1048
    iget v5, p0, Landroid/text/format/Time;->second:I

    .line 1049
    .local v5, second:I
    iget v2, p0, Landroid/text/format/Time;->minute:I

    .line 1050
    .local v2, minute:I
    iget v1, p0, Landroid/text/format/Time;->hour:I

    .line 1051
    .local v1, hour:I
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    .line 1052
    .local v4, monthDay:I
    iget v3, p0, Landroid/text/format/Time;->month:I

    .line 1053
    .local v3, month:I
    iget v6, p0, Landroid/text/format/Time;->year:I

    .line 1055
    .local v6, year:I
    if-gez v5, :cond_0

    const/16 v0, 0x3b

    sub-int v0, v5, v0

    :goto_0
    div-int/lit8 v0, v0, 0x3c

    .line 1056
    .local v0, addMinutes:I
    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v5, v7

    .line 1057
    add-int/2addr v2, v0

    .line 1058
    if-gez v2, :cond_1

    const/16 v0, 0x3b

    sub-int v0, v2, v0

    .end local v0           #addMinutes:I
    :goto_1
    div-int/lit8 v0, v0, 0x3c

    .line 1059
    .local v0, addHours:I
    mul-int/lit8 v7, v0, 0x3c

    sub-int/2addr v2, v7

    .line 1060
    add-int/2addr v1, v0

    .line 1061
    if-gez v1, :cond_2

    const/16 v0, 0x17

    sub-int v0, v1, v0

    .end local v0           #addHours:I
    :goto_2
    div-int/lit8 v0, v0, 0x18

    .line 1062
    .local v0, addDays:I
    mul-int/lit8 v7, v0, 0x18

    sub-int/2addr v1, v7

    .line 1063
    add-int/2addr v0, v4

    .end local v4           #monthDay:I
    .local v0, monthDay:I
    move v4, v0

    .line 1068
    .end local v0           #monthDay:I
    .restart local v4       #monthDay:I
    :goto_3
    if-gtz v4, :cond_4

    .line 1076
    const/4 v0, 0x1

    if-le v3, v0, :cond_3

    invoke-static {v6}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    .line 1077
    .local v0, days:I
    :goto_4
    add-int/2addr v0, v4

    .line 1078
    .end local v4           #monthDay:I
    .local v0, monthDay:I
    add-int/lit8 v4, v6, -0x1

    .end local v6           #year:I
    .local v4, year:I
    move v6, v4

    .end local v4           #year:I
    .restart local v6       #year:I
    move v4, v0

    .line 1079
    .end local v0           #monthDay:I
    .local v4, monthDay:I
    goto :goto_3

    :cond_0
    move v0, v5

    .line 1055
    goto :goto_0

    .local v0, addMinutes:I
    :cond_1
    move v0, v2

    .line 1058
    goto :goto_1

    .local v0, addHours:I
    :cond_2
    move v0, v1

    .line 1061
    goto :goto_2

    .line 1076
    .end local v0           #addHours:I
    :cond_3
    const/4 v0, 0x1

    sub-int v0, v6, v0

    invoke-static {v0}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v0

    goto :goto_4

    .line 1081
    :cond_4
    if-gez v3, :cond_5

    .line 1082
    add-int/lit8 v0, v3, 0x1

    div-int/lit8 v0, v0, 0xc

    const/4 v7, 0x1

    sub-int/2addr v0, v7

    .line 1083
    .local v0, years:I
    add-int/2addr v6, v0

    .line 1084
    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    .end local v3           #month:I
    .local v0, month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .line 1094
    .end local v6           #year:I
    .local v4, year:I
    :goto_5
    if-nez v0, :cond_8

    .line 1095
    invoke-static {v4}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearLength(I)I

    move-result v6

    .line 1096
    .local v6, yearLength:I
    if-le v3, v6, :cond_8

    .line 1097
    add-int/lit8 v4, v4, 0x1

    .line 1098
    sub-int/2addr v3, v6

    move v6, v4

    .line 1101
    .end local v4           #year:I
    .local v6, year:I
    :goto_6
    invoke-static {v6, v0}, Lcom/android/providers/calendar/RecurrenceProcessor;->monthLength(II)I

    move-result v4

    .line 1102
    .local v4, monthLength:I
    if-le v3, v4, :cond_6

    .line 1103
    sub-int/2addr v3, v4

    .line 1104
    add-int/lit8 v0, v0, 0x1

    .line 1105
    const/16 v4, 0xc

    if-lt v0, v4, :cond_7

    .line 1106
    .end local v4           #monthLength:I
    add-int/lit8 v0, v0, -0xc

    .line 1107
    add-int/lit8 v4, v6, 0x1

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5

    .line 1085
    .end local v0           #month:I
    .local v3, month:I
    .local v4, monthDay:I
    .restart local v6       #year:I
    :cond_5
    const/16 v0, 0xc

    if-lt v3, v0, :cond_9

    .line 1086
    div-int/lit8 v0, v3, 0xc

    .line 1087
    .local v0, years:I
    add-int/2addr v6, v0

    .line 1088
    mul-int/lit8 v0, v0, 0xc

    sub-int v0, v3, v0

    .end local v3           #month:I
    .local v0, month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5

    .line 1114
    .local v4, monthLength:I
    .restart local v6       #year:I
    :cond_6
    iput v5, p0, Landroid/text/format/Time;->second:I

    .line 1115
    iput v2, p0, Landroid/text/format/Time;->minute:I

    .line 1116
    iput v1, p0, Landroid/text/format/Time;->hour:I

    .line 1117
    iput v3, p0, Landroid/text/format/Time;->monthDay:I

    .line 1118
    iput v0, p0, Landroid/text/format/Time;->month:I

    .line 1119
    iput v6, p0, Landroid/text/format/Time;->year:I

    .line 1120
    invoke-static {v6, v0, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->weekDay(III)I

    move-result v1

    .end local v1           #hour:I
    iput v1, p0, Landroid/text/format/Time;->weekDay:I

    .line 1121
    invoke-static {v6, v0, v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->yearDay(III)I

    move-result v0

    .end local v0           #month:I
    iput v0, p0, Landroid/text/format/Time;->yearDay:I

    .line 1122
    return-void

    .end local v4           #monthLength:I
    .restart local v0       #month:I
    .restart local v1       #hour:I
    :cond_7
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5

    :cond_8
    move v6, v4

    .end local v4           #year:I
    .restart local v6       #year:I
    goto :goto_6

    .end local v0           #month:I
    .local v3, month:I
    .local v4, monthDay:I
    :cond_9
    move v0, v3

    .end local v3           #month:I
    .restart local v0       #month:I
    move v3, v4

    .end local v4           #monthDay:I
    .local v3, monthDay:I
    move v4, v6

    .end local v6           #year:I
    .local v4, year:I
    goto :goto_5
.end method

.method private static useBYX(III)Z
    .locals 1
    .parameter "freq"
    .parameter "freqConstant"
    .parameter "count"

    .prologue
    .line 299
    if-le p0, p1, :cond_0

    if-lez p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static weekDay(III)I
    .locals 2
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1174
    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 1175
    add-int/lit8 p1, p1, 0xc

    .line 1176
    add-int/lit8 p0, p0, -0x1

    .line 1178
    :cond_0
    mul-int/lit8 v0, p1, 0xd

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x5

    add-int/2addr v0, p2

    add-int/2addr v0, p0

    div-int/lit8 v1, p0, 0x4

    add-int/2addr v0, v1

    div-int/lit8 v1, p0, 0x64

    sub-int/2addr v0, v1

    div-int/lit16 v1, p0, 0x190

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x7

    return v0
.end method

.method static yearDay(III)I
    .locals 3
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 1190
    sget-object v1, Lcom/android/providers/calendar/RecurrenceProcessor;->DAYS_IN_YEAR_PRECEDING_MONTH:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    const/4 v2, 0x1

    sub-int v0, v1, v2

    .line 1191
    .local v0, yearDay:I
    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1192
    add-int/lit8 v0, v0, 0x1

    .line 1194
    :cond_0
    return v0
.end method

.method static yearLength(I)I
    .locals 1
    .parameter "year"

    .prologue
    .line 1141
    invoke-static {p0}, Lcom/android/providers/calendar/RecurrenceProcessor;->isLeapYear(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16e

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x16d

    goto :goto_0
.end method


# virtual methods
.method public expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 58
    .parameter "dtstart"
    .parameter "r"
    .parameter "rangeStartDateValue"
    .parameter "rangeEndDateValue"
    .parameter "add"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Landroid/pim/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 641
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 642
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v18

    .line 643
    .local v18, dtstartDateValue:J
    const/4 v14, 0x0

    .line 651
    .local v14, count:I
    if-eqz p7, :cond_0

    cmp-long v55, v18, p3

    if-ltz v55, :cond_0

    cmp-long v55, v18, p5

    if-gez v55, :cond_0

    .line 653
    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v14, v14, 0x1

    .line 657
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v31, v0

    .line 658
    .local v31, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v45, v0

    .line 659
    .local v45, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v42, v0

    .line 660
    .local v42, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    .line 661
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 665
    .local v16, days:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->setRecurrence(Landroid/pim/EventRecurrence;)V

    .line 666
    const-wide v55, 0x7fffffffffffffffL

    cmp-long v55, p5, v55

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-nez v55, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    if-nez v55, :cond_1

    .line 667
    new-instance v55, Lcom/android/providers/calendar/DateException;

    const-string v56, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v55 .. v56}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1024
    :catch_0
    move-exception v55

    move-object/from16 v20, v55

    .line 1025
    .local v20, e:Lcom/android/providers/calendar/DateException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "DateException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    throw v20

    .line 673
    .end local v20           #e:Lcom/android/providers/calendar/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v26, v0

    .line 674
    .local v26, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v25, v0

    .line 675
    .local v25, freq:I
    packed-switch v25, :pswitch_data_0

    .line 703
    new-instance v55, Lcom/android/providers/calendar/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad freq="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55
    :try_end_1
    .catch Lcom/android/providers/calendar/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1029
    .end local v25           #freq:I
    .end local v26           #freqAmount:I
    :catch_1
    move-exception v55

    move-object/from16 v44, v55

    .line 1030
    .local v44, t:Ljava/lang/RuntimeException;
    const-string v55, "RecurrenceProcessor"

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "RuntimeException with r="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeStart="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    const-string v57, " rangeEnd="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-static/range {v55 .. v56}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    throw v44

    .line 678
    .end local v44           #t:Ljava/lang/RuntimeException;
    .restart local v25       #freq:I
    .restart local v26       #freqAmount:I
    :pswitch_0
    const/16 v27, 0x1

    .line 705
    .local v27, freqField:I
    :cond_2
    :goto_0
    if-gtz v26, :cond_3

    .line 706
    const/16 v26, 0x1

    .line 709
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthCount:I

    move v12, v0

    .line 710
    .local v12, bymonthCount:I
    const/16 v55, 0x6

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v52

    .line 711
    .local v52, usebymonth:Z
    const/16 v55, 0x5

    move/from16 v0, v25

    move/from16 v1, v55

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    move/from16 v55, v0

    if-gtz v55, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    move/from16 v55, v0

    if-lez v55, :cond_7

    :cond_4
    const/16 v55, 0x1

    move/from16 v49, v55

    .line 713
    .local v49, useDays:Z
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byhourCount:I

    move v10, v0

    .line 714
    .local v10, byhourCount:I
    const/16 v55, 0x3

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v50

    .line 715
    .local v50, usebyhour:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byminuteCount:I

    move v11, v0

    .line 716
    .local v11, byminuteCount:I
    const/16 v55, 0x2

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v51

    .line 717
    .local v51, usebyminute:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bysecondCount:I

    move v13, v0

    .line 718
    .local v13, bysecondCount:I
    const/16 v55, 0x1

    move/from16 v0, v25

    move/from16 v1, v55

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v53

    .line 721
    .local v53, usebysecond:Z
    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 722
    const/16 v55, 0x5

    move/from16 v0, v27

    move/from16 v1, v55

    if-ne v0, v1, :cond_5

    .line 723
    if-eqz v49, :cond_5

    .line 729
    const/16 v55, 0x1

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 734
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v55, v0

    if-eqz v55, :cond_8

    .line 736
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v48, v0

    .line 740
    .local v48, untilStr:Ljava/lang/String;
    invoke-virtual/range {v48 .. v48}, Ljava/lang/String;->length()I

    move-result v55

    const/16 v56, 0xf

    move/from16 v0, v55

    move/from16 v1, v56

    if-ne v0, v1, :cond_6

    .line 741
    new-instance v55, Ljava/lang/StringBuilder;

    invoke-direct/range {v55 .. v55}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v55

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v55

    const/16 v56, 0x5a

    invoke-virtual/range {v55 .. v56}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v55

    invoke-virtual/range {v55 .. v55}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v48

    .line 744
    :cond_6
    move-object/from16 v0, v45

    move-object/from16 v1, v48

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 749
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v45

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 750
    invoke-static/range {v45 .. v45}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v46

    .line 755
    .end local v48           #untilStr:Ljava/lang/String;
    .local v46, untilDateValue:J
    :goto_2
    const/16 v55, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 756
    const/16 v55, 0xf

    move-object/from16 v0, v42

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 765
    const/16 v21, 0x0

    .line 766
    .local v21, eventEnded:Z
    const/16 v22, 0x0

    .local v22, failsafe:I
    move/from16 v23, v22

    .line 769
    .end local v22           #failsafe:I
    .local v23, failsafe:I
    :goto_3
    const/16 v39, 0x0

    .line 770
    .local v39, monthIndex:I
    add-int/lit8 v22, v23, 0x1

    .end local v23           #failsafe:I
    .restart local v22       #failsafe:I
    const/16 v55, 0x7d0

    move/from16 v0, v23

    move/from16 v1, v55

    if-le v0, v1, :cond_9

    .line 771
    new-instance v55, Lcom/android/providers/calendar/DateException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "Recurrence processing stuck: "

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {p2 .. p2}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v57

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v55

    .line 681
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v21           #eventEnded:Z
    .end local v22           #failsafe:I
    .end local v27           #freqField:I
    .end local v39           #monthIndex:I
    .end local v46           #untilDateValue:J
    .end local v49           #useDays:Z
    .end local v50           #usebyhour:Z
    .end local v51           #usebyminute:Z
    .end local v52           #usebymonth:Z
    .end local v53           #usebysecond:Z
    :pswitch_1
    const/16 v27, 0x2

    .line 682
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 684
    .end local v27           #freqField:I
    :pswitch_2
    const/16 v27, 0x3

    .line 685
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 687
    .end local v27           #freqField:I
    :pswitch_3
    const/16 v27, 0x4

    .line 688
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 690
    .end local v27           #freqField:I
    :pswitch_4
    const/16 v27, 0x4

    .line 691
    .restart local v27       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v55, v0

    mul-int/lit8 v26, v55, 0x7

    .line 692
    if-gtz v26, :cond_2

    .line 693
    const/16 v26, 0x7

    goto/16 :goto_0

    .line 697
    .end local v27           #freqField:I
    :pswitch_5
    const/16 v27, 0x5

    .line 698
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 700
    .end local v27           #freqField:I
    :pswitch_6
    const/16 v27, 0x6

    .line 701
    .restart local v27       #freqField:I
    goto/16 :goto_0

    .line 711
    .restart local v12       #bymonthCount:I
    .restart local v52       #usebymonth:Z
    :cond_7
    const/16 v55, 0x0

    move/from16 v49, v55

    goto/16 :goto_1

    .line 752
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v49       #useDays:Z
    .restart local v50       #usebyhour:Z
    .restart local v51       #usebyminute:Z
    .restart local v53       #usebysecond:Z
    :cond_8
    const-wide v46, 0x7fffffffffffffffL

    .restart local v46       #untilDateValue:J
    goto :goto_2

    .line 774
    .restart local v21       #eventEnded:Z
    .restart local v22       #failsafe:I
    .restart local v39       #monthIndex:I
    :cond_9
    invoke-static/range {v31 .. v31}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 776
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v9, v0

    .line 777
    .local v9, iteratorYear:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int/lit8 v35, v55, 0x1

    .line 778
    .local v35, iteratorMonth:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v32, v0

    .line 779
    .local v32, iteratorDay:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v33, v0

    .line 780
    .local v33, iteratorHour:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v34, v0

    .line 781
    .local v34, iteratorMinute:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v36, v0

    .line 784
    .local v36, iteratorSecond:I
    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 789
    :cond_a
    if-eqz v52, :cond_e

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bymonth:[I

    move-object/from16 v55, v0

    aget v55, v55, v39

    move/from16 v8, v55

    .line 792
    .local v8, month:I
    :goto_4
    add-int/lit8 v8, v8, -0x1

    .line 795
    const/4 v15, 0x1

    .line 796
    .local v15, dayIndex:I
    const/16 v37, 0x0

    .line 801
    .local v37, lastDayToExamine:I
    if-eqz v49, :cond_b

    .line 805
    const/16 v55, 0x5

    move/from16 v0, v25

    move/from16 v1, v55

    if-ne v0, v1, :cond_f

    .line 806
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v17, v0

    .line 807
    .local v17, dow:I
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    sub-int v15, v55, v17

    .line 808
    add-int/lit8 v37, v15, 0x6

    .line 820
    .end local v17           #dow:I
    :cond_b
    :goto_5
    if-eqz v49, :cond_17

    .line 821
    move-object/from16 v0, v16

    move-object/from16 v1, v31

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v55

    if-nez v55, :cond_10

    .line 822
    add-int/lit8 v15, v15, 0x1

    .line 969
    :goto_6
    if-eqz v49, :cond_c

    move v0, v15

    move/from16 v1, v37

    if-le v0, v1, :cond_b

    .line 970
    :cond_c
    add-int/lit8 v39, v39, 0x1

    .line 971
    if-eqz v52, :cond_d

    move/from16 v0, v39

    move v1, v12

    if-lt v0, v1, :cond_a

    .line 977
    :cond_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v41, v0

    .line 978
    .local v41, oldDay:I
    move-object v0, v3

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 979
    const/16 v40, 0x1

    .line 981
    .local v40, n:I
    :goto_7
    mul-int v54, v26, v40

    .line 982
    .local v54, value:I
    packed-switch v27, :pswitch_data_1

    .line 1008
    new-instance v55, Ljava/lang/RuntimeException;

    new-instance v56, Ljava/lang/StringBuilder;

    invoke-direct/range {v56 .. v56}, Ljava/lang/StringBuilder;-><init>()V

    const-string v57, "bad field="

    invoke-virtual/range {v56 .. v57}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v56

    move-object/from16 v0, v56

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v56

    invoke-virtual/range {v56 .. v56}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v56

    invoke-direct/range {v55 .. v56}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v55

    .end local v8           #month:I
    .end local v15           #dayIndex:I
    .end local v37           #lastDayToExamine:I
    .end local v40           #n:I
    .end local v41           #oldDay:I
    .end local v54           #value:I
    :cond_e
    move/from16 v8, v35

    .line 789
    goto :goto_4

    .line 810
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v37       #lastDayToExamine:I
    :cond_f
    const/16 v55, 0x4

    move-object v0, v3

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v37

    goto :goto_5

    .line 825
    :cond_10
    move v7, v15

    .line 833
    .local v7, day:I
    :goto_8
    const/16 v30, 0x0

    .line 835
    .local v30, hourIndex:I
    :cond_11
    if-eqz v50, :cond_18

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byhour:[I

    move-object/from16 v55, v0

    aget v55, v55, v30

    move/from16 v6, v55

    .line 841
    .local v6, hour:I
    :goto_9
    const/16 v38, 0x0

    .line 843
    .local v38, minuteIndex:I
    :cond_12
    if-eqz v51, :cond_19

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byminute:[I

    move-object/from16 v55, v0

    aget v55, v55, v38

    move/from16 v5, v55

    .line 849
    .local v5, minute:I
    :goto_a
    const/16 v43, 0x0

    .line 851
    .local v43, secondIndex:I
    :cond_13
    if-eqz v53, :cond_1a

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysecond:[I

    move-object/from16 v55, v0

    aget v55, v55, v43

    move/from16 v4, v55

    .line 859
    .local v4, second:I
    :goto_b
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 860
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 862
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v28

    .line 866
    .local v28, genDateValue:J
    cmp-long v55, v28, v18

    if-ltz v55, :cond_1d

    .line 868
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor;->filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I

    move-result v24

    .line 869
    .local v24, filtered:I
    if-nez v24, :cond_1d

    .line 914
    cmp-long v55, v18, v28

    if-nez v55, :cond_14

    if-eqz p7, :cond_14

    cmp-long v55, v18, p3

    if-ltz v55, :cond_14

    cmp-long v55, v18, p5

    if-ltz v55, :cond_15

    .line 918
    :cond_14
    add-int/lit8 v14, v14, 0x1

    .line 926
    :cond_15
    cmp-long v55, v28, v46

    if-lez v55, :cond_1b

    .line 1034
    :cond_16
    return-void

    .line 828
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v24           #filtered:I
    .end local v28           #genDateValue:J
    .end local v30           #hourIndex:I
    .end local v38           #minuteIndex:I
    .end local v43           #secondIndex:I
    :cond_17
    move/from16 v7, v32

    .restart local v7       #day:I
    goto :goto_8

    .restart local v30       #hourIndex:I
    :cond_18
    move/from16 v6, v33

    .line 835
    goto :goto_9

    .restart local v6       #hour:I
    .restart local v38       #minuteIndex:I
    :cond_19
    move/from16 v5, v34

    .line 843
    goto :goto_a

    .restart local v5       #minute:I
    .restart local v43       #secondIndex:I
    :cond_1a
    move/from16 v4, v36

    .line 851
    goto :goto_b

    .line 936
    .restart local v4       #second:I
    .restart local v24       #filtered:I
    .restart local v28       #genDateValue:J
    :cond_1b
    cmp-long v55, v28, p5

    if-gez v55, :cond_16

    .line 945
    cmp-long v55, v28, p3

    if-ltz v55, :cond_1c

    .line 949
    if-eqz p7, :cond_21

    .line 950
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 956
    :cond_1c
    :goto_c
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    if-lez v55, :cond_1d

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v55, v0

    move/from16 v0, v55

    move v1, v14

    if-eq v0, v1, :cond_16

    .line 962
    .end local v24           #filtered:I
    :cond_1d
    add-int/lit8 v43, v43, 0x1

    .line 963
    if-eqz v53, :cond_1e

    move/from16 v0, v43

    move v1, v13

    if-lt v0, v1, :cond_13

    .line 964
    :cond_1e
    add-int/lit8 v38, v38, 0x1

    .line 965
    if-eqz v51, :cond_1f

    move/from16 v0, v38

    move v1, v11

    if-lt v0, v1, :cond_12

    .line 966
    :cond_1f
    add-int/lit8 v30, v30, 0x1

    .line 967
    if-eqz v50, :cond_20

    move/from16 v0, v30

    move v1, v10

    if-lt v0, v1, :cond_11

    .line 968
    :cond_20
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_6

    .line 952
    .restart local v24       #filtered:I
    :cond_21
    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v55

    move-object/from16 v0, p8

    move-object/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_c

    .line 984
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v24           #filtered:I
    .end local v28           #genDateValue:J
    .end local v30           #hourIndex:I
    .end local v38           #minuteIndex:I
    .end local v43           #secondIndex:I
    .restart local v40       #n:I
    .restart local v41       #oldDay:I
    .restart local v54       #value:I
    :pswitch_7
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1011
    :goto_d
    invoke-static/range {v31 .. v31}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1012
    const/16 v55, 0x6

    move/from16 v0, v27

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    const/16 v55, 0x5

    move/from16 v0, v27

    move/from16 v1, v55

    if-eq v0, v1, :cond_23

    :cond_22
    move/from16 v23, v22

    .line 1021
    .end local v22           #failsafe:I
    .restart local v23       #failsafe:I
    goto/16 :goto_3

    .line 987
    .end local v23           #failsafe:I
    .restart local v22       #failsafe:I
    :pswitch_8
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_d

    .line 990
    :pswitch_9
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_d

    .line 993
    :pswitch_a
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 996
    :pswitch_b
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_d

    .line 999
    :pswitch_c
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_d

    .line 1002
    :pswitch_d
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1005
    :pswitch_e
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    add-int v55, v55, v54

    move/from16 v0, v55

    move-object/from16 v1, v31

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_d

    .line 1015
    :cond_23
    move-object/from16 v0, v31

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v55, v0

    move/from16 v0, v55

    move/from16 v1, v41

    if-eq v0, v1, :cond_22

    .line 1018
    add-int/lit8 v40, v40, 0x1

    .line 1019
    move-object/from16 v0, v31

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_7

    .line 675
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 982
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method public expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J
    .locals 34
    .parameter "dtstart"
    .parameter "recur"
    .parameter "rangeStartMillis"
    .parameter "rangeEndMillis"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 526
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 527
    .local v32, timezone:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->clear(Ljava/lang/String;)V

    .line 534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v6

    .line 538
    .local v6, rangeStartDateValue:J
    const-wide/16 v3, -0x1

    cmp-long v3, p5, v3

    if-eqz v3, :cond_0

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v8

    .line 545
    .local v8, rangeEndDateValue:J
    :goto_0
    new-instance v11, Ljava/util/TreeSet;

    invoke-direct {v11}, Ljava/util/TreeSet;-><init>()V

    .line 547
    .local v11, dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v3, v0

    if-eqz v3, :cond_2

    .line 548
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object/from16 v21, v0

    .local v21, arr$:[Landroid/pim/EventRecurrence;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .local v31, len$:I
    const/16 v29, 0x0

    .local v29, i$:I
    :goto_1
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    aget-object v5, v21, v29

    .line 549
    .local v5, rrule:Landroid/pim/EventRecurrence;
    iget v3, v5, Landroid/pim/EventRecurrence;->bysetposCount:I

    if-lez v3, :cond_1

    .line 550
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expandByPosition(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 548
    :goto_2
    add-int/lit8 v29, v29, 0x1

    goto :goto_1

    .line 542
    .end local v5           #rrule:Landroid/pim/EventRecurrence;
    .end local v8           #rangeEndDateValue:J
    .end local v11           #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_0
    const-wide v8, 0x7fffffffffffffffL

    .restart local v8       #rangeEndDateValue:J
    goto :goto_0

    .line 552
    .restart local v5       #rrule:Landroid/pim/EventRecurrence;
    .restart local v11       #dtSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .restart local v21       #arr$:[Landroid/pim/EventRecurrence;
    .restart local v29       #i$:I
    .restart local v31       #len$:I
    :cond_1
    const/4 v10, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-virtual/range {v3 .. v11}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    goto :goto_2

    .line 556
    .end local v5           #rrule:Landroid/pim/EventRecurrence;
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_2
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v3, v0

    if-eqz v3, :cond_3

    .line 557
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object/from16 v21, v0

    .local v21, arr$:[J
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_3
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_3

    aget-wide v23, v21, v29

    .line 560
    .local v23, dt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v25

    .line 562
    .local v25, dtvalue:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 557
    add-int/lit8 v29, v29, 0x1

    goto :goto_3

    .line 565
    .end local v21           #arr$:[J
    .end local v23           #dt:J
    .end local v25           #dtvalue:J
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_3
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object v3, v0

    if-eqz v3, :cond_5

    .line 566
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object/from16 v21, v0

    .local v21, arr$:[Landroid/pim/EventRecurrence;
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_4
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_5

    aget-object v14, v21, v29

    .line 567
    .local v14, exrule:Landroid/pim/EventRecurrence;
    iget v3, v14, Landroid/pim/EventRecurrence;->bysetposCount:I

    if-lez v3, :cond_4

    .line 568
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/providers/calendar/RecurrenceProcessor;->expandByPosition(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    .line 566
    :goto_5
    add-int/lit8 v29, v29, 0x1

    goto :goto_4

    .line 570
    :cond_4
    const/16 v19, 0x0

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-wide v15, v6

    move-wide/from16 v17, v8

    move-object/from16 v20, v11

    invoke-virtual/range {v12 .. v20}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V

    goto :goto_5

    .line 574
    .end local v14           #exrule:Landroid/pim/EventRecurrence;
    .end local v21           #arr$:[Landroid/pim/EventRecurrence;
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object v3, v0

    if-eqz v3, :cond_6

    .line 575
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object/from16 v21, v0

    .local v21, arr$:[J
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v31, v0

    .restart local v31       #len$:I
    const/16 v29, 0x0

    .restart local v29       #i$:I
    :goto_6
    move/from16 v0, v29

    move/from16 v1, v31

    if-ge v0, v1, :cond_6

    aget-wide v23, v21, v29

    .line 578
    .restart local v23       #dt:J
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    move-object v0, v3

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v25

    .line 580
    .restart local v25       #dtvalue:J
    invoke-static/range {v25 .. v26}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v3}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 575
    add-int/lit8 v29, v29, 0x1

    goto :goto_6

    .line 583
    .end local v21           #arr$:[J
    .end local v23           #dt:J
    .end local v25           #dtvalue:J
    .end local v29           #i$:I
    .end local v31           #len$:I
    :cond_6
    invoke-virtual {v11}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 586
    const/4 v3, 0x0

    new-array v3, v3, [J

    .line 610
    :goto_7
    return-object v3

    .line 593
    :cond_7
    invoke-virtual {v11}, Ljava/util/TreeSet;->size()I

    move-result v30

    .line 594
    .local v30, len:I
    move/from16 v0, v30

    new-array v0, v0, [J

    move-object/from16 v22, v0

    .line 595
    .local v22, dates:[J
    const/16 v27, 0x0

    .line 596
    .local v27, i:I
    invoke-virtual {v11}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, i$:Ljava/util/Iterator;
    :goto_8
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Ljava/lang/Long;

    .line 597
    .local v33, val:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    invoke-virtual/range {v33 .. v33}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/providers/calendar/RecurrenceProcessor;->setTimeFromLongValue(Landroid/text/format/Time;J)V

    .line 599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    iget-boolean v3, v3, Landroid/text/format/Time;->allDay:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->hour:I

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->minute:I

    if-nez v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    iget v3, v3, Landroid/text/format/Time;->second:I

    if-eqz v3, :cond_9

    .line 601
    :cond_8
    const-string v3, "RecurrenceProcessor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recurrent exdates allday is true, but hour ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v5, v0

    iget v5, v5, Landroid/text/format/Time;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " minute ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v5, v0

    iget v5, v5, Landroid/text/format/Time;->minute:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " second ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v5, v0

    iget v5, v5, Landroid/text/format/Time;->second:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/text/format/Time;->hour:I

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/text/format/Time;->minute:I

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x0

    iput v4, v3, Landroid/text/format/Time;->second:I

    .line 608
    :cond_9
    add-int/lit8 v28, v27, 0x1

    .end local v27           #i:I
    .local v28, i:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v3

    aput-wide v3, v22, v27

    move/from16 v27, v28

    .end local v28           #i:I
    .restart local v27       #i:I
    goto/16 :goto_8

    .end local v33           #val:Ljava/lang/Long;
    :cond_a
    move-object/from16 v3, v22

    .line 610
    goto/16 :goto_7
.end method

.method public expandByPosition(Landroid/text/format/Time;Landroid/pim/EventRecurrence;JJZLjava/util/TreeSet;)V
    .locals 64
    .parameter "dtstart"
    .parameter "r"
    .parameter "rangeStartDateValue"
    .parameter "rangeEndDateValue"
    .parameter "add"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/text/format/Time;",
            "Landroid/pim/EventRecurrence;",
            "JJZ",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 1263
    .local p8, out:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1264
    invoke-static/range {p1 .. p1}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v19

    .line 1265
    .local v19, dtstartDateValue:J
    const/4 v14, 0x0

    .line 1266
    .local v14, count:I
    const/16 v17, 0x0

    .line 1267
    .local v17, done:Z
    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    .local v26, filteredSet:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    if-eqz p7, :cond_0

    cmp-long v61, v19, p3

    if-ltz v61, :cond_0

    cmp-long v61, v19, p5

    if-gez v61, :cond_0

    .line 1272
    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    move-object/from16 v0, p8

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 1273
    add-int/lit8 v14, v14, 0x1

    .line 1276
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object/from16 v35, v0

    .line 1277
    .local v35, iterator:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mUntil:Landroid/text/format/Time;

    move-object/from16 v50, v0

    .line 1278
    .local v50, until:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mStringBuilder:Ljava/lang/StringBuilder;

    move-object/from16 v46, v0

    .line 1279
    .local v46, sb:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mGenerated:Landroid/text/format/Time;

    move-object v3, v0

    .line 1280
    .local v3, generated:Landroid/text/format/Time;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mDays:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;

    move-object/from16 v16, v0

    .line 1284
    .local v16, days:Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->setRecurrence(Landroid/pim/EventRecurrence;)V

    .line 1285
    const-wide v61, 0x7fffffffffffffffL

    cmp-long v61, p5, v61

    if-nez v61, :cond_1

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v61, v0

    if-nez v61, :cond_1

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v61, v0

    if-nez v61, :cond_1

    .line 1287
    new-instance v61, Lcom/android/providers/calendar/DateException;

    const-string v62, "No range end provided for a recurrence that has no UNTIL or COUNT."

    invoke-direct/range {v61 .. v62}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v61
    :try_end_0
    .catch Lcom/android/providers/calendar/DateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1655
    :catch_0
    move-exception v61

    move-object/from16 v21, v61

    .line 1656
    .local v21, e:Lcom/android/providers/calendar/DateException;
    const-string v61, "RecurrenceProcessor"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "DateException with r="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, " rangeStart="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, " rangeEnd="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    throw v21

    .line 1292
    .end local v21           #e:Lcom/android/providers/calendar/DateException;
    :cond_1
    :try_start_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v28, v0

    .line 1293
    .local v28, freqAmount:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->freq:I

    move/from16 v27, v0

    .line 1294
    .local v27, freq:I
    packed-switch v27, :pswitch_data_0

    .line 1321
    new-instance v61, Lcom/android/providers/calendar/DateException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "bad freq="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v61
    :try_end_1
    .catch Lcom/android/providers/calendar/DateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1659
    .end local v27           #freq:I
    .end local v28           #freqAmount:I
    :catch_1
    move-exception v61

    move-object/from16 v48, v61

    .line 1660
    .local v48, t:Ljava/lang/RuntimeException;
    const-string v61, "RecurrenceProcessor"

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "RuntimeException with r="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, " rangeStart="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v62

    const-string v63, " rangeEnd="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move-wide/from16 v1, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-static/range {v61 .. v62}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    throw v48

    .line 1296
    .end local v48           #t:Ljava/lang/RuntimeException;
    .restart local v27       #freq:I
    .restart local v28       #freqAmount:I
    :pswitch_0
    const/16 v29, 0x1

    .line 1323
    .local v29, freqField:I
    :cond_2
    :goto_0
    if-gtz v28, :cond_3

    .line 1324
    const/16 v28, 0x1

    .line 1327
    :cond_3
    :try_start_2
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthCount:I

    move v12, v0

    .line 1328
    .local v12, bymonthCount:I
    const/16 v61, 0x6

    move/from16 v0, v27

    move/from16 v1, v61

    move v2, v12

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v57

    .line 1329
    .local v57, usebymonth:Z
    const/16 v61, 0x5

    move/from16 v0, v27

    move/from16 v1, v61

    if-lt v0, v1, :cond_7

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bydayCount:I

    move/from16 v61, v0

    if-gtz v61, :cond_4

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bymonthdayCount:I

    move/from16 v61, v0

    if-lez v61, :cond_7

    :cond_4
    const/16 v61, 0x1

    move/from16 v54, v61

    .line 1331
    .local v54, useDays:Z
    :goto_1
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byhourCount:I

    move v10, v0

    .line 1332
    .local v10, byhourCount:I
    const/16 v61, 0x3

    move/from16 v0, v27

    move/from16 v1, v61

    move v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v55

    .line 1333
    .local v55, usebyhour:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->byminuteCount:I

    move v11, v0

    .line 1334
    .local v11, byminuteCount:I
    const/16 v61, 0x2

    move/from16 v0, v27

    move/from16 v1, v61

    move v2, v11

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v56

    .line 1335
    .local v56, usebyminute:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bysecondCount:I

    move v13, v0

    .line 1336
    .local v13, bysecondCount:I
    const/16 v61, 0x1

    move/from16 v0, v27

    move/from16 v1, v61

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->useBYX(III)Z

    move-result v58

    .line 1337
    .local v58, usebysecond:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->bysetposCount:I

    move/from16 v61, v0

    if-lez v61, :cond_8

    const/16 v61, 0x1

    move/from16 v59, v61

    .line 1340
    .local v59, usebysetpos:Z
    :goto_2
    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1341
    const/16 v61, 0x5

    move/from16 v0, v29

    move/from16 v1, v61

    if-ne v0, v1, :cond_5

    .line 1342
    if-eqz v54, :cond_5

    .line 1348
    const/16 v61, 0x1

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1353
    :cond_5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v61, v0

    if-eqz v61, :cond_9

    .line 1355
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object/from16 v53, v0

    .line 1361
    .local v53, untilStr:Ljava/lang/String;
    invoke-virtual/range {v53 .. v53}, Ljava/lang/String;->length()I

    move-result v61

    const/16 v62, 0xf

    move/from16 v0, v61

    move/from16 v1, v62

    if-ne v0, v1, :cond_6

    .line 1362
    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v61

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    const/16 v62, 0x5a

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v53

    .line 1365
    :cond_6
    move-object/from16 v0, v50

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1371
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v50

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 1372
    invoke-static/range {v50 .. v50}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v51

    .line 1377
    .end local v53           #untilStr:Ljava/lang/String;
    .local v51, untilDateValue:J
    :goto_3
    const/16 v61, 0xf

    move-object/from16 v0, v46

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 1378
    const/16 v61, 0xf

    move-object/from16 v0, v46

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1387
    const/16 v22, 0x0

    .line 1390
    .local v22, eventEnded:Z
    const/16 v23, 0x0

    .local v23, failsafe:I
    move/from16 v24, v23

    .line 1393
    .end local v23           #failsafe:I
    .local v24, failsafe:I
    :goto_4
    const/16 v43, 0x0

    .line 1394
    .local v43, monthIndex:I
    add-int/lit8 v23, v24, 0x1

    .end local v24           #failsafe:I
    .restart local v23       #failsafe:I
    const/16 v61, 0x7d0

    move/from16 v0, v24

    move/from16 v1, v61

    if-le v0, v1, :cond_a

    .line 1397
    new-instance v61, Lcom/android/providers/calendar/DateException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "Recurrence processing stuck: "

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {p2 .. p2}, Landroid/pim/EventRecurrence;->toString()Ljava/lang/String;

    move-result-object v63

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 1299
    .end local v10           #byhourCount:I
    .end local v11           #byminuteCount:I
    .end local v12           #bymonthCount:I
    .end local v13           #bysecondCount:I
    .end local v22           #eventEnded:Z
    .end local v23           #failsafe:I
    .end local v29           #freqField:I
    .end local v43           #monthIndex:I
    .end local v51           #untilDateValue:J
    .end local v54           #useDays:Z
    .end local v55           #usebyhour:Z
    .end local v56           #usebyminute:Z
    .end local v57           #usebymonth:Z
    .end local v58           #usebysecond:Z
    .end local v59           #usebysetpos:Z
    :pswitch_1
    const/16 v29, 0x2

    .line 1300
    .restart local v29       #freqField:I
    goto/16 :goto_0

    .line 1302
    .end local v29           #freqField:I
    :pswitch_2
    const/16 v29, 0x3

    .line 1303
    .restart local v29       #freqField:I
    goto/16 :goto_0

    .line 1305
    .end local v29           #freqField:I
    :pswitch_3
    const/16 v29, 0x4

    .line 1306
    .restart local v29       #freqField:I
    goto/16 :goto_0

    .line 1308
    .end local v29           #freqField:I
    :pswitch_4
    const/16 v29, 0x4

    .line 1309
    .restart local v29       #freqField:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->interval:I

    move/from16 v61, v0

    mul-int/lit8 v28, v61, 0x7

    .line 1310
    if-gtz v28, :cond_2

    .line 1311
    const/16 v28, 0x7

    goto/16 :goto_0

    .line 1315
    .end local v29           #freqField:I
    :pswitch_5
    const/16 v29, 0x5

    .line 1316
    .restart local v29       #freqField:I
    goto/16 :goto_0

    .line 1318
    .end local v29           #freqField:I
    :pswitch_6
    const/16 v29, 0x6

    .line 1319
    .restart local v29       #freqField:I
    goto/16 :goto_0

    .line 1329
    .restart local v12       #bymonthCount:I
    .restart local v57       #usebymonth:Z
    :cond_7
    const/16 v61, 0x0

    move/from16 v54, v61

    goto/16 :goto_1

    .line 1337
    .restart local v10       #byhourCount:I
    .restart local v11       #byminuteCount:I
    .restart local v13       #bysecondCount:I
    .restart local v54       #useDays:Z
    .restart local v55       #usebyhour:Z
    .restart local v56       #usebyminute:Z
    .restart local v58       #usebysecond:Z
    :cond_8
    const/16 v61, 0x0

    move/from16 v59, v61

    goto/16 :goto_2

    .line 1374
    .restart local v59       #usebysetpos:Z
    :cond_9
    const-wide v51, 0x7fffffffffffffffL

    .restart local v51       #untilDateValue:J
    goto :goto_3

    .line 1401
    .restart local v22       #eventEnded:Z
    .restart local v23       #failsafe:I
    .restart local v43       #monthIndex:I
    :cond_a
    invoke-static/range {v35 .. v35}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1403
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v9, v0

    .line 1404
    .local v9, iteratorYear:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v61, v0

    add-int/lit8 v39, v61, 0x1

    .line 1405
    .local v39, iteratorMonth:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v36, v0

    .line 1406
    .local v36, iteratorDay:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v37, v0

    .line 1407
    .local v37, iteratorHour:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v38, v0

    .line 1408
    .local v38, iteratorMinute:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v40, v0

    .line 1411
    .local v40, iteratorSecond:I
    move-object v0, v3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1417
    :cond_b
    if-eqz v57, :cond_11

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bymonth:[I

    move-object/from16 v61, v0

    aget v61, v61, v43

    move/from16 v8, v61

    .line 1419
    .local v8, month:I
    :goto_5
    add-int/lit8 v8, v8, -0x1

    .line 1423
    const/4 v15, 0x1

    .line 1424
    .local v15, dayIndex:I
    const/16 v41, 0x0

    .line 1431
    .local v41, lastDayToExamine:I
    if-eqz v54, :cond_c

    .line 1437
    const/16 v61, 0x5

    move/from16 v0, v27

    move/from16 v1, v61

    if-ne v0, v1, :cond_12

    .line 1438
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    move/from16 v18, v0

    .line 1439
    .local v18, dow:I
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v61, v0

    sub-int v15, v61, v18

    .line 1440
    add-int/lit8 v41, v15, 0x6

    .line 1452
    .end local v18           #dow:I
    :cond_c
    :goto_6
    if-eqz v54, :cond_1a

    .line 1453
    move-object/from16 v0, v16

    move-object/from16 v1, v35

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor$DaySet;->get(Landroid/text/format/Time;I)Z

    move-result v61

    if-nez v61, :cond_13

    .line 1454
    add-int/lit8 v15, v15, 0x1

    .line 1561
    :goto_7
    if-eqz v54, :cond_d

    move v0, v15

    move/from16 v1, v41

    if-le v0, v1, :cond_c

    .line 1562
    :cond_d
    add-int/lit8 v43, v43, 0x1

    .line 1563
    if-eqz v57, :cond_e

    move/from16 v0, v43

    move v1, v12

    if-lt v0, v1, :cond_b

    .line 1565
    :cond_e
    if-eqz v59, :cond_f

    .line 1566
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/providers/calendar/RecurrenceProcessor;->filterBySetPos(Landroid/pim/EventRecurrence;Ljava/util/ArrayList;)V

    .line 1569
    :cond_f
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .line 1570
    .local v34, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_10
    :goto_8
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_23

    .line 1571
    sget-object v61, Lcom/android/providers/calendar/RecurrenceProcessor;->BOGUS_TIME:Ljava/lang/Long;

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    move-object/from16 v0, v61

    move-object/from16 v1, v62

    if-ne v0, v1, :cond_10

    .line 1572
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->remove()V

    goto :goto_8

    .end local v8           #month:I
    .end local v15           #dayIndex:I
    .end local v34           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    .end local v41           #lastDayToExamine:I
    :cond_11
    move/from16 v8, v39

    .line 1417
    goto :goto_5

    .line 1442
    .restart local v8       #month:I
    .restart local v15       #dayIndex:I
    .restart local v41       #lastDayToExamine:I
    :cond_12
    const/16 v61, 0x4

    move-object v0, v3

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->getActualMaximum(I)I

    move-result v41

    goto :goto_6

    .line 1457
    :cond_13
    move v7, v15

    .line 1466
    .local v7, day:I
    :goto_9
    const/16 v32, 0x0

    .line 1468
    .local v32, hourIndex:I
    :cond_14
    if-eqz v55, :cond_1b

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byhour:[I

    move-object/from16 v61, v0

    aget v61, v61, v32

    move/from16 v6, v61

    .line 1475
    .local v6, hour:I
    :goto_a
    const/16 v42, 0x0

    .line 1477
    .local v42, minuteIndex:I
    :cond_15
    if-eqz v56, :cond_1c

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->byminute:[I

    move-object/from16 v61, v0

    aget v61, v61, v42

    move/from16 v5, v61

    .line 1483
    .local v5, minute:I
    :goto_b
    const/16 v47, 0x0

    .line 1485
    .local v47, secondIndex:I
    :cond_16
    if-eqz v58, :cond_1d

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/EventRecurrence;->bysecond:[I

    move-object/from16 v61, v0

    aget v61, v61, v47

    move/from16 v4, v61

    .line 1494
    .local v4, second:I
    :goto_c
    invoke-virtual/range {v3 .. v9}, Landroid/text/format/Time;->set(IIIIII)V

    .line 1495
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1497
    invoke-static {v3}, Lcom/android/providers/calendar/RecurrenceProcessor;->normDateTimeComparisonValue(Landroid/text/format/Time;)J

    move-result-wide v30

    .line 1500
    .local v30, genDateValue:J
    move-object/from16 v0, p2

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/android/providers/calendar/RecurrenceProcessor;->filter(Landroid/pim/EventRecurrence;Landroid/text/format/Time;)I

    move-result v25

    .line 1501
    .local v25, filtered:I
    if-nez v25, :cond_22

    .line 1506
    cmp-long v61, v30, v19

    if-gez v61, :cond_1e

    .line 1508
    sget-object v61, Lcom/android/providers/calendar/RecurrenceProcessor;->BOGUS_TIME:Ljava/lang/Long;

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1554
    :goto_d
    if-eqz v58, :cond_17

    move/from16 v0, v47

    move v1, v13

    if-lt v0, v1, :cond_16

    .line 1555
    :cond_17
    add-int/lit8 v42, v42, 0x1

    .line 1557
    if-eqz v56, :cond_18

    move/from16 v0, v42

    move v1, v11

    if-lt v0, v1, :cond_15

    .line 1558
    :cond_18
    add-int/lit8 v32, v32, 0x1

    .line 1559
    if-eqz v55, :cond_19

    move/from16 v0, v32

    move v1, v10

    if-lt v0, v1, :cond_14

    .line 1560
    :cond_19
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_7

    .line 1460
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v25           #filtered:I
    .end local v30           #genDateValue:J
    .end local v32           #hourIndex:I
    .end local v42           #minuteIndex:I
    .end local v47           #secondIndex:I
    :cond_1a
    move/from16 v7, v36

    .restart local v7       #day:I
    goto :goto_9

    .restart local v32       #hourIndex:I
    :cond_1b
    move/from16 v6, v37

    .line 1468
    goto :goto_a

    .restart local v6       #hour:I
    .restart local v42       #minuteIndex:I
    :cond_1c
    move/from16 v5, v38

    .line 1477
    goto :goto_b

    .restart local v5       #minute:I
    .restart local v47       #secondIndex:I
    :cond_1d
    move/from16 v4, v40

    .line 1485
    goto :goto_c

    .line 1514
    .restart local v4       #second:I
    .restart local v25       #filtered:I
    .restart local v30       #genDateValue:J
    :cond_1e
    cmp-long v61, v30, v51

    if-lez v61, :cond_1f

    .line 1521
    const/16 v17, 0x1

    .line 1522
    sget-object v61, Lcom/android/providers/calendar/RecurrenceProcessor;->BOGUS_TIME:Ljava/lang/Long;

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1526
    :cond_1f
    cmp-long v61, v30, p5

    if-ltz v61, :cond_20

    .line 1532
    const/16 v17, 0x1

    .line 1533
    sget-object v61, Lcom/android/providers/calendar/RecurrenceProcessor;->BOGUS_TIME:Ljava/lang/Long;

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1537
    :cond_20
    cmp-long v61, v30, p3

    if-ltz v61, :cond_21

    .line 1541
    invoke-static/range {v30 .. v31}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v61

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1546
    :cond_21
    sget-object v61, Lcom/android/providers/calendar/RecurrenceProcessor;->BOGUS_TIME:Ljava/lang/Long;

    move-object/from16 v0, v26

    move-object/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1552
    :cond_22
    add-int/lit8 v47, v47, 0x1

    goto :goto_d

    .line 1576
    .end local v4           #second:I
    .end local v5           #minute:I
    .end local v6           #hour:I
    .end local v7           #day:I
    .end local v25           #filtered:I
    .end local v30           #genDateValue:J
    .end local v32           #hourIndex:I
    .end local v42           #minuteIndex:I
    .end local v47           #secondIndex:I
    .restart local v34       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Long;>;"
    :cond_23
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v33

    .local v33, i$:Ljava/util/Iterator;
    :cond_24
    :goto_e
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v61

    if-eqz v61, :cond_25

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/lang/Long;

    .line 1577
    .local v49, time:Ljava/lang/Long;
    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v61, v0

    if-lez v61, :cond_26

    move-object/from16 v0, p2

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move/from16 v61, v0

    move v0, v14

    move/from16 v1, v61

    if-ne v0, v1, :cond_26

    .line 1579
    const/16 v17, 0x1

    .line 1594
    .end local v49           #time:Ljava/lang/Long;
    :cond_25
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->clear()V

    .line 1598
    if-eqz v17, :cond_28

    .line 1664
    return-void

    .line 1583
    .restart local v49       #time:Ljava/lang/Long;
    :cond_26
    if-eqz p7, :cond_27

    .line 1584
    move-object/from16 v0, p8

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_24

    .line 1585
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 1588
    :cond_27
    move-object/from16 v0, p8

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v61

    if-eqz v61, :cond_24

    .line 1589
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 1608
    .end local v49           #time:Ljava/lang/Long;
    :cond_28
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v45, v0

    .line 1609
    .local v45, oldDay:I
    move-object v0, v3

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 1611
    const/16 v44, 0x1

    .line 1613
    .local v44, n:I
    :goto_f
    mul-int v60, v28, v44

    .line 1614
    .local v60, value:I
    packed-switch v29, :pswitch_data_1

    .line 1640
    new-instance v61, Ljava/lang/RuntimeException;

    new-instance v62, Ljava/lang/StringBuilder;

    invoke-direct/range {v62 .. v62}, Ljava/lang/StringBuilder;-><init>()V

    const-string v63, "bad field="

    invoke-virtual/range {v62 .. v63}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v62

    move-object/from16 v0, v62

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v62

    invoke-virtual/range {v62 .. v62}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v62

    invoke-direct/range {v61 .. v62}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v61

    .line 1616
    :pswitch_7
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->second:I

    .line 1643
    :goto_10
    invoke-static/range {v35 .. v35}, Lcom/android/providers/calendar/RecurrenceProcessor;->unsafeNormalize(Landroid/text/format/Time;)V

    .line 1644
    const/16 v61, 0x6

    move/from16 v0, v29

    move/from16 v1, v61

    if-eq v0, v1, :cond_2a

    const/16 v61, 0x5

    move/from16 v0, v29

    move/from16 v1, v61

    if-eq v0, v1, :cond_2a

    :cond_29
    move/from16 v24, v23

    .line 1653
    .end local v23           #failsafe:I
    .restart local v24       #failsafe:I
    goto/16 :goto_4

    .line 1619
    .end local v24           #failsafe:I
    .restart local v23       #failsafe:I
    :pswitch_8
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->minute:I

    goto :goto_10

    .line 1622
    :pswitch_9
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->hour:I

    goto :goto_10

    .line 1625
    :pswitch_a
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_10

    .line 1628
    :pswitch_b
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->month:I

    goto :goto_10

    .line 1631
    :pswitch_c
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->year:I

    goto :goto_10

    .line 1634
    :pswitch_d
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_10

    .line 1637
    :pswitch_e
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v61, v0

    add-int v61, v61, v60

    move/from16 v0, v61

    move-object/from16 v1, v35

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    goto :goto_10

    .line 1647
    :cond_2a
    move-object/from16 v0, v35

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v61, v0

    move/from16 v0, v61

    move/from16 v1, v45

    if-eq v0, v1, :cond_29

    .line 1650
    add-int/lit8 v44, v44, 0x1

    .line 1651
    move-object/from16 v0, v35

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V
    :try_end_2
    .catch Lcom/android/providers/calendar/DateException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_f

    .line 1294
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 1614
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method generateByList(III)I
    .locals 1
    .parameter "count"
    .parameter "freq"
    .parameter "byFreq"

    .prologue
    const/4 v0, 0x0

    .line 286
    if-lt p3, p2, :cond_1

    .line 292
    :cond_0
    :goto_0
    return v0

    .line 289
    :cond_1
    if-eqz p1, :cond_0

    .line 292
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getLastOccurence(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;)J
    .locals 21
    .parameter "dtstart"
    .parameter "recur"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    .line 69
    const-wide/16 v15, -0x1

    .line 70
    .local v15, lastTime:J
    const/4 v13, 0x0

    .line 74
    .local v13, hasCount:Z
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v2, v0

    if-eqz v2, :cond_6

    .line 75
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rrules:[Landroid/pim/EventRecurrence;

    move-object v9, v0

    .local v9, arr$:[Landroid/pim/EventRecurrence;
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .local v17, len$:I
    const/4 v14, 0x0

    .local v14, i$:I
    :goto_0
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_3

    aget-object v18, v9, v14

    .line 76
    .local v18, rrule:Landroid/pim/EventRecurrence;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/pim/EventRecurrence;->count:I

    move v2, v0

    if-eqz v2, :cond_1

    .line 77
    const/4 v13, 0x1

    .line 75
    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 78
    :cond_1
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object v2, v0

    if-eqz v2, :cond_2

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v2, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/pim/EventRecurrence;->until:Ljava/lang/String;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 81
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/calendar/RecurrenceProcessor;->mIterator:Landroid/text/format/Time;

    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v19

    .line 82
    .local v19, untilTime:J
    cmp-long v2, v19, v15

    if-lez v2, :cond_0

    .line 83
    move-wide/from16 v15, v19

    goto :goto_1

    .line 88
    .end local v19           #untilTime:J
    :cond_2
    const-wide/16 v2, -0x1

    .line 131
    .end local v9           #arr$:[Landroid/pim/EventRecurrence;
    .end local v14           #i$:I
    .end local v17           #len$:I
    .end local v18           #rrule:Landroid/pim/EventRecurrence;
    :goto_2
    return-wide v2

    .line 91
    .restart local v9       #arr$:[Landroid/pim/EventRecurrence;
    .restart local v14       #i$:I
    .restart local v17       #len$:I
    :cond_3
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_5

    .line 92
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v9, v0

    .local v9, arr$:[J
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    const/4 v14, 0x0

    :goto_3
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    aget-wide v11, v9, v14

    .line 93
    .local v11, dt:J
    cmp-long v2, v11, v15

    if-lez v2, :cond_4

    .line 94
    move-wide v15, v11

    .line 92
    :cond_4
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 101
    .end local v9           #arr$:[J
    .end local v11           #dt:J
    :cond_5
    const-wide/16 v2, -0x1

    cmp-long v2, v15, v2

    if-eqz v2, :cond_9

    if-nez v13, :cond_9

    move-wide v2, v15

    .line 102
    goto :goto_2

    .line 104
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_6
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exrules:[Landroid/pim/EventRecurrence;

    move-object v2, v0

    if-nez v2, :cond_9

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->exdates:[J

    move-object v2, v0

    if-nez v2, :cond_9

    .line 107
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v9, v0

    .restart local v9       #arr$:[J
    move-object v0, v9

    array-length v0, v0

    move/from16 v17, v0

    .restart local v17       #len$:I
    const/4 v14, 0x0

    .restart local v14       #i$:I
    :goto_4
    move v0, v14

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    aget-wide v11, v9, v14

    .line 108
    .restart local v11       #dt:J
    cmp-long v2, v11, v15

    if-lez v2, :cond_7

    .line 109
    move-wide v15, v11

    .line 107
    :cond_7
    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .end local v11           #dt:J
    :cond_8
    move-wide v2, v15

    .line 112
    goto :goto_2

    .line 117
    .end local v9           #arr$:[J
    .end local v14           #i$:I
    .end local v17           #len$:I
    :cond_9
    if-nez v13, :cond_a

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/pim/RecurrenceSet;->rdates:[J

    move-object v2, v0

    if-eqz v2, :cond_c

    .line 120
    :cond_a
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move v1, v2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v5

    const-wide/16 v7, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v8}, Lcom/android/providers/calendar/RecurrenceProcessor;->expand(Landroid/text/format/Time;Landroid/pim/RecurrenceSet;JJ)[J

    move-result-object v10

    .line 126
    .local v10, dates:[J
    array-length v2, v10

    if-nez v2, :cond_b

    .line 127
    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 129
    :cond_b
    array-length v2, v10

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-wide v2, v10, v2

    goto/16 :goto_2

    .line 131
    .end local v10           #dates:[J
    :cond_c
    const-wide/16 v2, -0x1

    goto/16 :goto_2
.end method
