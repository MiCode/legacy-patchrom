.class public final Landroid/media/ResampleInputStream;
.super Ljava/io/InputStream;
.source "ResampleInputStream.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ResampleInputStream"

.field private static final mFirLength:I = 0x1d


# instance fields
.field private mBuf:[B

.field private mBufCount:I

.field private mInputStream:Ljava/io/InputStream;

.field private final mOneByte:[B

.field private final mRateIn:I

.field private final mRateOut:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;II)V
    .locals 2
    .parameter "inputStream"
    .parameter "rateIn"
    .parameter "rateOut"

    .prologue
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    mul-int/lit8 v0, p3, 0x2

    if-eq p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "only support 2:1 at the moment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 p2, 0x2

    const/4 p3, 0x1

    iput-object p1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iput p2, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    iput p3, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    return-void
.end method

.method private static native fir21([BI[BII)V
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    throw v0
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/media/ResampleInputStream;->close()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "someone forgot to close ResampleInputStream"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    invoke-virtual {p0, v1, v2, v3}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    .local v0, rtn:I
    if-ne v0, v3, :cond_0

    iget-object v1, p0, Landroid/media/ResampleInputStream;->mOneByte:[B

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    :goto_0
    return v1

    :cond_0
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "b"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/media/ResampleInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 12
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    const/4 v10, 0x0

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "not open"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_0
    div-int/lit8 v5, p3, 0x2

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1d

    mul-int/lit8 v4, v5, 0x2

    .local v4, nIn:I
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    if-nez v5, :cond_3

    new-array v5, v4, [B

    iput-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    :cond_1
    :goto_0
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    div-int/lit8 v5, v5, 0x2

    const/16 v6, 0x1d

    sub-int/2addr v5, v6

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    mul-int/2addr v5, v6

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    div-int/2addr v5, v6

    mul-int/lit8 v1, v5, 0x2

    .local v1, len:I
    if-lez v1, :cond_5

    if-ge v1, p3, :cond_4

    move p3, v1

    :goto_1
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    div-int/lit8 v6, p3, 0x2

    invoke-static {v5, v10, p1, p2, v6}, Landroid/media/ResampleInputStream;->fir21([BI[BII)V

    iget v5, p0, Landroid/media/ResampleInputStream;->mRateIn:I

    mul-int/2addr v5, p3

    iget v6, p0, Landroid/media/ResampleInputStream;->mRateOut:I

    div-int v3, v5, v6

    .local v3, nFwd:I
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v5, v3

    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    if-lez v5, :cond_2

    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v5, v3, v6, v10, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    move v5, p3

    .end local v3           #nFwd:I
    :goto_2
    return v5

    .end local v1           #len:I
    :cond_3
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v5, v5

    if-le v4, v5, :cond_1

    new-array v0, v4, [B

    .local v0, bf:[B
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v6, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    invoke-static {v5, v10, v0, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    goto :goto_0

    .end local v0           #bf:[B
    .restart local v1       #len:I
    :cond_4
    div-int/lit8 v5, p3, 0x2

    mul-int/lit8 v5, v5, 0x2

    move p3, v5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Landroid/media/ResampleInputStream;->mInputStream:Ljava/io/InputStream;

    iget-object v6, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    iget v7, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    iget-object v8, p0, Landroid/media/ResampleInputStream;->mBuf:[B

    array-length v8, v8

    iget v9, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    sub-int/2addr v8, v9

    invoke-virtual {v5, v6, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .local v2, n:I
    if-ne v2, v11, :cond_6

    move v5, v11

    goto :goto_2

    :cond_6
    iget v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    add-int/2addr v5, v2

    iput v5, p0, Landroid/media/ResampleInputStream;->mBufCount:I

    goto :goto_0
.end method
