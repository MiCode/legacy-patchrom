.class public final Landroid/text/format/Formatter;
.super Ljava/lang/Object;
.source "Formatter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;
    .locals 9
    .parameter "context"
    .parameter "number"
    .parameter "shorter"

    .prologue
    const/high16 v5, 0x4480

    const/high16 v4, 0x4461

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, "%.2f"

    .line 47
    if-nez p0, :cond_0

    .line 48
    const-string v3, ""

    .line 91
    :goto_0
    return-object v3

    .line 51
    :cond_0
    long-to-float v0, p1

    .line 52
    .local v0, result:F
    const v1, 0x10400b2

    .line 53
    .local v1, suffix:I
    cmpl-float v3, v0, v4

    if-lez v3, :cond_1

    .line 54
    const v1, 0x10400b3

    .line 55
    div-float/2addr v0, v5

    .line 57
    :cond_1
    cmpl-float v3, v0, v4

    if-lez v3, :cond_2

    .line 58
    const v1, 0x10400b4

    .line 59
    div-float/2addr v0, v5

    .line 61
    :cond_2
    cmpl-float v3, v0, v4

    if-lez v3, :cond_3

    .line 62
    const v1, 0x10400b5

    .line 63
    div-float/2addr v0, v5

    .line 65
    :cond_3
    cmpl-float v3, v0, v4

    if-lez v3, :cond_4

    .line 66
    const v1, 0x10400b6

    .line 67
    div-float/2addr v0, v5

    .line 69
    :cond_4
    cmpl-float v3, v0, v4

    if-lez v3, :cond_5

    .line 70
    const v1, 0x10400b7

    .line 71
    div-float/2addr v0, v5

    .line 74
    :cond_5
    const/high16 v3, 0x3f80

    cmpg-float v3, v0, v3

    if-gez v3, :cond_6

    .line 75
    const-string v3, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, value:Ljava/lang/String;
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10400b8

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 76
    .end local v2           #value:Ljava/lang/String;
    :cond_6
    const/high16 v3, 0x4120

    cmpg-float v3, v0, v3

    if-gez v3, :cond_8

    .line 77
    if-eqz p3, :cond_7

    .line 78
    const-string v3, "%.1f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 80
    .end local v2           #value:Ljava/lang/String;
    :cond_7
    const-string v3, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 82
    .end local v2           #value:Ljava/lang/String;
    :cond_8
    const/high16 v3, 0x42c8

    cmpg-float v3, v0, v3

    if-gez v3, :cond_a

    .line 83
    if-eqz p3, :cond_9

    .line 84
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 86
    .end local v2           #value:Ljava/lang/String;
    :cond_9
    const-string v3, "%.2f"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v8, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1

    .line 89
    .end local v2           #value:Ljava/lang/String;
    :cond_a
    const-string v3, "%.0f"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .restart local v2       #value:Ljava/lang/String;
    goto :goto_1
.end method

.method public static formatIpAddress(I)Ljava/lang/String;
    .locals 4
    .parameter "addr"

    .prologue
    const/16 v3, 0x2e

    .line 105
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 106
    .local v0, buf:Ljava/lang/StringBuffer;
    and-int/lit16 v1, p0, 0xff

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    ushr-int/lit8 p0, p0, 0x8

    and-int/lit16 v2, p0, 0xff

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 110
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;
    .locals 1
    .parameter "context"
    .parameter "number"

    .prologue
    .line 43
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
