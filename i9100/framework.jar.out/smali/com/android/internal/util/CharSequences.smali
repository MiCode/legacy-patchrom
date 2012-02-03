.class public Lcom/android/internal/util/CharSequences;
.super Ljava/lang/Object;
.source "CharSequences.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 10
    .parameter "me"
    .parameter "another"

    .prologue
    .line 119
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    .local v4, myLen:I
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 120
    .local v0, anotherLen:I
    const/4 v5, 0x0

    .local v5, myPos:I
    const/4 v1, 0x0

    .line 121
    .local v1, anotherPos:I
    if-ge v4, v0, :cond_0

    move v3, v4

    .local v3, end:I
    :goto_0
    move v2, v1

    .end local v1           #anotherPos:I
    .local v2, anotherPos:I
    move v6, v5

    .line 123
    .end local v5           #myPos:I
    .local v6, myPos:I
    :goto_1
    if-ge v6, v3, :cond_1

    .line 124
    add-int/lit8 v5, v6, 0x1

    .end local v6           #myPos:I
    .restart local v5       #myPos:I
    invoke-interface {p0, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    add-int/lit8 v1, v2, 0x1

    .end local v2           #anotherPos:I
    .restart local v1       #anotherPos:I
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v9}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v9

    sub-int v7, v8, v9

    .local v7, result:I
    if-eqz v7, :cond_2

    move v8, v7

    .line 129
    .end local v7           #result:I
    :goto_2
    return v8

    .end local v3           #end:I
    :cond_0
    move v3, v0

    .line 121
    goto :goto_0

    .line 129
    .end local v1           #anotherPos:I
    .end local v5           #myPos:I
    .restart local v2       #anotherPos:I
    .restart local v3       #end:I
    .restart local v6       #myPos:I
    :cond_1
    sub-int v8, v4, v0

    move v1, v2

    .end local v2           #anotherPos:I
    .restart local v1       #anotherPos:I
    move v5, v6

    .end local v6           #myPos:I
    .restart local v5       #myPos:I
    goto :goto_2

    .restart local v7       #result:I
    :cond_2
    move v2, v1

    .end local v1           #anotherPos:I
    .restart local v2       #anotherPos:I
    move v6, v5

    .end local v5           #myPos:I
    .restart local v6       #myPos:I
    goto :goto_1
.end method

.method public static equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    .locals 5
    .parameter "a"
    .parameter "b"

    .prologue
    const/4 v4, 0x0

    .line 97
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-eq v2, v3, :cond_0

    move v2, v4

    .line 107
    :goto_0
    return v2

    .line 101
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 102
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 103
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v2, v3, :cond_1

    move v2, v4

    .line 104
    goto :goto_0

    .line 102
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 107
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static forAsciiBytes([B)Ljava/lang/CharSequence;
    .locals 1
    .parameter "bytes"

    .prologue
    .line 31
    new-instance v0, Lcom/android/internal/util/CharSequences$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/CharSequences$1;-><init>([B)V

    return-object v0
.end method

.method public static forAsciiBytes([BII)Ljava/lang/CharSequence;
    .locals 1
    .parameter "bytes"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 63
    array-length v0, p0

    invoke-static {p1, p2, v0}, Lcom/android/internal/util/CharSequences;->validate(III)V

    .line 64
    new-instance v0, Lcom/android/internal/util/CharSequences$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/util/CharSequences$2;-><init>([BII)V

    return-object v0
.end method

.method static validate(III)V
    .locals 1
    .parameter "start"
    .parameter "end"
    .parameter "length"

    .prologue
    .line 87
    if-gez p0, :cond_0

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 88
    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 89
    :cond_1
    if-le p1, p2, :cond_2

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 90
    :cond_2
    if-le p0, p1, :cond_3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 91
    :cond_3
    return-void
.end method
