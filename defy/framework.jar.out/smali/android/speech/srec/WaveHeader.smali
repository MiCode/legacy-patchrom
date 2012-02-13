.class public Landroid/speech/srec/WaveHeader;
.super Ljava/lang/Object;
.source "WaveHeader.java"


# static fields
.field public static final FORMAT_ALAW:S = 0x6s

.field public static final FORMAT_PCM:S = 0x1s

.field public static final FORMAT_ULAW:S = 0x7s

.field private static final HEADER_LENGTH:I = 0x2c

.field private static final TAG:Ljava/lang/String; = "WaveHeader"


# instance fields
.field private mBitsPerSample:S

.field private mFormat:S

.field private mNumBytes:I

.field private mNumChannels:S

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(SSISI)V
    .locals 0
    .parameter "format"
    .parameter "numChannels"
    .parameter "sampleRate"
    .parameter "bitsPerSample"
    .parameter "numBytes"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    iput p3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    iput-short p2, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iput-short p4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    iput p5, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    return-void
.end method

.method private static readId(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 4
    .parameter "in"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v2

    if-eq v1, v2, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tag not present"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static readInt(Ljava/io/InputStream;)I
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method private static readShort(Ljava/io/InputStream;)S
    .locals 2
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    int-to-short v0, v0

    return v0
.end method

.method private static writeId(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 2
    .parameter "out"
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeInt(Ljava/io/OutputStream;I)V
    .locals 1
    .parameter "out"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x10

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x18

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method

.method private static writeShort(Ljava/io/OutputStream;S)V
    .locals 1
    .parameter "out"
    .parameter "val"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    shr-int/lit8 v0, p1, 0x0

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    shr-int/lit8 v0, p1, 0x8

    invoke-virtual {p0, v0}, Ljava/io/OutputStream;->write(I)V

    return-void
.end method


# virtual methods
.method public getBitsPerSample()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    return v0
.end method

.method public getFormat()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    return v0
.end method

.method public getNumBytes()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    return v0
.end method

.method public getNumChannels()S
    .locals 1

    .prologue
    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    return v0
.end method

.method public getSampleRate()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    return v0
.end method

.method public read(Ljava/io/InputStream;)I
    .locals 5
    .parameter "in"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v3, "RIFF"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    const/16 v4, 0x24

    sub-int v2, v3, v4

    .local v2, numBytes:I
    const-string v3, "WAVE"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v3, "fmt "

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v3, 0x10

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v4

    if-eq v3, v4, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt chunk length not 16"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v1

    .local v1, byteRate:I
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v0

    .local v0, blockAlign:S
    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readShort(Ljava/io/InputStream;)S

    move-result v3

    iput-short v3, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget v4, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    mul-int/2addr v3, v4

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    if-eq v1, v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt.ByteRate field inconsistent"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget-short v4, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x8

    if-eq v0, v3, :cond_2

    new-instance v3, Ljava/io/IOException;

    const-string v4, "fmt.BlockAlign field inconsistent"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    const-string v3, "data"

    invoke-static {p1, v3}, Landroid/speech/srec/WaveHeader;->readId(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {p1}, Landroid/speech/srec/WaveHeader;->readInt(Ljava/io/InputStream;)I

    move-result v3

    iput v3, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    const/16 v3, 0x2c

    return v3
.end method

.method public setBitsPerSample(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "bitsPerSample"

    .prologue
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    return-object p0
.end method

.method public setFormat(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "format"

    .prologue
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    return-object p0
.end method

.method public setNumBytes(I)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "numBytes"

    .prologue
    iput p1, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    return-object p0
.end method

.method public setNumChannels(S)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "numChannels"

    .prologue
    iput-short p1, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    return-object p0
.end method

.method public setSampleRate(I)Landroid/speech/srec/WaveHeader;
    .locals 0
    .parameter "sampleRate"

    .prologue
    iput p1, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const-string v0, "WaveHeader format=%d numChannels=%d sampleRate=%d bitsPerSample=%d numBytes=%d"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-short v3, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    invoke-static {v3}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Ljava/io/OutputStream;)I
    .locals 2
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v0, "RIFF"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    add-int/lit8 v0, v0, 0x24

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    const-string v0, "WAVE"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v0, "fmt "

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/16 v0, 0x10

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mFormat:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    iget v0, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget v1, p0, Landroid/speech/srec/WaveHeader;->mSampleRate:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mNumChannels:S

    iget-short v1, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x8

    int-to-short v0, v0

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    iget-short v0, p0, Landroid/speech/srec/WaveHeader;->mBitsPerSample:S

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeShort(Ljava/io/OutputStream;S)V

    const-string v0, "data"

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeId(Ljava/io/OutputStream;Ljava/lang/String;)V

    iget v0, p0, Landroid/speech/srec/WaveHeader;->mNumBytes:I

    invoke-static {p1, v0}, Landroid/speech/srec/WaveHeader;->writeInt(Ljava/io/OutputStream;I)V

    const/16 v0, 0x2c

    return v0
.end method
