.class public Landroid/text/TextUtils;
.super Ljava/lang/Object;
.source "TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/TextUtils$EllipsizeCallback;,
        Landroid/text/TextUtils$TruncateAt;,
        Landroid/text/TextUtils$Reverser;,
        Landroid/text/TextUtils$SimpleStringSplitter;,
        Landroid/text/TextUtils$StringSplitter;
    }
.end annotation


# static fields
.field public static final ABSOLUTE_SIZE_SPAN:I = 0x10

.field public static final ALIGNMENT_SPAN:I = 0x1

.field public static final ANNOTATION:I = 0x12

.field public static final BACKGROUND_COLOR_SPAN:I = 0xc

.field public static final BULLET_SPAN:I = 0x8

.field public static final CAP_MODE_CHARACTERS:I = 0x1000

.field public static final CAP_MODE_SENTENCES:I = 0x4000

.field public static final CAP_MODE_WORDS:I = 0x2000

.field public static final CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static EMPTY_STRING_ARRAY:[Ljava/lang/String; = null

.field public static final FOREGROUND_COLOR_SPAN:I = 0x2

.field public static final LEADING_MARGIN_SPAN:I = 0xa

.field public static final QUOTE_SPAN:I = 0x9

.field public static final RELATIVE_SIZE_SPAN:I = 0x3

.field public static final SCALE_X_SPAN:I = 0x4

.field public static final STRIKETHROUGH_SPAN:I = 0x5

.field public static final STYLE_SPAN:I = 0x7

.field public static final SUBSCRIPT_SPAN:I = 0xf

.field public static final SUPERSCRIPT_SPAN:I = 0xe

.field public static final TEXT_APPEARANCE_SPAN:I = 0x11

.field public static final TYPEFACE_SPAN:I = 0xd

.field public static final UNDERLINE_SPAN:I = 0x6

.field public static final URL_SPAN:I = 0xb

.field private static sEllipsis:Ljava/lang/String;

.field private static sLock:Ljava/lang/Object;

.field private static sTemp:[C


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 621
    new-instance v0, Landroid/text/TextUtils$1;

    invoke-direct {v0}, Landroid/text/TextUtils$1;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    .line 969
    sput-object v1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1684
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    .line 1685
    sput-object v1, Landroid/text/TextUtils;->sTemp:[C

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 53
    invoke-static {p0, p1, p2}, Landroid/text/TextUtils;->readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V

    return-void
.end method

.method private static blank(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 6
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v5, 0x0

    .line 1242
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1243
    .local v2, len:I
    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v0

    .line 1245
    .local v0, buf:[C
    if-eqz p1, :cond_0

    .line 1246
    invoke-static {p0, v5, p1, v0, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1248
    :cond_0
    if-eq p2, v2, :cond_1

    .line 1249
    invoke-static {p0, p2, v2, v0, p2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1252
    :cond_1
    if-eq p1, p2, :cond_2

    .line 1253
    const/16 v4, 0x2026

    aput-char v4, v0, p1

    .line 1255
    add-int/lit8 v1, p1, 0x1

    .local v1, i:I
    :goto_0
    if-ge v1, p2, :cond_2

    .line 1256
    const v4, 0xfeff

    aput-char v4, v0, v1

    .line 1255
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1260
    .end local v1           #i:I
    :cond_2
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, v2}, Ljava/lang/String;-><init>([CII)V

    .line 1261
    .local v3, ret:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1263
    return-object v3
.end method

.method public static commaEllipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLjava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 21
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "oneMore"
    .parameter "more"

    .prologue
    .line 1281
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v14

    .line 1282
    .local v14, len:I
    new-array v12, v14, [C

    .line 1283
    .local v12, buf:[C
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move v1, v5

    move v2, v14

    move-object v3, v12

    move v4, v6

    invoke-static {v0, v1, v2, v3, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1285
    const/4 v5, 0x0

    .line 1286
    .local v5, commaCount:I
    const/4 v8, 0x0

    .local v8, i:I
    move v13, v5

    .end local v5           #commaCount:I
    .local v13, commaCount:I
    :goto_0
    if-ge v8, v14, :cond_0

    .line 1287
    aget-char v5, v12, v8

    const/16 v6, 0x2c

    if-ne v5, v6, :cond_7

    .line 1288
    add-int/lit8 v5, v13, 0x1

    .line 1286
    .end local v13           #commaCount:I
    .restart local v5       #commaCount:I
    :goto_1
    add-int/lit8 v8, v8, 0x1

    move v13, v5

    .end local v5           #commaCount:I
    .restart local v13       #commaCount:I
    goto :goto_0

    .line 1294
    :cond_0
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-eqz v5, :cond_2

    .line 1295
    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    .line 1296
    .local v7, sp:Landroid/text/Spanned;
    new-instance v6, Landroid/text/TextPaint;

    invoke-direct {v6}, Landroid/text/TextPaint;-><init>()V

    .line 1297
    .local v6, temppaint:Landroid/text/TextPaint;
    mul-int/lit8 v5, v14, 0x2

    new-array v10, v5, [F

    .line 1300
    .local v10, wid:[F
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v14, :cond_1

    .line 1301
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v7, v8, v14, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v9

    .line 1303
    .local v9, next:I
    const/4 v11, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v11}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 1304
    const/4 v5, 0x0

    add-int v11, v14, v8

    sub-int v8, v9, v8

    invoke-static {v10, v5, v10, v11, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1300
    .end local v8           #i:I
    move v8, v9

    .restart local v8       #i:I
    goto :goto_2

    .line 1307
    .end local v9           #next:I
    :cond_1
    const/4 v5, 0x0

    invoke-static {v10, v14, v10, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1313
    .end local v6           #temppaint:Landroid/text/TextPaint;
    .end local v7           #sp:Landroid/text/Spanned;
    :goto_3
    const/4 v6, 0x0

    .line 1314
    .local v6, ok:I
    add-int/lit8 v9, v13, 0x1

    .line 1315
    .local v9, okRemaining:I
    const-string v7, ""

    .line 1317
    .local v7, okFormat:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1318
    .local v11, w:I
    const/4 v5, 0x0

    .line 1320
    .local v5, count:I
    const/4 v8, 0x0

    move v15, v9

    .end local v9           #okRemaining:I
    .local v15, okRemaining:I
    move v9, v6

    .end local v6           #ok:I
    .local v9, ok:I
    move v6, v11

    .end local v11           #w:I
    .local v6, w:I
    move-object v11, v7

    .end local v7           #okFormat:Ljava/lang/String;
    .local v11, okFormat:Ljava/lang/String;
    :goto_4
    if-ge v8, v14, :cond_4

    .line 1321
    int-to-float v6, v6

    aget v7, v10, v8

    .end local v6           #w:I
    add-float/2addr v6, v7

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 1323
    .local v17, w:I
    aget-char v6, v12, v8

    const/16 v7, 0x2c

    if-ne v6, v7, :cond_6

    .line 1324
    add-int/lit8 v5, v5, 0x1

    .line 1326
    sub-int v6, v13, v5

    add-int/lit8 v16, v6, 0x1

    .line 1330
    .local v16, remaining:I
    const/4 v6, 0x1

    move/from16 v0, v16

    move v1, v6

    if-ne v0, v1, :cond_3

    .line 1331
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1336
    .local v6, format:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v7

    .line 1338
    .local v7, moreWid:F
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v7, v7, v18

    cmpg-float v7, v7, p2

    if-gtz v7, :cond_6

    .line 1339
    .end local v7           #moreWid:F
    add-int/lit8 v7, v8, 0x1

    .line 1340
    .end local v9           #ok:I
    .local v7, ok:I
    move/from16 v9, v16

    .line 1341
    .end local v15           #okRemaining:I
    .local v9, okRemaining:I
    move-object v6, v6

    .end local v11           #okFormat:Ljava/lang/String;
    .local v6, okFormat:Ljava/lang/String;
    move-object/from16 v20, v6

    .end local v6           #okFormat:Ljava/lang/String;
    .local v20, okFormat:Ljava/lang/String;
    move v6, v7

    .end local v7           #ok:I
    .local v6, ok:I
    move-object/from16 v7, v20

    .line 1320
    .end local v16           #remaining:I
    .end local v20           #okFormat:Ljava/lang/String;
    .local v7, okFormat:Ljava/lang/String;
    :goto_6
    add-int/lit8 v8, v8, 0x1

    move-object v11, v7

    .end local v7           #okFormat:Ljava/lang/String;
    .restart local v11       #okFormat:Ljava/lang/String;
    move v15, v9

    .end local v9           #okRemaining:I
    .restart local v15       #okRemaining:I
    move v9, v6

    .end local v6           #ok:I
    .local v9, ok:I
    move/from16 v6, v17

    .end local v17           #w:I
    .local v6, w:I
    goto :goto_4

    .line 1309
    .end local v5           #count:I
    .end local v6           #w:I
    .end local v9           #ok:I
    .end local v10           #wid:[F
    .end local v11           #okFormat:Ljava/lang/String;
    .end local v15           #okRemaining:I
    :cond_2
    new-array v10, v14, [F

    .line 1310
    .restart local v10       #wid:[F
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v14

    move-object v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->getTextWidths(Ljava/lang/CharSequence;II[F)I

    goto :goto_3

    .line 1333
    .restart local v5       #count:I
    .restart local v9       #ok:I
    .restart local v11       #okFormat:Ljava/lang/String;
    .restart local v15       #okRemaining:I
    .restart local v16       #remaining:I
    .restart local v17       #w:I
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/16 v18, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v7, v18

    move-object/from16 v0, p4

    move-object v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .local v6, format:Ljava/lang/String;
    goto :goto_5

    .line 1346
    .end local v16           #remaining:I
    .end local v17           #w:I
    .local v6, w:I
    :cond_4
    move v0, v6

    int-to-float v0, v0

    move/from16 p1, v0

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    .line 1351
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_7
    return-object p0

    .line 1349
    .restart local p0
    .restart local p2
    .restart local p3
    :cond_5
    new-instance p1, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, p1

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1350
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .end local p2
    .end local p3
    move-object/from16 p0, p1

    .line 1351
    goto :goto_7

    .end local v6           #w:I
    .restart local v17       #w:I
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_6
    move-object v7, v11

    .end local v11           #okFormat:Ljava/lang/String;
    .restart local v7       #okFormat:Ljava/lang/String;
    move v6, v9

    .end local v9           #ok:I
    .local v6, ok:I
    move v9, v15

    .end local v15           #okRemaining:I
    .local v9, okRemaining:I
    goto :goto_6

    .end local v5           #count:I
    .end local v6           #ok:I
    .end local v7           #okFormat:Ljava/lang/String;
    .end local v9           #okRemaining:I
    .end local v10           #wid:[F
    .end local v17           #w:I
    :cond_7
    move v5, v13

    .end local v13           #commaCount:I
    .local v5, commaCount:I
    goto/16 :goto_1
.end method

.method public static varargs concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 9
    .parameter "text"

    .prologue
    const/4 v1, 0x0

    .line 1416
    array-length v0, p0

    if-nez v0, :cond_0

    .line 1417
    const-string v0, ""

    .line 1453
    :goto_0
    return-object v0

    .line 1420
    :cond_0
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 1421
    aget-object v0, p0, v1

    goto :goto_0

    .line 1424
    :cond_1
    const/4 v8, 0x0

    .line 1425
    .local v8, spanned:Z
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    array-length v0, p0

    if-ge v6, v0, :cond_2

    .line 1426
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 1427
    const/4 v8, 0x1

    .line 1432
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1433
    .local v7, sb:Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_2
    array-length v0, p0

    if-ge v6, v0, :cond_4

    .line 1434
    aget-object v0, p0, v6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 1433
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1425
    .end local v7           #sb:Ljava/lang/StringBuilder;
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1437
    .restart local v7       #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-nez v8, :cond_5

    .line 1438
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1441
    :cond_5
    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, v7}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1442
    .local v4, ss:Landroid/text/SpannableString;
    const/4 v5, 0x0

    .line 1443
    .local v5, off:I
    const/4 v6, 0x0

    :goto_3
    array-length v0, p0

    if-ge v6, v0, :cond_7

    .line 1444
    aget-object v0, p0, v6

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1446
    .local v2, len:I
    aget-object v0, p0, v6

    instance-of v0, v0, Landroid/text/Spanned;

    if-eqz v0, :cond_6

    .line 1447
    aget-object v0, p0, v6

    check-cast v0, Landroid/text/Spanned;

    const-class v3, Ljava/lang/Object;

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    .line 1450
    :cond_6
    add-int/2addr v5, v2

    .line 1443
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1453
    .end local v2           #len:I
    :cond_7
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, v4}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V
    .locals 8
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "kind"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 933
    if-nez p3, :cond_0

    .line 934
    const-class p3, Ljava/lang/Object;

    .line 937
    :cond_0
    invoke-interface {p0, p1, p2, p3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 939
    .local v3, spans:[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v5, v3

    if-ge v2, v5, :cond_3

    .line 940
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    .line 941
    .local v4, st:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 942
    .local v0, en:I
    aget-object v5, v3, v2

    invoke-interface {p0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v1

    .line 944
    .local v1, fl:I
    if-ge v4, p1, :cond_1

    .line 945
    move v4, p1

    .line 946
    :cond_1
    if-le v0, p2, :cond_2

    .line 947
    move v0, p2

    .line 949
    :cond_2
    aget-object v5, v3, v2

    sub-int v6, v4, p1

    add-int/2addr v6, p5

    sub-int v7, v0, p1

    add-int/2addr v7, p5

    invoke-interface {p4, v5, v6, v7, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 939
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 952
    .end local v0           #en:I
    .end local v1           #fl:I
    .end local v4           #st:I
    :cond_3
    return-void
.end method

.method public static delimitedStringContains(Ljava/lang/String;CLjava/lang/String;)Z
    .locals 6
    .parameter "delimitedString"
    .parameter "delimiter"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1663
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    move v3, v5

    .line 1681
    :goto_0
    return v3

    .line 1666
    :cond_1
    const/4 v2, -0x1

    .line 1667
    .local v2, pos:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 1668
    .local v1, length:I
    :cond_2
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    .line 1669
    if-lez v2, :cond_3

    sub-int v3, v2, v4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    .line 1672
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int v0, v2, v3

    .line 1673
    .local v0, expectedDelimiterPos:I
    if-ne v0, v1, :cond_4

    move v3, v4

    .line 1675
    goto :goto_0

    .line 1677
    :cond_4
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, p1, :cond_2

    move v3, v4

    .line 1678
    goto :goto_0

    .end local v0           #expectedDelimiterPos:I
    :cond_5
    move v3, v5

    .line 1681
    goto :goto_0
.end method

.method public static dumpSpans(Ljava/lang/CharSequence;Landroid/util/Printer;Ljava/lang/String;)V
    .locals 8
    .parameter "cs"
    .parameter "printer"
    .parameter "prefix"

    .prologue
    .line 734
    instance-of v5, p0, Landroid/text/Spanned;

    if-eqz v5, :cond_0

    .line 735
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v4, v0

    .line 736
    .local v4, sp:Landroid/text/Spanned;
    const/4 v5, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v6

    const-class v7, Ljava/lang/Object;

    invoke-interface {v4, v5, v6, v7}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 738
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, v3

    if-ge v1, v5, :cond_1

    .line 739
    aget-object v2, v3, v1

    .line 740
    .local v2, o:Ljava/lang/Object;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    invoke-interface {p0, v6, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") fl=#"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4, v2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 738
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 748
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    .end local v3           #os:[Ljava/lang/Object;
    .end local v4           #sp:Landroid/text/Spanned;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": (no spans)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 750
    :cond_1
    return-void
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"

    .prologue
    .line 980
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public static ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;ZLandroid/text/TextUtils$EllipsizeCallback;)Ljava/lang/CharSequence;
    .locals 21
    .parameter "text"
    .parameter "p"
    .parameter "avail"
    .parameter "where"
    .parameter "preserveLength"
    .parameter "callback"

    .prologue
    .line 999
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    if-nez v5, :cond_0

    .line 1000
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    .line 1001
    .local v5, r:Landroid/content/res/Resources;
    const v6, 0x10400b9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .end local v5           #r:Landroid/content/res/Resources;
    sput-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .line 1004
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 1009
    .local v8, len:I
    move-object/from16 v0, p0

    instance-of v0, v0, Landroid/text/Spanned;

    move v5, v0

    if-nez v5, :cond_f

    .line 1010
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v14

    .line 1012
    .local v14, wid:F
    cmpg-float v5, v14, p2

    if-gtz v5, :cond_2

    .line 1013
    if-eqz p5, :cond_1

    .line 1014
    const/16 p1, 0x0

    const/16 p2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1236
    .end local v14           #wid:F
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :cond_1
    :goto_0
    return-object p0

    .line 1020
    .restart local v14       #wid:F
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_2
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v14

    .line 1022
    .local v14, ellipsiswid:F
    cmpl-float v5, v14, p2

    if-lez v5, :cond_6

    .line 1023
    if-eqz p5, :cond_3

    .line 1024
    const/16 p0, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p0

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1027
    .end local p0
    :cond_3
    if-eqz p4, :cond_5

    .line 1028
    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p0

    .line 1029
    .local p0, buf:[C
    const/4 v12, 0x0

    .end local p1
    .local v12, i:I
    :goto_1
    if-ge v12, v8, :cond_4

    .line 1030
    const p1, 0xfeff

    aput-char p1, p0, v12

    .line 1029
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 1032
    :cond_4
    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 1033
    .end local p2
    .local p1, ret:Ljava/lang/String;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->recycle([C)V

    move-object/from16 p0, p1

    .line 1034
    goto :goto_0

    .line 1036
    .end local v12           #i:I
    .end local p0           #buf:[C
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    :cond_5
    const-string p0, ""

    goto :goto_0

    .line 1040
    .local p0, text:Ljava/lang/CharSequence;
    :cond_6
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_9

    .line 1041
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float v10, p2, v14

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    .line 1044
    .local p1, fit:I
    if-eqz p5, :cond_7

    .line 1045
    const/16 p2, 0x0

    sub-int p3, v8, p1

    move-object/from16 v0, p5

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1048
    .end local p2
    .end local p3
    :cond_7
    if-eqz p4, :cond_8

    .line 1049
    const/16 p2, 0x0

    sub-int p1, v8, p1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .end local p1           #fit:I
    move-result-object p0

    goto :goto_0

    .line 1051
    .restart local p1       #fit:I
    :cond_8
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    sub-int p1, v8, p1

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p1           #fit:I
    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1053
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_9
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_c

    .line 1054
    const/4 v7, 0x0

    const/4 v9, 0x1

    sub-float v10, p2, v14

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result p1

    .line 1057
    .local p1, fit:I
    if-eqz p5, :cond_a

    .line 1058
    move-object/from16 v0, p5

    move/from16 v1, p1

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1061
    :cond_a
    if-eqz p4, :cond_b

    .line 1062
    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1064
    :cond_b
    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    const/16 p3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p3
    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    sget-object p1, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p1           #fit:I
    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1067
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .restart local p3
    :cond_c
    const/4 v7, 0x0

    const/4 v9, 0x0

    sub-float p3, p2, v14

    const/high16 v5, 0x4000

    div-float v10, p3, v5

    const/4 v11, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p0

    invoke-virtual/range {v5 .. v11}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .end local p3
    move-result p3

    .line 1069
    .local p3, right:I
    sub-int v5, v8, p3

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move v2, v5

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v5

    .line 1070
    .local v5, used:F
    const/4 v11, 0x0

    sub-int v12, v8, p3

    const/4 v13, 0x1

    sub-float p2, p2, v14

    sub-float v14, p2, v5

    const/4 v15, 0x0

    move-object/from16 v9, p1

    move-object/from16 v10, p0

    invoke-virtual/range {v9 .. v15}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    .end local v14           #ellipsiswid:F
    .end local p2
    move-result p1

    .line 1073
    .local p1, left:I
    if-eqz p5, :cond_d

    .line 1074
    sub-int p2, v8, p3

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1077
    :cond_d
    if-eqz p4, :cond_e

    .line 1078
    sub-int p2, v8, p3

    invoke-static/range {p0 .. p2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1080
    :cond_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1081
    .local p0, s:Ljava/lang/String;
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct/range {p2 .. p2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .end local p4
    move-result-object p1

    .end local p1           #left:I
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int p2, v8, p3

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #s:Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 1095
    .end local v5           #used:F
    .local p0, text:Ljava/lang/CharSequence;
    .local p1, p:Landroid/text/TextPaint;
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    .restart local p4
    :cond_f
    mul-int/lit8 v5, v8, 0x2

    new-array v14, v5, [F

    .line 1096
    .local v14, wid:[F
    new-instance v10, Landroid/text/TextPaint;

    invoke-direct {v10}, Landroid/text/TextPaint;-><init>()V

    .line 1097
    .local v10, temppaint:Landroid/text/TextPaint;
    move-object/from16 v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v11, v0

    .line 1100
    .local v11, sp:Landroid/text/Spanned;
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_2
    if-ge v12, v8, :cond_10

    .line 1101
    const-class v5, Landroid/text/style/MetricAffectingSpan;

    invoke-interface {v11, v12, v8, v5}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v13

    .line 1103
    .local v13, next:I
    const/4 v15, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v9 .. v15}, Landroid/text/Styled;->getTextWidths(Landroid/text/TextPaint;Landroid/text/TextPaint;Landroid/text/Spanned;II[FLandroid/graphics/Paint$FontMetricsInt;)I

    .line 1104
    const/4 v5, 0x0

    add-int v6, v8, v12

    sub-int v7, v13, v12

    invoke-static {v14, v5, v14, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1100
    move v12, v13

    goto :goto_2

    .line 1107
    .end local v13           #next:I
    :cond_10
    const/4 v5, 0x0

    .line 1108
    .local v5, sum:F
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_11

    .line 1109
    add-int v6, v8, v12

    aget v6, v14, v6

    add-float/2addr v5, v6

    .line 1108
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1112
    :cond_11
    cmpg-float v5, v5, p2

    if-gtz v5, :cond_12

    .line 1113
    .end local v5           #sum:F
    if-eqz p5, :cond_1

    .line 1114
    const/16 p1, 0x0

    const/16 p2, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    goto/16 :goto_0

    .line 1120
    :cond_12
    sget-object v5, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 1122
    .local p1, ellipsiswid:F
    cmpl-float v5, p1, p2

    if-lez v5, :cond_16

    .line 1123
    if-eqz p5, :cond_13

    .line 1124
    const/16 p0, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p0

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1127
    .end local p0           #text:Ljava/lang/CharSequence;
    :cond_13
    if-eqz p4, :cond_15

    .line 1128
    invoke-static {v8}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object p0

    .line 1129
    .local p0, buf:[C
    const/4 v12, 0x0

    .end local p1           #ellipsiswid:F
    :goto_4
    if-ge v12, v8, :cond_14

    .line 1130
    const p1, 0xfeff

    aput-char p1, p0, v12

    .line 1129
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 1132
    :cond_14
    new-instance v19, Landroid/text/SpannableString;

    new-instance p1, Ljava/lang/String;

    const/16 p2, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, p2

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .end local p2
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1133
    .local v19, ss:Landroid/text/SpannableString;
    invoke-static/range {p0 .. p0}, Landroid/text/TextUtils;->recycle([C)V

    .line 1134
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1135
    goto/16 :goto_0

    .line 1137
    .end local v19           #ss:Landroid/text/SpannableString;
    .end local p0           #buf:[C
    .restart local p1       #ellipsiswid:F
    .restart local p2
    :cond_15
    const-string p0, ""

    goto/16 :goto_0

    .line 1141
    .local p0, text:Ljava/lang/CharSequence;
    :cond_16
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_1b

    .line 1142
    const/16 p3, 0x0

    .line 1145
    .local p3, sum:F
    move v12, v8

    :goto_5
    if-ltz v12, :cond_17

    .line 1146
    add-int v5, v8, v12

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v5, v14, v5

    .line 1148
    .local v5, w:F
    add-float v6, v5, p3

    add-float v6, v6, p1

    cmpl-float v6, v6, p2

    if-lez v6, :cond_19

    .line 1155
    .end local v5           #w:F
    :cond_17
    if-eqz p5, :cond_18

    .line 1156
    const/16 p1, 0x0

    move-object/from16 v0, p5

    move/from16 v1, p1

    move v2, v12

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1159
    .end local p1           #ellipsiswid:F
    :cond_18
    if-eqz p4, :cond_1a

    .line 1160
    new-instance v19, Landroid/text/SpannableString;

    const/16 p1, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v12

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1161
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1162
    goto/16 :goto_0

    .line 1152
    .end local v19           #ss:Landroid/text/SpannableString;
    .restart local v5       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    .restart local p1       #ellipsiswid:F
    :cond_19
    add-float p3, p3, v5

    .line 1145
    add-int/lit8 v12, v12, -0x1

    goto :goto_5

    .line 1164
    .end local v5           #w:F
    .end local p1           #ellipsiswid:F
    :cond_1a
    new-instance p1, Landroid/text/SpannableStringBuilder;

    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p2
    invoke-direct/range {p1 .. p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1165
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v12

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 p0, p1

    .line 1167
    goto/16 :goto_0

    .line 1169
    .local p1, ellipsiswid:F
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_1b
    sget-object v5, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    move-object/from16 v0, p3

    move-object v1, v5

    if-ne v0, v1, :cond_20

    .line 1170
    const/16 p3, 0x0

    .line 1173
    .local p3, sum:F
    const/4 v12, 0x0

    :goto_6
    if-ge v12, v8, :cond_1c

    .line 1174
    add-int v5, v8, v12

    aget v5, v14, v5

    .line 1176
    .restart local v5       #w:F
    add-float v6, v5, p3

    add-float v6, v6, p1

    cmpl-float v6, v6, p2

    if-lez v6, :cond_1e

    .line 1183
    .end local v5           #w:F
    :cond_1c
    if-eqz p5, :cond_1d

    .line 1184
    move-object/from16 v0, p5

    move v1, v12

    move v2, v8

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1187
    :cond_1d
    if-eqz p4, :cond_1f

    .line 1188
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    move v1, v12

    move v2, v8

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1189
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1190
    goto/16 :goto_0

    .line 1180
    .end local v19           #ss:Landroid/text/SpannableString;
    .restart local v5       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    :cond_1e
    add-float p3, p3, v5

    .line 1173
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1192
    .end local v5           #w:F
    :cond_1f
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #ellipsiswid:F
    sget-object p2, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p2
    invoke-direct/range {p1 .. p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1193
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p2, 0x0

    const/16 p3, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move/from16 v3, p3

    move v4, v12

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .end local p3           #sum:F
    move-object/from16 p0, p1

    .line 1195
    goto/16 :goto_0

    .line 1198
    .local p1, ellipsiswid:F
    .restart local p2
    .local p3, where:Landroid/text/TextUtils$TruncateAt;
    :cond_20
    const/4 v5, 0x0

    .local v5, lsum:F
    const/4 v7, 0x0

    .line 1199
    .local v7, rsum:F
    const/16 p3, 0x0

    .local p3, left:I
    move/from16 p3, v8

    .line 1201
    .local p3, right:I
    sub-float p3, p2, p1

    const/high16 v6, 0x4000

    div-float p3, p3, v6

    .line 1202
    .local p3, ravail:F
    move v6, v8

    .end local v10           #temppaint:Landroid/text/TextPaint;
    .local v6, right:I
    :goto_7
    if-ltz v6, :cond_21

    .line 1203
    add-int v9, v8, v6

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget v9, v14, v9

    .line 1205
    .local v9, w:F
    add-float v10, v9, v7

    cmpl-float v10, v10, p3

    if-lez v10, :cond_24

    .line 1212
    .end local v9           #w:F
    :cond_21
    sub-float p1, p2, p1

    sub-float p1, p1, v7

    .line 1213
    .local p1, lavail:F
    const/16 p2, 0x0

    .local p2, left:I
    move/from16 p3, v5

    .end local v5           #lsum:F
    .end local v7           #rsum:F
    .local p3, lsum:F
    :goto_8
    move/from16 v0, p2

    move v1, v6

    if-ge v0, v1, :cond_22

    .line 1214
    add-int v5, v8, p2

    aget v5, v14, v5

    .line 1216
    .local v5, w:F
    add-float v7, v5, p3

    cmpl-float v7, v7, p1

    if-lez v7, :cond_25

    .line 1223
    .end local v5           #w:F
    :cond_22
    if-eqz p5, :cond_23

    .line 1224
    move-object/from16 v0, p5

    move/from16 v1, p2

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/text/TextUtils$EllipsizeCallback;->ellipsized(II)V

    .line 1227
    :cond_23
    if-eqz p4, :cond_26

    .line 1228
    new-instance v19, Landroid/text/SpannableString;

    move-object/from16 v0, p0

    move/from16 v1, p2

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->blank(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    .end local p0           #text:Ljava/lang/CharSequence;
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1229
    .restart local v19       #ss:Landroid/text/SpannableString;
    const/16 v16, 0x0

    const-class v18, Ljava/lang/Object;

    const/16 v20, 0x0

    move-object v15, v11

    move/from16 v17, v8

    invoke-static/range {v15 .. v20}, Landroid/text/TextUtils;->copySpansFrom(Landroid/text/Spanned;IILjava/lang/Class;Landroid/text/Spannable;I)V

    move-object/from16 p0, v19

    .line 1230
    goto/16 :goto_0

    .line 1209
    .end local v19           #ss:Landroid/text/SpannableString;
    .local v5, lsum:F
    .restart local v7       #rsum:F
    .restart local v9       #w:F
    .restart local p0       #text:Ljava/lang/CharSequence;
    .local p1, ellipsiswid:F
    .local p2, avail:F
    .local p3, ravail:F
    :cond_24
    add-float/2addr v7, v9

    .line 1202
    add-int/lit8 v6, v6, -0x1

    goto :goto_7

    .line 1220
    .end local v7           #rsum:F
    .end local v9           #w:F
    .local v5, w:F
    .local p1, lavail:F
    .local p2, left:I
    .local p3, lsum:F
    :cond_25
    add-float p3, p3, v5

    .line 1213
    add-int/lit8 p2, p2, 0x1

    goto :goto_8

    .line 1232
    .end local v5           #w:F
    :cond_26
    new-instance p1, Landroid/text/SpannableStringBuilder;

    .end local p1           #lavail:F
    sget-object p3, Landroid/text/TextUtils;->sEllipsis:Ljava/lang/String;

    .end local p3           #lsum:F
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1233
    .local p1, out:Landroid/text/SpannableStringBuilder;
    const/16 p3, 0x0

    const/16 p4, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p0

    move/from16 v3, p4

    move/from16 v4, p2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 1234
    .end local p4
    invoke-virtual/range {p1 .. p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .end local p2           #left:I
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    move v3, v6

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    move-object/from16 p0, p1

    .line 1236
    goto/16 :goto_0
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 464
    if-ne p0, p1, :cond_0

    move v2, v5

    .line 476
    :goto_0
    return v2

    .line 466
    :cond_0
    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .local v1, length:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v1, v2, :cond_4

    .line 467
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_1

    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 468
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 470
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_3

    .line 471
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_2

    move v2, v4

    goto :goto_0

    .line 470
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v2, v5

    .line 473
    goto :goto_0

    .end local v0           #i:I
    .end local v1           #length:I
    :cond_4
    move v2, v4

    .line 476
    goto :goto_0
.end method

.method public static varargs expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "template"
    .parameter "values"

    .prologue
    const/16 v6, 0x5e

    const-string/jumbo v4, "template requests value ^"

    .line 804
    array-length v4, p1

    const/16 v5, 0x9

    if-le v4, v5, :cond_0

    .line 805
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "max of 9 values are supported"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 808
    :cond_0
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 811
    .local v2, ssb:Landroid/text/SpannableStringBuilder;
    const/4 v0, 0x0

    .line 812
    .local v0, i:I
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 813
    invoke-virtual {v2, v0}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_5

    .line 814
    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v2, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    .line 815
    .local v1, next:C
    if-ne v1, v6, :cond_1

    .line 816
    add-int/lit8 v4, v0, 0x1

    add-int/lit8 v5, v0, 0x2

    invoke-virtual {v2, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 817
    add-int/lit8 v0, v0, 0x1

    .line 818
    goto :goto_0

    .line 819
    :cond_1
    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 820
    invoke-static {v1}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v4

    const/4 v5, 0x1

    sub-int v3, v4, v5

    .line 821
    .local v3, which:I
    if-gez v3, :cond_3

    .line 822
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 837
    .end local v1           #next:C
    .end local v3           #which:I
    :catch_0
    move-exception v4

    .line 840
    :cond_2
    return-object v2

    .line 825
    .restart local v1       #next:C
    .restart local v3       #which:I
    :cond_3
    array-length v4, p1

    if-lt v3, v4, :cond_4

    .line 826
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "template requests value ^"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; only "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " provided"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 830
    :cond_4
    add-int/lit8 v4, v0, 0x2

    aget-object v5, p1, v3

    invoke-virtual {v2, v0, v4, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 831
    aget-object v4, p1, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    add-int/2addr v0, v4

    .line 832
    goto/16 :goto_0

    .line 835
    .end local v1           #next:C
    .end local v3           #which:I
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public static getCapsMode(Ljava/lang/CharSequence;II)I
    .locals 11
    .parameter "cs"
    .parameter "off"
    .parameter "reqModes"

    .prologue
    const/16 v10, 0x27

    const/16 v9, 0x22

    const/16 v8, 0x2e

    const/4 v7, 0x1

    .line 1567
    if-gez p1, :cond_0

    .line 1568
    const/4 v5, 0x0

    .line 1652
    :goto_0
    return v5

    .line 1573
    :cond_0
    const/4 v4, 0x0

    .line 1575
    .local v4, mode:I
    and-int/lit16 v5, p2, 0x1000

    if-eqz v5, :cond_1

    .line 1576
    or-int/lit16 v4, v4, 0x1000

    .line 1578
    :cond_1
    and-int/lit16 v5, p2, 0x6000

    if-nez v5, :cond_2

    move v5, v4

    .line 1579
    goto :goto_0

    .line 1584
    :cond_2
    move v1, p1

    .local v1, i:I
    :goto_1
    if-lez v1, :cond_3

    .line 1585
    sub-int v5, v1, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1587
    .local v0, c:C
    if-eq v0, v9, :cond_5

    if-eq v0, v10, :cond_5

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x15

    if-eq v5, v6, :cond_5

    .line 1595
    .end local v0           #c:C
    :cond_3
    move v2, v1

    .line 1596
    .local v2, j:I
    :goto_2
    if-lez v2, :cond_6

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .restart local v0       #c:C
    const/16 v5, 0x20

    if-eq v0, v5, :cond_4

    const/16 v5, 0x9

    if-ne v0, v5, :cond_6

    .line 1597
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 1584
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 1599
    .end local v0           #c:C
    .restart local v2       #j:I
    :cond_6
    if-eqz v2, :cond_7

    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_8

    .line 1600
    :cond_7
    or-int/lit16 v5, v4, 0x2000

    goto :goto_0

    .line 1605
    :cond_8
    and-int/lit16 v5, p2, 0x4000

    if-nez v5, :cond_a

    .line 1606
    if-eq v1, v2, :cond_9

    or-int/lit16 v4, v4, 0x2000

    :cond_9
    move v5, v4

    .line 1607
    goto :goto_0

    .line 1612
    :cond_a
    if-ne v1, v2, :cond_c

    move v5, v4

    .line 1613
    goto :goto_0

    .line 1618
    .restart local v0       #c:C
    :cond_b
    add-int/lit8 v2, v2, -0x1

    .end local v0           #c:C
    :cond_c
    if-lez v2, :cond_d

    .line 1619
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1621
    .restart local v0       #c:C
    if-eq v0, v9, :cond_b

    if-eq v0, v10, :cond_b

    invoke-static {v0}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-eq v5, v6, :cond_b

    .line 1627
    .end local v0           #c:C
    :cond_d
    if-lez v2, :cond_12

    .line 1628
    sub-int v5, v2, v7

    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1630
    .restart local v0       #c:C
    if-eq v0, v8, :cond_e

    const/16 v5, 0x3f

    if-eq v0, v5, :cond_e

    const/16 v5, 0x21

    if-ne v0, v5, :cond_12

    .line 1634
    :cond_e
    if-ne v0, v8, :cond_10

    .line 1635
    const/4 v5, 0x2

    sub-int v3, v2, v5

    .local v3, k:I
    :goto_3
    if-ltz v3, :cond_10

    .line 1636
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 1638
    if-ne v0, v8, :cond_f

    move v5, v4

    .line 1639
    goto/16 :goto_0

    .line 1642
    :cond_f
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_11

    .line 1648
    .end local v3           #k:I
    :cond_10
    or-int/lit16 v5, v4, 0x4000

    goto/16 :goto_0

    .line 1635
    .restart local v3       #k:I
    :cond_11
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .end local v0           #c:C
    .end local v3           #k:I
    :cond_12
    move v5, v4

    .line 1652
    goto/16 :goto_0
.end method

.method public static getChars(Ljava/lang/CharSequence;II[CI)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "destoff"

    .prologue
    .line 60
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 62
    .local v0, c:Ljava/lang/Class;
    const-class v3, Ljava/lang/String;

    if-ne v0, v3, :cond_0

    .line 63
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/String;->getChars(II[CI)V

    .line 74
    :goto_0
    return-void

    .line 64
    .restart local p0
    :cond_0
    const-class v3, Ljava/lang/StringBuffer;

    if-ne v0, v3, :cond_1

    .line 65
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuffer;->getChars(II[CI)V

    goto :goto_0

    .line 66
    .restart local p0
    :cond_1
    const-class v3, Ljava/lang/StringBuilder;

    if-ne v0, v3, :cond_2

    .line 67
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/lang/StringBuilder;->getChars(II[CI)V

    goto :goto_0

    .line 68
    .restart local p0
    :cond_2
    instance-of v3, p0, Landroid/text/GetChars;

    if-eqz v3, :cond_3

    .line 69
    check-cast p0, Landroid/text/GetChars;

    .end local p0
    invoke-interface {p0, p1, p2, p3, p4}, Landroid/text/GetChars;->getChars(II[CI)V

    goto :goto_0

    .line 71
    .restart local p0
    :cond_3
    move v2, p1

    .local v2, i:I
    move v1, p4

    .end local p4
    .local v1, destoff:I
    :goto_1
    if-ge v2, p2, :cond_4

    .line 72
    add-int/lit8 p4, v1, 0x1

    .end local v1           #destoff:I
    .restart local p4
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    aput-char v3, p3, v1

    .line 71
    add-int/lit8 v2, v2, 0x1

    move v1, p4

    .end local p4
    .restart local v1       #destoff:I
    goto :goto_1

    :cond_4
    move p4, v1

    .end local v1           #destoff:I
    .restart local p4
    goto :goto_0
.end method

.method public static getOffsetAfter(Ljava/lang/CharSequence;I)I
    .locals 10
    .parameter "text"
    .parameter "offset"

    .prologue
    .line 879
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 881
    .local v5, len:I
    if-ne p1, v5, :cond_0

    move v8, v5

    .line 912
    :goto_0
    return v8

    .line 883
    :cond_0
    const/4 v8, 0x1

    sub-int v8, v5, v8

    if-ne p1, v8, :cond_1

    move v8, v5

    .line 884
    goto :goto_0

    .line 886
    :cond_1
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 888
    .local v1, c:C
    const v8, 0xd800

    if-lt v1, v8, :cond_4

    const v8, 0xdbff

    if-gt v1, v8, :cond_4

    .line 889
    add-int/lit8 v8, p1, 0x1

    invoke-interface {p0, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 891
    .local v2, c1:C
    const v8, 0xdc00

    if-lt v2, v8, :cond_3

    const v8, 0xdfff

    if-gt v2, v8, :cond_3

    .line 892
    add-int/lit8 p1, p1, 0x2

    .line 899
    .end local v2           #c1:C
    :goto_1
    instance-of v8, p0, Landroid/text/Spanned;

    if-eqz v8, :cond_5

    .line 900
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    const-class v9, Landroid/text/style/ReplacementSpan;

    invoke-interface {v8, p1, p1, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/text/style/ReplacementSpan;

    .line 903
    .local v6, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_5

    .line 904
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v7

    .line 905
    .local v7, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v8, v0

    aget-object v9, v6, v4

    invoke-interface {v8, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 907
    .local v3, end:I
    if-ge v7, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 908
    move p1, v3

    .line 903
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 894
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v6           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v7           #start:I
    .restart local v2       #c1:C
    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 896
    .end local v2           #c1:C
    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    move v8, p1

    .line 912
    goto :goto_0
.end method

.method public static getOffsetBefore(Ljava/lang/CharSequence;I)I
    .locals 9
    .parameter "text"
    .parameter "offset"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 844
    if-nez p1, :cond_1

    .line 875
    :cond_0
    :goto_0
    return v7

    .line 846
    :cond_1
    if-eq p1, v8, :cond_0

    .line 849
    sub-int v7, p1, v8

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 851
    .local v1, c:C
    const v7, 0xdc00

    if-lt v1, v7, :cond_4

    const v7, 0xdfff

    if-gt v1, v7, :cond_4

    .line 852
    const/4 v7, 0x2

    sub-int v7, p1, v7

    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 854
    .local v2, c1:C
    const v7, 0xd800

    if-lt v2, v7, :cond_3

    const v7, 0xdbff

    if-gt v2, v7, :cond_3

    .line 855
    add-int/lit8 p1, p1, -0x2

    .line 862
    .end local v2           #c1:C
    :goto_1
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_5

    .line 863
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    const-class v8, Landroid/text/style/ReplacementSpan;

    invoke-interface {v7, p1, p1, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Landroid/text/style/ReplacementSpan;

    .line 866
    .local v5, spans:[Landroid/text/style/ReplacementSpan;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    array-length v7, v5

    if-ge v4, v7, :cond_5

    .line 867
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 868
    .local v6, start:I
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v7, v0

    aget-object v8, v5, v4

    invoke-interface {v7, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 870
    .local v3, end:I
    if-ge v6, p1, :cond_2

    if-le v3, p1, :cond_2

    .line 871
    move p1, v6

    .line 866
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 857
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #spans:[Landroid/text/style/ReplacementSpan;
    .end local v6           #start:I
    .restart local v2       #c1:C
    :cond_3
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 859
    .end local v2           #c1:C
    :cond_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_5
    move v7, p1

    .line 875
    goto :goto_0
.end method

.method public static getReverse(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 482
    new-instance v0, Landroid/text/TextUtils$Reverser;

    invoke-direct {v0, p0, p1, p2}, Landroid/text/TextUtils$Reverser;-><init>(Ljava/lang/CharSequence;II)V

    return-object v0
.end method

.method public static getTrimmedLength(Ljava/lang/CharSequence;)I
    .locals 5
    .parameter "s"

    .prologue
    const/16 v4, 0x20

    .line 440
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 442
    .local v1, len:I
    const/4 v2, 0x0

    .line 443
    .local v2, start:I
    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_0

    .line 444
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 447
    :cond_0
    move v0, v1

    .line 448
    .local v0, end:I
    :goto_1
    if-le v0, v2, :cond_1

    const/4 v3, 0x1

    sub-int v3, v0, v3

    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-gt v3, v4, :cond_1

    .line 449
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 452
    :cond_1
    sub-int v3, v0, v2

    return v3
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "s"

    .prologue
    .line 1384
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1386
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 1387
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 1388
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 1405
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1386
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1390
    :sswitch_0
    const-string v3, "&lt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1393
    :sswitch_1
    const-string v3, "&gt;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1396
    :sswitch_2
    const-string v3, "&amp;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1399
    :sswitch_3
    const-string v3, "&apos;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1402
    :sswitch_4
    const-string v3, "&quot;"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1408
    .end local v0           #c:C
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1388
    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_4
        0x26 -> :sswitch_2
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 1
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .parameter "s"
    .parameter "ch"
    .parameter "start"

    .prologue
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 83
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 84
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 86
    :goto_0
    return v1

    .restart local p0
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static indexOf(Ljava/lang/CharSequence;CII)I
    .locals 8
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v7, -0x1

    .line 90
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 92
    .local v1, c:Ljava/lang/Class;
    instance-of v6, p0, Landroid/text/GetChars;

    if-nez v6, :cond_0

    const-class v6, Ljava/lang/StringBuffer;

    if-eq v1, v6, :cond_0

    const-class v6, Ljava/lang/StringBuilder;

    if-eq v1, v6, :cond_0

    const-class v6, Ljava/lang/String;

    if-ne v1, v6, :cond_5

    .line 94
    :cond_0
    const/16 v0, 0x1f4

    .line 95
    .local v0, INDEX_INCREMENT:I
    const/16 v6, 0x1f4

    invoke-static {v6}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v5

    .line 97
    .local v5, temp:[C
    :goto_0
    if-ge p2, p3, :cond_4

    .line 98
    add-int/lit16 v4, p2, 0x1f4

    .line 99
    .local v4, segend:I
    if-le v4, p3, :cond_1

    .line 100
    move v4, p3

    .line 102
    :cond_1
    const/4 v6, 0x0

    invoke-static {p0, p2, v4, v5, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 104
    sub-int v2, v4, p2

    .line 105
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 106
    aget-char v6, v5, v3

    if-ne v6, p1, :cond_2

    .line 107
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    .line 108
    add-int v6, v3, p2

    .line 123
    .end local v0           #INDEX_INCREMENT:I
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    .end local v5           #temp:[C
    :goto_2
    return v6

    .line 105
    .restart local v0       #INDEX_INCREMENT:I
    .restart local v2       #count:I
    .restart local v3       #i:I
    .restart local v4       #segend:I
    .restart local v5       #temp:[C
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 112
    :cond_3
    move p2, v4

    .line 113
    goto :goto_0

    .line 115
    .end local v2           #count:I
    .end local v3           #i:I
    .end local v4           #segend:I
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->recycle([C)V

    move v6, v7

    .line 116
    goto :goto_2

    .line 119
    .end local v0           #INDEX_INCREMENT:I
    .end local v5           #temp:[C
    :cond_5
    move v3, p2

    .restart local v3       #i:I
    :goto_3
    if-ge v3, p3, :cond_7

    .line 120
    invoke-interface {p0, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v6, p1, :cond_6

    move v6, v3

    .line 121
    goto :goto_2

    .line 119
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    move v6, v7

    .line 123
    goto :goto_2
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 2
    .parameter "s"
    .parameter "needle"

    .prologue
    .line 185
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-static {p0, p1, v0, v1}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I
    .locals 1
    .parameter "s"
    .parameter "needle"
    .parameter "start"

    .prologue
    .line 189
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v0

    return v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I
    .locals 5
    .parameter "s"
    .parameter "needle"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 194
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 195
    .local v1, nlen:I
    if-nez v1, :cond_0

    move v2, p2

    .line 216
    :goto_0
    return v2

    .line 198
    :cond_0
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    .line 201
    .local v0, c:C
    :goto_1
    invoke-static {p0, v0, p2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result p2

    .line 202
    sub-int v2, p3, v1

    if-le p2, v2, :cond_1

    move v2, v3

    .line 216
    goto :goto_0

    .line 206
    :cond_1
    if-gez p2, :cond_2

    move v2, v3

    .line 207
    goto :goto_0

    .line 210
    :cond_2
    invoke-static {p0, p2, p1, v4, v1}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, p2

    .line 211
    goto :goto_0

    .line 214
    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method

.method public static isDigitsOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1494
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1495
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1496
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1497
    const/4 v2, 0x0

    .line 1500
    :goto_1
    return v2

    .line 1495
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1500
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .parameter "str"

    .prologue
    .line 428
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 429
    :cond_0
    const/4 v0, 0x1

    .line 431
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGraphic(C)Z
    .locals 2
    .parameter "c"

    .prologue
    .line 1480
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1481
    .local v0, gc:I
    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isGraphic(Ljava/lang/CharSequence;)Z
    .locals 4
    .parameter "str"

    .prologue
    .line 1460
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    .line 1461
    .local v2, len:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1462
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getType(C)I

    move-result v0

    .line 1463
    .local v0, gc:I
    const/16 v3, 0xf

    if-eq v0, v3, :cond_0

    const/16 v3, 0x10

    if-eq v0, v3, :cond_0

    const/16 v3, 0x13

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 1470
    const/4 v3, 0x1

    .line 1473
    .end local v0           #gc:I
    :goto_1
    return v3

    .line 1461
    .restart local v0       #gc:I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1473
    .end local v0           #gc:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isPrintableAscii(C)Z
    .locals 3
    .parameter "c"

    .prologue
    .line 1507
    const/16 v0, 0x20

    .line 1508
    .local v0, asciiFirst:I
    const/16 v1, 0x7e

    .line 1509
    .local v1, asciiLast:I
    const/16 v2, 0x20

    if-gt v2, p0, :cond_0

    const/16 v2, 0x7e

    if-le p0, v2, :cond_1

    :cond_0
    const/16 v2, 0xd

    if-eq p0, v2, :cond_1

    const/16 v2, 0xa

    if-ne p0, v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z
    .locals 3
    .parameter "str"

    .prologue
    .line 1516
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 1517
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1518
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-static {v2}, Landroid/text/TextUtils;->isPrintableAscii(C)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1519
    const/4 v2, 0x0

    .line 1522
    :goto_1
    return v2

    .line 1517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1522
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public static join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;
    .locals 5
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .local v2, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x1

    .line 289
    .local v0, firstTime:Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 290
    .local v3, token:Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 291
    const/4 v0, 0x0

    .line 295
    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 293
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 297
    .end local v3           #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter "delimiter"
    .parameter "tokens"

    .prologue
    .line 268
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .local v4, sb:Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 270
    .local v1, firstTime:Z
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/Object;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    .line 271
    .local v5, token:Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 272
    const/4 v1, 0x0

    .line 276
    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 278
    .end local v5           #token:Ljava/lang/Object;
    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 2
    .parameter "s"
    .parameter "ch"

    .prologue
    .line 127
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {p0, p1, v0}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v0

    return v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CI)I
    .locals 2
    .parameter "s"
    .parameter "ch"
    .parameter "last"

    .prologue
    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 133
    .local v0, c:Ljava/lang/Class;
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 134
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    .line 136
    :goto_0
    return v1

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, p1, v1, p2}, Landroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v1

    goto :goto_0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;CII)I
    .locals 11
    .parameter "s"
    .parameter "ch"
    .parameter "start"
    .parameter "last"

    .prologue
    const/16 v10, 0x1f4

    const/4 v9, 0x1

    const/4 v8, -0x1

    .line 141
    if-gez p3, :cond_0

    move v7, v8

    .line 181
    :goto_0
    return v7

    .line 143
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-lt p3, v7, :cond_1

    .line 144
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    sub-int p3, v7, v9

    .line 146
    :cond_1
    add-int/lit8 v3, p3, 0x1

    .line 148
    .local v3, end:I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 150
    .local v1, c:Ljava/lang/Class;
    instance-of v7, p0, Landroid/text/GetChars;

    if-nez v7, :cond_2

    const-class v7, Ljava/lang/StringBuffer;

    if-eq v1, v7, :cond_2

    const-class v7, Ljava/lang/StringBuilder;

    if-eq v1, v7, :cond_2

    const-class v7, Ljava/lang/String;

    if-ne v1, v7, :cond_7

    .line 152
    :cond_2
    const/16 v0, 0x1f4

    .line 153
    .local v0, INDEX_INCREMENT:I
    invoke-static {v10}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v6

    .line 155
    .local v6, temp:[C
    :goto_1
    if-ge p2, v3, :cond_6

    .line 156
    sub-int v5, v3, v10

    .line 157
    .local v5, segstart:I
    if-ge v5, p2, :cond_3

    .line 158
    move v5, p2

    .line 160
    :cond_3
    const/4 v7, 0x0

    invoke-static {p0, v5, v3, v6, v7}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 162
    sub-int v2, v3, v5

    .line 163
    .local v2, count:I
    sub-int v4, v2, v9

    .local v4, i:I
    :goto_2
    if-ltz v4, :cond_5

    .line 164
    aget-char v7, v6, v4

    if-ne v7, p1, :cond_4

    .line 165
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    .line 166
    add-int v7, v4, v5

    goto :goto_0

    .line 163
    :cond_4
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 170
    :cond_5
    move v3, v5

    .line 171
    goto :goto_1

    .line 173
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v5           #segstart:I
    :cond_6
    invoke-static {v6}, Landroid/text/TextUtils;->recycle([C)V

    move v7, v8

    .line 174
    goto :goto_0

    .line 177
    .end local v0           #INDEX_INCREMENT:I
    .end local v6           #temp:[C
    :cond_7
    sub-int v4, v3, v9

    .restart local v4       #i:I
    :goto_3
    if-lt v4, p2, :cond_9

    .line 178
    invoke-interface {p0, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, p1, :cond_8

    move v7, v4

    .line 179
    goto :goto_0

    .line 177
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    :cond_9
    move v7, v8

    .line 181
    goto :goto_0
.end method

.method static obtain(I)[C
    .locals 3
    .parameter "len"

    .prologue
    .line 1358
    sget-object v1, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1359
    :try_start_0
    sget-object v0, Landroid/text/TextUtils;->sTemp:[C

    .line 1360
    .local v0, buf:[C
    const/4 v2, 0x0

    sput-object v2, Landroid/text/TextUtils;->sTemp:[C

    .line 1361
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, p0, :cond_1

    .line 1364
    :cond_0
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->idealCharArraySize(I)I

    move-result v1

    new-array v0, v1, [C

    .line 1366
    :cond_1
    return-object v0

    .line 1361
    .end local v0           #buf:[C
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private static readSpan(Landroid/os/Parcel;Landroid/text/Spannable;Ljava/lang/Object;)V
    .locals 3
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 916
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-interface {p1, p2, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 917
    return-void
.end method

.method static recycle([C)V
    .locals 2
    .parameter "temp"

    .prologue
    .line 1370
    array-length v0, p0

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_0

    .line 1376
    :goto_0
    return-void

    .line 1373
    :cond_0
    sget-object v0, Landroid/text/TextUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1374
    :try_start_0
    sput-object p0, Landroid/text/TextUtils;->sTemp:[C

    .line 1375
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z
    .locals 5
    .parameter "one"
    .parameter "toffset"
    .parameter "two"
    .parameter "ooffset"
    .parameter "len"

    .prologue
    .line 222
    mul-int/lit8 v3, p4, 0x2

    invoke-static {v3}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v2

    .line 224
    .local v2, temp:[C
    add-int v3, p1, p4

    const/4 v4, 0x0

    invoke-static {p0, p1, v3, v2, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 225
    add-int v3, p3, p4

    invoke-static {p2, p3, v3, v2, p4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 227
    const/4 v1, 0x1

    .line 228
    .local v1, match:Z
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p4, :cond_0

    .line 229
    aget-char v3, v2, v0

    add-int v4, v0, p4

    aget-char v4, v2, v4

    if-eq v3, v4, :cond_1

    .line 230
    const/4 v1, 0x0

    .line 235
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->recycle([C)V

    .line 236
    return v1

    .line 228
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "template"
    .parameter "sources"
    .parameter "destinations"

    .prologue
    .line 759
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 761
    .local v3, tb:Landroid/text/SpannableStringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v5, p1

    if-ge v1, v5, :cond_1

    .line 762
    aget-object v5, p1, v1

    invoke-static {v3, v5}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v4

    .line 764
    .local v4, where:I
    if-ltz v4, :cond_0

    .line 765
    aget-object v5, p1, v1

    aget-object v6, p1, v1

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v4

    const/16 v7, 0x21

    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 761
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 769
    .end local v4           #where:I
    :cond_1
    const/4 v1, 0x0

    :goto_1
    array-length v5, p1

    if-ge v1, v5, :cond_3

    .line 770
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    .line 771
    .local v2, start:I
    aget-object v5, p1, v1

    invoke-virtual {v3, v5}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 773
    .local v0, end:I
    if-ltz v2, :cond_2

    .line 774
    aget-object v5, p2, v1

    invoke-virtual {v3, v2, v0, v5}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 769
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 778
    .end local v0           #end:I
    .end local v2           #start:I
    :cond_3
    return-object v3
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "expression"

    .prologue
    .line 311
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static split(Ljava/lang/String;Ljava/util/regex/Pattern;)[Ljava/lang/String;
    .locals 1
    .parameter "text"
    .parameter "pattern"

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 329
    sget-object v0, Landroid/text/TextUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 331
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, p0, v0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;I)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static stringOrSpannedString(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "source"

    .prologue
    .line 412
    if-nez p0, :cond_0

    .line 413
    const/4 v0, 0x0

    .line 419
    :goto_0
    return-object v0

    .line 414
    :cond_0
    instance-of v0, p0, Landroid/text/SpannedString;

    if-eqz v0, :cond_1

    move-object v0, p0

    .line 415
    goto :goto_0

    .line 416
    :cond_1
    instance-of v0, p0, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 417
    new-instance v0, Landroid/text/SpannedString;

    invoke-direct {v0, p0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 419
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static substring(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 4
    .parameter "source"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v3, 0x0

    .line 247
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 248
    check-cast p0, Ljava/lang/String;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 259
    :goto_0
    return-object v2

    .line 249
    .restart local p0
    :cond_0
    instance-of v2, p0, Ljava/lang/StringBuilder;

    if-eqz v2, :cond_1

    .line 250
    check-cast p0, Ljava/lang/StringBuilder;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 251
    .restart local p0
    :cond_1
    instance-of v2, p0, Ljava/lang/StringBuffer;

    if-eqz v2, :cond_2

    .line 252
    check-cast p0, Ljava/lang/StringBuffer;

    .end local p0
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 254
    .restart local p0
    :cond_2
    sub-int v2, p2, p1

    invoke-static {v2}, Landroid/text/TextUtils;->obtain(I)[C

    move-result-object v1

    .line 255
    .local v1, temp:[C
    invoke-static {p0, p1, p2, v1, v3}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 256
    new-instance v0, Ljava/lang/String;

    sub-int v2, p2, p1

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .line 257
    .local v0, ret:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->recycle([C)V

    move-object v2, v0

    .line 259
    goto :goto_0
.end method

.method public static writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V
    .locals 10
    .parameter "cs"
    .parameter "p"
    .parameter "parcelableFlags"

    .prologue
    const/4 v9, 0x0

    .line 576
    instance-of v7, p0, Landroid/text/Spanned;

    if-eqz v7, :cond_3

    .line 577
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 580
    move-object v0, p0

    check-cast v0, Landroid/text/Spanned;

    move-object v6, v0

    .line 581
    .local v6, sp:Landroid/text/Spanned;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    const-class v8, Ljava/lang/Object;

    invoke-interface {v6, v9, v7, v8}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    .line 588
    .local v3, os:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v7, v3

    if-ge v1, v7, :cond_2

    .line 589
    aget-object v2, v3, v1

    .line 590
    .local v2, o:Ljava/lang/Object;
    aget-object v4, v3, v1

    .line 592
    .local v4, prop:Ljava/lang/Object;
    instance-of v7, v4, Landroid/text/style/CharacterStyle;

    if-eqz v7, :cond_0

    .line 593
    check-cast v4, Landroid/text/style/CharacterStyle;

    .end local v4           #prop:Ljava/lang/Object;
    invoke-virtual {v4}, Landroid/text/style/CharacterStyle;->getUnderlying()Landroid/text/style/CharacterStyle;

    move-result-object v4

    .line 596
    :cond_0
    instance-of v7, v4, Landroid/text/ParcelableSpan;

    if-eqz v7, :cond_1

    .line 597
    move-object v0, v4

    check-cast v0, Landroid/text/ParcelableSpan;

    move-object v5, v0

    .line 598
    .local v5, ps:Landroid/text/ParcelableSpan;
    invoke-interface {v5}, Landroid/text/ParcelableSpan;->getSpanTypeId()I

    move-result v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 599
    invoke-interface {v5, p1, p2}, Landroid/text/ParcelableSpan;->writeToParcel(Landroid/os/Parcel;I)V

    .line 600
    invoke-static {p1, v6, v2}, Landroid/text/TextUtils;->writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V

    .line 588
    .end local v5           #ps:Landroid/text/ParcelableSpan;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 604
    .end local v2           #o:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p1, v9}, Landroid/os/Parcel;->writeInt(I)V

    .line 613
    .end local v1           #i:I
    .end local v3           #os:[Ljava/lang/Object;
    .end local v6           #sp:Landroid/text/Spanned;
    :goto_1
    return-void

    .line 606
    :cond_3
    const/4 v7, 0x1

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 607
    if-eqz p0, :cond_4

    .line 608
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1

    .line 610
    :cond_4
    const/4 v7, 0x0

    invoke-virtual {p1, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static writeWhere(Landroid/os/Parcel;Landroid/text/Spanned;Ljava/lang/Object;)V
    .locals 1
    .parameter "p"
    .parameter "sp"
    .parameter "o"

    .prologue
    .line 616
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 617
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 619
    return-void
.end method
