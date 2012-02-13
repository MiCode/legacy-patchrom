.class public Landroid/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "TimeUtils"

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 1
    .parameter "amt"
    .parameter "suffix"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    const/16 v0, 0x63

    if-gt p0, v0, :cond_0

    if-eqz p2, :cond_1

    const/4 v0, 0x3

    if-lt p3, v0, :cond_1

    :cond_0
    add-int/lit8 v0, p1, 0x3

    :goto_0
    return v0

    :cond_1
    const/16 v0, 0x9

    if-gt p0, v0, :cond_2

    if-eqz p2, :cond_3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_3

    :cond_2
    add-int/lit8 v0, p1, 0x2

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    if-lez p0, :cond_5

    :cond_4
    add-int/lit8 v0, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 3
    .parameter "time"
    .parameter "now"
    .parameter "pw"

    .prologue
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string v0, "--"

    invoke-virtual {p4, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    sub-long v0, p0, p2

    const/4 v2, 0x0

    invoke-static {v0, v1, p4, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 1
    .parameter "duration"
    .parameter "pw"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 5
    .parameter "duration"
    .parameter "pw"
    .parameter "fieldLen"

    .prologue
    sget-object v1, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {p0, p1, p3}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .local v0, len:I
    new-instance v2, Ljava/lang/String;

    sget-object v3, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    .end local v0           #len:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 4
    .parameter "duration"
    .parameter "builder"

    .prologue
    sget-object v1, Landroid/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p0, p1, v2}, Landroid/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v0

    .local v0, len:I
    sget-object v2, Landroid/util/TimeUtils;->sFormatStr:[C

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3, v0}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    monitor-exit v1

    return-void

    .end local v0           #len:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static formatDurationLocked(JI)I
    .locals 18
    .parameter "duration"
    .parameter "fieldLen"

    .prologue
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    array-length v4, v4

    move v0, v4

    move/from16 v1, p2

    if-ge v0, v1, :cond_0

    move/from16 v0, p2

    new-array v0, v0, [C

    move-object v4, v0

    sput-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    :cond_0
    sget-object v4, Landroid/util/TimeUtils;->sFormatStr:[C

    .local v4, formatStr:[C
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-nez v5, :cond_2

    const/4 v7, 0x0

    .local v7, pos:I
    add-int/lit8 p2, p2, -0x1

    .end local p0
    :goto_0
    move v0, v7

    move/from16 v1, p2

    if-ge v0, v1, :cond_1

    const/16 p0, 0x20

    aput-char p0, v4, v7

    goto :goto_0

    :cond_1
    const/16 p0, 0x30

    aput-char p0, v4, v7

    add-int/lit8 p0, v7, 0x1

    :goto_1
    return p0

    .end local v7           #pos:I
    .restart local p0
    :cond_2
    const-wide/16 v5, 0x0

    cmp-long v5, p0, v5

    if-lez v5, :cond_5

    const/16 v5, 0x2b

    .local v5, prefix:C
    move v8, v5

    .end local v5           #prefix:C
    .local v8, prefix:C
    :goto_2
    const-wide/16 v5, 0x3e8

    rem-long v5, p0, v5

    long-to-int v14, v5

    .local v14, millis:I
    const-wide/16 v5, 0x3e8

    div-long p0, p0, v5

    .end local p0
    move-wide/from16 v0, p0

    long-to-double v0, v0

    move-wide/from16 p0, v0

    invoke-static/range {p0 .. p1}, Ljava/lang/Math;->floor(D)D

    move-result-wide p0

    move-wide/from16 v0, p0

    double-to-int v0, v0

    move v6, v0

    .local v6, seconds:I
    const/4 v5, 0x0

    .local v5, days:I
    const/16 p0, 0x0

    .local p0, hours:I
    const/16 p1, 0x0

    .local p1, minutes:I
    const v7, 0x15180

    if-le v6, v7, :cond_3

    const v5, 0x15180

    div-int v5, v6, v5

    const v7, 0x15180

    mul-int/2addr v7, v5

    sub-int/2addr v6, v7

    :cond_3
    const/16 v7, 0xe10

    if-le v6, v7, :cond_4

    move v0, v6

    div-int/lit16 v0, v0, 0xe10

    move/from16 p0, v0

    move/from16 v0, p0

    mul-int/lit16 v0, v0, 0xe10

    move v7, v0

    sub-int/2addr v6, v7

    :cond_4
    const/16 v7, 0x3c

    if-le v6, v7, :cond_13

    div-int/lit8 p1, v6, 0x3c

    mul-int/lit8 v7, p1, 0x3c

    sub-int/2addr v6, v7

    move v15, v6

    .end local v6           #seconds:I
    .local v15, seconds:I
    :goto_3
    const/4 v7, 0x0

    .restart local v7       #pos:I
    if-eqz p2, :cond_a

    const/4 v6, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v5, v6, v9, v10}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v6

    .local v6, myLen:I
    const/4 v9, 0x1

    if-lez v6, :cond_6

    const/4 v10, 0x1

    :goto_4
    const/4 v11, 0x2

    move/from16 v0, p0

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    if-lez v6, :cond_7

    const/4 v10, 0x1

    :goto_5
    const/4 v11, 0x2

    move/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v11

    invoke-static {v0, v1, v2, v3}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x1

    if-lez v6, :cond_8

    const/4 v10, 0x1

    :goto_6
    const/4 v11, 0x2

    invoke-static {v15, v9, v10, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/2addr v6, v9

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-lez v6, :cond_9

    const/4 v11, 0x3

    :goto_7
    invoke-static {v14, v9, v10, v11}, Landroid/util/TimeUtils;->accumField(IIZI)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    add-int/2addr v6, v9

    :goto_8
    move v0, v6

    move/from16 v1, p2

    if-ge v0, v1, :cond_a

    const/16 v9, 0x20

    aput-char v9, v4, v7

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .end local v5           #days:I
    .end local v6           #myLen:I
    .end local v7           #pos:I
    .end local v8           #prefix:C
    .end local v14           #millis:I
    .end local v15           #seconds:I
    .end local p1           #minutes:I
    .local p0, duration:J
    :cond_5
    const/16 v5, 0x2d

    .local v5, prefix:C
    move-wide/from16 v0, p0

    neg-long v0, v0

    move-wide/from16 p0, v0

    move v8, v5

    .end local v5           #prefix:C
    .restart local v8       #prefix:C
    goto/16 :goto_2

    .local v5, days:I
    .restart local v6       #myLen:I
    .restart local v7       #pos:I
    .restart local v14       #millis:I
    .restart local v15       #seconds:I
    .local p0, hours:I
    .restart local p1       #minutes:I
    :cond_6
    const/4 v10, 0x0

    goto :goto_4

    :cond_7
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    const/4 v10, 0x0

    goto :goto_6

    :cond_9
    const/4 v11, 0x0

    goto :goto_7

    .end local v6           #myLen:I
    :cond_a
    aput-char v8, v4, v7

    add-int/lit8 v7, v7, 0x1

    move/from16 v16, v7

    .local v16, start:I
    if-eqz p2, :cond_b

    const/4 v6, 0x1

    move/from16 v17, v6

    .local v17, zeropad:Z
    :goto_9
    const/16 v6, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/util/TimeUtils;->printField([CICIZI)I

    .end local v8           #prefix:C
    move-result v7

    const/16 v10, 0x68

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_c

    const/4 v5, 0x1

    move v12, v5

    .end local v5           #days:I
    :goto_a
    if-eqz v17, :cond_d

    const/4 v5, 0x2

    move v13, v5

    :goto_b
    move-object v8, v4

    move/from16 v9, p0

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    const/16 v10, 0x6d

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    const/16 p0, 0x1

    move/from16 v12, p0

    .end local p0           #hours:I
    :goto_c
    if-eqz v17, :cond_f

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_d
    move-object v8, v4

    move/from16 v9, p1

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    const/16 v10, 0x73

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_10

    const/16 p0, 0x1

    move/from16 v12, p0

    :goto_e
    if-eqz v17, :cond_11

    const/16 p0, 0x2

    move/from16 v13, p0

    :goto_f
    move-object v8, v4

    move v9, v15

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    const/16 v10, 0x6d

    const/4 v12, 0x1

    if-eqz v17, :cond_12

    move v0, v7

    move/from16 v1, v16

    if-eq v0, v1, :cond_12

    const/16 p0, 0x3

    move/from16 v13, p0

    :goto_10
    move-object v8, v4

    move v9, v14

    move v11, v7

    invoke-static/range {v8 .. v13}, Landroid/util/TimeUtils;->printField([CICIZI)I

    move-result v7

    const/16 p0, 0x73

    aput-char p0, v4, v7

    add-int/lit8 p0, v7, 0x1

    goto/16 :goto_1

    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_b
    const/4 v6, 0x0

    move/from16 v17, v6

    goto :goto_9

    .end local v8           #prefix:C
    .restart local v17       #zeropad:Z
    :cond_c
    const/4 v5, 0x0

    move v12, v5

    goto :goto_a

    .end local v5           #days:I
    :cond_d
    const/4 v5, 0x0

    move v13, v5

    goto :goto_b

    :cond_e
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_c

    .end local p0           #hours:I
    :cond_f
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_d

    :cond_10
    const/16 p0, 0x0

    move/from16 v12, p0

    goto :goto_e

    :cond_11
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_f

    :cond_12
    const/16 p0, 0x0

    move/from16 v13, p0

    goto :goto_10

    .end local v7           #pos:I
    .end local v15           #seconds:I
    .end local v16           #start:I
    .end local v17           #zeropad:Z
    .restart local v5       #days:I
    .local v6, seconds:I
    .restart local v8       #prefix:C
    .restart local p0       #hours:I
    :cond_13
    move v15, v6

    .end local v6           #seconds:I
    .restart local v15       #seconds:I
    goto/16 :goto_3
.end method

.method public static getTimeZone(IZJLjava/lang/String;)Ljava/util/TimeZone;
    .locals 9
    .parameter "offset"
    .parameter "dst"
    .parameter "when"
    .parameter "country"

    .prologue
    if-nez p4, :cond_0

    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    .local v0, best:Ljava/util/TimeZone;
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x10b000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v7

    .local v7, parser:Landroid/content/res/XmlResourceParser;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, p2, p3}, Ljava/util/Date;-><init>(J)V

    .local v6, d:Ljava/util/Date;
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .local v2, current:Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v4

    .local v4, currentName:Ljava/lang/String;
    invoke-virtual {v2, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v5

    .local v5, currentOffset:I
    invoke-virtual {v2, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z

    move-result v3

    .local v3, currentDst:Z
    :try_start_0
    const-string v1, "timezones"

    .end local v1           #r:Landroid/content/res/Resources;
    invoke-static {v7, v1}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    :cond_1
    :goto_1
    invoke-static {v7}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, element:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v8, "timezone"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .end local v1           #element:Ljava/lang/String;
    if-nez v1, :cond_3

    :cond_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v0

    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    goto :goto_0

    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    :cond_3
    const/4 v1, 0x0

    :try_start_1
    const-string v8, "code"

    invoke-interface {v7, v1, v8}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, code:Ljava/lang/String;
    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .end local v1           #code:Ljava/lang/String;
    if-eqz v1, :cond_1

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v8, 0x4

    if-ne v1, v8, :cond_1

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->getText()Ljava/lang/String;

    move-result-object v1

    .local v1, maybe:Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v8

    if-eqz v8, :cond_4

    if-ne v5, p0, :cond_4

    if-ne v3, p1, :cond_4

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    move-object p0, v2

    goto :goto_0

    :cond_4
    if-nez v0, :cond_1

    :try_start_2
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    .local v1, tz:Ljava/util/TimeZone;
    invoke-virtual {v1, p2, p3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v8

    if-ne v8, p0, :cond_1

    invoke-virtual {v1, v6}, Ljava/util/TimeZone;->inDaylightTime(Ljava/util/Date;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v8

    if-ne v8, p1, :cond_1

    move-object v0, v1

    goto :goto_1

    .end local v1           #tz:Ljava/util/TimeZone;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    .local p1, e:Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    const-string p2, "TimeUtils"

    .end local p2
    const-string p3, "Got exception while getting preferred time zone."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    .local p1, dst:Z
    .restart local p2
    :catch_1
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #best:Ljava/util/TimeZone;
    .local p0, best:Ljava/util/TimeZone;
    .local p1, e:Ljava/io/IOException;
    :try_start_4
    const-string p2, "TimeUtils"

    .end local p2
    const-string p3, "Got exception while getting preferred time zone."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_0

    .restart local v0       #best:Ljava/util/TimeZone;
    .local p0, offset:I
    .local p1, dst:Z
    .restart local p2
    :catchall_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #best:Ljava/util/TimeZone;
    .end local p1           #dst:Z
    .end local p2
    .local p0, best:Ljava/util/TimeZone;
    :goto_2
    invoke-interface {v7}, Landroid/content/res/XmlResourceParser;->close()V

    throw p1

    :catchall_1
    move-exception p1

    goto :goto_2
.end method

.method public static getTimeZoneDatabaseVersion()Ljava/lang/String;
    .locals 1

    .prologue
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static printField([CICIZI)I
    .locals 3
    .parameter "formatStr"
    .parameter "amt"
    .parameter "suffix"
    .parameter "pos"
    .parameter "always"
    .parameter "zeropad"

    .prologue
    if-nez p4, :cond_0

    if-lez p1, :cond_7

    :cond_0
    move v1, p3

    .local v1, startPos:I
    if-eqz p4, :cond_1

    const/4 v2, 0x3

    if-ge p5, v2, :cond_2

    :cond_1
    const/16 v2, 0x63

    if-le p1, v2, :cond_3

    :cond_2
    div-int/lit8 v0, p1, 0x64

    .local v0, dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v0, 0x64

    sub-int/2addr p1, v2

    .end local v0           #dig:I
    :cond_3
    if-eqz p4, :cond_4

    const/4 v2, 0x2

    if-ge p5, v2, :cond_5

    :cond_4
    const/16 v2, 0x9

    if-gt p1, v2, :cond_5

    if-eq v1, p3, :cond_6

    :cond_5
    div-int/lit8 v0, p1, 0xa

    .restart local v0       #dig:I
    add-int/lit8 v2, v0, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 v2, v0, 0xa

    sub-int/2addr p1, v2

    .end local v0           #dig:I
    :cond_6
    add-int/lit8 v2, p1, 0x30

    int-to-char v2, v2

    aput-char v2, p0, p3

    add-int/lit8 p3, p3, 0x1

    aput-char p2, p0, p3

    add-int/lit8 p3, p3, 0x1

    .end local v1           #startPos:I
    :cond_7
    return p3
.end method
