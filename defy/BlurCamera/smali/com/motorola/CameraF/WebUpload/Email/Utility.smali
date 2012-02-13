.class public Lcom/motorola/CameraF/WebUpload/Email/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 4
    .parameter "parts"
    .parameter "seperator"

    .prologue
    .line 49
    if-nez p0, :cond_0

    .line 50
    const/4 v2, 0x0

    .line 59
    :goto_0
    return-object v2

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 53
    .local v1, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 54
    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 55
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v0, v2, :cond_1

    .line 56
    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 59
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static fastUrlDecode(Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .parameter "s"

    .prologue
    const/16 v10, 0x30

    const/16 v9, 0x9

    const-string v8, "UTF-8"

    .line 106
    :try_start_0
    const-string v8, "UTF-8"

    invoke-virtual {p0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 108
    .local v0, bytes:[B
    const/4 v6, 0x0

    .line 109
    .local v6, length:I
    const/4 v4, 0x0

    .local v4, i:I
    array-length v2, v0

    .local v2, count:I
    :goto_0
    if-ge v4, v2, :cond_4

    .line 110
    aget-byte v1, v0, v4

    .line 111
    .local v1, ch:B
    const/16 v8, 0x25

    if-ne v1, v8, :cond_2

    .line 112
    add-int/lit8 v8, v4, 0x1

    aget-byte v8, v0, v8

    sub-int v3, v8, v10

    .line 113
    .local v3, h:I
    add-int/lit8 v8, v4, 0x2

    aget-byte v8, v0, v8

    sub-int v5, v8, v10

    .line 114
    .local v5, l:I
    if-le v3, v9, :cond_0

    .line 115
    add-int/lit8 v3, v3, -0x7

    .line 117
    :cond_0
    if-le v5, v9, :cond_1

    .line 118
    add-int/lit8 v5, v5, -0x7

    .line 120
    :cond_1
    shl-int/lit8 v8, v3, 0x4

    or-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v0, v6

    .line 121
    add-int/lit8 v4, v4, 0x2

    .line 129
    .end local v3           #h:I
    .end local v5           #l:I
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 109
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 123
    :cond_2
    const/16 v8, 0x2b

    if-ne v1, v8, :cond_3

    .line 124
    const/16 v8, 0x20

    aput-byte v8, v0, v6

    goto :goto_1

    .line 133
    .end local v0           #bytes:[B
    .end local v1           #ch:B
    .end local v2           #count:I
    .end local v4           #i:I
    .end local v6           #length:I
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 134
    .local v7, uee:Ljava/io/UnsupportedEncodingException;
    const/4 v8, 0x0

    .end local v7           #uee:Ljava/io/UnsupportedEncodingException;
    :goto_2
    return-object v8

    .line 127
    .restart local v0       #bytes:[B
    .restart local v1       #ch:B
    .restart local v2       #count:I
    .restart local v4       #i:I
    .restart local v6       #length:I
    :cond_3
    aget-byte v8, v0, v4

    aput-byte v8, v0, v6

    goto :goto_1

    .line 131
    .end local v1           #ch:B
    :cond_4
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "UTF-8"

    invoke-direct {v8, v0, v9, v6, v10}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2
.end method

.method public static quoteString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "s"

    .prologue
    const-string v2, "\""

    .line 88
    if-nez p0, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 95
    :goto_0
    return-object v0

    .line 91
    :cond_0
    const-string v0, "^\".*\"$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, p0

    .line 95
    goto :goto_0
.end method

.method public static final readInputStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "in"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 30
    .local v2, reader:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 32
    .local v3, sb:Ljava/lang/StringBuffer;
    const/16 v4, 0x200

    new-array v0, v4, [C

    .line 33
    .local v0, buf:[C
    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v1

    .local v1, count:I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_0

    .line 34
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static requiredFieldValid(Landroid/text/Editable;)Z
    .locals 1
    .parameter "s"

    .prologue
    .line 67
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static requiredFieldValid(Landroid/widget/TextView;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
