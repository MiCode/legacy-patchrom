.class Landroid/webkit/ByteArrayBuilder;
.super Ljava/lang/Object;
.source "ByteArrayBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/webkit/ByteArrayBuilder$Chunk;
    }
.end annotation


# static fields
.field private static final DEFAULT_CAPACITY:I = 0x2000

.field private static final sPool:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChunks:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Landroid/webkit/ByteArrayBuilder$Chunk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    .line 37
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    sput-object v0, Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    .line 44
    return-void
.end method

.method static synthetic access$000()Ljava/util/LinkedList;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/ref/ReferenceQueue;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;
    .locals 3
    .parameter "length"

    .prologue
    .line 132
    const/16 v1, 0x2000

    if-ge p1, v1, :cond_0

    .line 133
    const/16 p1, 0x2000

    .line 135
    :cond_0
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    monitor-enter v1

    .line 137
    :try_start_0
    invoke-direct {p0}, Landroid/webkit/ByteArrayBuilder;->processPoolLocked()V

    .line 138
    sget-object v2, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 139
    sget-object v2, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 142
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    if-eqz v0, :cond_1

    .line 143
    monitor-exit v1

    move-object v1, v0

    .line 146
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_0
    return-object v1

    :cond_1
    new-instance v2, Landroid/webkit/ByteArrayBuilder$Chunk;

    invoke-direct {v2, p1}, Landroid/webkit/ByteArrayBuilder$Chunk;-><init>(I)V

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 147
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private processPoolLocked()V
    .locals 2

    .prologue
    .line 122
    :goto_0
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    .line 123
    .local v0, entry:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    if-nez v0, :cond_0

    .line 128
    return-void

    .line 126
    :cond_0
    sget-object v1, Landroid/webkit/ByteArrayBuilder;->sPool:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized append([BII)V
    .locals 5
    .parameter "array"
    .parameter "offset"
    .parameter "length"

    .prologue
    .line 47
    monitor-enter p0

    :goto_0
    if-lez p3, :cond_2

    .line 48
    const/4 v2, 0x0

    .line 49
    .local v2, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_start_0
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 50
    invoke-direct {p0, p3}, Landroid/webkit/ByteArrayBuilder;->obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v2

    .line 51
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 59
    :cond_0
    :goto_1
    iget-object v3, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v3, v3

    iget v4, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    sub-int/2addr v3, v4

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 60
    .local v1, amount:I
    iget-object v3, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    iget v4, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    invoke-static {p1, p2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 61
    iget v3, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    add-int/2addr v3, v1

    iput v3, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 62
    sub-int/2addr p3, v1

    .line 63
    add-int/2addr p2, v1

    .line 64
    goto :goto_0

    .line 53
    .end local v1           #amount:I
    :cond_1
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    move-object v2, v0

    .line 54
    iget v3, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    iget-object v4, v2, Landroid/webkit/ByteArrayBuilder$Chunk;->mArray:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    .line 55
    invoke-direct {p0, p3}, Landroid/webkit/ByteArrayBuilder;->obtainChunk(I)Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v2

    .line 56
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v3, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 47
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 65
    .end local v2           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized clear()V
    .locals 2

    .prologue
    .line 112
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;

    move-result-object v0

    .line 113
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :goto_0
    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Landroid/webkit/ByteArrayBuilder$Chunk;->release()V

    .line 115
    invoke-virtual {p0}, Landroid/webkit/ByteArrayBuilder;->getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_0
    monitor-exit p0

    return-void

    .line 112
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getByteSize()I
    .locals 5

    .prologue
    .line 102
    monitor-enter p0

    const/4 v2, 0x0

    .line 103
    .local v2, total:I
    :try_start_0
    iget-object v3, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v1

    .line 104
    .local v1, it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;

    .line 106
    .local v0, c:Landroid/webkit/ByteArrayBuilder$Chunk;
    iget v3, v0, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v2, v3

    .line 107
    goto :goto_0

    .line 108
    .end local v0           #c:Landroid/webkit/ByteArrayBuilder$Chunk;
    :cond_0
    monitor-exit p0

    return v2

    .line 102
    .end local v1           #it:Ljava/util/ListIterator;,"Ljava/util/ListIterator<Landroid/webkit/ByteArrayBuilder$Chunk;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method public declared-synchronized getFirstChunk()Landroid/webkit/ByteArrayBuilder$Chunk;
    .locals 1

    .prologue
    .line 74
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 75
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getFirstChunkEx()Landroid/webkit/ByteArrayBuilder$Chunk;
    .locals 1

    .prologue
    .line 83
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 84
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ByteArrayBuilder$Chunk;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 83
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isEmpty()Z
    .locals 1

    .prologue
    .line 94
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized releaseChunk(Landroid/webkit/ByteArrayBuilder$Chunk;)V
    .locals 1
    .parameter "c"

    .prologue
    .line 88
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p1, Landroid/webkit/ByteArrayBuilder$Chunk;->mLength:I

    .line 89
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    monitor-exit p0

    return-void

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Landroid/webkit/ByteArrayBuilder;->mChunks:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    return v0
.end method
