.class public Lcom/android/internal/telephony/IccUtils;
.super Ljava/lang/Object;
.source "IccUtils.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "IccUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adnStringFieldToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    sub-int v0, p2, v0

    div-int/lit8 v2, v0, 0x2

    .local v2, ucslen:I
    const/4 v1, 0x0

    .local v1, ret:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v2, v2, 0x2

    const-string v4, "utf-16be"

    .end local v2           #ucslen:I
    invoke-direct {v0, p0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p2
    .local p0, ucslen:I
    :goto_1
    if-lez p0, :cond_0

    const/4 p2, 0x1

    sub-int p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const v1, 0xffff

    if-ne p2, v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .end local v0           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    .local p0, data:[B
    .restart local p2
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_0

    .end local p2
    .local p0, ucslen:I
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local v0           #ret:Ljava/lang/String;
    .end local p0           #ucslen:I
    :goto_2
    return-object p0

    .local p0, data:[B
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    .local v1, isucs2:Z
    const/4 v0, 0x0

    .local v0, base:C
    const/4 v2, 0x0

    .local v2, len:I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_3

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x3

    sub-int v1, p2, v1

    if-le v0, v1, :cond_9

    .end local v1           #isucs2:Z
    const/4 v0, 0x3

    sub-int v0, p2, v0

    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_3
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x7

    int-to-char v0, v0

    .local v0, base:C
    add-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    .restart local v1       #isucs2:Z
    :cond_2
    :goto_4
    if-eqz v1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, ret:Ljava/lang/StringBuilder;
    move p2, v2

    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .local p2, len:I
    :goto_5
    if-lez p2, :cond_5

    aget-byte v1, p0, p1

    if-gez v1, :cond_7

    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    .end local p2           #len:I
    .local v1, len:I
    :goto_6
    const/4 p2, 0x0

    .local p2, count:I
    :goto_7
    if-ge p2, v1, :cond_4

    add-int v2, p1, p2

    aget-byte v2, p0, v2

    if-ltz v2, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_3
    const/4 v3, 0x4

    if-lt p2, v3, :cond_2

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x4

    sub-int v1, p2, v1

    if-le v0, v1, :cond_8

    .end local v1           #isucs2:Z
    const/4 v0, 0x4

    sub-int v0, p2, v0

    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_8
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    .local v0, base:C
    add-int/lit8 p1, p1, 0x4

    const/4 v1, 0x1

    .restart local v1       #isucs2:Z
    goto :goto_4

    .end local v2           #len:I
    .local v1, len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, count:I
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    sub-int p2, v1, p2

    .end local v1           #len:I
    .local p2, len:I
    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_6
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, len:I
    :cond_7
    move v1, p2

    .end local p2           #len:I
    .local v1, len:I
    goto :goto_6

    .end local v1           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v0, len:I
    .local p2, length:I
    :cond_8
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_8

    .end local v2           #len:I
    .restart local v0       #len:I
    :cond_9
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_3
.end method

.method public static adnStringFieldToStringForHKT([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v0, 0x1

    if-lt p2, v0, :cond_1

    aget-byte v0, p0, p1

    const/16 v1, -0x80

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    sub-int v0, p2, v0

    div-int/lit8 v2, v0, 0x2

    .local v2, ucslen:I
    const/4 v1, 0x0

    .local v1, ret:Ljava/lang/String;
    :try_start_0
    new-instance v0, Ljava/lang/String;

    add-int/lit8 v3, p1, 0x1

    mul-int/lit8 v2, v2, 0x2

    const-string v4, "utf-16be"

    .end local v2           #ucslen:I
    invoke-direct {v0, p0, v3, v2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p0

    .end local p2
    .local p0, ucslen:I
    :goto_1
    if-lez p0, :cond_0

    const/4 p2, 0x1

    sub-int p2, p0, p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const v1, 0xffff

    if-ne p2, v1, :cond_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_1

    .end local v0           #ret:Ljava/lang/String;
    .restart local v1       #ret:Ljava/lang/String;
    .local p0, data:[B
    .restart local p2
    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, "IccUtils"

    const-string v3, "implausible UnsupportedEncodingException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .end local v1           #ret:Ljava/lang/String;
    .local v0, ret:Ljava/lang/String;
    goto :goto_0

    .end local p2
    .local p0, ucslen:I
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {v0, p2, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .end local v0           #ret:Ljava/lang/String;
    .end local p0           #ucslen:I
    :goto_2
    return-object p0

    .local p0, data:[B
    .restart local p2
    :cond_1
    const/4 v1, 0x0

    .local v1, isucs2:Z
    const/4 v0, 0x0

    .local v0, base:C
    const/4 v2, 0x0

    .local v2, len:I
    const/4 v3, 0x3

    if-lt p2, v3, :cond_3

    aget-byte v3, p0, p1

    const/16 v4, -0x7f

    if-ne v3, v4, :cond_3

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x3

    sub-int v1, p2, v1

    if-le v0, v1, :cond_9

    .end local v1           #isucs2:Z
    const/4 v0, 0x3

    sub-int v0, p2, v0

    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_3
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x7

    int-to-char v0, v0

    .local v0, base:C
    add-int/lit8 p1, p1, 0x3

    const/4 v1, 0x1

    .restart local v1       #isucs2:Z
    :cond_2
    :goto_4
    if-eqz v1, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, ret:Ljava/lang/StringBuilder;
    move p2, v2

    .end local v1           #isucs2:Z
    .end local v2           #len:I
    .local p2, len:I
    :goto_5
    if-lez p2, :cond_5

    aget-byte v1, p0, p1

    if-gez v1, :cond_7

    aget-byte v1, p0, p1

    and-int/lit8 v1, v1, 0x7f

    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, -0x1

    move v1, p2

    .end local p2           #len:I
    .local v1, len:I
    :goto_6
    const/4 p2, 0x0

    .local p2, count:I
    :goto_7
    if-ge p2, v1, :cond_4

    add-int v2, p1, p2

    aget-byte v2, p0, v2

    if-ltz v2, :cond_4

    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_3
    const/4 v3, 0x4

    if-lt p2, v3, :cond_2

    aget-byte v3, p0, p1

    const/16 v4, -0x7e

    if-ne v3, v4, :cond_2

    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    .end local v0           #base:C
    and-int/lit16 v0, v0, 0xff

    .end local v2           #len:I
    .local v0, len:I
    const/4 v1, 0x4

    sub-int v1, p2, v1

    if-le v0, v1, :cond_8

    .end local v1           #isucs2:Z
    const/4 v0, 0x4

    sub-int v0, p2, v0

    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    :goto_8
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-char v0, v0

    .local v0, base:C
    add-int/lit8 p1, p1, 0x4

    const/4 v1, 0x1

    .restart local v1       #isucs2:Z
    goto :goto_4

    .end local v2           #len:I
    .local v1, len:I
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    .local p2, count:I
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, p2

    sub-int p2, v1, p2

    .end local v1           #len:I
    .local p2, len:I
    goto :goto_5

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v1, isucs2:Z
    .restart local v2       #len:I
    .local p2, length:I
    :cond_6
    const/4 v0, 0x0

    .end local v2           #len:I
    .local v0, len:I
    add-int/lit8 p2, p2, 0x1

    .end local v0           #len:I
    .local p2, len:I
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->gsm8BitUnpackedToString([BII)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_2

    .end local v1           #isucs2:Z
    .local v0, base:C
    .restart local v3       #ret:Ljava/lang/StringBuilder;
    :cond_7
    move v1, p2

    .end local p2           #len:I
    .local v1, len:I
    goto :goto_6

    .end local v1           #len:I
    .end local v3           #ret:Ljava/lang/StringBuilder;
    .local v0, len:I
    .local p2, length:I
    :cond_8
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_8

    .end local v2           #len:I
    .restart local v0       #len:I
    :cond_9
    move v2, v0

    .end local v0           #len:I
    .restart local v2       #len:I
    goto :goto_3
.end method

.method public static bcdToString([BII)Ljava/lang/String;
    .locals 5
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/16 v4, 0x9

    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v3, p2, 0x2

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v1, ret:Ljava/lang/StringBuilder;
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v3, p1, p2

    if-ge v0, v3, :cond_0

    aget-byte v3, p0, v0

    and-int/lit8 v2, v3, 0xf

    .local v2, v:I
    if-le v2, v4, :cond_1

    .end local v2           #v:I
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .restart local v2       #v:I
    :cond_1
    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v3, p0, v0

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v2, v3, 0xf

    if-gt v2, v4, :cond_0

    add-int/lit8 v3, v2, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static bitToRGB(I)I
    .locals 1
    .parameter "bit"

    .prologue
    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x100

    goto :goto_0
.end method

.method public static bytesToHexString([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "bytes"
    .parameter "strSep"

    .prologue
    const-string v6, "0123456789abcdef"

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    if-nez p1, :cond_2

    const/4 v4, 0x0

    move v3, v4

    .local v3, sepLen:I
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    add-int/lit8 v4, v3, 0x2

    array-length v5, p0

    mul-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .local v2, ret:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_3

    aget-byte v4, p0, v1

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v0, v4, 0xf

    .local v0, b:I
    const-string v4, "0123456789abcdef"

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-byte v4, p0, v1

    and-int/lit8 v0, v4, 0xf

    const-string v4, "0123456789abcdef"

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-lez v3, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v0           #b:I
    .end local v1           #i:I
    .end local v2           #ret:Ljava/lang/StringBuilder;
    .end local v3           #sepLen:I
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    move v3, v4

    goto :goto_1

    .restart local v1       #i:I
    .restart local v2       #ret:Ljava/lang/StringBuilder;
    .restart local v3       #sepLen:I
    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static bytesToHexStringWithSpaceSep([B)Ljava/lang/String;
    .locals 1
    .parameter "bytes"

    .prologue
    const-string v0, " "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexStringInternal([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static cdmaBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v1, v1, 0xf

    mul-int/lit8 v0, v1, 0xa

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private static getCLUT([BII)[I
    .locals 9
    .parameter "rawData"
    .parameter "offset"
    .parameter "number"

    .prologue
    if-nez p0, :cond_0

    const/4 v7, 0x0

    :goto_0
    return-object v7

    :cond_0
    new-array v4, p2, [I

    .local v4, result:[I
    mul-int/lit8 v7, p2, 0x3

    add-int v3, p1, v7

    .local v3, endIndex:I
    move v5, p1

    .local v5, valueIndex:I
    const/4 v1, 0x0

    .local v1, colorIndex:I
    const/high16 v0, -0x100

    .local v0, alpha:I
    :goto_1
    add-int/lit8 v2, v1, 0x1

    .end local v1           #colorIndex:I
    .local v2, colorIndex:I
    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .local v6, valueIndex:I
    aget-byte v7, p0, v5

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v7, v0

    add-int/lit8 v5, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    aget-byte v8, p0, v6

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    add-int/lit8 v6, v5, 0x1

    .end local v5           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v8, p0, v5

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    aput v7, v4, v1

    if-lt v6, v3, :cond_1

    move-object v7, v4

    goto :goto_0

    :cond_1
    move v1, v2

    .end local v2           #colorIndex:I
    .restart local v1       #colorIndex:I
    move v5, v6

    .end local v6           #valueIndex:I
    .restart local v5       #valueIndex:I
    goto :goto_1
.end method

.method public static gsmBcdByteToInt(B)I
    .locals 3
    .parameter "b"

    .prologue
    const/4 v0, 0x0

    .local v0, ret:I
    and-int/lit16 v1, p0, 0xf0

    const/16 v2, 0x90

    if-gt v1, v2, :cond_0

    shr-int/lit8 v1, p0, 0x4

    and-int/lit8 v0, v1, 0xf

    :cond_0
    and-int/lit8 v1, p0, 0xf

    const/16 v2, 0x9

    if-gt v1, v2, :cond_1

    and-int/lit8 v1, p0, 0xf

    mul-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method static hexCharToInt(C)I
    .locals 4
    .parameter "c"

    .prologue
    const/16 v3, 0x61

    const/16 v2, 0x41

    const/16 v1, 0x30

    if-lt p0, v1, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    sub-int v0, p0, v1

    :goto_0
    return v0

    :cond_0
    if-lt p0, v2, :cond_1

    const/16 v0, 0x46

    if-gt p0, v0, :cond_1

    sub-int v0, p0, v2

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_1
    if-lt p0, v3, :cond_2

    const/16 v0, 0x66

    if-gt p0, v0, :cond_2

    sub-int v0, p0, v3

    add-int/lit8 v0, v0, 0xa

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid hex char \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static hexStringToBytes(Ljava/lang/String;)[B
    .locals 6
    .parameter "s"

    .prologue
    if-nez p0, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, sz:I
    div-int/lit8 v3, v2, 0x2

    new-array v1, v3, [B

    .local v1, ret:[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_1

    div-int/lit8 v3, v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexCharToInt(C)I

    move-result v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    move-object v3, v1

    goto :goto_0
.end method

.method private static mapTo2OrderBitColor([BII[II)[I
    .locals 11
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v10, 0x8

    rem-int v9, v10, p4

    if-eqz v9, :cond_0

    const-string v9, "IccUtils"

    const-string v10, "not event number of color"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v9

    :goto_0
    return-object v9

    :cond_0
    const/4 v0, 0x1

    .local v0, mask:I
    packed-switch p4, :pswitch_data_0

    :goto_1
    :pswitch_0
    new-array v2, p2, [I

    .local v2, resultArray:[I
    const/4 v3, 0x0

    .local v3, resultIndex:I
    div-int v5, v10, p4

    .local v5, run:I
    move v8, p1

    .end local p1
    .local v8, valueIndex:I
    :goto_2
    if-ge v3, p2, :cond_2

    add-int/lit8 p1, v8, 0x1

    .end local v8           #valueIndex:I
    .restart local p1
    aget-byte v7, p0, v8

    .local v7, tempByte:B
    const/4 v6, 0x0

    .local v6, runIndex:I
    move v4, v3

    .end local v3           #resultIndex:I
    .local v4, resultIndex:I
    :goto_3
    if-ge v6, v5, :cond_1

    sub-int v9, v5, v6

    const/4 v10, 0x1

    sub-int v1, v9, v10

    .local v1, offset:I
    add-int/lit8 v3, v4, 0x1

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    mul-int v9, v1, p4

    shr-int v9, v7, v9

    and-int/2addr v9, v0

    aget v9, p3, v9

    aput v9, v2, v4

    add-int/lit8 v6, v6, 0x1

    move v4, v3

    .end local v3           #resultIndex:I
    .restart local v4       #resultIndex:I
    goto :goto_3

    .end local v1           #offset:I
    .end local v2           #resultArray:[I
    .end local v4           #resultIndex:I
    .end local v5           #run:I
    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_2
    const/4 v0, 0x3

    goto :goto_1

    :pswitch_3
    const/16 v0, 0xf

    goto :goto_1

    :pswitch_4
    const/16 v0, 0xff

    goto :goto_1

    .restart local v2       #resultArray:[I
    .restart local v4       #resultIndex:I
    .restart local v5       #run:I
    .restart local v6       #runIndex:I
    .restart local v7       #tempByte:B
    :cond_1
    move v3, v4

    .end local v4           #resultIndex:I
    .restart local v3       #resultIndex:I
    move v8, p1

    .end local p1
    .restart local v8       #valueIndex:I
    goto :goto_2

    .end local v6           #runIndex:I
    .end local v7           #tempByte:B
    :cond_2
    move p1, v8

    .end local v8           #valueIndex:I
    .restart local p1
    move-object v9, v2

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private static mapToNon2OrderBitColor([BII[II)[I
    .locals 3
    .parameter "data"
    .parameter "valueIndex"
    .parameter "length"
    .parameter "colorArray"
    .parameter "bits"

    .prologue
    const/16 v1, 0x8

    rem-int/2addr v1, p4

    if-nez v1, :cond_0

    const-string v1, "IccUtils"

    const-string v2, "not odd number of color"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    new-array v0, p2, [I

    .local v0, resultArray:[I
    move-object v1, v0

    goto :goto_0
.end method

.method public static networkNameToString([BII)Ljava/lang/String;
    .locals 7
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v6, 0x1

    aget-byte v4, p0, p1

    and-int/lit16 v4, v4, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    if-ge p2, v6, :cond_1

    :cond_0
    const-string v4, ""

    :goto_0
    return-object v4

    :cond_1
    aget-byte v4, p0, p1

    ushr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0x7

    packed-switch v4, :pswitch_data_0

    const-string v2, ""

    .local v2, ret:Ljava/lang/String;
    :goto_1
    aget-byte v4, p0, p1

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2

    :cond_2
    move-object v4, v2

    goto :goto_0

    .end local v2           #ret:Ljava/lang/String;
    :pswitch_0
    aget-byte v4, p0, p1

    and-int/lit8 v3, v4, 0x7

    .local v3, unusedBits:I
    sub-int v4, p2, v6

    mul-int/lit8 v4, v4, 0x8

    sub-int/2addr v4, v3

    div-int/lit8 v0, v4, 0x7

    .local v0, countSeptets:I
    add-int/lit8 v4, p1, 0x1

    invoke-static {p0, v4, v0}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .end local v0           #countSeptets:I
    .end local v2           #ret:Ljava/lang/String;
    .end local v3           #unusedBits:I
    :pswitch_1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    add-int/lit8 v4, p1, 0x1

    sub-int v5, p2, v6

    const-string v6, "utf-16"

    invoke-direct {v2, p0, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2       #ret:Ljava/lang/String;
    goto :goto_1

    .end local v2           #ret:Ljava/lang/String;
    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Ljava/io/UnsupportedEncodingException;
    const-string v2, ""

    .restart local v2       #ret:Ljava/lang/String;
    const-string v4, "IccUtils"

    const-string v5, "implausible UnsupportedEncodingException"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static parseToBnW([BI)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "data"
    .parameter "length"

    .prologue
    const/4 v8, 0x0

    .local v8, valueIndex:I
    add-int/lit8 v9, v8, 0x1

    .end local v8           #valueIndex:I
    .local v9, valueIndex:I
    aget-byte v11, p0, v8

    and-int/lit16 v10, v11, 0xff

    .local v10, width:I
    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v11, p0, v9

    and-int/lit16 v3, v11, 0xff

    .local v3, height:I
    mul-int v4, v10, v3

    .local v4, numOfPixels:I
    new-array v7, v4, [I

    .local v7, pixels:[I
    const/4 v5, 0x0

    .local v5, pixelIndex:I
    const/4 v0, 0x7

    .local v0, bitIndex:I
    const/4 v2, 0x0

    .local v2, currentByte:B
    move v6, v5

    .end local v5           #pixelIndex:I
    .local v6, pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    :goto_0
    if-ge v6, v4, :cond_0

    rem-int/lit8 v11, v6, 0x8

    if-nez v11, :cond_2

    add-int/lit8 v8, v9, 0x1

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    aget-byte v2, p0, v9

    const/4 v0, 0x7

    :goto_1
    add-int/lit8 v5, v6, 0x1

    .end local v6           #pixelIndex:I
    .restart local v5       #pixelIndex:I
    add-int/lit8 v1, v0, -0x1

    .end local v0           #bitIndex:I
    .local v1, bitIndex:I
    shr-int v11, v2, v0

    and-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Lcom/android/internal/telephony/IccUtils;->bitToRGB(I)I

    move-result v11

    aput v11, v7, v6

    move v0, v1

    .end local v1           #bitIndex:I
    .restart local v0       #bitIndex:I
    move v6, v5

    .end local v5           #pixelIndex:I
    .restart local v6       #pixelIndex:I
    move v9, v8

    .end local v8           #valueIndex:I
    .restart local v9       #valueIndex:I
    goto :goto_0

    :cond_0
    if-eq v6, v4, :cond_1

    const-string v11, "IccUtils"

    const-string v12, "parse end and size error"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v3, v11}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    return-object v11

    :cond_2
    move v8, v9

    .end local v9           #valueIndex:I
    .restart local v8       #valueIndex:I
    goto :goto_1
.end method

.method public static parseToRGB([BIZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "data"
    .parameter "length"
    .parameter "transparency"

    .prologue
    const/4 v11, 0x1

    const/4 v6, 0x0

    .local v6, valueIndex:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .local v7, valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v8, v9, 0xff

    .local v8, width:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v4, v9, 0xff

    .local v4, height:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v0, v9, 0xff

    .local v0, bits:I
    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v9, p0, v7

    and-int/lit16 v3, v9, 0xff

    .local v3, colorNumber:I
    add-int/lit8 v7, v6, 0x1

    .end local v6           #valueIndex:I
    .restart local v7       #valueIndex:I
    aget-byte v9, p0, v6

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    add-int/lit8 v6, v7, 0x1

    .end local v7           #valueIndex:I
    .restart local v6       #valueIndex:I
    aget-byte v10, p0, v7

    and-int/lit16 v10, v10, 0xff

    or-int v1, v9, v10

    .local v1, clutOffset:I
    const/4 v9, 0x6

    sub-int/2addr p1, v9

    invoke-static {p0, v1, v3}, Lcom/android/internal/telephony/IccUtils;->getCLUT([BII)[I

    move-result-object v2

    .local v2, colorIndexArray:[I
    if-ne v11, p2, :cond_0

    sub-int v9, v3, v11

    const/4 v10, 0x0

    aput v10, v2, v9

    :cond_0
    const/4 v5, 0x0

    .local v5, resultArray:[I
    const/16 v9, 0x8

    rem-int/2addr v9, v0

    if-nez v9, :cond_1

    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapTo2OrderBitColor([BII[II)[I

    move-result-object v5

    :goto_0
    sget-object v9, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v8, v4, v9}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9

    :cond_1
    mul-int v9, v8, v4

    invoke-static {p0, v6, v9, v2, v0}, Lcom/android/internal/telephony/IccUtils;->mapToNon2OrderBitColor([BII[II)[I

    move-result-object v5

    goto :goto_0
.end method
