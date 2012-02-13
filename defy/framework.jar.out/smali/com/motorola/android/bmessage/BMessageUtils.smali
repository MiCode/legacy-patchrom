.class public Lcom/motorola/android/bmessage/BMessageUtils;
.super Ljava/lang/Object;
.source "BMessageUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDigit(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    const/16 v0, 0x30

    if-lt p0, v0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isLetter(C)Z
    .locals 1
    .parameter "ch"

    .prologue
    const/16 v0, 0x61

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7a

    if-le p0, v0, :cond_1

    :cond_0
    const/16 v0, 0x41

    if-lt p0, v0, :cond_2

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidDigits(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    const-string v0, "^[\\d]+$"

    .local v0, DIGITS_REGEX:Ljava/lang/String;
    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const-string v1, "^[\\d]+$"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isValidEmailAddress(Ljava/lang/String;)Z
    .locals 6
    .parameter "str"

    .prologue
    const/4 v5, 0x0

    const-string v0, "^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,6}$"

    .local v0, EMAIL_REGEX:Ljava/lang/String;
    const/4 v3, 0x6

    .local v3, minLength:I
    const/16 v2, 0x80

    .local v2, maxLength:I
    if-nez p0, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .local v1, length:I
    const/4 v4, 0x6

    if-lt v1, v4, :cond_1

    const/16 v4, 0x80

    if-le v1, v4, :cond_2

    :cond_1
    move v4, v5

    goto :goto_0

    :cond_2
    const-string v4, "^[\\w\\.=-]+@[\\w\\.-]+\\.[\\w]{2,6}$"

    invoke-static {v4, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v5

    goto :goto_0

    :cond_3
    const/4 v4, 0x1

    goto :goto_0
.end method

.method public static isValidTelNumber(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    const-string v0, "^\\+?(\\d+)$"

    .local v0, TEL_REGEX:Ljava/lang/String;
    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const-string v1, "^\\+?(\\d+)$"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isValidWordWithSlash(Ljava/lang/String;)Z
    .locals 3
    .parameter "str"

    .prologue
    const/4 v2, 0x0

    const-string v0, "[\\w\\\\]+"

    .local v0, WORD_SLASH_REGEX:Ljava/lang/String;
    if-nez p0, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    const-string v1, "[\\w\\\\]+"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static maybeUnescapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "str"

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, ""

    :goto_0
    return-object v5

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, builder:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, length:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, ch:C
    const/16 v5, 0x5c

    if-ne v1, v5, :cond_3

    const/4 v5, 0x1

    sub-int v5, v3, v5

    if-ge v2, v5, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .local v4, next_ch:C
    const/16 v5, 0x6e

    if-eq v4, v5, :cond_1

    const/16 v5, 0x4e

    if-ne v4, v5, :cond_2

    :cond_1
    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .end local v4           #next_ch:C
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .restart local v4       #next_ch:C
    :cond_2
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v4           #next_ch:C
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .end local v1           #ch:C
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method
