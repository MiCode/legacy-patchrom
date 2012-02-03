.class public Lcom/android/internal/util/BitwiseInputStream;
.super Ljava/lang/Object;
.source "BitwiseInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/BitwiseInputStream$AccessException;
    }
.end annotation


# instance fields
.field private mBuf:[B

.field private mEnd:I

.field private mPos:I


# direct methods
.method public constructor <init>([B)V
    .locals 1
    .parameter "buf"

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    .line 54
    array-length v0, p1

    shl-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    .line 55
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 56
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .prologue
    .line 62
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public read(I)I
    .locals 6
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x8

    .line 75
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    ushr-int/lit8 v1, v3, 0x3

    .line 76
    .local v1, index:I
    const/16 v3, 0x10

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    and-int/lit8 v4, v4, 0x7

    sub-int/2addr v3, v4

    sub-int v2, v3, p1

    .line 77
    .local v2, offset:I
    if-ltz p1, :cond_0

    if-gt p1, v5, :cond_0

    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v3, p1

    iget v4, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-le v3, v4, :cond_1

    .line 78
    :cond_0
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illegal read (pos "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", end "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bits "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 81
    :cond_1
    iget-object v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v0, v3, 0x8

    .line 82
    .local v0, data:I
    if-ge v2, v5, :cond_2

    iget-object v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mBuf:[B

    add-int/lit8 v4, v1, 0x1

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    or-int/2addr v0, v3

    .line 83
    :cond_2
    ushr-int/2addr v0, v2

    .line 84
    const/4 v3, -0x1

    const/16 v4, 0x20

    sub-int/2addr v4, p1

    ushr-int/2addr v3, v4

    and-int/2addr v0, v3

    .line 85
    iget v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 86
    return v0
.end method

.method public readByteArray(I)[B
    .locals 7
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x8

    .line 96
    ushr-int/lit8 v4, p1, 0x3

    and-int/lit8 v5, p1, 0x7

    if-lez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    add-int v1, v4, v5

    .line 97
    .local v1, bytes:I
    new-array v0, v1, [B

    .line 98
    .local v0, arr:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 99
    shl-int/lit8 v4, v2, 0x3

    sub-int v4, p1, v4

    invoke-static {v6, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 100
    .local v3, increment:I
    invoke-virtual {p0, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    sub-int v5, v6, v3

    shl-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v2

    .line 98
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 96
    .end local v0           #arr:[B
    .end local v1           #bytes:I
    .end local v2           #i:I
    .end local v3           #increment:I
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 102
    .restart local v0       #arr:[B
    .restart local v1       #bytes:I
    .restart local v2       #i:I
    :cond_1
    return-object v0
.end method

.method public skip(I)V
    .locals 3
    .parameter "bits"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    .line 111
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    if-le v0, v1, :cond_0

    .line 112
    new-instance v0, Lcom/android/internal/util/BitwiseInputStream$AccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal skip (pos "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/util/BitwiseInputStream;->mEnd:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", bits "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/util/BitwiseInputStream$AccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/util/BitwiseInputStream;->mPos:I

    .line 116
    return-void
.end method
