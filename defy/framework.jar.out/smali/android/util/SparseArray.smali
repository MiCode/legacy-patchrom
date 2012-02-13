.class public Landroid/util/SparseArray;
.super Ljava/lang/Object;
.source "SparseArray.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[I

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/SparseArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    new-array v0, p1, [I

    iput-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iput v1, p0, Landroid/util/SparseArray;->mSize:I

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
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v2, v2, v0

    iget-object v3, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v4, 0x1

    sub-int v4, v0, v4

    aget v3, v3, v4

    if-gt v2, v3, :cond_1

    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v1, v2, :cond_0

    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

.method private gc()V
    .locals 7

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    .local v2, n:I
    const/4 v3, 0x0

    .local v3, o:I
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    .local v1, keys:[I
    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v4, v5, v0

    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    if-eq v0, v3, :cond_0

    aget v6, v1, v0

    aput v6, v1, v3

    aput-object v4, v5, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/SparseArray;->mGarbage:Z

    iput v3, p0, Landroid/util/SparseArray;->mSize:I

    return-void
.end method


# virtual methods
.method public append(ILjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v7, 0x0

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    if-gt p1, v4, :cond_0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_1

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_1
    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    .local v3, pos:I
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v4, v4

    if-lt v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .local v0, n:I
    new-array v1, v0, [I

    .local v1, nkeys:[I
    new-array v2, v0, [Ljava/lang/Object;

    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    iput-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .end local v0           #n:I
    .end local v1           #nkeys:[I
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v3

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v3

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v4, 0x0

    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    .local v1, n:I
    iget-object v2, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    const/4 v3, 0x0

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    iput-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    return-void
.end method

.method public delete(I)V
    .locals 4
    .parameter "key"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(I)I
    .locals 3
    .parameter "key"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    :goto_1
    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public keyAt(I)I
    .locals 1
    .parameter "index"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mKeys:[I

    aget v0, v0, p1

    return v0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v0

    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    :goto_0
    return-void

    :cond_0
    xor-int/lit8 v0, v0, -0x1

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    goto :goto_0

    :cond_1
    iget-boolean v4, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_2

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget v5, p0, Landroid/util/SparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1}, Landroid/util/SparseArray;->binarySearch([IIII)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    :cond_2
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    if-lt v4, v5, :cond_3

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .local v1, n:I
    new-array v2, v1, [I

    .local v2, nkeys:[I
    new-array v3, v1, [Ljava/lang/Object;

    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Landroid/util/SparseArray;->mKeys:[I

    iput-object v3, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    .end local v1           #n:I
    .end local v2           #nkeys:[I
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    iget-object v5, p0, Landroid/util/SparseArray;->mKeys:[I

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/SparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    iget-object v4, p0, Landroid/util/SparseArray;->mKeys:[I

    aput p1, v4, v0

    iget-object v4, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v4, v0

    iget v4, p0, Landroid/util/SparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/SparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(I)V
    .locals 0
    .parameter "key"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public removeAt(I)V
    .locals 2
    .parameter "index"

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    sget-object v1, Landroid/util/SparseArray;->DELETED:Ljava/lang/Object;

    aput-object v1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    :cond_0
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .parameter "index"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_0
    iget v0, p0, Landroid/util/SparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .parameter "index"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/SparseArray;,"Landroid/util/SparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/SparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/util/SparseArray;->gc()V

    :cond_0
    iget-object v0, p0, Landroid/util/SparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
