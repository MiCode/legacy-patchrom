.class public Landroid/util/SparseIntArray;
.super Ljava/lang/Object;
.source "SparseIntArray.java"


# instance fields
.field private mKeys:[I

.field private mSize:I

.field private mValues:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .parameter "initialCapacity"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return-void
.end method

.method private static binarySearch([IIII)I
    .locals 5
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    const/4 v4, 0x1

    add-int v1, p1, p2

    .local v1, high:I
    sub-int v2, p1, v4

    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    if-le v3, v4, :cond_1

    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .local v0, guess:I
    aget v3, p0, v0

    if-ge v3, p3, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_0

    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_2

    add-int v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    :goto_1
    return v3

    :cond_2
    aget v3, p0, v1

    if-ne v3, p3, :cond_3

    move v3, v1

    goto :goto_1

    :cond_3
    xor-int/lit8 v3, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v4, 0x1

    sub-int v4, v0, v4

    aget v3, v3, v4

    if-gt v2, v3, :cond_1

    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v1, v2, :cond_0

    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public append(II)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseIntArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    :goto_0
    return-void

    :cond_0
    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    .local v3, pos:I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .local v0, n:I
    new-array v1, v0, [I

    .local v1, nkeys:[I
    new-array v2, v0, [I

    .local v2, nvalues:[I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iput-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    .end local v0           #n:I
    .end local v1           #nkeys:[I
    .end local v2           #nvalues:[I
    :cond_1
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v3

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v3

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public delete(I)V
    .locals 4
    .parameter "key"

    .prologue
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 1
    .parameter "key"

    .prologue
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    return v0
.end method

.method public get(II)I
    .locals 4
    .parameter "key"
    .parameter "valueIfKeyNotFound"

    .prologue
    iget-object v1, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-gez v0, :cond_0

    move v1, p2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 3
    .parameter "key"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(I)I
    .locals 2
    .parameter "value"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/util/SparseIntArray;->mSize:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(II)V
    .locals 8
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseIntArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/util/SparseIntArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .local v1, n:I
    new-array v2, v1, [I

    .local v2, nkeys:[I
    new-array v3, v1, [I

    .local v3, nvalues:[I
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iput-object v3, p0, Landroid/util/SparseIntArray;->mValues:[I

    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[I
    :cond_1
    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget-object v5, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseIntArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iget-object v4, p0, Landroid/util/SparseIntArray;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Landroid/util/SparseIntArray;->mValues:[I

    aput p2, v4, v0

    iget v4, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseIntArray;->mSize:I

    goto :goto_0
.end method

.method public removeAt(I)V
    .locals 5
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mKeys:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mKeys:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v2, p0, Landroid/util/SparseIntArray;->mValues:[I

    iget v3, p0, Landroid/util/SparseIntArray;->mSize:I

    add-int/lit8 v4, p1, 0x1

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/util/SparseIntArray;->mSize:I

    return v0
.end method

.method public valueAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    iget-object v0, p0, Landroid/util/SparseIntArray;->mValues:[I

    aget v0, v0, p1

    return v0
.end method
