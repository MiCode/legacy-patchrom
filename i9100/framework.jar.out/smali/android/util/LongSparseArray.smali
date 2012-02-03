.class public Landroid/util/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


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

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Landroid/util/LongSparseArray;-><init>(I)V

    .line 37
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "initialCapacity"

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 45
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 47
    new-array v0, p1, [J

    iput-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 48
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 49
    iput v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 50
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 6
    .parameter "a"
    .parameter "start"
    .parameter "len"
    .parameter "key"

    .prologue
    const/4 v5, 0x1

    .line 330
    add-int v1, p1, p2

    .local v1, high:I
    sub-int v2, p1, v5

    .line 332
    .local v2, low:I
    :goto_0
    sub-int v3, v1, v2

    if-le v3, v5, :cond_1

    .line 333
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 335
    .local v0, guess:I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 336
    move v2, v0

    goto :goto_0

    .line 338
    :cond_0
    move v1, v0

    goto :goto_0

    .line 341
    .end local v0           #guess:I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_2

    .line 342
    add-int v3, p1, p2

    xor-int/lit8 v3, v3, -0x1

    .line 346
    :goto_1
    return v3

    .line 343
    :cond_2
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-nez v3, :cond_3

    move v3, v1

    .line 344
    goto :goto_1

    .line 346
    :cond_3
    xor-int/lit8 v3, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 350
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 351
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v5, 0x1

    sub-int v5, v0, v5

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 352
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 353
    const-string v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 356
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 350
    .end local v1           #j:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 359
    :cond_2
    return-void
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 120
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 121
    .local v2, n:I
    const/4 v3, 0x0

    .line 122
    .local v3, o:I
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 123
    .local v1, keys:[J
    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 125
    .local v5, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 126
    aget-object v4, v5, v0

    .line 128
    .local v4, val:Ljava/lang/Object;
    sget-object v6, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 129
    if-eq v0, v3, :cond_0

    .line 130
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 131
    aput-object v4, v5, v3

    .line 134
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 125
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    .end local v4           #val:Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 139
    iput v3, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 142
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v7, 0x0

    .line 300
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 301
    invoke-virtual {p0, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 327
    :goto_0
    return-void

    .line 305
    :cond_0
    iget-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 306
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 309
    :cond_1
    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 310
    .local v3, pos:I
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 311
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 313
    .local v0, n:I
    new-array v1, v0, [J

    .line 314
    .local v1, nkeys:[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 317
    .local v2, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v7, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v7, v2, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 320
    iput-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 321
    iput-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 324
    .end local v0           #n:I
    .end local v1           #nkeys:[J
    .end local v2           #nvalues:[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 325
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 326
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 284
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 285
    .local v1, n:I
    iget-object v2, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 287
    .local v2, values:[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 288
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    .line 292
    iput-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 293
    return-void
.end method

.method public delete(J)V
    .locals 4
    .parameter "key"

    .prologue
    .line 100
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 102
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 104
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 105
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    .line 108
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .parameter "key"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 87
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p3, valueIfKeyNotFound:Ljava/lang/Object;,"TE;"
    iget-object v1, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 89
    .local v0, i:I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    :cond_0
    move-object v1, p3

    .line 92
    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    goto :goto_0
.end method

.method public getKeys()[J
    .locals 4

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    const/4 v3, 0x0

    .line 56
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v0, v2

    .line 57
    .local v0, length:I
    new-array v1, v0, [J

    .line 58
    .local v1, result:[J
    iget-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    invoke-static {v2, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 59
    return-object v1
.end method

.method public indexOfKey(J)I
    .locals 3
    .parameter "key"

    .prologue
    .line 253
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 254
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 257
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

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
    .line 269
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p1, value:Ljava/lang/Object;,"TE;"
    iget-boolean v1, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 270
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 273
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 274
    iget-object v1, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v0

    .line 277
    :goto_1
    return v1

    .line 273
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    :cond_2
    const/4 v1, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .parameter "index"

    .prologue
    .line 214
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 215
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 218
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 8
    .parameter "key"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p3, value:Ljava/lang/Object;,"TE;"
    const/4 v6, 0x0

    .line 150
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 152
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 153
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 194
    :goto_0
    return-void

    .line 155
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 157
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Landroid/util/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 158
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 159
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 163
    :cond_1
    iget-boolean v4, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 164
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 167
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget v5, p0, Landroid/util/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Landroid/util/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 170
    :cond_2
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 171
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 173
    .local v1, n:I
    new-array v2, v1, [J

    .line 174
    .local v2, nkeys:[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 177
    .local v3, nvalues:[Ljava/lang/Object;
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 180
    iput-object v2, p0, Landroid/util/LongSparseArray;->mKeys:[J

    .line 181
    iput-object v3, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 184
    .end local v1           #n:I
    .end local v2           #nkeys:[J
    .end local v3           #nvalues:[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 186
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Landroid/util/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 187
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Landroid/util/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    :cond_4
    iget-object v4, p0, Landroid/util/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 191
    iget-object v4, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 192
    iget v4, p0, Landroid/util/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Landroid/util/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 0
    .parameter "key"

    .prologue
    .line 114
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 115
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
    .line 240
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p2, value:Ljava/lang/Object;,"TE;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 244
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 245
    return-void
.end method

.method public setValues([JLjava/lang/Object;)V
    .locals 4
    .parameter "keys"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([JTE;)V"
        }
    .end annotation

    .prologue
    .line 68
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    .local p2, uniqueValue:Ljava/lang/Object;,"TE;"
    array-length v1, p1

    .line 69
    .local v1, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 70
    aget-wide v2, p1, v0

    invoke-virtual {p0, v2, v3, p2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 201
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 202
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 205
    :cond_0
    iget v0, p0, Landroid/util/LongSparseArray;->mSize:I

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
    .line 227
    .local p0, this:Landroid/util/LongSparseArray;,"Landroid/util/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Landroid/util/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 228
    invoke-direct {p0}, Landroid/util/LongSparseArray;->gc()V

    .line 231
    :cond_0
    iget-object v0, p0, Landroid/util/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
