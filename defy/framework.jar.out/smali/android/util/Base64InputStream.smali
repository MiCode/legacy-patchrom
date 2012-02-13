.class public Landroid/util/Base64InputStream;
.super Ljava/io/FilterInputStream;
.source "Base64InputStream.java"


# static fields
.field private static final BUFFER_SIZE:I = 0x800

.field private static EMPTY:[B


# instance fields
.field private final coder:Landroid/util/Base64$Coder;

.field private eof:Z

.field private inputBuffer:[B

.field private outputEnd:I

.field private outputStart:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Landroid/util/Base64InputStream;->EMPTY:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 1
    .parameter "in"
    .parameter "flags"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;IZ)V
    .locals 4
    .parameter "in"
    .parameter "flags"
    .parameter "encode"

    .prologue
    const/4 v1, 0x0

    const/16 v3, 0x800

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    iput-boolean v2, p0, Landroid/util/Base64InputStream;->eof:Z

    new-array v0, v3, [B

    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    if-eqz p3, :cond_0

    new-instance v0, Landroid/util/Base64$Encoder;

    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Encoder;-><init>(I[B)V

    iput-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    :goto_0
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    invoke-virtual {v1, v3}, Landroid/util/Base64$Coder;->maxOutputSize(I)I

    move-result v1

    new-array v1, v1, [B

    iput-object v1, v0, Landroid/util/Base64$Coder;->output:[B

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    iput v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    return-void

    :cond_0
    new-instance v0, Landroid/util/Base64$Decoder;

    invoke-direct {v0, p2, v1}, Landroid/util/Base64$Decoder;-><init>(I[B)V

    iput-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    goto :goto_0
.end method

.method private refill()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Landroid/util/Base64InputStream;->eof:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v2, v3}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .local v0, bytesRead:I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iput-boolean v5, p0, Landroid/util/Base64InputStream;->eof:Z

    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    sget-object v3, Landroid/util/Base64InputStream;->EMPTY:[B

    invoke-virtual {v2, v3, v4, v4, v5}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    .local v1, success:Z
    :goto_1
    if-nez v1, :cond_2

    new-instance v2, Ljava/io/IOException;

    const-string v3, "bad base-64"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .end local v1           #success:Z
    :cond_1
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v3, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    invoke-virtual {v2, v3, v4, v0, v4}, Landroid/util/Base64$Coder;->process([BIIZ)Z

    move-result v1

    .restart local v1       #success:Z
    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget v2, v2, Landroid/util/Base64$Coder;->op:I

    iput v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iput v4, p0, Landroid/util/Base64InputStream;->outputStart:I

    goto :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    iget v0, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Landroid/util/Base64InputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/Base64InputStream;->inputBuffer:[B

    return-void
.end method

.method public mark(I)V
    .locals 1
    .parameter "readlimit"

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_0

    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    :cond_0
    iget v0, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v0, v0, Landroid/util/Base64$Coder;->output:[B

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    goto :goto_0
.end method

.method public read([BII)I
    .locals 3
    .parameter "b"
    .parameter "off"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v1, v2, :cond_0

    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    :cond_0
    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v1, v2, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    iget v1, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .local v0, bytes:I
    iget-object v1, p0, Landroid/util/Base64InputStream;->coder:Landroid/util/Base64$Coder;

    iget-object v1, v1, Landroid/util/Base64$Coder;->output:[B

    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    add-int/2addr v1, v0

    iput v1, p0, Landroid/util/Base64InputStream;->outputStart:I

    move v1, v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v2, v3, :cond_0

    invoke-direct {p0}, Landroid/util/Base64InputStream;->refill()V

    :cond_0
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    iget v3, p0, Landroid/util/Base64InputStream;->outputEnd:I

    if-lt v2, v3, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    return-wide v2

    :cond_1
    iget v2, p0, Landroid/util/Base64InputStream;->outputEnd:I

    iget v3, p0, Landroid/util/Base64InputStream;->outputStart:I

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .local v0, bytes:J
    iget v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    int-to-long v2, v2

    add-long/2addr v2, v0

    long-to-int v2, v2

    iput v2, p0, Landroid/util/Base64InputStream;->outputStart:I

    move-wide v2, v0

    goto :goto_0
.end method
