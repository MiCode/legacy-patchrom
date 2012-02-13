.class public Lcom/android/providers/calendar/Duration;
.super Ljava/lang/Object;
.source "Duration.java"


# instance fields
.field public days:I

.field public hours:I

.field public minutes:I

.field public seconds:I

.field public sign:I

.field public weeks:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 42
    return-void
.end method


# virtual methods
.method public addTo(J)J
    .locals 2
    .parameter "dt"

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/android/providers/calendar/Duration;->getMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method public addTo(Ljava/util/Calendar;)V
    .locals 3
    .parameter "cal"

    .prologue
    const/4 v2, 0x5

    .line 128
    iget v0, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v1, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 129
    iget v0, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v1, p0, Lcom/android/providers/calendar/Duration;->days:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Ljava/util/Calendar;->add(II)V

    .line 130
    const/16 v0, 0xa

    iget v1, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v2, p0, Lcom/android/providers/calendar/Duration;->hours:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 131
    const/16 v0, 0xc

    iget v1, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v2, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 132
    const/16 v0, 0xd

    iget v1, p0, Lcom/android/providers/calendar/Duration;->sign:I

    iget v2, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    mul-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/util/Calendar;->add(II)V

    .line 133
    return-void
.end method

.method public getMillis()J
    .locals 5

    .prologue
    .line 140
    iget v2, p0, Lcom/android/providers/calendar/Duration;->sign:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    .line 141
    .local v0, factor:J
    const v2, 0x93a80

    iget v3, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    mul-int/2addr v2, v3

    const v3, 0x15180

    iget v4, p0, Lcom/android/providers/calendar/Duration;->days:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/providers/calendar/Duration;->hours:I

    mul-int/lit16 v3, v3, 0xe10

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    mul-int/lit8 v3, v3, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    mul-long/2addr v2, v0

    return-wide v2
.end method

.method public parse(Ljava/lang/String;)V
    .locals 8
    .parameter "str"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/providers/calendar/DateException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "Duration.parse(str=\'"

    .line 50
    iput v5, p0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 51
    iput v4, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 52
    iput v4, p0, Lcom/android/providers/calendar/Duration;->days:I

    .line 53
    iput v4, p0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 54
    iput v4, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 55
    iput v4, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 58
    .local v2, len:I
    const/4 v1, 0x0

    .line 61
    .local v1, index:I
    if-ge v2, v5, :cond_1

    .line 121
    :cond_0
    return-void

    .line 65
    :cond_1
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 66
    .local v0, c:C
    const/16 v4, 0x2d

    if-ne v0, v4, :cond_3

    .line 67
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/providers/calendar/Duration;->sign:I

    .line 68
    add-int/lit8 v1, v1, 0x1

    .line 74
    :cond_2
    :goto_0
    if-lt v2, v1, :cond_0

    .line 78
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 79
    const/16 v4, 0x50

    if-eq v0, v4, :cond_4

    .line 80
    new-instance v4, Lcom/android/providers/calendar/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') expected \'P\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 70
    :cond_3
    const/16 v4, 0x2b

    if-ne v0, v4, :cond_2

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 86
    const/4 v3, 0x0

    .line 87
    .local v3, n:I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 88
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 89
    if-lt v0, v6, :cond_6

    const/16 v4, 0x39

    if-gt v0, v4, :cond_6

    .line 90
    mul-int/lit8 v3, v3, 0xa

    .line 91
    sub-int v4, v0, v6

    add-int/2addr v3, v4

    .line 87
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 93
    :cond_6
    const/16 v4, 0x57

    if-ne v0, v4, :cond_7

    .line 94
    iput v3, p0, Lcom/android/providers/calendar/Duration;->weeks:I

    .line 95
    const/4 v3, 0x0

    goto :goto_2

    .line 97
    :cond_7
    const/16 v4, 0x48

    if-ne v0, v4, :cond_8

    .line 98
    iput v3, p0, Lcom/android/providers/calendar/Duration;->hours:I

    .line 99
    const/4 v3, 0x0

    goto :goto_2

    .line 101
    :cond_8
    const/16 v4, 0x4d

    if-ne v0, v4, :cond_9

    .line 102
    iput v3, p0, Lcom/android/providers/calendar/Duration;->minutes:I

    .line 103
    const/4 v3, 0x0

    goto :goto_2

    .line 105
    :cond_9
    const/16 v4, 0x53

    if-ne v0, v4, :cond_a

    .line 106
    iput v3, p0, Lcom/android/providers/calendar/Duration;->seconds:I

    .line 107
    const/4 v3, 0x0

    goto :goto_2

    .line 109
    :cond_a
    const/16 v4, 0x44

    if-ne v0, v4, :cond_b

    .line 110
    iput v3, p0, Lcom/android/providers/calendar/Duration;->days:I

    .line 111
    const/4 v3, 0x0

    goto :goto_2

    .line 113
    :cond_b
    const/16 v4, 0x54

    if-eq v0, v4, :cond_5

    .line 116
    new-instance v4, Lcom/android/providers/calendar/DateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duration.parse(str=\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\') unexpected char \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' at index="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/providers/calendar/DateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method
