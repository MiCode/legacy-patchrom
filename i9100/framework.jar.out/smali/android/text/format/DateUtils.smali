.class public Landroid/text/format/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field public static final ABBREV_MONTH_FORMAT:Ljava/lang/String; = "%b"

.field public static final ABBREV_WEEKDAY_FORMAT:Ljava/lang/String; = "%a"

.field public static final DAY_IN_MILLIS:J = 0x5265c00L

.field private static final FAST_FORMAT_HMMSS:Ljava/lang/String; = "%1$d:%2$02d:%3$02d"

.field private static final FAST_FORMAT_MMSS:Ljava/lang/String; = "%1$02d:%2$02d"

.field public static final FORMAT_12HOUR:I = 0x40

.field public static final FORMAT_24HOUR:I = 0x80

.field public static final FORMAT_ABBREV_ALL:I = 0x80000

.field public static final FORMAT_ABBREV_MONTH:I = 0x10000

.field public static final FORMAT_ABBREV_RELATIVE:I = 0x40000

.field public static final FORMAT_ABBREV_TIME:I = 0x4000

.field public static final FORMAT_ABBREV_WEEKDAY:I = 0x8000

.field public static final FORMAT_CAP_AMPM:I = 0x100

.field public static final FORMAT_CAP_MIDNIGHT:I = 0x1000

.field public static final FORMAT_CAP_NOON:I = 0x400

.field public static final FORMAT_CAP_NOON_MIDNIGHT:I = 0x1400

.field public static final FORMAT_NO_MIDNIGHT:I = 0x800

.field public static final FORMAT_NO_MONTH_DAY:I = 0x20

.field public static final FORMAT_NO_NOON:I = 0x200

.field public static final FORMAT_NO_NOON_MIDNIGHT:I = 0xa00

.field public static final FORMAT_NO_YEAR:I = 0x8

.field public static final FORMAT_NUMERIC_DATE:I = 0x20000

.field public static final FORMAT_SHOW_DATE:I = 0x10

.field public static final FORMAT_SHOW_TIME:I = 0x1

.field public static final FORMAT_SHOW_WEEKDAY:I = 0x2

.field public static final FORMAT_SHOW_YEAR:I = 0x4

.field public static final FORMAT_UTC:I = 0x2000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final HOUR_IN_MILLIS:J = 0x36ee80L

.field public static final HOUR_MINUTE_24:Ljava/lang/String; = "%H:%M"

.field public static final LENGTH_LONG:I = 0xa

.field public static final LENGTH_MEDIUM:I = 0x14

.field public static final LENGTH_SHORT:I = 0x1e

.field public static final LENGTH_SHORTER:I = 0x28

.field public static final LENGTH_SHORTEST:I = 0x32

.field public static final MINUTE_IN_MILLIS:J = 0xea60L

.field public static final MONTH_DAY_FORMAT:Ljava/lang/String; = "%-d"

.field public static final MONTH_FORMAT:Ljava/lang/String; = "%B"

.field public static final NUMERIC_MONTH_FORMAT:Ljava/lang/String; = "%m"

.field public static final SECOND_IN_MILLIS:J = 0x3e8L

.field private static final TIME_PADDING:C = '0'

.field private static final TIME_SEPARATOR:C = ':'

.field public static final WEEKDAY_FORMAT:Ljava/lang/String; = "%A"

.field public static final WEEK_IN_MILLIS:J = 0x240c8400L

.field public static final YEAR_FORMAT:Ljava/lang/String; = "%Y"

.field public static final YEAR_FORMAT_TWO_DIGITS:Ljava/lang/String; = "%g"

.field public static final YEAR_IN_MILLIS:J = 0x7528ad000L

.field private static final sAmPm:[I

.field private static final sDaysLong:[I

.field private static final sDaysMedium:[I

.field private static final sDaysShort:[I

.field private static final sDaysShortest:[I

.field private static sElapsedFormatHMMSS:Ljava/lang/String;

.field private static sElapsedFormatMMSS:Ljava/lang/String;

.field private static sLastConfig:Landroid/content/res/Configuration;

.field private static final sLock:Ljava/lang/Object;

.field private static final sMonthsLong:[I

.field private static final sMonthsMedium:[I

.field private static final sMonthsShortest:[I

.field private static final sMonthsStandaloneLong:[I

.field private static sNowTime:Landroid/text/format/Time;

.field private static sStatusTimeFormat:Ljava/text/DateFormat;

.field private static sThenTime:Landroid/text/format/Time;

.field public static final sameMonthTable:[I

.field public static final sameYearTable:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x10

    const/16 v2, 0xc

    const/4 v1, 0x7

    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    .line 39
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .line 48
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 57
    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .line 66
    new-array v0, v1, [I

    fill-array-data v0, :array_3

    sput-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .line 75
    new-array v0, v2, [I

    fill-array-data v0, :array_4

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 89
    new-array v0, v2, [I

    fill-array-data v0, :array_5

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .line 103
    new-array v0, v2, [I

    fill-array-data v0, :array_6

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 117
    new-array v0, v2, [I

    fill-array-data v0, :array_7

    sput-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .line 131
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Landroid/text/format/DateUtils;->sAmPm:[I

    .line 210
    new-array v0, v3, [I

    fill-array-data v0, :array_9

    sput-object v0, Landroid/text/format/DateUtils;->sameYearTable:[I

    .line 236
    new-array v0, v3, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/text/format/DateUtils;->sameMonthTable:[I

    return-void

    .line 39
    nop

    :array_0
    .array-data 0x4
        0x53t 0x0t 0x4t 0x1t
        0x54t 0x0t 0x4t 0x1t
        0x55t 0x0t 0x4t 0x1t
        0x56t 0x0t 0x4t 0x1t
        0x57t 0x0t 0x4t 0x1t
        0x58t 0x0t 0x4t 0x1t
        0x59t 0x0t 0x4t 0x1t
    .end array-data

    .line 48
    :array_1
    .array-data 0x4
        0x5at 0x0t 0x4t 0x1t
        0x5bt 0x0t 0x4t 0x1t
        0x5ct 0x0t 0x4t 0x1t
        0x5dt 0x0t 0x4t 0x1t
        0x5et 0x0t 0x4t 0x1t
        0x5ft 0x0t 0x4t 0x1t
        0x60t 0x0t 0x4t 0x1t
    .end array-data

    .line 57
    :array_2
    .array-data 0x4
        0x61t 0x0t 0x4t 0x1t
        0x62t 0x0t 0x4t 0x1t
        0x63t 0x0t 0x4t 0x1t
        0x64t 0x0t 0x4t 0x1t
        0x65t 0x0t 0x4t 0x1t
        0x66t 0x0t 0x4t 0x1t
        0x67t 0x0t 0x4t 0x1t
    .end array-data

    .line 66
    :array_3
    .array-data 0x4
        0x68t 0x0t 0x4t 0x1t
        0x69t 0x0t 0x4t 0x1t
        0x6at 0x0t 0x4t 0x1t
        0x6bt 0x0t 0x4t 0x1t
        0x6ct 0x0t 0x4t 0x1t
        0x6dt 0x0t 0x4t 0x1t
        0x6et 0x0t 0x4t 0x1t
    .end array-data

    .line 75
    :array_4
    .array-data 0x4
        0x23t 0x0t 0x4t 0x1t
        0x24t 0x0t 0x4t 0x1t
        0x25t 0x0t 0x4t 0x1t
        0x26t 0x0t 0x4t 0x1t
        0x27t 0x0t 0x4t 0x1t
        0x28t 0x0t 0x4t 0x1t
        0x29t 0x0t 0x4t 0x1t
        0x2at 0x0t 0x4t 0x1t
        0x2bt 0x0t 0x4t 0x1t
        0x2ct 0x0t 0x4t 0x1t
        0x2dt 0x0t 0x4t 0x1t
        0x2et 0x0t 0x4t 0x1t
    .end array-data

    .line 89
    :array_5
    .array-data 0x4
        0x2ft 0x0t 0x4t 0x1t
        0x30t 0x0t 0x4t 0x1t
        0x31t 0x0t 0x4t 0x1t
        0x32t 0x0t 0x4t 0x1t
        0x33t 0x0t 0x4t 0x1t
        0x34t 0x0t 0x4t 0x1t
        0x35t 0x0t 0x4t 0x1t
        0x36t 0x0t 0x4t 0x1t
        0x37t 0x0t 0x4t 0x1t
        0x38t 0x0t 0x4t 0x1t
        0x39t 0x0t 0x4t 0x1t
        0x3at 0x0t 0x4t 0x1t
    .end array-data

    .line 103
    :array_6
    .array-data 0x4
        0x3bt 0x0t 0x4t 0x1t
        0x3ct 0x0t 0x4t 0x1t
        0x3dt 0x0t 0x4t 0x1t
        0x3et 0x0t 0x4t 0x1t
        0x3ft 0x0t 0x4t 0x1t
        0x40t 0x0t 0x4t 0x1t
        0x41t 0x0t 0x4t 0x1t
        0x42t 0x0t 0x4t 0x1t
        0x43t 0x0t 0x4t 0x1t
        0x44t 0x0t 0x4t 0x1t
        0x45t 0x0t 0x4t 0x1t
        0x46t 0x0t 0x4t 0x1t
    .end array-data

    .line 117
    :array_7
    .array-data 0x4
        0x47t 0x0t 0x4t 0x1t
        0x48t 0x0t 0x4t 0x1t
        0x49t 0x0t 0x4t 0x1t
        0x4at 0x0t 0x4t 0x1t
        0x4bt 0x0t 0x4t 0x1t
        0x4ct 0x0t 0x4t 0x1t
        0x4dt 0x0t 0x4t 0x1t
        0x4et 0x0t 0x4t 0x1t
        0x4ft 0x0t 0x4t 0x1t
        0x50t 0x0t 0x4t 0x1t
        0x51t 0x0t 0x4t 0x1t
        0x52t 0x0t 0x4t 0x1t
    .end array-data

    .line 131
    :array_8
    .array-data 0x4
        0x6ft 0x0t 0x4t 0x1t
        0x70t 0x0t 0x4t 0x1t
    .end array-data

    .line 210
    :array_9
    .array-data 0x4
        0x98t 0x0t 0x4t 0x1t
        0x99t 0x0t 0x4t 0x1t
        0xa5t 0x0t 0x4t 0x1t
        0xa7t 0x0t 0x4t 0x1t
        0x9at 0x0t 0x4t 0x1t
        0x9ct 0x0t 0x4t 0x1t
        0x9et 0x0t 0x4t 0x1t
        0xa0t 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
        0x8bt 0x0t 0x4t 0x1t
        0x8ct 0x0t 0x4t 0x1t
        0x8dt 0x0t 0x4t 0x1t
        0x8ft 0x0t 0x4t 0x1t
        0x90t 0x0t 0x4t 0x1t
        0x91t 0x0t 0x4t 0x1t
        0x8et 0x0t 0x4t 0x1t
    .end array-data

    .line 236
    :array_a
    .array-data 0x4
        0xa3t 0x0t 0x4t 0x1t
        0xa4t 0x0t 0x4t 0x1t
        0xa6t 0x0t 0x4t 0x1t
        0xa2t 0x0t 0x4t 0x1t
        0x9bt 0x0t 0x4t 0x1t
        0x9dt 0x0t 0x4t 0x1t
        0x9ft 0x0t 0x4t 0x1t
        0xa1t 0x0t 0x4t 0x1t
        0x8at 0x0t 0x4t 0x1t
        0x8bt 0x0t 0x4t 0x1t
        0x8ct 0x0t 0x4t 0x1t
        0x8dt 0x0t 0x4t 0x1t
        0x8ft 0x0t 0x4t 0x1t
        0x90t 0x0t 0x4t 0x1t
        0x91t 0x0t 0x4t 0x1t
        0x8et 0x0t 0x4t 0x1t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assign(Ljava/util/Calendar;Ljava/util/Calendar;)V
    .locals 2
    .parameter "lval"
    .parameter "rval"

    .prologue
    .line 940
    invoke-virtual {p0}, Ljava/util/Calendar;->clear()V

    .line 941
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 942
    return-void
.end method

.method public static formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 965
    new-instance v1, Ljava/util/Formatter;

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x32

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .local v1, f:Ljava/util/Formatter;
    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    .line 966
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJI)Ljava/util/Formatter;
    .locals 8
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"

    .prologue
    .line 989
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;
    .locals 27
    .parameter "context"
    .parameter "formatter"
    .parameter "startMillis"
    .parameter "endMillis"
    .parameter "flags"
    .parameter "timeZone"

    .prologue
    .line 1149
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v16

    .line 1150
    .local v16, res:Landroid/content/res/Resources;
    and-int/lit8 v4, p6, 0x1

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    move/from16 v17, v4

    .line 1151
    .local v17, showTime:Z
    :goto_0
    and-int/lit8 v4, p6, 0x2

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move/from16 v18, v4

    .line 1152
    .local v18, showWeekDay:Z
    :goto_1
    and-int/lit8 v4, p6, 0x4

    if-eqz v4, :cond_4

    const/4 v4, 0x1

    move/from16 v19, v4

    .line 1153
    .local v19, showYear:Z
    :goto_2
    and-int/lit8 v4, p6, 0x8

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move v14, v4

    .line 1154
    .local v14, noYear:Z
    :goto_3
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x2000

    move v4, v0

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    move v7, v4

    .line 1155
    .local v7, useUTC:Z
    :goto_4
    const v4, 0x88000

    and-int v4, v4, p6

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    move v5, v4

    .line 1156
    .local v5, abbrevWeekDay:Z
    :goto_5
    const/high16 v4, 0x9

    and-int v4, v4, p6

    if-eqz v4, :cond_8

    const/4 v4, 0x1

    .line 1157
    .local v4, abbrevMonth:Z
    :goto_6
    and-int/lit8 v6, p6, 0x20

    if-eqz v6, :cond_9

    const/4 v6, 0x1

    move v12, v6

    .line 1158
    .local v12, noMonthDay:Z
    :goto_7
    const/high16 v6, 0x2

    and-int v6, v6, p6

    if-eqz v6, :cond_a

    const/4 v6, 0x1

    move v15, v6

    .line 1163
    .local v15, numericDate:Z
    :goto_8
    cmp-long v6, p2, p4

    if-nez v6, :cond_b

    const/4 v6, 0x1

    move v10, v6

    .line 1166
    .local v10, isInstant:Z
    :goto_9
    if-eqz p7, :cond_c

    .line 1167
    new-instance v6, Landroid/text/format/Time;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, startDate:Landroid/text/format/Time;
    move-object/from16 v20, v6

    .line 1173
    .end local v6           #startDate:Landroid/text/format/Time;
    .local v20, startDate:Landroid/text/format/Time;
    :goto_a
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1177
    if-eqz v10, :cond_e

    .line 1178
    move-object/from16 p3, v20

    .line 1179
    .end local p2
    .local p3, endDate:Landroid/text/format/Time;
    const/16 p2, 0x0

    .local p2, dayDistance:I
    move-object/from16 p5, p3

    .line 1208
    .end local p3           #endDate:Landroid/text/format/Time;
    .end local p4
    .end local p7
    .local p5, endDate:Landroid/text/format/Time;
    :goto_b
    if-nez v10, :cond_1

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p3, v0

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move/from16 p4, v0

    or-int p3, p3, p4

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->second:I

    move/from16 p4, v0

    or-int p3, p3, p4

    if-nez p3, :cond_1

    if-eqz v17, :cond_0

    const/16 p3, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    if-gt v0, v1, :cond_1

    .line 1211
    :cond_0
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p2, v0

    .end local p2           #dayDistance:I
    const/16 p3, 0x1

    sub-int p2, p2, p3

    move/from16 v0, p2

    move-object/from16 v1, p5

    iput v0, v1, Landroid/text/format/Time;->monthDay:I

    .line 1212
    const/16 p2, 0x1

    move-object/from16 v0, p5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 1215
    :cond_1
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 v21, v0

    .line 1216
    .local v21, startDay:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->month:I

    move/from16 v22, v0

    .line 1217
    .local v22, startMonthNum:I
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 v26, v0

    .line 1219
    .local v26, startYear:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->monthDay:I

    move/from16 p7, v0

    .line 1220
    .local p7, endDay:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->month:I

    move v6, v0

    .line 1221
    .local v6, endMonthNum:I
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->year:I

    move v9, v0

    .line 1223
    .local v9, endYear:I
    const-string p3, ""

    .line 1224
    .local p3, startWeekDayString:Ljava/lang/String;
    const-string p2, ""

    .line 1225
    .local p2, endWeekDayString:Ljava/lang/String;
    if-eqz v18, :cond_5b

    .line 1226
    const-string p2, ""

    .line 1227
    .local p2, weekDayFormat:Ljava/lang/String;
    if-eqz v5, :cond_11

    .line 1228
    const-string p2, "%a"

    .line 1232
    :goto_c
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1233
    if-eqz v10, :cond_12

    move-object/from16 p2, p3

    .local p2, endWeekDayString:Ljava/lang/String;
    :goto_d
    move-object/from16 v8, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .local v8, endWeekDayString:Ljava/lang/String;
    move-object/from16 v25, p3

    .line 1236
    .end local p3           #startWeekDayString:Ljava/lang/String;
    .local v25, startWeekDayString:Ljava/lang/String;
    :goto_e
    const-string p3, ""

    .line 1237
    .local p3, startTimeString:Ljava/lang/String;
    const-string p2, ""

    .line 1238
    .local p2, endTimeString:Ljava/lang/String;
    if-eqz v17, :cond_5a

    .line 1239
    const-string p2, ""

    .line 1240
    .local p2, startTimeFormat:Ljava/lang/String;
    const-string v7, ""

    .line 1241
    .local v7, endTimeFormat:Ljava/lang/String;
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x80

    move/from16 p2, v0

    if-eqz p2, :cond_13

    .end local p2           #startTimeFormat:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 p3, p2

    .line 1242
    .local p3, force24Hour:Z
    :goto_f
    and-int/lit8 p2, p6, 0x40

    if-eqz p2, :cond_14

    const/16 p2, 0x1

    .line 1244
    .local p2, force12Hour:Z
    :goto_10
    if-eqz p3, :cond_15

    .line 1245
    const/16 p0, 0x1

    .line 1251
    .local p0, use24Hour:Z
    :goto_11
    if-eqz p0, :cond_17

    .line 1252
    const p0, 0x1040074

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #use24Hour:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1323
    .end local v5           #abbrevWeekDay:Z
    .end local p3           #force24Hour:Z
    .local p2, startTimeFormat:Ljava/lang/String;
    :goto_12
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1324
    .local p2, startTimeString:Ljava/lang/String;
    if-eqz v10, :cond_2b

    move-object/from16 p0, p2

    .local p0, endTimeString:Ljava/lang/String;
    :goto_13
    move-object/from16 p4, p0

    .end local p0           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v11, p2

    .line 1331
    .end local p2           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    :goto_14
    if-eqz v19, :cond_2c

    move/from16 v5, v19

    .line 1348
    .end local v19           #showYear:Z
    .local v5, showYear:I
    :goto_15
    if-eqz v15, :cond_30

    .line 1349
    const p0, 0x1040079

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .line 1380
    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    :goto_16
    if-eqz v18, :cond_39

    .line 1381
    if-eqz v17, :cond_38

    .line 1382
    const p0, 0x1040092

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .line 1394
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :goto_17
    if-eqz v12, :cond_3b

    move/from16 v0, v22

    move v1, v6

    if-ne v0, v1, :cond_3b

    .line 1396
    const-string p0, "%s"

    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #endTimeString:Ljava/lang/String;
    const/16 p5, 0x0

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    .end local p5           #endDate:Landroid/text/format/Time;
    move-result-object p2

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    aput-object p2, p4, p5

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .line 1532
    .end local v4           #abbrevMonth:Z
    .end local v9           #endYear:I
    .end local v12           #noMonthDay:Z
    .end local p1
    .end local p3           #fullFormat:Ljava/lang/String;
    .end local p6
    .end local p7           #endDay:I
    .restart local p0       #fullFormat:Ljava/lang/String;
    :goto_18
    return-object p1

    .line 1150
    .end local v5           #showYear:I
    .end local v6           #endMonthNum:I
    .end local v8           #endWeekDayString:Ljava/lang/String;
    .end local v10           #isInstant:Z
    .end local v11           #startTimeString:Ljava/lang/String;
    .end local v14           #noYear:Z
    .end local v15           #numericDate:Z
    .end local v17           #showTime:Z
    .end local v18           #showWeekDay:Z
    .end local v20           #startDate:Landroid/text/format/Time;
    .end local v21           #startDay:I
    .end local v22           #startMonthNum:I
    .end local v25           #startWeekDayString:Ljava/lang/String;
    .end local v26           #startYear:I
    .local p0, context:Landroid/content/Context;
    .restart local p1
    .local p2, startMillis:J
    .local p4, endMillis:J
    .restart local p6
    .local p7, timeZone:Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    move/from16 v17, v4

    goto/16 :goto_0

    .line 1151
    .restart local v17       #showTime:Z
    :cond_3
    const/4 v4, 0x0

    move/from16 v18, v4

    goto/16 :goto_1

    .line 1152
    .restart local v18       #showWeekDay:Z
    :cond_4
    const/4 v4, 0x0

    move/from16 v19, v4

    goto/16 :goto_2

    .line 1153
    .restart local v19       #showYear:Z
    :cond_5
    const/4 v4, 0x0

    move v14, v4

    goto/16 :goto_3

    .line 1154
    .restart local v14       #noYear:Z
    :cond_6
    const/4 v4, 0x0

    move v7, v4

    goto/16 :goto_4

    .line 1155
    .local v7, useUTC:Z
    :cond_7
    const/4 v4, 0x0

    move v5, v4

    goto/16 :goto_5

    .line 1156
    .local v5, abbrevWeekDay:Z
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_6

    .line 1157
    .restart local v4       #abbrevMonth:Z
    :cond_9
    const/4 v6, 0x0

    move v12, v6

    goto/16 :goto_7

    .line 1158
    .restart local v12       #noMonthDay:Z
    :cond_a
    const/4 v6, 0x0

    move v15, v6

    goto/16 :goto_8

    .line 1163
    .restart local v15       #numericDate:Z
    :cond_b
    const/4 v6, 0x0

    move v10, v6

    goto/16 :goto_9

    .line 1168
    .restart local v10       #isInstant:Z
    :cond_c
    if-eqz v7, :cond_d

    .line 1169
    new-instance v6, Landroid/text/format/Time;

    const-string v8, "UTC"

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, startDate:Landroid/text/format/Time;
    move-object/from16 v20, v6

    .end local v6           #startDate:Landroid/text/format/Time;
    .restart local v20       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1171
    .end local v20           #startDate:Landroid/text/format/Time;
    :cond_d
    new-instance v6, Landroid/text/format/Time;

    invoke-direct {v6}, Landroid/text/format/Time;-><init>()V

    .restart local v6       #startDate:Landroid/text/format/Time;
    move-object/from16 v20, v6

    .end local v6           #startDate:Landroid/text/format/Time;
    .restart local v20       #startDate:Landroid/text/format/Time;
    goto/16 :goto_a

    .line 1181
    :cond_e
    if-eqz p7, :cond_f

    .line 1182
    new-instance v6, Landroid/text/format/Time;

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local v6, endDate:Landroid/text/format/Time;
    move-object/from16 p7, v6

    .line 1188
    .end local v6           #endDate:Landroid/text/format/Time;
    .local p7, endDate:Landroid/text/format/Time;
    :goto_19
    move-object/from16 v0, p7

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 1189
    move-object/from16 v0, v20

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    move-wide/from16 v0, p2

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p3

    .line 1190
    .end local p2           #startMillis:J
    .local p3, startJulianDay:I
    move-object/from16 v0, p7

    iget-wide v0, v0, Landroid/text/format/Time;->gmtoff:J

    move-wide v6, v0

    move-wide/from16 v0, p4

    move-wide v2, v6

    invoke-static {v0, v1, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result p2

    .line 1191
    .local p2, endJulianDay:I
    sub-int p2, p2, p3

    .local p2, dayDistance:I
    move-object/from16 p5, p7

    .end local p4           #endMillis:J
    .end local p7           #endDate:Landroid/text/format/Time;
    .restart local p5       #endDate:Landroid/text/format/Time;
    goto/16 :goto_b

    .line 1183
    .end local p3           #startJulianDay:I
    .end local p5           #endDate:Landroid/text/format/Time;
    .local p2, startMillis:J
    .restart local p4       #endMillis:J
    .local p7, timeZone:Ljava/lang/String;
    :cond_f
    if-eqz v7, :cond_10

    .line 1184
    new-instance p7, Landroid/text/format/Time;

    .end local p7           #timeZone:Ljava/lang/String;
    const-string v6, "UTC"

    move-object/from16 v0, p7

    move-object v1, v6

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .local p7, endDate:Landroid/text/format/Time;
    goto :goto_19

    .line 1186
    .local p7, timeZone:Ljava/lang/String;
    :cond_10
    new-instance p7, Landroid/text/format/Time;

    .end local p7           #timeZone:Ljava/lang/String;
    invoke-direct/range {p7 .. p7}, Landroid/text/format/Time;-><init>()V

    .local p7, endDate:Landroid/text/format/Time;
    goto :goto_19

    .line 1230
    .end local p4           #endMillis:J
    .local v6, endMonthNum:I
    .restart local v9       #endYear:I
    .restart local v21       #startDay:I
    .restart local v22       #startMonthNum:I
    .restart local v26       #startYear:I
    .local p2, weekDayFormat:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    .restart local p5       #endDate:Landroid/text/format/Time;
    .local p7, endDay:I
    :cond_11
    const-string p2, "%A"

    goto/16 :goto_c

    .line 1233
    :cond_12
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto/16 :goto_d

    .line 1241
    .end local p2           #weekDayFormat:Ljava/lang/String;
    .local v7, endTimeFormat:Ljava/lang/String;
    .restart local v8       #endWeekDayString:Ljava/lang/String;
    .restart local v25       #startWeekDayString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_13
    const/16 p2, 0x0

    move/from16 p3, p2

    goto/16 :goto_f

    .line 1242
    .local p3, force24Hour:Z
    :cond_14
    const/16 p2, 0x0

    goto/16 :goto_10

    .line 1246
    .local p2, force12Hour:Z
    :cond_15
    if-eqz p2, :cond_16

    .line 1247
    const/16 p0, 0x0

    .local p0, use24Hour:Z
    goto/16 :goto_11

    .line 1249
    .local p0, context:Landroid/content/Context;
    :cond_16
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    .local p0, use24Hour:Z
    goto/16 :goto_11

    .line 1255
    :cond_17
    const p0, 0x84000

    and-int p0, p0, p6

    if-eqz p0, :cond_19

    .end local p0           #use24Hour:Z
    const/16 p0, 0x1

    .line 1256
    .local p0, abbrevTime:Z
    :goto_1a
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x100

    move/from16 p2, v0

    if-eqz p2, :cond_1a

    .end local p2           #force12Hour:Z
    const/16 p2, 0x1

    .line 1257
    .local p2, capAMPM:Z
    :goto_1b
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x200

    move/from16 p3, v0

    if-eqz p3, :cond_1b

    .end local p3           #force24Hour:Z
    const/16 p3, 0x1

    move/from16 v13, p3

    .line 1258
    .local v13, noNoon:Z
    :goto_1c
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x400

    move/from16 p3, v0

    if-eqz p3, :cond_1c

    const/16 p3, 0x1

    move/from16 p4, p3

    .line 1259
    .local p4, capNoon:Z
    :goto_1d
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x800

    move/from16 p3, v0

    if-eqz p3, :cond_1d

    const/16 p3, 0x1

    move/from16 v11, p3

    .line 1260
    .local v11, noMidnight:Z
    :goto_1e
    move/from16 v0, p6

    and-int/lit16 v0, v0, 0x1000

    move/from16 p3, v0

    if-eqz p3, :cond_1e

    const/16 p3, 0x1

    .line 1262
    .local p3, capMidnight:Z
    :goto_1f
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    .end local v5           #abbrevWeekDay:Z
    if-nez v5, :cond_1f

    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_1f

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 1263
    .local v23, startOnTheHour:Z
    :goto_20
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->minute:I

    move v5, v0

    if-nez v5, :cond_20

    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->second:I

    move v5, v0

    if-nez v5, :cond_20

    const/4 v5, 0x1

    .line 1264
    .local v5, endOnTheHour:Z
    :goto_21
    if-eqz p0, :cond_22

    if-eqz v23, :cond_22

    .line 1265
    if-eqz p2, :cond_21

    .line 1266
    const v24, 0x104034b

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 1282
    .local v24, startTimeFormat:Ljava/lang/String;
    :goto_22
    if-nez v10, :cond_59

    .line 1283
    if-eqz p0, :cond_25

    if-eqz v5, :cond_25

    .line 1284
    if-eqz p2, :cond_24

    .line 1285
    const p0, 0x104034b

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .line 1297
    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    :goto_23
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    .end local p2           #capAMPM:Z
    const/16 v7, 0xc

    move/from16 v0, p2

    move v1, v7

    if-ne v0, v1, :cond_28

    if-eqz v5, :cond_28

    if-nez v13, :cond_28

    .line 1298
    if-eqz p4, :cond_27

    .line 1299
    const p0, 0x104037e

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .line 1312
    .restart local p0       #endTimeFormat:Ljava/lang/String;
    :cond_18
    :goto_24
    move-object/from16 v0, v20

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    const/16 p3, 0xc

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_58

    .end local p3           #capMidnight:Z
    if-eqz v23, :cond_58

    if-nez v13, :cond_58

    .line 1313
    if-eqz p4, :cond_2a

    .line 1314
    const p2, 0x104037e

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local v24           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .line 1255
    .end local v11           #noMidnight:Z
    .end local v13           #noNoon:Z
    .end local v23           #startOnTheHour:Z
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p4           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .restart local v7       #endTimeFormat:Ljava/lang/String;
    .local p2, force12Hour:Z
    .local p3, force24Hour:Z
    :cond_19
    const/16 p0, 0x0

    goto/16 :goto_1a

    .line 1256
    .end local p2           #force12Hour:Z
    .local p0, abbrevTime:Z
    :cond_1a
    const/16 p2, 0x0

    goto/16 :goto_1b

    .line 1257
    .end local p3           #force24Hour:Z
    .local p2, capAMPM:Z
    :cond_1b
    const/16 p3, 0x0

    move/from16 v13, p3

    goto/16 :goto_1c

    .line 1258
    .restart local v13       #noNoon:Z
    :cond_1c
    const/16 p3, 0x0

    move/from16 p4, p3

    goto/16 :goto_1d

    .line 1259
    .restart local p4       #capNoon:Z
    :cond_1d
    const/16 p3, 0x0

    move/from16 v11, p3

    goto/16 :goto_1e

    .line 1260
    .restart local v11       #noMidnight:Z
    :cond_1e
    const/16 p3, 0x0

    goto/16 :goto_1f

    .line 1262
    .end local v5           #abbrevWeekDay:Z
    .local p3, capMidnight:Z
    :cond_1f
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_20

    .line 1263
    .restart local v23       #startOnTheHour:Z
    :cond_20
    const/4 v5, 0x0

    goto/16 :goto_21

    .line 1268
    .local v5, endOnTheHour:Z
    :cond_21
    const v24, 0x104034a

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_22

    .line 1271
    .end local v24           #startTimeFormat:Ljava/lang/String;
    :cond_22
    if-eqz p2, :cond_23

    .line 1272
    const v24, 0x1040076

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_22

    .line 1274
    .end local v24           #startTimeFormat:Ljava/lang/String;
    :cond_23
    const v24, 0x1040075

    move-object/from16 v0, v16

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    .restart local v24       #startTimeFormat:Ljava/lang/String;
    goto/16 :goto_22

    .line 1287
    :cond_24
    const p0, 0x104034a

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1290
    .restart local v7       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_25
    if-eqz p2, :cond_26

    .line 1291
    const p0, 0x1040076

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1293
    .restart local v7       #endTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    :cond_26
    const p0, 0x1040075

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #abbrevTime:Z
    move-result-object p0

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_23

    .line 1301
    .end local p2           #capAMPM:Z
    :cond_27
    const p0, 0x104037d

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1303
    :cond_28
    move-object/from16 v0, p5

    iget v0, v0, Landroid/text/format/Time;->hour:I

    move/from16 p2, v0

    if-nez p2, :cond_18

    if-eqz v5, :cond_18

    if-nez v11, :cond_18

    .line 1304
    if-eqz p3, :cond_29

    .line 1305
    const p0, 0x1040380

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1307
    :cond_29
    const p0, 0x104037f

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #endTimeFormat:Ljava/lang/String;
    move-result-object p0

    .restart local p0       #endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .line 1316
    .end local p3           #capMidnight:Z
    :cond_2a
    const p2, 0x104037d

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .end local v24           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .line 1324
    .end local v5           #endOnTheHour:Z
    .end local v11           #noMidnight:Z
    .end local v13           #noNoon:Z
    .end local v23           #startOnTheHour:Z
    .end local p4           #capNoon:Z
    .local p2, startTimeString:Ljava/lang/String;
    :cond_2b
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_13

    .line 1335
    .end local p0           #endTimeFormat:Ljava/lang/String;
    .end local p2           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    :cond_2c
    if-eqz v14, :cond_2d

    .line 1337
    const/16 p0, 0x0

    .end local v19           #showYear:Z
    .local p0, showYear:Z
    move/from16 v5, p0

    .local v5, showYear:I
    goto/16 :goto_15

    .line 1338
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v19       #showYear:Z
    :cond_2d
    move/from16 v0, v26

    move v1, v9

    if-eq v0, v1, :cond_2e

    .line 1339
    const/16 p0, 0x1

    .end local v19           #showYear:Z
    .restart local p0       #showYear:Z
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_15

    .line 1342
    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v19       #showYear:Z
    :cond_2e
    new-instance p0, Landroid/text/format/Time;

    invoke-direct/range {p0 .. p0}, Landroid/text/format/Time;-><init>()V

    .line 1343
    .local p0, currentTime:Landroid/text/format/Time;
    invoke-virtual/range {p0 .. p0}, Landroid/text/format/Time;->setToNow()V

    .line 1344
    move-object/from16 v0, p0

    iget v0, v0, Landroid/text/format/Time;->year:I

    move/from16 p0, v0

    .end local p0           #currentTime:Landroid/text/format/Time;
    move/from16 v0, v26

    move/from16 v1, p0

    if-eq v0, v1, :cond_2f

    const/16 p0, 0x1

    .end local v19           #showYear:Z
    .local p0, showYear:Z
    :goto_25
    move/from16 v5, p0

    .restart local v5       #showYear:I
    goto/16 :goto_15

    .end local v5           #showYear:I
    .end local p0           #showYear:Z
    .restart local v19       #showYear:Z
    :cond_2f
    const/16 p0, 0x0

    goto :goto_25

    .line 1350
    .end local v19           #showYear:Z
    .restart local v5       #showYear:I
    :cond_30
    if-eqz v5, :cond_34

    .line 1351
    if-eqz v4, :cond_32

    .line 1352
    if-eqz v12, :cond_31

    .line 1353
    const p0, 0x1040087

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1355
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_31
    const p0, 0x1040081

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1358
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_32
    if-eqz v12, :cond_33

    .line 1359
    const p0, 0x1040084

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1361
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_33
    const p0, 0x104007c

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1365
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_34
    if-eqz v4, :cond_36

    .line 1366
    if-eqz v12, :cond_35

    .line 1367
    const p0, 0x1040086

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1369
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_35
    const p0, 0x1040085

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1372
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_36
    if-eqz v12, :cond_37

    .line 1373
    const p0, 0x1040083

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1375
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    :cond_37
    const p0, 0x1040082

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #defaultDateFormat:Ljava/lang/String;
    move-object/from16 p2, p0

    .end local p0           #defaultDateFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    goto/16 :goto_16

    .line 1384
    :cond_38
    const p0, 0x1040093

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1387
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_39
    if-eqz v17, :cond_3a

    .line 1388
    const p0, 0x1040094

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1390
    .end local p3           #fullFormat:Ljava/lang/String;
    :cond_3a
    const p0, 0x1040089

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .restart local p0       #fullFormat:Ljava/lang/String;
    move-object/from16 p3, p0

    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    goto/16 :goto_17

    .line 1399
    :cond_3b
    move/from16 v0, v26

    move v1, v9

    if-ne v0, v1, :cond_3c

    if-eqz v12, :cond_3d

    .line 1403
    :cond_3c
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 1404
    .local p6, startDateString:Ljava/lang/String;
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1408
    .local p0, endDateString:Ljava/lang/String;
    const/16 p2, 0x6

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object v25, p2, p5

    .end local p5           #endDate:Landroid/text/format/Time;
    const/16 p5, 0x1

    aput-object p6, p2, p5

    const/16 p5, 0x2

    aput-object v11, p2, p5

    const/16 p5, 0x3

    aput-object v8, p2, p5

    const/16 p5, 0x4

    aput-object p0, p2, p5

    const/16 p0, 0x5

    aput-object p4, p2, p0

    .end local p0           #endDateString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1415
    .end local p0           #fullFormat:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #endDate:Landroid/text/format/Time;
    .local p6, flags:I
    :cond_3d
    if-eqz v15, :cond_42

    .line 1416
    const-string p0, "%m"

    .line 1423
    .local p0, monthFormat:Ljava/lang/String;
    :goto_26
    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1424
    .local v7, startMonthString:Ljava/lang/String;
    const-string p3, "%-d"

    .end local p3           #fullFormat:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1425
    .local v4, startMonthDayString:Ljava/lang/String;
    const-string p3, "%Y"

    move-object/from16 v0, v20

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1427
    .local v9, startYearString:Ljava/lang/String;
    if-eqz v10, :cond_44

    const/16 p0, 0x0

    move-object/from16 p3, p0

    .line 1428
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :goto_27
    if-eqz v10, :cond_45

    const/16 p0, 0x0

    .line 1429
    .local p0, endMonthDayString:Ljava/lang/String;
    :goto_28
    if-eqz v10, :cond_46

    const/16 p5, 0x0

    .line 1431
    .end local v12           #noMonthDay:Z
    .local p5, endYearString:Ljava/lang/String;
    :goto_29
    move/from16 v0, v22

    move v1, v6

    if-eq v0, v1, :cond_47

    .line 1437
    const/16 p2, 0x0

    .line 1438
    .local p2, index:I
    if-eqz v18, :cond_3e

    const/16 p2, 0x1

    .line 1439
    :cond_3e
    if-eqz v5, :cond_3f

    add-int/lit8 p2, p2, 0x2

    .line 1440
    :cond_3f
    if-eqz v17, :cond_40

    add-int/lit8 p2, p2, 0x4

    .line 1441
    :cond_40
    if-eqz v15, :cond_41

    add-int/lit8 p2, p2, 0x8

    .line 1442
    :cond_41
    sget-object p6, Landroid/text/format/DateUtils;->sameYearTable:[I

    .end local p6           #flags:I
    aget p2, p6, p2

    .line 1443
    .local p2, resId:I
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1447
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-object v25, p6, p7

    .end local p7           #endDay:I
    const/16 p7, 0x1

    aput-object v7, p6, p7

    const/16 p7, 0x2

    aput-object v4, p6, p7

    const/16 p7, 0x3

    aput-object v9, p6, p7

    const/16 p7, 0x4

    aput-object v11, p6, p7

    const/16 p7, 0x5

    aput-object v8, p6, p7

    const/16 p7, 0x6

    aput-object p3, p6, p7

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1417
    .end local v7           #startMonthString:Ljava/lang/String;
    .end local p0           #fullFormat:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v9, endYear:I
    .restart local v12       #noMonthDay:Z
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    .local p5, endDate:Landroid/text/format/Time;
    .restart local p6       #flags:I
    .restart local p7       #endDay:I
    :cond_42
    if-eqz v4, :cond_43

    .line 1418
    const p0, 0x10400a8

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .local p0, monthFormat:Ljava/lang/String;
    goto/16 :goto_26

    .line 1421
    .end local p0           #monthFormat:Ljava/lang/String;
    :cond_43
    const-string p0, "%B"

    .restart local p0       #monthFormat:Ljava/lang/String;
    goto/16 :goto_26

    .line 1427
    .end local p3           #fullFormat:Ljava/lang/String;
    .local v4, startMonthDayString:Ljava/lang/String;
    .restart local v7       #startMonthString:Ljava/lang/String;
    .local v9, startYearString:Ljava/lang/String;
    :cond_44
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    move-object/from16 p3, p0

    goto/16 :goto_27

    .line 1428
    .end local p0           #monthFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    :cond_45
    const-string p0, "%-d"

    move-object/from16 v0, p5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_28

    .line 1429
    .local p0, endMonthDayString:Ljava/lang/String;
    :cond_46
    const-string v12, "%Y"

    .end local v12           #noMonthDay:Z
    move-object/from16 v0, p5

    move-object v1, v12

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    goto/16 :goto_29

    .line 1454
    .local p5, endYearString:Ljava/lang/String;
    :cond_47
    move/from16 v0, v21

    move/from16 v1, p7

    if-eq v0, v1, :cond_4c

    .line 1456
    const/16 p2, 0x0

    .line 1457
    .local p2, index:I
    if-eqz v18, :cond_48

    const/16 p2, 0x1

    .line 1458
    :cond_48
    if-eqz v5, :cond_49

    add-int/lit8 p2, p2, 0x2

    .line 1459
    :cond_49
    if-eqz v17, :cond_4a

    add-int/lit8 p2, p2, 0x4

    .line 1460
    :cond_4a
    if-eqz v15, :cond_4b

    add-int/lit8 p2, p2, 0x8

    .line 1461
    :cond_4b
    sget-object p6, Landroid/text/format/DateUtils;->sameMonthTable:[I

    .end local p6           #flags:I
    aget p2, p6, p2

    .line 1462
    .local p2, resId:I
    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1466
    .local p2, fullFormat:Ljava/lang/String;
    const/16 p6, 0xa

    move/from16 v0, p6

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p6, v0

    const/16 p7, 0x0

    aput-object v25, p6, p7

    .end local p7           #endDay:I
    const/16 p7, 0x1

    aput-object v7, p6, p7

    const/16 p7, 0x2

    aput-object v4, p6, p7

    const/16 p7, 0x3

    aput-object v9, p6, p7

    const/16 p7, 0x4

    aput-object v11, p6, p7

    const/16 p7, 0x5

    aput-object v8, p6, p7

    const/16 p7, 0x6

    aput-object p3, p6, p7

    const/16 p3, 0x7

    aput-object p0, p6, p3

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p0, 0x8

    aput-object p5, p6, p0

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x9

    aput-object p4, p6, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1474
    .local p0, endMonthDayString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #endMonthString:Ljava/lang/String;
    .restart local p6       #flags:I
    .restart local p7       #endDay:I
    :cond_4c
    and-int/lit8 p0, p6, 0x10

    if-eqz p0, :cond_4d

    .end local p0           #endMonthDayString:Ljava/lang/String;
    const/16 p0, 0x1

    .line 1477
    .local p0, showDate:Z
    :goto_2a
    if-nez v17, :cond_57

    if-nez p0, :cond_57

    if-nez v18, :cond_57

    const/16 p0, 0x1

    move/from16 p5, p0

    .line 1480
    .end local p0           #showDate:Z
    .local p5, showDate:I
    :goto_2b
    const-string p0, ""

    .line 1481
    .local p0, timeString:Ljava/lang/String;
    if-eqz v17, :cond_56

    .line 1484
    if-eqz v10, :cond_4e

    .line 1487
    move-object/from16 p0, v11

    move-object/from16 p4, p0

    .line 1497
    .end local p0           #timeString:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .end local p6           #flags:I
    .local p4, timeString:Ljava/lang/String;
    :goto_2c
    const-string p3, ""

    .line 1498
    .local p3, fullFormat:Ljava/lang/String;
    const-string p0, ""

    .line 1499
    .local p0, dateString:Ljava/lang/String;
    if-eqz p5, :cond_52

    .line 1500
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->format(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1501
    if-eqz v18, :cond_50

    .line 1502
    if-eqz v17, :cond_4f

    .line 1504
    const p2, 0x1040095

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .line 1532
    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    :goto_2d
    const/16 p3, 0x3

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    const/16 p5, 0x0

    aput-object p4, p3, p5

    .end local p5           #showDate:I
    const/16 p4, 0x1

    aput-object v25, p3, p4

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p4, 0x2

    aput-object p0, p3, p4

    invoke-virtual/range {p1 .. p3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p2

    .end local p2           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1474
    .end local p0           #fullFormat:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_4d
    const/16 p0, 0x0

    goto :goto_2a

    .line 1490
    .local p0, timeString:Ljava/lang/String;
    .local p5, showDate:I
    :cond_4e
    const p0, 0x1040088

    move-object/from16 v0, v16

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p0           #timeString:Ljava/lang/String;
    move-result-object p0

    .line 1492
    .local p0, timeFormat:Ljava/lang/String;
    const/16 p3, 0x2

    move/from16 v0, p3

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p3, v0

    .end local p3           #endMonthString:Ljava/lang/String;
    const/16 p6, 0x0

    aput-object v11, p3, p6

    .end local p6           #flags:I
    const/16 p6, 0x1

    aput-object p4, p3, p6

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, timeString:Ljava/lang/String;
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto :goto_2c

    .line 1507
    .local p0, dateString:Ljava/lang/String;
    .local p3, fullFormat:Ljava/lang/String;
    :cond_4f
    const p2, 0x1040096

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_2d

    .line 1510
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_50
    if-eqz v17, :cond_51

    .line 1512
    const p2, 0x1040080

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto :goto_2d

    .line 1515
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_51
    const-string p2, "%s"

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p4, v0

    .end local p4           #timeString:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p0, p4, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    .end local p0           #dateString:Ljava/lang/String;
    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1518
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_52
    if-eqz v18, :cond_54

    .line 1519
    if-eqz v17, :cond_53

    .line 1521
    const p2, 0x1040097

    move-object/from16 v0, v16

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    move-result-object p2

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_2d

    .line 1524
    .local p2, defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    :cond_53
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p4, 0x0

    aput-object v25, p2, p4

    .end local p4           #timeString:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .line 1526
    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p4       #timeString:Ljava/lang/String;
    :cond_54
    if-eqz v17, :cond_55

    .line 1527
    const-string p0, "%s"

    .end local p0           #dateString:Ljava/lang/String;
    const/16 p2, 0x1

    move/from16 v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 p2, v0

    .end local p2           #defaultDateFormat:Ljava/lang/String;
    const/16 p5, 0x0

    aput-object p4, p2, p5

    .end local p5           #showDate:I
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    move-result-object p0

    move-object/from16 p1, p0

    move-object/from16 p0, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p0, fullFormat:Ljava/lang/String;
    goto/16 :goto_18

    .local p0, dateString:Ljava/lang/String;
    .restart local p2       #defaultDateFormat:Ljava/lang/String;
    .restart local p3       #fullFormat:Ljava/lang/String;
    .restart local p5       #showDate:I
    :cond_55
    move-object/from16 p2, p3

    .end local p3           #fullFormat:Ljava/lang/String;
    .local p2, fullFormat:Ljava/lang/String;
    goto/16 :goto_2d

    .local p0, timeString:Ljava/lang/String;
    .local p2, defaultDateFormat:Ljava/lang/String;
    .local p3, endMonthString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    .restart local p6       #flags:I
    :cond_56
    move-object/from16 p4, p0

    .end local p0           #timeString:Ljava/lang/String;
    .local p4, timeString:Ljava/lang/String;
    goto/16 :goto_2c

    .local p0, showDate:Z
    .local p4, endTimeString:Ljava/lang/String;
    .local p5, endYearString:Ljava/lang/String;
    :cond_57
    move/from16 p5, p0

    .local p5, showDate:I
    goto/16 :goto_2b

    .end local v7           #startMonthString:Ljava/lang/String;
    .end local p2           #defaultDateFormat:Ljava/lang/String;
    .end local p3           #endMonthString:Ljava/lang/String;
    .local v4, abbrevMonth:Z
    .local v5, endOnTheHour:Z
    .local v9, endYear:I
    .local v11, noMidnight:Z
    .restart local v12       #noMonthDay:Z
    .restart local v13       #noNoon:Z
    .restart local v19       #showYear:Z
    .restart local v23       #startOnTheHour:Z
    .restart local v24       #startTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    .local p4, capNoon:Z
    .local p5, endDate:Landroid/text/format/Time;
    :cond_58
    move-object/from16 p2, v24

    .end local v24           #startTimeFormat:Ljava/lang/String;
    .local p2, startTimeFormat:Ljava/lang/String;
    goto/16 :goto_12

    .local v7, endTimeFormat:Ljava/lang/String;
    .restart local v24       #startTimeFormat:Ljava/lang/String;
    .local p0, abbrevTime:Z
    .local p2, capAMPM:Z
    .local p3, capMidnight:Z
    :cond_59
    move-object/from16 p0, v7

    .end local v7           #endTimeFormat:Ljava/lang/String;
    .local p0, endTimeFormat:Ljava/lang/String;
    goto/16 :goto_24

    .end local v11           #noMidnight:Z
    .end local v13           #noNoon:Z
    .end local v23           #startOnTheHour:Z
    .end local v24           #startTimeFormat:Ljava/lang/String;
    .end local p4           #capNoon:Z
    .local v5, abbrevWeekDay:Z
    .local v7, useUTC:Z
    .local p0, context:Landroid/content/Context;
    .local p2, endTimeString:Ljava/lang/String;
    .local p3, startTimeString:Ljava/lang/String;
    :cond_5a
    move-object/from16 p4, p2

    .end local p2           #endTimeString:Ljava/lang/String;
    .local p4, endTimeString:Ljava/lang/String;
    move-object/from16 v11, p3

    .end local p3           #startTimeString:Ljava/lang/String;
    .local v11, startTimeString:Ljava/lang/String;
    goto/16 :goto_14

    .end local v8           #endWeekDayString:Ljava/lang/String;
    .end local v11           #startTimeString:Ljava/lang/String;
    .end local v25           #startWeekDayString:Ljava/lang/String;
    .end local p4           #endTimeString:Ljava/lang/String;
    .local p2, endWeekDayString:Ljava/lang/String;
    .local p3, startWeekDayString:Ljava/lang/String;
    :cond_5b
    move-object/from16 v8, p2

    .end local p2           #endWeekDayString:Ljava/lang/String;
    .restart local v8       #endWeekDayString:Ljava/lang/String;
    move-object/from16 v25, p3

    .end local p3           #startWeekDayString:Ljava/lang/String;
    .restart local v25       #startWeekDayString:Ljava/lang/String;
    goto/16 :goto_e
.end method

.method public static formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "millis"
    .parameter "flags"

    .prologue
    .line 1578
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(J)Ljava/lang/String;
    .locals 1
    .parameter "elapsedSeconds"

    .prologue
    .line 654
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;
    .locals 14
    .parameter "recycle"
    .parameter "elapsedSeconds"

    .prologue
    .line 665
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 667
    const-wide/16 v2, 0x0

    .line 668
    .local v2, hours:J
    const-wide/16 v4, 0x0

    .line 669
    .local v4, minutes:J
    const-wide/16 v6, 0x0

    .line 671
    .local v6, seconds:J
    const-wide/16 v0, 0xe10

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 672
    const-wide/16 v0, 0xe10

    div-long v2, p1, v0

    .line 673
    const-wide/16 v0, 0xe10

    mul-long/2addr v0, v2

    sub-long/2addr p1, v0

    .line 675
    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    .line 676
    const-wide/16 v0, 0x3c

    div-long v4, p1, v0

    .line 677
    const-wide/16 v0, 0x3c

    mul-long/2addr v0, v4

    sub-long/2addr p1, v0

    .line 679
    :cond_1
    move-wide v6, p1

    .line 682
    const-wide/16 p1, 0x0

    cmp-long p1, v2, p1

    if-lez p1, :cond_2

    .line 683
    .end local p1
    sget-object v1, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;

    move-result-object p0

    .line 685
    .end local p0
    :goto_0
    return-object p0

    .restart local p0
    :cond_2
    sget-object v9, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    move-object v8, p0

    move-wide v10, v4

    move-wide v12, v6

    invoke-static/range {v8 .. v13}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJ)Ljava/lang/String;
    .locals 7
    .parameter "recycle"
    .parameter "format"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 727
    const-string v1, "%1$02d:%2$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 728
    move-object v0, p0

    .line 729
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 730
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 734
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    cmp-long v1, p2, v3

    if-gez v1, :cond_1

    .line 735
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 739
    :goto_1
    rem-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 740
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 741
    cmp-long v1, p4, v3

    if-gez v1, :cond_2

    .line 742
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    :goto_2
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 747
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 749
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 732
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 737
    :cond_1
    div-long v1, p2, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 744
    :cond_2
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 749
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method private static formatElapsedTime(Ljava/lang/StringBuilder;Ljava/lang/String;JJJ)Ljava/lang/String;
    .locals 8
    .parameter "recycle"
    .parameter "format"
    .parameter "hours"
    .parameter "minutes"
    .parameter "seconds"

    .prologue
    const/16 v7, 0x3a

    const/16 v6, 0x30

    const/4 v5, 0x0

    const-wide/16 v3, 0xa

    .line 694
    const-string v1, "%1$d:%2$02d:%3$02d"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 695
    move-object v0, p0

    .line 696
    .local v0, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_0

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #sb:Ljava/lang/StringBuilder;
    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 701
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 702
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 703
    cmp-long v1, p4, v3

    if-gez v1, :cond_1

    .line 704
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 708
    :goto_1
    rem-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 709
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 710
    cmp-long v1, p6, v3

    if-gez v1, :cond_2

    .line 711
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 715
    :goto_2
    rem-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 718
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :goto_3
    return-object v1

    .line 699
    .restart local v0       #sb:Ljava/lang/StringBuilder;
    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0

    .line 706
    :cond_1
    div-long v1, p4, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 713
    :cond_2
    div-long v1, p6, v3

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->toDigitChar(J)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 718
    .end local v0           #sb:Ljava/lang/StringBuilder;
    :cond_3
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_3
.end method

.method public static final formatSameDayTime(JJII)Ljava/lang/CharSequence;
    .locals 8
    .parameter "then"
    .parameter "now"
    .parameter "dateStyle"
    .parameter "timeStyle"

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 776
    new-instance v2, Ljava/util/GregorianCalendar;

    invoke-direct {v2}, Ljava/util/GregorianCalendar;-><init>()V

    .line 777
    .local v2, thenCal:Ljava/util/Calendar;
    invoke-virtual {v2, p0, p1}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 778
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 779
    .local v3, thenDate:Ljava/util/Date;
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 780
    .local v1, nowCal:Ljava/util/Calendar;
    invoke-virtual {v1, p2, p3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 784
    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v7}, Ljava/util/Calendar;->get(I)I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 787
    invoke-static {p5}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .line 791
    .local v0, f:Ljava/text/DateFormat;
    :goto_0
    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 789
    .end local v0           #f:Ljava/text/DateFormat;
    :cond_0
    invoke-static {p4}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    .restart local v0       #f:Ljava/text/DateFormat;
    goto :goto_0
.end method

.method public static getAMPMString(I)Ljava/lang/String;
    .locals 3
    .parameter "ampm"

    .prologue
    .line 335
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 336
    .local v0, r:Landroid/content/res/Resources;
    sget-object v1, Landroid/text/format/DateUtils;->sAmPm:[I

    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDayOfWeekString(II)Ljava/lang/String;
    .locals 3
    .parameter "dayOfWeek"
    .parameter "abbrev"

    .prologue
    .line 315
    sparse-switch p1, :sswitch_data_0

    .line 321
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .line 324
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 325
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x1

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 316
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sDaysLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 317
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sDaysMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 318
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 319
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShort:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 320
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sDaysShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 315
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 355
    sparse-switch p1, :sswitch_data_0

    .line 361
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 364
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 365
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 356
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsLong:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 357
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 358
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 359
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 360
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 355
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getRelativeDateTimeString(Landroid/content/Context;JJJI)Ljava/lang/CharSequence;
    .locals 12
    .parameter "c"
    .parameter "time"
    .parameter "minResolution"
    .parameter "transitionResolution"
    .parameter "flags"

    .prologue
    .line 554
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v10

    .line 556
    .local v10, r:Landroid/content/res/Resources;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 557
    .local v8, now:J
    sub-long v0, v8, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    .line 562
    .local v6, duration:J
    const-wide/32 v0, 0x240c8400

    cmp-long v0, p5, v0

    if-lez v0, :cond_1

    .line 563
    const-wide/32 p5, 0x240c8400

    .line 568
    :cond_0
    :goto_0
    const/4 v5, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v11

    .line 571
    .local v11, timeClause:Ljava/lang/CharSequence;
    cmp-long p5, v6, p5

    if-gez p5, :cond_2

    .end local p5
    move-wide v0, p1

    move-wide v2, v8

    move-wide v4, p3

    move/from16 v6, p7

    .line 572
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    .end local v6           #duration:J
    move-result-object p0

    .line 573
    .local p0, relativeClause:Ljava/lang/CharSequence;
    const p1, 0x104037c

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    .end local p3
    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #relativeClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 579
    .local p0, result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 564
    .end local v11           #timeClause:Ljava/lang/CharSequence;
    .restart local v6       #duration:J
    .local p0, c:Landroid/content/Context;
    .restart local p1
    .restart local p3
    .restart local p5
    :cond_1
    const-wide/32 v0, 0x5265c00

    cmp-long v0, p5, v0

    if-gez v0, :cond_0

    .line 565
    const-wide/32 p5, 0x5265c00

    goto :goto_0

    .line 575
    .end local p5
    .restart local v11       #timeClause:Ljava/lang/CharSequence;
    :cond_2
    const/4 p3, 0x0

    invoke-static {p0, p1, p2, p3}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    .end local p3
    move-result-object p0

    .line 576
    .local p0, dateClause:Ljava/lang/CharSequence;
    const p1, 0x104007f

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    .end local p1
    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object v11, p2, p0

    .end local p0           #dateClause:Ljava/lang/CharSequence;
    invoke-virtual {v10, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .local p0, result:Ljava/lang/String;
    goto :goto_1
.end method

.method private static final getRelativeDayString(Landroid/content/res/Resources;JJ)Ljava/lang/String;
    .locals 4
    .parameter "r"
    .parameter "day"
    .parameter "today"

    .prologue
    .line 593
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 594
    .local v1, startTime:Landroid/text/format/Time;
    invoke-virtual {v1, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 595
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    .line 596
    .local v0, currentTime:Landroid/text/format/Time;
    invoke-virtual {v0, p3, p4}, Landroid/text/format/Time;->set(J)V

    .line 598
    iget-wide v1, v1, Landroid/text/format/Time;->gmtoff:J

    .end local v1           #startTime:Landroid/text/format/Time;
    invoke-static {p1, p2, v1, v2}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v1

    .line 599
    .local v1, startDay:I
    iget-wide v2, v0, Landroid/text/format/Time;->gmtoff:J

    invoke-static {p3, p4, v2, v3}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v0

    .line 601
    .local v0, currentDay:I
    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    .end local v0           #currentDay:I
    move-result v0

    .line 602
    .local v0, days:I
    cmp-long p1, p3, p1

    if-lez p1, :cond_0

    .end local p1
    const/4 p1, 0x1

    .line 604
    .local p1, past:Z
    :goto_0
    const/4 p2, 0x1

    if-ne v0, p2, :cond_2

    .line 605
    if-eqz p1, :cond_1

    .line 606
    const p1, 0x1040071

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    .line 622
    .end local p0
    .end local p3
    :goto_1
    return-object p0

    .line 602
    .restart local p0
    .restart local p3
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 608
    .restart local p1       #past:Z
    :cond_1
    const p1, 0x1040073

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_1

    .line 610
    .restart local p1       #past:Z
    :cond_2
    if-nez v0, :cond_3

    .line 611
    const p1, 0x1040072

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .end local p1           #past:Z
    move-result-object p0

    goto :goto_1

    .line 615
    .restart local p1       #past:Z
    :cond_3
    if-eqz p1, :cond_4

    .line 616
    const p1, 0x10f0004

    .line 621
    .local p1, resId:I
    :goto_2
    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p0

    .line 622
    .local p0, format:Ljava/lang/String;
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    .end local p1           #resId:I
    const/4 p2, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    aput-object p3, p1, p2

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 618
    .local p0, r:Landroid/content/res/Resources;
    .local p1, past:Z
    .restart local p3
    :cond_4
    const p1, 0x10f0008

    .local p1, resId:I
    goto :goto_2
.end method

.method public static getRelativeTimeSpanString(J)Ljava/lang/CharSequence;
    .locals 6
    .parameter "startTime"

    .prologue
    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    move-wide v0, p0

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJ)Ljava/lang/CharSequence;
    .locals 7
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"

    .prologue
    .line 425
    const v6, 0x10014

    .local v6, flags:I
    move-wide v0, p0

    move-wide v2, p2

    move-wide v4, p4

    .line 426
    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;
    .locals 6
    .parameter "time"
    .parameter "now"
    .parameter "minResolution"
    .parameter "flags"

    .prologue
    .line 451
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    .line 452
    .local v2, r:Landroid/content/res/Resources;
    const/high16 v0, 0xc

    and-int/2addr v0, p6

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 454
    .local v0, abbrevRelative:Z
    :goto_0
    cmp-long v1, p2, p0

    if-ltz v1, :cond_1

    const/4 v1, 0x1

    .line 455
    .local v1, past:Z
    :goto_1
    sub-long/2addr p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    .end local p2
    move-result-wide p2

    .line 459
    .local p2, duration:J
    const-wide/32 v3, 0xea60

    cmp-long v3, p2, v3

    if-gez v3, :cond_5

    const-wide/32 v3, 0xea60

    cmp-long v3, p4, v3

    if-gez v3, :cond_5

    .line 460
    const-wide/16 p0, 0x3e8

    div-long p0, p2, p0

    .line 461
    .local p0, count:J
    if-eqz v1, :cond_3

    .line 462
    if-eqz v0, :cond_2

    .line 463
    const p2, 0x10f0009

    .line 525
    .end local p4
    .local p2, resId:I
    :goto_2
    long-to-int p3, p0

    invoke-virtual {v2, p2, p3}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object p2

    .line 526
    .local p2, format:Ljava/lang/String;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    const/4 p4, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    .end local p0           #count:J
    aput-object p0, p3, p4

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .end local v0           #abbrevRelative:Z
    .end local v1           #past:Z
    .end local p2           #format:Ljava/lang/String;
    :goto_3
    return-object p0

    .line 452
    .local p0, time:J
    .local p2, now:J
    .restart local p4
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 454
    .restart local v0       #abbrevRelative:Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 465
    .restart local v1       #past:Z
    .local p0, count:J
    .local p2, duration:J
    :cond_2
    const/high16 p2, 0x10f

    .local p2, resId:I
    goto :goto_2

    .line 468
    .local p2, duration:J
    :cond_3
    if-eqz v0, :cond_4

    .line 469
    const p2, 0x10f000d

    .local p2, resId:I
    goto :goto_2

    .line 471
    .local p2, duration:J
    :cond_4
    const p2, 0x10f0005

    .local p2, resId:I
    goto :goto_2

    .line 474
    .local p0, time:J
    .local p2, duration:J
    :cond_5
    const-wide/32 v3, 0x36ee80

    cmp-long v3, p2, v3

    if-gez v3, :cond_9

    const-wide/32 v3, 0x36ee80

    cmp-long v3, p4, v3

    if-gez v3, :cond_9

    .line 475
    const-wide/32 p0, 0xea60

    div-long p0, p2, p0

    .line 476
    .local p0, count:J
    if-eqz v1, :cond_7

    .line 477
    if-eqz v0, :cond_6

    .line 478
    const p2, 0x10f000a

    .local p2, resId:I
    goto :goto_2

    .line 480
    .local p2, duration:J
    :cond_6
    const p2, 0x10f0001

    .local p2, resId:I
    goto :goto_2

    .line 483
    .local p2, duration:J
    :cond_7
    if-eqz v0, :cond_8

    .line 484
    const p2, 0x10f000e

    .local p2, resId:I
    goto :goto_2

    .line 486
    .local p2, duration:J
    :cond_8
    const p2, 0x10f0006

    .local p2, resId:I
    goto :goto_2

    .line 489
    .local p0, time:J
    .local p2, duration:J
    :cond_9
    const-wide/32 v3, 0x5265c00

    cmp-long v3, p2, v3

    if-gez v3, :cond_d

    const-wide/32 v3, 0x5265c00

    cmp-long v3, p4, v3

    if-gez v3, :cond_d

    .line 490
    const-wide/32 p0, 0x36ee80

    div-long p0, p2, p0

    .line 491
    .local p0, count:J
    if-eqz v1, :cond_b

    .line 492
    if-eqz v0, :cond_a

    .line 493
    const p2, 0x10f000b

    .local p2, resId:I
    goto :goto_2

    .line 495
    .local p2, duration:J
    :cond_a
    const p2, 0x10f0002

    .local p2, resId:I
    goto :goto_2

    .line 498
    .local p2, duration:J
    :cond_b
    if-eqz v0, :cond_c

    .line 499
    const p2, 0x10f000f

    .local p2, resId:I
    goto :goto_2

    .line 501
    .local p2, duration:J
    :cond_c
    const p2, 0x10f0007

    .local p2, resId:I
    goto :goto_2

    .line 504
    .local p0, time:J
    .local p2, duration:J
    :cond_d
    const-wide/32 v3, 0x240c8400

    cmp-long v3, p2, v3

    if-gez v3, :cond_11

    const-wide/32 v3, 0x240c8400

    cmp-long p4, p4, v3

    if-gez p4, :cond_11

    .line 505
    .end local p4
    const-wide/32 p0, 0x5265c00

    div-long p0, p2, p0

    .line 506
    .local p0, count:J
    if-eqz v1, :cond_f

    .line 507
    if-eqz v0, :cond_e

    .line 508
    const p2, 0x10f000c

    .local p2, resId:I
    goto/16 :goto_2

    .line 510
    .local p2, duration:J
    :cond_e
    const p2, 0x10f0004

    .local p2, resId:I
    goto/16 :goto_2

    .line 513
    .local p2, duration:J
    :cond_f
    if-eqz v0, :cond_10

    .line 514
    const p2, 0x10f0010

    .local p2, resId:I
    goto/16 :goto_2

    .line 516
    .local p2, duration:J
    :cond_10
    const p2, 0x10f0008

    .local p2, resId:I
    goto/16 :goto_2

    .line 522
    .local p0, time:J
    .local p2, duration:J
    :cond_11
    const/4 v0, 0x0

    move-wide v1, p0

    move-wide v3, p0

    move v5, p6

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    .end local v0           #abbrevRelative:Z
    .end local v1           #past:Z
    move-result-object p0

    goto/16 :goto_3
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;J)Ljava/lang/CharSequence;
    .locals 1
    .parameter "c"
    .parameter "millis"

    .prologue
    .line 1644
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static getRelativeTimeSpanString(Landroid/content/Context;JZ)Ljava/lang/CharSequence;
    .locals 6
    .parameter "c"
    .parameter "millis"
    .parameter "withPreposition"

    .prologue
    .line 1598
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1599
    .local v0, now:J
    sub-long v2, v0, p1

    .line 1601
    .local v2, span:J
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    if-nez v4, :cond_0

    .line 1602
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    .line 1603
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    sput-object v4, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .line 1606
    :cond_0
    sget-object v4, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    invoke-virtual {v4, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 1607
    sget-object v0, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    .end local v0           #now:J
    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 1611
    const-wide/32 v0, 0x5265c00

    cmp-long v0, v2, v0

    if-gez v0, :cond_1

    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->weekDay:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->weekDay:I

    if-ne v0, v1, :cond_1

    .line 1613
    const/4 v5, 0x1

    .local v5, flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1614
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1615
    .end local p1
    .local p2, result:Ljava/lang/String;
    const p1, 0x104036e

    .line 1629
    .local p1, prepositionId:I
    :goto_0
    if-eqz p3, :cond_3

    .line 1630
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 1631
    .local p0, res:Landroid/content/res/Resources;
    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/Object;

    .end local p3
    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-virtual {p0, p1, p3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1633
    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    :goto_1
    return-object p0

    .line 1616
    .end local v5           #flags:I
    .local p0, c:Landroid/content/Context;
    .local p1, millis:J
    .restart local p3
    :cond_1
    sget-object v0, Landroid/text/format/DateUtils;->sNowTime:Landroid/text/format/Time;

    iget v0, v0, Landroid/text/format/Time;->year:I

    sget-object v1, Landroid/text/format/DateUtils;->sThenTime:Landroid/text/format/Time;

    iget v1, v1, Landroid/text/format/Time;->year:I

    if-eq v0, v1, :cond_2

    .line 1618
    const v5, 0x20014

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1619
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1622
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x104036d

    .line 1623
    .local p1, prepositionId:I
    goto :goto_0

    .line 1625
    .end local v5           #flags:I
    .end local p2           #result:Ljava/lang/String;
    .local p1, millis:J
    :cond_2
    const v5, 0x10010

    .restart local v5       #flags:I
    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p1

    .line 1626
    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object p2

    .line 1627
    .end local p1           #millis:J
    .restart local p2       #result:Ljava/lang/String;
    const p1, 0x104036d

    .local p1, prepositionId:I
    goto :goto_0

    :cond_3
    move-object p0, p2

    .end local p2           #result:Ljava/lang/String;
    .local p0, result:Ljava/lang/String;
    goto :goto_1
.end method

.method public static getStandaloneMonthString(II)Ljava/lang/String;
    .locals 3
    .parameter "month"
    .parameter "abbrev"

    .prologue
    .line 388
    sparse-switch p1, :sswitch_data_0

    .line 395
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .line 398
    .local v0, list:[I
    :goto_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 399
    .local v1, r:Landroid/content/res/Resources;
    const/4 v2, 0x0

    sub-int v2, p0, v2

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 389
    .end local v0           #list:[I
    .end local v1           #r:Landroid/content/res/Resources;
    :sswitch_0
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsStandaloneLong:[I

    .line 390
    .restart local v0       #list:[I
    goto :goto_0

    .line 391
    .end local v0           #list:[I
    :sswitch_1
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 392
    .end local v0           #list:[I
    :sswitch_2
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 393
    .end local v0           #list:[I
    :sswitch_3
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsMedium:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 394
    .end local v0           #list:[I
    :sswitch_4
    sget-object v0, Landroid/text/format/DateUtils;->sMonthsShortest:[I

    .restart local v0       #list:[I
    goto :goto_0

    .line 388
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_0
        0x14 -> :sswitch_1
        0x1e -> :sswitch_2
        0x28 -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch
.end method

.method private static initFormatStrings()V
    .locals 4

    .prologue
    .line 626
    sget-object v2, Landroid/text/format/DateUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 627
    :try_start_0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .line 628
    .local v1, r:Landroid/content/res/Resources;
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 629
    .local v0, cfg:Landroid/content/res/Configuration;
    sget-object v3, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    if-eqz v3, :cond_0

    sget-object v3, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    invoke-virtual {v3, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 630
    :cond_0
    sput-object v0, Landroid/text/format/DateUtils;->sLastConfig:Landroid/content/res/Configuration;

    .line 631
    const/4 v3, 0x3

    invoke-static {v3}, Ljava/text/DateFormat;->getTimeInstance(I)Ljava/text/DateFormat;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    .line 632
    const v3, 0x1040381

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sElapsedFormatMMSS:Ljava/lang/String;

    .line 633
    const v3, 0x1040382

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Landroid/text/format/DateUtils;->sElapsedFormatHMMSS:Ljava/lang/String;

    .line 635
    :cond_1
    monitor-exit v2

    .line 636
    return-void

    .line 635
    .end local v0           #cfg:Landroid/content/res/Configuration;
    .end local v1           #r:Landroid/content/res/Resources;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static isToday(J)Z
    .locals 6
    .parameter "when"

    .prologue
    .line 810
    new-instance v3, Landroid/text/format/Time;

    invoke-direct {v3}, Landroid/text/format/Time;-><init>()V

    .line 811
    .local v3, time:Landroid/text/format/Time;
    invoke-virtual {v3, p0, p1}, Landroid/text/format/Time;->set(J)V

    .line 813
    iget v2, v3, Landroid/text/format/Time;->year:I

    .line 814
    .local v2, thenYear:I
    iget v0, v3, Landroid/text/format/Time;->month:I

    .line 815
    .local v0, thenMonth:I
    iget v1, v3, Landroid/text/format/Time;->monthDay:I

    .line 817
    .local v1, thenMonthDay:I
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/text/format/Time;->set(J)V

    .line 818
    iget v4, v3, Landroid/text/format/Time;->year:I

    if-ne v2, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->month:I

    if-ne v0, v4, :cond_0

    iget v4, v3, Landroid/text/format/Time;->monthDay:I

    if-ne v1, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isUTC(Ljava/lang/String;)Z
    .locals 4
    .parameter "s"

    .prologue
    const/16 v3, 0x5a

    const/4 v2, 0x1

    .line 830
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_0

    move v0, v2

    .line 837
    :goto_0
    return v0

    .line 833
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_1

    move v0, v2

    .line 835
    goto :goto_0

    .line 837
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newCalendar(Z)Ljava/util/Calendar;
    .locals 1
    .parameter "zulu"

    .prologue
    .line 800
    if-eqz p0, :cond_0

    .line 801
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 803
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    goto :goto_0
.end method

.method public static final timeString(J)Ljava/lang/CharSequence;
    .locals 2
    .parameter "millis"

    .prologue
    .line 644
    invoke-static {}, Landroid/text/format/DateUtils;->initFormatStrings()V

    .line 645
    sget-object v0, Landroid/text/format/DateUtils;->sStatusTimeFormat:Ljava/text/DateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static toDigitChar(J)C
    .locals 2
    .parameter "digit"

    .prologue
    .line 754
    const-wide/16 v0, 0x30

    add-long/2addr v0, p0

    long-to-int v0, v0

    int-to-char v0, v0

    return v0
.end method

.method public static writeDateTime(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .parameter "cal"

    .prologue
    .line 851
    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .line 852
    .local v1, tz:Ljava/util/TimeZone;
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0, v1}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    .line 853
    .local v0, c:Ljava/util/GregorianCalendar;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/GregorianCalendar;->setTimeInMillis(J)V

    .line 854
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 8
    .parameter "cal"
    .parameter "sb"

    .prologue
    const/16 v7, 0xc

    const/16 v6, 0xb

    const/4 v5, 0x5

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 894
    invoke-virtual {p0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 895
    .local v0, n:I
    const/4 v1, 0x3

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 896
    div-int/lit8 v0, v0, 0xa

    .line 897
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v4, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 898
    div-int/lit8 v0, v0, 0xa

    .line 899
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v3, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 900
    div-int/lit8 v0, v0, 0xa

    .line 901
    const/4 v1, 0x0

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 903
    invoke-virtual {p0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 904
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 905
    div-int/lit8 v0, v0, 0xa

    .line 906
    const/4 v1, 0x4

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 908
    invoke-virtual {p0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 909
    const/4 v1, 0x7

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 910
    div-int/lit8 v0, v0, 0xa

    .line 911
    const/4 v1, 0x6

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 913
    const/16 v1, 0x8

    const/16 v2, 0x54

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 915
    invoke-virtual {p0, v6}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 916
    const/16 v1, 0xa

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 917
    div-int/lit8 v0, v0, 0xa

    .line 918
    const/16 v1, 0x9

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 920
    invoke-virtual {p0, v7}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 921
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v7, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 922
    div-int/lit8 v0, v0, 0xa

    .line 923
    rem-int/lit8 v1, v0, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {p1, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 925
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    .line 926
    const/16 v1, 0xe

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 927
    div-int/lit8 v0, v0, 0xa

    .line 928
    const/16 v1, 0xd

    rem-int/lit8 v2, v0, 0xa

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 930
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static writeDateTime(Ljava/util/Calendar;Z)Ljava/lang/String;
    .locals 3
    .parameter "cal"
    .parameter "zulu"

    .prologue
    const/16 v1, 0x10

    const/16 v2, 0xf

    .line 869
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    .local v0, sb:Ljava/lang/StringBuilder;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->ensureCapacity(I)V

    .line 871
    if-eqz p1, :cond_0

    .line 872
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 873
    const/16 v1, 0x5a

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 877
    :goto_0
    invoke-static {p0, v0}, Landroid/text/format/DateUtils;->writeDateTime(Ljava/util/Calendar;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 875
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_0
.end method
