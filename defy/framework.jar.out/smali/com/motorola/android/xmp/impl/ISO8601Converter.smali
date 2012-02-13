.class public final Lcom/motorola/android/xmp/impl/ISO8601Converter;
.super Ljava/lang/Object;
.source "ISO8601Converter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 1
    .parameter "iso8601String"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    new-instance v0, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;

    invoke-direct {v0}, Lcom/motorola/android/xmp/impl/XMPDateTimeImpl;-><init>()V

    invoke-static {p0, v0}, Lcom/motorola/android/xmp/impl/ISO8601Converter;->parse(Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/motorola/android/xmp/XMPDateTime;)Lcom/motorola/android/xmp/XMPDateTime;
    .locals 6
    .parameter "iso8601String"
    .parameter "binValue"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/xmp/XMPException;
        }
    .end annotation

    .prologue
    invoke-static {p0}, Lcom/motorola/android/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    new-instance v0, Lcom/motorola/android/xmp/impl/ParseState;

    invoke-direct {v0, p0}, Lcom/motorola/android/xmp/impl/ParseState;-><init>(Ljava/lang/String;)V

    .local v0, input:Lcom/motorola/android/xmp/impl/ParseState;
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    .end local p0
    move-result p0

    const/16 v1, 0x54

    if-eq p0, v1, :cond_1

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->length()I

    move-result p0

    const/4 v1, 0x2

    if-lt p0, v1, :cond_0

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result p0

    const/16 v1, 0x3a

    if-eq p0, v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->length()I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_3

    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result p0

    const/16 v1, 0x3a

    if-ne p0, v1, :cond_3

    :cond_1
    const/4 p0, 0x1

    .local p0, timeOnly:Z
    :goto_0
    if-nez p0, :cond_a

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    :cond_2
    const-string v1, "Invalid year in date string"

    const/16 v2, 0x270f

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    .local v1, value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_4

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #timeOnly:Z
    const-string p1, "Invalid date string, after year"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .end local v1           #value:I
    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p1
    :cond_3
    const/4 p0, 0x0

    goto :goto_0

    .restart local v1       #value:I
    .restart local p0       #timeOnly:Z
    :cond_4
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/motorola/android/xmp/impl/ParseState;->ch(I)C

    move-result v2

    const/16 v3, 0x2d

    if-ne v2, v3, :cond_5

    neg-int v1, v1

    :cond_5
    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setYear(I)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    move p0, v1

    .end local v1           #value:I
    .local p0, value:I
    :goto_1
    return-object p1

    .restart local v1       #value:I
    .local p0, timeOnly:Z
    :cond_6
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid month in date string"

    .end local v1           #value:I
    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_7

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #timeOnly:Z
    const-string p1, "Invalid date string, after month"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p0       #timeOnly:Z
    .restart local p1
    :cond_7
    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setMonth(I)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-nez v2, :cond_8

    move p0, v1

    .end local v1           #value:I
    .local p0, value:I
    goto :goto_1

    .restart local v1       #value:I
    .local p0, timeOnly:Z
    :cond_8
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid day in date string"

    .end local v1           #value:I
    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v3, 0x54

    if-eq v2, v3, :cond_9

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #timeOnly:Z
    const-string p1, "Invalid date string, after day"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p0       #timeOnly:Z
    .restart local p1
    :cond_9
    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setDay(I)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v2

    if-nez v2, :cond_b

    move p0, v1

    .end local v1           #value:I
    .local p0, value:I
    goto :goto_1

    .local p0, timeOnly:Z
    :cond_a
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setMonth(I)V

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setDay(I)V

    :cond_b
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x54

    if-ne v1, v2, :cond_d

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    :cond_c
    const-string p0, "Invalid hour in date string"

    .end local p0           #timeOnly:Z
    const/16 v1, 0x17

    invoke-virtual {v0, p0, v1}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result p0

    .local p0, value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_e

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #value:I
    const-string p1, "Invalid date string, after hour"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .local p0, timeOnly:Z
    .restart local p1
    :cond_d
    if-nez p0, :cond_c

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #timeOnly:Z
    const-string p1, "Invalid date string, missing \'T\' after date"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .local p0, value:I
    .restart local p1
    :cond_e
    invoke-interface {p1, p0}, Lcom/motorola/android/xmp/XMPDateTime;->setHour(I)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    const-string p0, "Invalid minute in date string"

    .end local p0           #value:I
    const/16 v1, 0x3b

    invoke-virtual {v0, p0, v1}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result p0

    .restart local p0       #value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_f

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_f

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #value:I
    const-string p1, "Invalid date string, after minute"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p0       #value:I
    .restart local p1
    :cond_f
    invoke-interface {p1, p0}, Lcom/motorola/android/xmp/XMPDateTime;->setMinute(I)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_1a

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    const-string p0, "Invalid whole seconds in date string"

    .end local p0           #value:I
    const/16 v1, 0x3b

    invoke-virtual {v0, p0, v1}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result p0

    .restart local p0       #value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x2e

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x2b

    if-eq v1, v2, :cond_10

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_10

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #value:I
    const-string p1, "Invalid date string, after whole seconds"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p0       #value:I
    .restart local p1
    :cond_10
    invoke-interface {p1, p0}, Lcom/motorola/android/xmp/XMPDateTime;->setSecond(I)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v2, 0x2e

    if-ne v1, v2, :cond_1a

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->pos()I

    move-result p0

    .local p0, digits:I
    const-string v1, "Invalid fractional seconds in date string"

    const v2, 0x3b9ac9ff

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #value:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_11

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v3, 0x2b

    if-eq v2, v3, :cond_11

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_11

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #digits:I
    const-string p1, "Invalid date string, after fractional second"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p0       #digits:I
    .restart local p1
    :cond_11
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->pos()I

    move-result v2

    sub-int p0, v2, p0

    :goto_2
    const/16 v2, 0x9

    if-le p0, v2, :cond_12

    div-int/lit8 v1, v1, 0xa

    add-int/lit8 p0, p0, -0x1

    goto :goto_2

    :cond_12
    :goto_3
    const/16 v2, 0x9

    if-ge p0, v2, :cond_13

    mul-int/lit8 v1, v1, 0xa

    add-int/lit8 p0, p0, 0x1

    goto :goto_3

    :cond_13
    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setNanoSecond(I)V

    move v3, v1

    .end local v1           #value:I
    .end local p0           #digits:I
    .local v3, value:I
    :goto_4
    const/4 v2, 0x0

    .local v2, tzSign:I
    const/4 p0, 0x0

    .local p0, tzHour:I
    const/4 v1, 0x0

    .local v1, tzMinute:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v4

    const/16 v5, 0x5a

    if-ne v4, v5, :cond_15

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    :cond_14
    :goto_5
    mul-int/lit16 p0, p0, 0xe10

    mul-int/lit16 p0, p0, 0x3e8

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr p0, v1

    mul-int/2addr p0, v2

    .local p0, offset:I
    new-instance v1, Ljava/util/SimpleTimeZone;

    .end local v1           #tzMinute:I
    const-string v2, ""

    .end local v2           #tzSign:I
    invoke-direct {v1, p0, v2}, Ljava/util/SimpleTimeZone;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, v1}, Lcom/motorola/android/xmp/XMPDateTime;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result p0

    .end local p0           #offset:I
    if-eqz p0, :cond_19

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    const-string p1, "Invalid date string, extra chars at end"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local v1       #tzMinute:I
    .restart local v2       #tzSign:I
    .local p0, tzHour:I
    .restart local p1
    :cond_15
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result p0

    .end local p0           #tzHour:I
    const/16 v1, 0x2b

    if-ne p0, v1, :cond_16

    .end local v1           #tzMinute:I
    const/4 p0, 0x1

    .end local v2           #tzSign:I
    .local p0, tzSign:I
    move v2, p0

    .end local p0           #tzSign:I
    .restart local v2       #tzSign:I
    :goto_6
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    const-string p0, "Invalid time zone hour in date string"

    const/16 v1, 0x17

    invoke-virtual {v0, p0, v1}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result p0

    .local p0, tzHour:I
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result v1

    const/16 v4, 0x3a

    if-eq v1, v4, :cond_18

    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    .end local p0           #tzHour:I
    const-string p1, "Invalid date string, after time zone hour"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .restart local p1
    :cond_16
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->ch()C

    move-result p0

    const/16 v1, 0x2d

    if-ne p0, v1, :cond_17

    const/4 p0, -0x1

    .end local v2           #tzSign:I
    .local p0, tzSign:I
    move v2, p0

    .end local p0           #tzSign:I
    .restart local v2       #tzSign:I
    goto :goto_6

    :cond_17
    new-instance p0, Lcom/motorola/android/xmp/XMPException;

    const-string p1, "Time zone must begin with \'Z\', \'+\', or \'-\'"

    .end local p1
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Lcom/motorola/android/xmp/XMPException;-><init>(Ljava/lang/String;I)V

    .end local v0           #input:Lcom/motorola/android/xmp/impl/ParseState;
    throw p0

    .restart local v0       #input:Lcom/motorola/android/xmp/impl/ParseState;
    .local p0, tzHour:I
    .restart local p1
    :cond_18
    invoke-virtual {v0}, Lcom/motorola/android/xmp/impl/ParseState;->skip()V

    const-string v1, "Invalid time zone minute in date string"

    const/16 v4, 0x3b

    invoke-virtual {v0, v1, v4}, Lcom/motorola/android/xmp/impl/ParseState;->gatherInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #tzMinute:I
    goto :goto_5

    .end local v1           #tzMinute:I
    .end local v2           #tzSign:I
    .end local p0           #tzHour:I
    :cond_19
    move p0, v3

    .end local v3           #value:I
    .local p0, value:I
    goto/16 :goto_1

    :cond_1a
    move v3, p0

    .end local p0           #value:I
    .restart local v3       #value:I
    goto/16 :goto_4
.end method

.method public static render(Lcom/motorola/android/xmp/XMPDateTime;)Ljava/lang/String;
    .locals 8
    .parameter "dateTime"

    .prologue
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, buffer:Ljava/lang/StringBuffer;
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "0000"

    new-instance v3, Ljava/text/DecimalFormatSymbols;

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v3, v4}, Ljava/text/DecimalFormatSymbols;-><init>(Ljava/util/Locale;)V

    invoke-direct {v1, v2, v3}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;Ljava/text/DecimalFormatSymbols;)V

    .local v1, df:Ljava/text/DecimalFormat;
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getYear()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMonth()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_0
    const-string v2, "\'-\'00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMonth()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getDay()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getDay()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getHour()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMinute()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    const/16 v2, 0x54

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getHour()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getMinute()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getSecond()I

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getSecond()I

    move-result v2

    int-to-double v2, v2

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getNanoSecond()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x41cdcd6500000000L

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    .local v2, seconds:D
    const-string v4, ":00.#########"

    invoke-virtual {v1, v4}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    .end local v2           #seconds:D
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getCalendar()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .local v2, timeInMillis:J
    invoke-interface {p0}, Lcom/motorola/android/xmp/XMPDateTime;->getTimeZone()Ljava/util/TimeZone;

    move-result-object p0

    .end local p0
    invoke-virtual {p0, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result p0

    .local p0, offset:I
    if-nez p0, :cond_6

    const/16 p0, 0x5a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .end local v2           #timeInMillis:J
    .end local p0           #offset:I
    :cond_5
    :goto_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .restart local v2       #timeInMillis:J
    .restart local p0       #offset:I
    :cond_6
    const v2, 0x36ee80

    div-int v2, p0, v2

    .local v2, thours:I
    const v3, 0x36ee80

    rem-int/2addr p0, v3

    .end local p0           #offset:I
    const v3, 0xea60

    div-int/2addr p0, v3

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    .local p0, tminutes:I
    const-string v3, "+00;-00"

    invoke-virtual {v1, v3}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    .end local v2           #thours:I
    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":00"

    invoke-virtual {v1, v2}, Ljava/text/DecimalFormat;->applyPattern(Ljava/lang/String;)V

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(J)Ljava/lang/String;

    move-result-object p0

    .end local p0           #tminutes:I
    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method
