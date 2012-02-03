.class public Lcom/broadcom/bt/util/SearchUtil;
.super Ljava/lang/Object;
.source "SearchUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static binarySearch([II)I
    .locals 7
    .parameter "dictionary"
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    .line 29
    array-length v5, p0

    sub-int v1, v5, v6

    .line 31
    .local v1, last:I
    const/4 v0, 0x0

    .line 32
    .local v0, l:I
    move v4, v1

    .line 35
    .local v4, r:I
    :cond_0
    add-int v5, v0, v4

    div-int/lit8 v2, v5, 0x2

    .line 36
    .local v2, m:I
    aget v3, p0, v2

    .line 37
    .local v3, midVal:I
    if-ne v3, p1, :cond_1

    move v5, v2

    .line 45
    :goto_0
    return v5

    .line 39
    :cond_1
    if-ge v3, p1, :cond_3

    .line 40
    add-int/lit8 v0, v2, 0x1

    .line 44
    :cond_2
    :goto_1
    if-le v0, v4, :cond_0

    .line 45
    const/4 v5, -0x1

    goto :goto_0

    .line 41
    :cond_3
    if-le v3, p1, :cond_2

    .line 42
    sub-int v4, v2, v6

    goto :goto_1
.end method

.method public static indexOf([II)I
    .locals 2
    .parameter "intArray"
    .parameter "val"

    .prologue
    .line 49
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 50
    aget v1, p0, v0

    if-ne p1, v1, :cond_0

    move v1, v0

    .line 54
    :goto_1
    return v1

    .line 49
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public static search([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .parameter "dictionary"
    .parameter "val"

    .prologue
    .line 59
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 60
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v0

    .line 64
    :goto_1
    return v1

    .line 59
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 64
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method
