.class public final Landroid/speech/srec/UlawEncoderInputStream;
.super Ljava/io/InputStream;
.source "UlawEncoderInputStream.java"


# static fields
.field private static final MAX_ULAW:I = 0x2000

.field private static final SCALE_BITS:I = 0x10

.field private static final TAG:Ljava/lang/String; = "UlawEncoderInputStream"


# instance fields
.field private final mBuf:[B

.field private mBufCount:I

.field private mIn:Ljava/io/InputStream;

.field private mMax:I

.field private final mOneByte:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 2
    .parameter "in"
    .parameter "max"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    const/16 v0, 0x400

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iput v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    iput-object p1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iput p2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    return-void
.end method

.method public static encode([BI[BIII)V
    .locals 3
    .parameter "pcmBuf"
    .parameter "pcmOffset"
    .parameter "ulawBuf"
    .parameter "ulawOffset"
    .parameter "length"
    .parameter "max"

    .prologue
    if-gtz p5, :cond_0

    const/16 p5, 0x2000

    :cond_0
    const/high16 v0, 0x2000

    div-int p5, v0, p5

    .local p5, coef:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, p3

    .end local p3
    .local v2, ulawOffset:I
    move p3, p1

    .end local p1
    .local p3, pcmOffset:I
    :goto_0
    if-ge v0, p4, :cond_14

    add-int/lit8 p1, p3, 0x1

    .end local p3           #pcmOffset:I
    .restart local p1
    aget-byte p3, p0, p3

    and-int/lit16 p3, p3, 0xff

    add-int/lit8 v1, p1, 0x1

    .end local p1
    .local v1, pcmOffset:I
    aget-byte p1, p0, p1

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p1, p3

    .local p1, pcm:I
    mul-int/2addr p1, p5

    shr-int/lit8 p1, p1, 0x10

    if-ltz p1, :cond_a

    if-gtz p1, :cond_1

    const/16 p1, 0xff

    .local p1, ulaw:I
    :goto_1
    add-int/lit8 p3, v2, 0x1

    .end local v2           #ulawOffset:I
    .local p3, ulawOffset:I
    int-to-byte p1, p1

    aput-byte p1, p2, v2

    .end local p1           #ulaw:I
    add-int/lit8 p1, v0, 0x1

    .end local v0           #i:I
    .local p1, i:I
    move v0, p1

    .end local p1           #i:I
    .restart local v0       #i:I
    move v2, p3

    .end local p3           #ulawOffset:I
    .restart local v2       #ulawOffset:I
    move p3, v1

    .end local v1           #pcmOffset:I
    .local p3, pcmOffset:I
    goto :goto_0

    .end local p3           #pcmOffset:I
    .restart local v1       #pcmOffset:I
    .local p1, pcm:I
    :cond_1
    const/16 p3, 0x1e

    if-gt p1, p3, :cond_2

    const/16 p3, 0x1e

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x1

    add-int/lit16 p1, p1, 0xf0

    goto :goto_1

    :cond_2
    const/16 p3, 0x5e

    if-gt p1, p3, :cond_3

    const/16 p3, 0x5e

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x2

    add-int/lit16 p1, p1, 0xe0

    goto :goto_1

    :cond_3
    const/16 p3, 0xde

    if-gt p1, p3, :cond_4

    const/16 p3, 0xde

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x3

    add-int/lit16 p1, p1, 0xd0

    goto :goto_1

    :cond_4
    const/16 p3, 0x1de

    if-gt p1, p3, :cond_5

    const/16 p3, 0x1de

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x4

    add-int/lit16 p1, p1, 0xc0

    goto :goto_1

    :cond_5
    const/16 p3, 0x3de

    if-gt p1, p3, :cond_6

    const/16 p3, 0x3de

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x5

    add-int/lit16 p1, p1, 0xb0

    goto :goto_1

    :cond_6
    const/16 p3, 0x7de

    if-gt p1, p3, :cond_7

    const/16 p3, 0x7de

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x6

    add-int/lit16 p1, p1, 0xa0

    goto :goto_1

    :cond_7
    const/16 p3, 0xfde

    if-gt p1, p3, :cond_8

    const/16 p3, 0xfde

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x7

    add-int/lit16 p1, p1, 0x90

    goto :goto_1

    :cond_8
    const/16 p3, 0x1fde

    if-gt p1, p3, :cond_9

    const/16 p3, 0x1fde

    sub-int p1, p3, p1

    shr-int/lit8 p1, p1, 0x8

    add-int/lit16 p1, p1, 0x80

    goto :goto_1

    :cond_9
    const/16 p1, 0x80

    goto :goto_1

    :cond_a
    const/4 p3, -0x1

    if-gt p3, p1, :cond_b

    const/16 p1, 0x7f

    .local p1, ulaw:I
    :goto_2
    goto :goto_1

    .local p1, pcm:I
    :cond_b
    const/16 p3, -0x1f

    if-gt p3, p1, :cond_c

    const/16 p3, -0x1f

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x1

    add-int/lit8 p1, p1, 0x70

    goto :goto_2

    :cond_c
    const/16 p3, -0x5f

    if-gt p3, p1, :cond_d

    const/16 p3, -0x5f

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x60

    goto :goto_2

    :cond_d
    const/16 p3, -0xdf

    if-gt p3, p1, :cond_e

    const/16 p3, -0xdf

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x3

    add-int/lit8 p1, p1, 0x50

    goto :goto_2

    :cond_e
    const/16 p3, -0x1df

    if-gt p3, p1, :cond_f

    const/16 p3, -0x1df

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x4

    add-int/lit8 p1, p1, 0x40

    goto :goto_2

    :cond_f
    const/16 p3, -0x3df

    if-gt p3, p1, :cond_10

    const/16 p3, -0x3df

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x30

    goto :goto_2

    :cond_10
    const/16 p3, -0x7df

    if-gt p3, p1, :cond_11

    const/16 p3, -0x7df

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x20

    goto :goto_2

    :cond_11
    const/16 p3, -0xfdf

    if-gt p3, p1, :cond_12

    const/16 p3, -0xfdf

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x7

    add-int/lit8 p1, p1, 0x10

    goto :goto_2

    :cond_12
    const/16 p3, -0x1fdf

    if-gt p3, p1, :cond_13

    const/16 p3, -0x1fdf

    sub-int/2addr p1, p3

    shr-int/lit8 p1, p1, 0x8

    add-int/lit8 p1, p1, 0x0

    goto :goto_2

    :cond_13
    const/4 p1, 0x0

    goto :goto_2

    .end local v1           #pcmOffset:I
    .end local p1           #pcm:I
    .restart local p3       #pcmOffset:I
    :cond_14
    return-void
.end method

.method public static maxAbsPcm([BII)I
    .locals 6
    .parameter "pcmBuf"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v1, 0x0

    .local v1, max:I
    const/4 v0, 0x0

    .local v0, i:I
    move v2, p1

    .end local p1
    .local v2, offset:I
    :goto_0
    if-ge v0, p2, :cond_2

    add-int/lit8 p1, v2, 0x1

    .end local v2           #offset:I
    .restart local p1
    aget-byte v4, p0, v2

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v2, p1, 0x1

    .end local p1
    .restart local v2       #offset:I
    aget-byte v5, p0, p1

    shl-int/lit8 v5, v5, 0x8

    add-int v3, v4, v5

    .local v3, pcm:I
    if-gez v3, :cond_0

    neg-int v3, v3

    :cond_0
    if-le v3, v1, :cond_1

    move v1, v3

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v3           #pcm:I
    :cond_2
    return v1
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
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    .local v0, in:Ljava/io/InputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .end local v0           #in:Ljava/io/InputStream;
    :cond_0
    return-void
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v4, v2}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    .local v0, n:I
    if-ne v0, v3, :cond_0

    move v1, v3

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mOneByte:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public read([B)I
    .locals 2
    .parameter "buf"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Landroid/speech/srec/UlawEncoderInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 9
    .parameter "buf"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, -0x1

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .local v4, n:I
    :cond_0
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    .end local v4           #n:I
    :cond_1
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mIn:Ljava/io/InputStream;

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget v2, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v3, p3, 0x2

    iget-object v5, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    array-length v5, v5

    iget v7, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    sub-int/2addr v5, v7

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    .restart local v4       #n:I
    if-ne v4, v8, :cond_0

    move v0, v8

    :goto_0
    return v0

    .end local v4           #n:I
    :cond_2
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    div-int/lit8 v0, v0, 0x2

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .restart local v4       #n:I
    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    const/4 v1, 0x0

    iget v5, p0, Landroid/speech/srec/UlawEncoderInputStream;->mMax:I

    move-object v2, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Landroid/speech/srec/UlawEncoderInputStream;->encode([BI[BIII)V

    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    mul-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    iget v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBufCount:I

    if-ge v6, v0, :cond_3

    iget-object v0, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    iget-object v1, p0, Landroid/speech/srec/UlawEncoderInputStream;->mBuf:[B

    mul-int/lit8 v2, v4, 0x2

    add-int/2addr v2, v6

    aget-byte v1, v1, v2

    aput-byte v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method
