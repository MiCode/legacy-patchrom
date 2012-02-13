.class public Lcom/android/providers/calendar/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/calendar/Utils$lunarInfo;,
        Lcom/android/providers/calendar/Utils$lunarDateInfo;
    }
.end annotation


# static fields
.field private static final CLEAR_ALPHA_MASK:I = 0xffffff

.field private static final DEBUG:Z = false

.field private static final HIGH_ALPHA:I = -0x1000000

.field private static final LOW_ALPHA:I = -0x6a000000

.field private static final LUNAR_END_YEAR:I = 0x834

.field private static final LUNAR_START_YEAR:I = 0x76d

.field private static final MED_ALPHA:I = -0x4c000000

.field private static final TAG:Ljava/lang/String; = "CalendarUtils"

.field private static final gLunarFestivalInfo:[I

.field private static final gLunarMonth:[B

.field private static final gLunarMonthDay:[I

.field private static final gSolarTermOffsetInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/16 v0, 0xc8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/providers/calendar/Utils;->gLunarMonthDay:[I

    .line 114
    const/16 v0, 0x64

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/providers/calendar/Utils;->gLunarMonth:[B

    .line 139
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/providers/calendar/Utils;->gLunarFestivalInfo:[I

    .line 152
    const/16 v0, 0x18

    new-array v0, v0, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/providers/calendar/Utils;->gSolarTermOffsetInfo:[I

    return-void

    .line 88
    nop

    :array_0
    .array-data 0x4
        0xe0t 0x4at 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x68t 0x52t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0xa8t 0x6at 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x9at 0x0t 0x0t
        0xe8t 0x4at 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xd8t 0xa4t 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x28t 0xd5t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xd6t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0xb8t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x58t 0xb2t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0xa8t 0xadt 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0x78t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x48t 0x6dt 0x0t 0x0t
        0xd0t 0x5at 0x0t 0x0t
        0x60t 0x2bt 0x0t 0x0t
        0x70t 0x93t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0x68t 0xc9t 0x0t 0x0t
        0x50t 0xc9t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd8t 0xaat 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0x58t 0xc9t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa8t 0xb4t 0x0t 0x0t
        0xa0t 0x6ct 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0xa8t 0x55t 0x0t 0x0t
        0xa0t 0x4dt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0xb8t 0x52t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0x50t 0xe9t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0x50t 0xabt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x60t 0x52t 0x0t 0x0t
        0x30t 0xe9t 0x0t 0x0t
        0x50t 0xd9t 0x0t 0x0t
        0xa8t 0x5at 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xe8t 0x4at 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x68t 0xd2t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x28t 0xd5t 0x0t 0x0t
        0x40t 0xb5t 0x0t 0x0t
        0xa0t 0xb6t 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xb0t 0x95t 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0xb8t 0xa4t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x58t 0xb2t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x40t 0x6dt 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0x70t 0x95t 0x0t 0x0t
        0x78t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0x28t 0x6bt 0x0t 0x0t
        0xc0t 0x5at 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0x68t 0x93t 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0xa8t 0xd4t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0xa8t 0x5at 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd8t 0xaat 0x0t 0x0t
        0xd0t 0x25t 0x0t 0x0t
        0xd0t 0x92t 0x0t 0x0t
        0x58t 0xc9t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa8t 0x55t 0x0t 0x0t
        0xa0t 0x4bt 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0xb8t 0x52t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x30t 0xa9t 0x0t 0x0t
        0xa8t 0x74t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa8t 0x4dt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0xe0t 0xa4t 0x0t 0x0t
        0x60t 0xd2t 0x0t 0x0t
        0x30t 0xe9t 0x0t 0x0t
        0x30t 0xd5t 0x0t 0x0t
        0xa0t 0x5at 0x0t 0x0t
        0x50t 0x6bt 0x0t 0x0t
        0xd0t 0x96t 0x0t 0x0t
        0xe8t 0x4at 0x0t 0x0t
        0xd0t 0x4at 0x0t 0x0t
        0xd0t 0xa4t 0x0t 0x0t
        0x58t 0xd2t 0x0t 0x0t
        0x50t 0xd2t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0xa0t 0xdat 0x0t 0x0t
        0xa0t 0xb5t 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xd8t 0x4at 0x0t 0x0t
        0xb0t 0x49t 0x0t 0x0t
        0xb8t 0xa4t 0x0t 0x0t
        0xb0t 0xa4t 0x0t 0x0t
        0x50t 0xaat 0x0t 0x0t
        0x28t 0xb5t 0x0t 0x0t
        0x20t 0x6dt 0x0t 0x0t
        0xa0t 0xadt 0x0t 0x0t
        0xb0t 0x55t 0x0t 0x0t
        0x70t 0x93t 0x0t 0x0t
        0x78t 0x49t 0x0t 0x0t
        0x70t 0x49t 0x0t 0x0t
        0xb0t 0x64t 0x0t 0x0t
        0x50t 0x6at 0x0t 0x0t
        0x50t 0xeat 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x60t 0xabt 0x0t 0x0t
        0xe0t 0xaat 0x0t 0x0t
        0xe0t 0x92t 0x0t 0x0t
        0x70t 0xc9t 0x0t 0x0t
        0x60t 0xc9t 0x0t 0x0t
        0xa8t 0xd4t 0x0t 0x0t
        0xa0t 0xd4t 0x0t 0x0t
        0x50t 0xdat 0x0t 0x0t
        0xa8t 0x5at 0x0t 0x0t
        0xa0t 0x56t 0x0t 0x0t
        0xd0t 0xa6t 0x0t 0x0t
        0xe8t 0x52t 0x0t 0x0t
        0xd0t 0x52t 0x0t 0x0t
        0x58t 0xa9t 0x0t 0x0t
        0x50t 0xa9t 0x0t 0x0t
        0xa0t 0xb4t 0x0t 0x0t
        0x50t 0xb5t 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa0t 0x55t 0x0t 0x0t
        0xd0t 0xa5t 0x0t 0x0t
        0xb0t 0xa5t 0x0t 0x0t
        0xb0t 0x52t 0x0t 0x0t
        0x38t 0xa9t 0x0t 0x0t
        0x30t 0x69t 0x0t 0x0t
        0x98t 0x72t 0x0t 0x0t
        0xa0t 0x6at 0x0t 0x0t
        0x50t 0xadt 0x0t 0x0t
        0xa8t 0x4dt 0x0t 0x0t
        0x60t 0x4bt 0x0t 0x0t
        0x70t 0xa5t 0x0t 0x0t
        0x70t 0x52t 0x0t 0x0t
        0x60t 0xd1t 0x0t 0x0t
        0x30t 0xe9t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
        0xa0t 0xdat 0x0t 0x0t
        0x50t 0x6bt 0x0t 0x0t
        0xd0t 0x56t 0x0t 0x0t
        0xe0t 0x4at 0x0t 0x0t
        0xe8t 0xa4t 0x0t 0x0t
        0xd0t 0xa2t 0x0t 0x0t
        0x50t 0xd1t 0x0t 0x0t
        0x28t 0xd9t 0x0t 0x0t
        0x20t 0xd5t 0x0t 0x0t
    .end array-data

    .line 114
    :array_1
    .array-data 0x1
        0x0t
        0x50t
        0x4t
        0x0t
        0x20t
        0x60t
        0x5t
        0x0t
        0x20t
        0x70t
        0x5t
        0x0t
        0x40t
        0x2t
        0x6t
        0x0t
        0x50t
        0x3t
        0x7t
        0x0t
        0x60t
        0x4t
        0x0t
        0x20t
        0x70t
        0x5t
        0x0t
        0x30t
        0x80t
        0x6t
        0x0t
        0x40t
        0x3t
        0x7t
        0x0t
        0x50t
        0x4t
        0x8t
        0x0t
        0x60t
        0x4t
        0xat
        0x0t
        0x60t
        0x5t
        0x0t
        0x30t
        0x80t
        0x5t
        0x0t
        0x40t
        0x2t
        0x7t
        0x0t
        0x50t
        0x4t
        0x9t
        0x0t
        0x60t
        0x4t
        0x0t
        0x20t
        0x60t
        0x5t
        0x0t
        0x30t
        0xb0t
        0x6t
        0x0t
        0x50t
        0x2t
        0x7t
        0x0t
        0x50t
        0x3t
        0x8t
        0x0t
        0x60t
        0x4t
        0x0t
        0x30t
        0x70t
        0x5t
        0x0t
        0x40t
        0x80t
        0x6t
        0x0t
        0x40t
        0x3t
        0x7t
        0x0t
        0x50t
        0x4t
        0x8t
        0x0t
        0x60t
        0x4t
        0x0t
        0x20t
    .end array-data

    .line 139
    :array_2
    .array-data 0x4
        0x0t 0x1t 0x0t 0x0t
        0x1t 0x1t 0x0t 0x0t
        0xft 0x1t 0x0t 0x0t
        0x5t 0x5t 0x0t 0x0t
        0x7t 0x7t 0x0t 0x0t
        0xft 0x7t 0x0t 0x0t
        0xft 0x8t 0x0t 0x0t
        0x9t 0x9t 0x0t 0x0t
        0x8t 0xct 0x0t 0x0t
        0x17t 0xct 0x0t 0x0t
    .end array-data

    .line 152
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0xd8t 0x52t 0x0t 0x0t
        0xe3t 0xa5t 0x0t 0x0t
        0x5ct 0xf9t 0x0t 0x0t
        0x59t 0x4dt 0x1t 0x0t
        0x6t 0xa2t 0x1t 0x0t
        0x63t 0xf7t 0x1t 0x0t
        0x89t 0x4dt 0x2t 0x0t
        0x5dt 0xa4t 0x2t 0x0t
        0xdft 0xfbt 0x2t 0x0t
        0xd8t 0x53t 0x3t 0x0t
        0x35t 0xact 0x3t 0x0t
        0xaft 0x4t 0x4t 0x0t
        0x25t 0x5dt 0x4t 0x0t
        0x53t 0xb5t 0x4t 0x0t
        0x19t 0xdt 0x5t 0x0t
        0x46t 0x64t 0x5t 0x0t
        0xc6t 0xbat 0x5t 0x0t
        0x87t 0x10t 0x6t 0x0t
        0x8at 0x65t 0x6t 0x0t
        0xdbt 0xb9t 0x6t 0x0t
        0x90t 0xdt 0x7t 0x0t
        0xcct 0x60t 0x7t 0x0t
        0xb6t 0xb3t 0x7t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    return-void
.end method

.method public static FormatToHalfHourInterval(Landroid/text/format/Time;)V
    .locals 1
    .parameter "time"

    .prologue
    .line 532
    iget v0, p0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v0, v0, 0x1e

    if-nez v0, :cond_0

    .line 538
    :goto_0
    return-void

    .line 535
    :cond_0
    iget v0, p0, Landroid/text/format/Time;->minute:I

    add-int/lit8 v0, v0, 0x1e

    iput v0, p0, Landroid/text/format/Time;->minute:I

    .line 536
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/text/format/Time;->normalize(Z)J

    .line 537
    iget v0, p0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v0, v0, 0x1e

    mul-int/lit8 v0, v0, 0x1e

    iput v0, p0, Landroid/text/format/Time;->minute:I

    goto :goto_0
.end method

.method public static days2lunarDate(I)Lcom/android/providers/calendar/Utils$lunarDateInfo;
    .locals 8
    .parameter "days"

    .prologue
    const v7, 0xffff

    const v5, 0x99ff

    const/4 v6, 0x1

    .line 229
    new-instance v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;

    invoke-direct {v1}, Lcom/android/providers/calendar/Utils$lunarDateInfo;-><init>()V

    .line 231
    .local v1, lunarDate:Lcom/android/providers/calendar/Utils$lunarDateInfo;
    move v2, p0

    .line 232
    .local v2, spanDays:I
    const/16 v4, 0x31

    if-ge v2, v4, :cond_1

    .line 234
    const/16 v4, 0x76c

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    .line 235
    const/16 v4, 0x13

    if-ge v2, v4, :cond_0

    .line 237
    const/16 v4, 0xb

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    .line 238
    add-int/lit8 v4, v2, 0xb

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    .line 247
    :goto_0
    iput-boolean v6, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lessSpanFlag:Z

    .line 295
    :goto_1
    return-object v1

    .line 242
    :cond_0
    const/16 v4, 0xc

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    .line 243
    const/16 v4, 0x12

    sub-int v4, v2, v4

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    goto :goto_0

    .line 251
    :cond_1
    add-int/lit8 v2, v2, -0x31

    .line 252
    const/16 v4, 0x76d

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    .line 253
    iput v6, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    .line 254
    iput v6, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    .line 259
    if-le v2, v5, :cond_2

    .line 261
    const/16 v4, 0x7d9

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    .line 262
    sub-int/2addr v2, v5

    .line 266
    :cond_2
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {v4}, Lcom/android/providers/calendar/Utils;->daysInLunarYear(I)I

    move-result v3

    .line 267
    .local v3, tmp:I
    :goto_2
    if-lt v2, v3, :cond_3

    .line 269
    sub-int/2addr v2, v3

    .line 270
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    add-int/lit8 v4, v4, 0x1

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {v4}, Lcom/android/providers/calendar/Utils;->daysInLunarYear(I)I

    move-result v3

    goto :goto_2

    .line 274
    :cond_3
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    iget v5, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {v4, v5}, Lcom/android/providers/calendar/Utils;->daysInLunarMonth(II)I

    move-result v4

    and-int v3, v4, v7

    .line 275
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {v4}, Lcom/android/providers/calendar/Utils;->leapMonthInYear(I)I

    move-result v0

    .line 276
    .local v0, leapMonthInThisYear:I
    :goto_3
    if-lt v2, v3, :cond_4

    .line 278
    sub-int/2addr v2, v3

    .line 279
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    if-ne v4, v0, :cond_6

    .line 282
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    iget v5, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {v4, v5}, Lcom/android/providers/calendar/Utils;->daysInLunarMonth(II)I

    move-result v4

    shr-int/lit8 v3, v4, 0x10

    .line 283
    if-ge v2, v3, :cond_5

    .line 285
    iput-boolean v6, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->leap:Z

    .line 294
    :cond_4
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    add-int/2addr v4, v2

    iput v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    goto :goto_1

    .line 288
    :cond_5
    sub-int/2addr v2, v3

    .line 290
    :cond_6
    iget v4, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    iget v5, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {v4, v5}, Lcom/android/providers/calendar/Utils;->daysInLunarMonth(II)I

    move-result v4

    and-int v3, v4, v7

    goto :goto_3
.end method

.method private static daysInLunarMonth(II)I
    .locals 9
    .parameter "year"
    .parameter "month"

    .prologue
    const/16 v7, 0x76d

    const/4 v8, 0x1

    .line 480
    if-lt p0, v7, :cond_0

    const/16 v6, 0x834

    if-le p0, v6, :cond_1

    .line 481
    :cond_0
    const/16 v6, 0x1e

    .line 506
    :goto_0
    return v6

    .line 483
    :cond_1
    const/4 v0, 0x0

    .line 484
    .local v0, high:I
    const/16 v3, 0x1d

    .line 485
    .local v3, low:I
    const/16 v6, 0x10

    sub-int v1, v6, p1

    .line 487
    .local v1, iBit:I
    invoke-static {p0}, Lcom/android/providers/calendar/Utils;->leapMonthInYear(I)I

    move-result v2

    .line 488
    .local v2, leapMonths:I
    if-lez v2, :cond_2

    if-le p1, v2, :cond_2

    .line 489
    add-int/lit8 v1, v1, -0x1

    .line 491
    :cond_2
    sub-int v5, p0, v7

    .line 492
    .local v5, spanYears:I
    sget-object v6, Lcom/android/providers/calendar/Utils;->gLunarMonthDay:[I

    aget v6, v6, v5

    shl-int v7, v8, v1

    and-int/2addr v6, v7

    if-eqz v6, :cond_3

    .line 493
    add-int/lit8 v3, v3, 0x1

    .line 495
    :cond_3
    if-ne p1, v2, :cond_4

    .line 497
    sget-object v6, Lcom/android/providers/calendar/Utils;->gLunarMonthDay:[I

    aget v6, v6, v5

    sub-int v7, v1, v8

    shl-int v7, v8, v7

    and-int/2addr v6, v7

    if-eqz v6, :cond_5

    .line 498
    const/16 v0, 0x1e

    .line 503
    :cond_4
    :goto_1
    move v4, v0

    .line 504
    .local v4, result:I
    shl-int/lit8 v4, v4, 0x10

    .line 505
    or-int/2addr v4, v3

    move v6, v4

    .line 506
    goto :goto_0

    .line 500
    .end local v4           #result:I
    :cond_5
    const/16 v0, 0x1d

    goto :goto_1
.end method

.method private static daysInLunarYear(I)I
    .locals 4
    .parameter "year"

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, days:I
    const/4 v1, 0x1

    .local v1, i:I
    :goto_0
    const/16 v3, 0xc

    if-gt v1, v3, :cond_0

    .line 468
    invoke-static {p0, v1}, Lcom/android/providers/calendar/Utils;->daysInLunarMonth(II)I

    move-result v2

    .line 469
    .local v2, tmp:I
    shr-int/lit8 v3, v2, 0x10

    add-int/2addr v0, v3

    .line 470
    and-int/lit16 v3, v2, 0xff

    add-int/2addr v0, v3

    .line 466
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 472
    .end local v2           #tmp:I
    :cond_0
    return v0
.end method

.method public static getLunarDateInfo(Landroid/text/format/Time;)Lcom/android/providers/calendar/Utils$lunarDateInfo;
    .locals 9
    .parameter "time"

    .prologue
    const/16 v8, 0x76d

    .line 327
    const-string v2, ""

    .line 328
    .local v2, lunar:Ljava/lang/String;
    iget v5, p0, Landroid/text/format/Time;->year:I

    if-lt v5, v8, :cond_0

    iget v5, p0, Landroid/text/format/Time;->year:I

    const/16 v6, 0x834

    if-le v5, v6, :cond_1

    .line 331
    :cond_0
    const/4 v5, 0x0

    .line 342
    :goto_0
    return-object v5

    .line 334
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 335
    .local v0, calen:Ljava/util/Calendar;
    iget v5, p0, Landroid/text/format/Time;->year:I

    iget v6, p0, Landroid/text/format/Time;->month:I

    iget v7, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v5, v6, v7}, Ljava/util/Calendar;->set(III)V

    .line 337
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 338
    .local v3, spanMills:J
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v0, v8, v5, v6}, Ljava/util/Calendar;->set(III)V

    .line 339
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 340
    const-wide/32 v5, 0x5265c00

    div-long v5, v3, v5

    long-to-int v1, v5

    .line 342
    .local v1, days:I
    invoke-static {v1}, Lcom/android/providers/calendar/Utils;->days2lunarDate(I)Lcom/android/providers/calendar/Utils$lunarDateInfo;

    move-result-object v5

    goto :goto_0
.end method

.method private static leapMonthInYear(I)I
    .locals 4
    .parameter "year"

    .prologue
    const/16 v3, 0x76d

    .line 513
    sub-int v2, p0, v3

    div-int/lit8 v1, v2, 0x2

    .line 514
    .local v1, index:I
    sget-object v2, Lcom/android/providers/calendar/Utils;->gLunarMonth:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .line 517
    const/4 v2, 0x0

    .line 523
    :goto_0
    return v2

    .line 519
    :cond_0
    sget-object v2, Lcom/android/providers/calendar/Utils;->gLunarMonth:[B

    aget-byte v0, v2, v1

    .line 520
    .local v0, flag:B
    sub-int v2, p0, v3

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 521
    and-int/lit16 v2, v0, 0xff

    goto :goto_0

    .line 523
    :cond_1
    shr-int/lit8 v2, v0, 0x4

    and-int/lit8 v2, v2, 0xf

    goto :goto_0
.end method

.method public static lunarDate(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "time"

    .prologue
    const/16 v10, 0x76d

    .line 396
    const-string v2, ""

    .line 397
    .local v2, lunar:Ljava/lang/String;
    iget v7, p1, Landroid/text/format/Time;->year:I

    if-lt v7, v10, :cond_0

    iget v7, p1, Landroid/text/format/Time;->year:I

    const/16 v8, 0x834

    if-le v7, v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 432
    .end local v2           #lunar:Ljava/lang/String;
    .local v3, lunar:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 407
    .end local v3           #lunar:Ljava/lang/String;
    .restart local v2       #lunar:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 408
    .local v0, calen:Ljava/util/Calendar;
    iget v7, p1, Landroid/text/format/Time;->year:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 410
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 411
    .local v5, spanMills:J
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v10, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 412
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 413
    const-wide/32 v7, 0x5265c00

    div-long v7, v5, v7

    long-to-int v1, v7

    .line 424
    .local v1, days:I
    invoke-static {v1}, Lcom/android/providers/calendar/Utils;->days2lunarDate(I)Lcom/android/providers/calendar/Utils$lunarDateInfo;

    move-result-object v4

    .line 428
    .local v4, lunarDate:Lcom/android/providers/calendar/Utils$lunarDateInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarYearName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarMonthName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarMonthdayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 432
    .end local v2           #lunar:Ljava/lang/String;
    .restart local v3       #lunar:Ljava/lang/String;
    goto :goto_0
.end method

.method public static lunarMonth(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "time"

    .prologue
    const/16 v11, 0x76d

    const/4 v10, 0x1

    .line 351
    const-string v2, ""

    .line 352
    .local v2, lunar:Ljava/lang/String;
    iget v7, p1, Landroid/text/format/Time;->year:I

    if-lt v7, v11, :cond_0

    iget v7, p1, Landroid/text/format/Time;->year:I

    const/16 v8, 0x834

    if-le v7, v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 386
    .end local v2           #lunar:Ljava/lang/String;
    .local v3, lunar:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 362
    .end local v3           #lunar:Ljava/lang/String;
    .restart local v2       #lunar:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 363
    .local v0, calen:Ljava/util/Calendar;
    iget v7, p1, Landroid/text/format/Time;->year:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 365
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 366
    .local v5, spanMills:J
    const/4 v7, 0x0

    invoke-virtual {v0, v11, v7, v10}, Ljava/util/Calendar;->set(III)V

    .line 367
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 368
    const-wide/32 v7, 0x5265c00

    div-long v7, v5, v7

    long-to-int v1, v7

    .line 379
    .local v1, days:I
    invoke-static {v1}, Lcom/android/providers/calendar/Utils;->days2lunarDate(I)Lcom/android/providers/calendar/Utils$lunarDateInfo;

    move-result-object v4

    .line 382
    .local v4, lunarDate:Lcom/android/providers/calendar/Utils$lunarDateInfo;
    iget-boolean v7, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lessSpanFlag:Z

    if-ne v7, v10, :cond_2

    .line 383
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarYearName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarMonthName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    move-object v3, v2

    .line 386
    .end local v2           #lunar:Ljava/lang/String;
    .restart local v3       #lunar:Ljava/lang/String;
    goto :goto_0

    .line 385
    .end local v3           #lunar:Ljava/lang/String;
    .restart local v2       #lunar:Ljava/lang/String;
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarYearName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarMonthName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public static lunarMonthAndDay(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "time"

    .prologue
    const/16 v10, 0x76d

    .line 436
    const-string v2, ""

    .line 437
    .local v2, lunar:Ljava/lang/String;
    iget v7, p1, Landroid/text/format/Time;->year:I

    if-lt v7, v10, :cond_0

    iget v7, p1, Landroid/text/format/Time;->year:I

    const/16 v8, 0x834

    if-le v7, v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 458
    .end local v2           #lunar:Ljava/lang/String;
    .local v3, lunar:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 443
    .end local v3           #lunar:Ljava/lang/String;
    .restart local v2       #lunar:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 444
    .local v0, calen:Ljava/util/Calendar;
    iget v7, p1, Landroid/text/format/Time;->year:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 446
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 447
    .local v5, spanMills:J
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v10, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 448
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 449
    const-wide/32 v7, 0x5265c00

    div-long v7, v5, v7

    long-to-int v1, v7

    .line 451
    .local v1, days:I
    invoke-static {v1}, Lcom/android/providers/calendar/Utils;->days2lunarDate(I)Lcom/android/providers/calendar/Utils$lunarDateInfo;

    move-result-object v4

    .line 455
    .local v4, lunarDate:Lcom/android/providers/calendar/Utils$lunarDateInfo;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lMonth:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarMonthName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lDay:I

    invoke-static {p0, v8}, Lcom/android/providers/calendar/Utils;->lunarMonthdayName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 458
    .end local v2           #lunar:Ljava/lang/String;
    .restart local v3       #lunar:Ljava/lang/String;
    goto :goto_0
.end method

.method public static lunarMonthName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "month"

    .prologue
    const/4 v3, 0x1

    .line 184
    if-lt p1, v3, :cond_0

    const/16 v2, 0xc

    if-le p1, v2, :cond_1

    .line 187
    :cond_0
    const-string v2, ""

    .line 197
    :goto_0
    return-object v2

    .line 190
    :cond_1
    sub-int v1, p1, v3

    .line 196
    .local v1, num:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f050003

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 197
    .local v0, lunarMonthArray:[Ljava/lang/String;
    aget-object v2, v0, v1

    goto :goto_0
.end method

.method public static lunarMonthdayName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "monthday"

    .prologue
    .line 206
    const/4 v3, 0x1

    if-lt p1, v3, :cond_0

    const/16 v3, 0x1e

    if-le p1, v3, :cond_1

    .line 209
    :cond_0
    const-string v3, ""

    .line 221
    :goto_0
    return-object v3

    .line 213
    :cond_1
    div-int/lit8 v0, p1, 0xa

    .line 214
    .local v0, index1:I
    const/16 v3, 0xa

    if-ne p1, v3, :cond_3

    .line 215
    const/4 v0, 0x4

    .line 219
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 220
    .local v1, lunarDayPart1Array:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, lunarDayPart2Array:[Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    rem-int/lit8 v4, p1, 0xa

    aget-object v4, v2, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 216
    .end local v1           #lunarDayPart1Array:[Ljava/lang/String;
    .end local v2           #lunarDayPart2Array:[Ljava/lang/String;
    :cond_3
    const/16 v3, 0x14

    if-ne p1, v3, :cond_2

    .line 217
    const/4 v0, 0x5

    goto :goto_1
.end method

.method public static lunarYear(Landroid/content/Context;Landroid/text/format/Time;)Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "time"

    .prologue
    const/16 v10, 0x76d

    .line 300
    const-string v2, ""

    .line 301
    .local v2, lunar:Ljava/lang/String;
    iget v7, p1, Landroid/text/format/Time;->year:I

    if-lt v7, v10, :cond_0

    iget v7, p1, Landroid/text/format/Time;->year:I

    const/16 v8, 0x834

    if-le v7, v8, :cond_1

    :cond_0
    move-object v3, v2

    .line 322
    .end local v2           #lunar:Ljava/lang/String;
    .local v3, lunar:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 311
    .end local v3           #lunar:Ljava/lang/String;
    .restart local v2       #lunar:Ljava/lang/String;
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 312
    .local v0, calen:Ljava/util/Calendar;
    iget v7, p1, Landroid/text/format/Time;->year:I

    iget v8, p1, Landroid/text/format/Time;->month:I

    iget v9, p1, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v0, v7, v8, v9}, Ljava/util/Calendar;->set(III)V

    .line 314
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    .line 315
    .local v5, spanMills:J
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v0, v10, v7, v8}, Ljava/util/Calendar;->set(III)V

    .line 316
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 317
    const-wide/32 v7, 0x5265c00

    div-long v7, v5, v7

    long-to-int v1, v7

    .line 319
    .local v1, days:I
    invoke-static {v1}, Lcom/android/providers/calendar/Utils;->days2lunarDate(I)Lcom/android/providers/calendar/Utils$lunarDateInfo;

    move-result-object v4

    .line 321
    .local v4, lunarDate:Lcom/android/providers/calendar/Utils$lunarDateInfo;
    iget v7, v4, Lcom/android/providers/calendar/Utils$lunarDateInfo;->lYear:I

    invoke-static {p0, v7}, Lcom/android/providers/calendar/Utils;->lunarYearName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 322
    .end local v2           #lunar:Ljava/lang/String;
    .restart local v3       #lunar:Ljava/lang/String;
    goto :goto_0
.end method

.method private static final lunarYearName(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "year"

    .prologue
    .line 167
    const/4 v5, 0x4

    sub-int v1, p1, v5

    .line 168
    .local v1, num:I
    rem-int/lit8 v3, v1, 0xc

    .line 171
    .local v3, temp:I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f05

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, tianganArray:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050001

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 174
    .local v0, dizhiArray:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050002

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 175
    .local v2, shengxiaoArray:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    rem-int/lit8 v6, v1, 0xa

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080014

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method
