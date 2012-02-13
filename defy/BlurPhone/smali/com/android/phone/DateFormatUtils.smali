.class public Lcom/android/phone/DateFormatUtils;
.super Ljava/lang/Object;
.source "DateFormatUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method private static appendAbbevYear(Ljava/lang/StringBuilder;I)V
    .locals 1
    .parameter "buf"
    .parameter "year"

    .prologue
    .line 36
    const-string v0, ", "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    rem-int/lit8 p1, p1, 0x64

    .line 39
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 40
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 43
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    return-void
.end method

.method public static formatCallTime(JZ)Ljava/lang/String;
    .locals 13
    .parameter "when"
    .parameter "abbrev"

    .prologue
    const/16 v12, 0xa

    const/4 v11, 0x1

    .line 47
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 49
    .local v1, c:Ljava/util/Calendar;
    invoke-virtual {v1, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 50
    invoke-virtual {v1, v11}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 51
    .local v9, year:I
    const/4 v10, 0x2

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 52
    .local v7, month:I
    const/4 v10, 0x5

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 53
    .local v4, day:I
    invoke-virtual {v1, v12}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 54
    .local v5, hour:I
    const/16 v10, 0xc

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 55
    .local v6, minutes:I
    const/16 v10, 0x9

    invoke-virtual {v1, v10}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 56
    .local v0, amPm:I
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .local v8, str:Ljava/lang/StringBuilder;
    if-nez v5, :cond_0

    .line 59
    const/16 v5, 0xc

    .line 61
    :cond_0
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const/16 v10, 0x3a

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    if-ge v6, v12, :cond_1

    .line 64
    const/16 v10, 0x30

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    if-nez v0, :cond_3

    const-string v10, "am"

    :goto_0
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v10, "  "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const/16 v10, 0x1e

    invoke-static {v7, v10}, Landroid/text/format/DateUtils;->getMonthString(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    if-eqz p2, :cond_4

    .line 75
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 76
    .local v2, c2:Ljava/util/Calendar;
    invoke-virtual {v2, v11}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 77
    .local v3, currentYear:I
    if-eq v3, v9, :cond_2

    .line 78
    invoke-static {v8, v9}, Lcom/android/phone/DateFormatUtils;->appendAbbevYear(Ljava/lang/StringBuilder;I)V

    .line 84
    .end local v2           #c2:Ljava/util/Calendar;
    .end local v3           #currentYear:I
    :cond_2
    :goto_1
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 67
    :cond_3
    const-string v10, "pm"

    goto :goto_0

    .line 81
    :cond_4
    invoke-static {v8, v9}, Lcom/android/phone/DateFormatUtils;->appendAbbevYear(Ljava/lang/StringBuilder;I)V

    goto :goto_1
.end method

.method public static formatDurationTime(I)Ljava/lang/String;
    .locals 7
    .parameter "duration"

    .prologue
    const/4 v6, 0x1

    .line 100
    const/16 v3, 0xe10

    .line 101
    .local v3, secondsPerHour:I
    div-int v1, p0, v3

    .line 102
    .local v1, hours:I
    rem-int v5, p0, v3

    div-int/lit8 v2, v5, 0x3c

    .line 103
    .local v2, mins:I
    rem-int/lit8 v4, p0, 0x3c

    .line 105
    .local v4, secs:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-static {v0, v1, v6}, Lcom/android/phone/DateFormatUtils;->timeFormatHelper(Ljava/lang/StringBuilder;IZ)V

    .line 107
    invoke-static {v0, v2, v6}, Lcom/android/phone/DateFormatUtils;->timeFormatHelper(Ljava/lang/StringBuilder;IZ)V

    .line 108
    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/android/phone/DateFormatUtils;->timeFormatHelper(Ljava/lang/StringBuilder;IZ)V

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private static timeFormatHelper(Ljava/lang/StringBuilder;IZ)V
    .locals 1
    .parameter "buf"
    .parameter "t"
    .parameter "appendColon"

    .prologue
    .line 88
    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    .line 89
    const/16 v0, 0x30

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    if-eqz p2, :cond_1

    .line 95
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 97
    :cond_1
    return-void
.end method
