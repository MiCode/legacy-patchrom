.class Lcom/android/server/RandomBlock;
.super Ljava/lang/Object;
.source "RandomBlock.java"


# static fields
.field private static final BLOCK_SIZE:I = 0x1000

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "RandomBlock"


# instance fields
.field private block:[B


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    .line 39
    return-void
.end method

.method private static close(Ljava/io/Closeable;)V
    .locals 3
    .parameter "c"

    .prologue
    .line 93
    if-nez p0, :cond_0

    .line 100
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Ljava/io/IOException;
    const-string v1, "RandomBlock"

    const-string v2, "IOException thrown while closing Closeable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static fromFile(Ljava/lang/String;)Lcom/android/server/RandomBlock;
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    .line 45
    .local v0, stream:Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .end local v0           #stream:Ljava/io/InputStream;
    .local v1, stream:Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/android/server/RandomBlock;->fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v2

    .line 48
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 46
    return-object v2

    .line 48
    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #stream:Ljava/io/InputStream;
    .restart local v1       #stream:Ljava/io/InputStream;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #stream:Ljava/io/InputStream;
    .restart local v0       #stream:Ljava/io/InputStream;
    goto :goto_0
.end method

.method private static fromStream(Ljava/io/InputStream;)Lcom/android/server/RandomBlock;
    .locals 6
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1000

    .line 53
    new-instance v1, Lcom/android/server/RandomBlock;

    invoke-direct {v1}, Lcom/android/server/RandomBlock;-><init>()V

    .line 54
    .local v1, retval:Lcom/android/server/RandomBlock;
    const/4 v2, 0x0

    .line 55
    .local v2, total:I
    :goto_0
    if-ge v2, v5, :cond_1

    .line 56
    iget-object v3, v1, Lcom/android/server/RandomBlock;->block:[B

    sub-int v4, v5, v2

    invoke-virtual {p0, v3, v2, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 57
    .local v0, result:I
    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    .line 58
    new-instance v3, Ljava/io/EOFException;

    invoke-direct {v3}, Ljava/io/EOFException;-><init>()V

    throw v3

    .line 60
    :cond_0
    add-int/2addr v2, v0

    .line 61
    goto :goto_0

    .line 62
    .end local v0           #result:I
    :cond_1
    return-object v1
.end method

.method private toDataOut(Ljava/io/DataOutput;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/server/RandomBlock;->block:[B

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    .line 89
    return-void
.end method

.method private static truncateIfPossible(Ljava/io/RandomAccessFile;)V
    .locals 2
    .parameter "f"

    .prologue
    .line 79
    const-wide/16 v0, 0x1000

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method toFile(Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 69
    .local v0, out:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .end local v0           #out:Ljava/io/RandomAccessFile;
    .local v1, out:Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/server/RandomBlock;->toDataOut(Ljava/io/DataOutput;)V

    .line 71
    invoke-static {v1}, Lcom/android/server/RandomBlock;->truncateIfPossible(Ljava/io/RandomAccessFile;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    invoke-static {v1}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    .line 75
    return-void

    .line 73
    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v0       #out:Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v2

    :goto_0
    invoke-static {v0}, Lcom/android/server/RandomBlock;->close(Ljava/io/Closeable;)V

    throw v2

    .end local v0           #out:Ljava/io/RandomAccessFile;
    .restart local v1       #out:Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1           #out:Ljava/io/RandomAccessFile;
    .restart local v0       #out:Ljava/io/RandomAccessFile;
    goto :goto_0
.end method
