.class Landroid/os/MemoryFile$MemoryInputStream;
.super Ljava/io/InputStream;
.source "MemoryFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/MemoryFile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryInputStream"
.end annotation


# instance fields
.field private mMark:I

.field private mOffset:I

.field private mSingleByte:[B

.field final synthetic this$0:Landroid/os/MemoryFile;


# direct methods
.method private constructor <init>(Landroid/os/MemoryFile;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 333
    iput-object p1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 335
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    .line 336
    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/MemoryFile;Landroid/os/MemoryFile$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 333
    invoke-direct {p0, p1}, Landroid/os/MemoryFile$MemoryInputStream;-><init>(Landroid/os/MemoryFile;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #getter for: Landroid/os/MemoryFile;->mLength:I
    invoke-static {v1}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 342
    const/4 v0, 0x0

    .line 344
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #getter for: Landroid/os/MemoryFile;->mLength:I
    invoke-static {v0}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    .line 354
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    .line 355
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 364
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    if-nez v1, :cond_0

    .line 365
    new-array v1, v2, [B

    iput-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    .line 367
    :cond_0
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    invoke-virtual {p0, v1, v3, v2}, Landroid/os/MemoryFile$MemoryInputStream;->read([BII)I

    move-result v0

    .line 368
    .local v0, result:I
    if-eq v0, v2, :cond_1

    .line 369
    const/4 v1, -0x1

    .line 371
    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mSingleByte:[B

    aget-byte v1, v1, v3

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "buffer"
    .parameter "offset"
    .parameter "count"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    add-int v1, p2, p3

    array-length v2, p1

    if-le v1, v2, :cond_1

    .line 379
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 381
    :cond_1
    invoke-virtual {p0}, Landroid/os/MemoryFile$MemoryInputStream;->available()I

    move-result v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 382
    const/4 v1, 0x1

    if-ge p3, v1, :cond_2

    .line 383
    const/4 v1, -0x1

    .line 389
    :goto_0
    return v1

    .line 385
    :cond_2
    iget-object v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    iget v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    invoke-virtual {v1, p1, v2, p2, p3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v0

    .line 386
    .local v0, result:I
    if-lez v0, :cond_3

    .line 387
    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    :cond_3
    move v1, v0

    .line 389
    goto :goto_0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 359
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mMark:I

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 360
    return-void
.end method

.method public skip(J)J
    .locals 4
    .parameter "n"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #getter for: Landroid/os/MemoryFile;->mLength:I
    invoke-static {v2}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 395
    iget-object v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->this$0:Landroid/os/MemoryFile;

    #getter for: Landroid/os/MemoryFile;->mLength:I
    invoke-static {v0}, Landroid/os/MemoryFile;->access$200(Landroid/os/MemoryFile;)I

    move-result v0

    iget v1, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 397
    :cond_0
    iget v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Landroid/os/MemoryFile$MemoryInputStream;->mOffset:I

    .line 398
    return-wide p1
.end method
