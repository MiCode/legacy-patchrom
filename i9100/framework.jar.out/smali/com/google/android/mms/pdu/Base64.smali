.class public Lcom/google/android/mms/pdu/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field static final BASELENGTH:I = 0xff

.field static final FOURBYTE:I = 0x4

.field static final PAD:B = 0x3dt

.field private static base64Alphabet:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0x61

    const/16 v4, 0x41

    const/16 v3, 0x30

    .line 37
    new-array v1, v6, [B

    sput-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .line 41
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 42
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    .line 41
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 44
    :cond_0
    const/16 v0, 0x5a

    :goto_1
    if-lt v0, v4, :cond_1

    .line 45
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    sub-int v2, v0, v4

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 44
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 47
    :cond_1
    const/16 v0, 0x7a

    :goto_2
    if-lt v0, v5, :cond_2

    .line 48
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    sub-int v2, v0, v5

    add-int/lit8 v2, v2, 0x1a

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 47
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 50
    :cond_2
    const/16 v0, 0x39

    :goto_3
    if-lt v0, v3, :cond_3

    .line 51
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    sub-int v2, v0, v3

    add-int/lit8 v2, v2, 0x34

    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 50
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 54
    :cond_3
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v2, 0x2b

    const/16 v3, 0x3e

    aput-byte v3, v1, v2

    .line 55
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    const/16 v2, 0x2f

    const/16 v3, 0x3f

    aput-byte v3, v1, v2

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decodeBase64([B)[B
    .locals 14
    .parameter "base64Data"

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/mms/pdu/Base64;->discardNonBase64([B)[B

    move-result-object p0

    .line 69
    array-length v0, p0

    if-nez v0, :cond_0

    .line 70
    const/4 p0, 0x0

    new-array p0, p0, [B

    .line 123
    .end local p0
    :goto_0
    return-object p0

    .line 73
    .restart local p0
    :cond_0
    array-length v0, p0

    div-int/lit8 v10, v0, 0x4

    .line 74
    .local v10, numberQuadruple:I
    const/4 v0, 0x0

    .line 75
    .local v0, decodedData:[B
    const/4 v0, 0x0

    .local v0, b1:B
    const/4 v1, 0x0

    .local v1, b2:B
    const/4 v2, 0x0

    .local v2, b3:B
    const/4 v3, 0x0

    .local v3, b4:B
    const/4 v8, 0x0

    .local v8, marker0:B
    const/4 v9, 0x0

    .line 79
    .local v9, marker1:B
    const/4 v6, 0x0

    .line 80
    .local v6, encodedIndex:I
    const/4 v4, 0x0

    .line 83
    .local v4, dataIndex:I
    array-length v5, p0

    .line 85
    .local v5, lastData:I
    :cond_1
    const/4 v7, 0x1

    sub-int v7, v5, v7

    aget-byte v7, p0, v7

    const/16 v11, 0x3d

    if-ne v7, v11, :cond_2

    .line 86
    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_1

    .line 87
    const/4 p0, 0x0

    new-array p0, p0, [B

    .end local p0
    goto :goto_0

    .line 90
    .restart local p0
    :cond_2
    sub-int/2addr v5, v10

    new-array v5, v5, [B

    .line 93
    .local v5, decodedData:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v10, :cond_6

    .line 94
    mul-int/lit8 v4, v7, 0x4

    .line 95
    add-int/lit8 v0, v4, 0x2

    aget-byte v8, p0, v0

    .line 96
    .end local v0           #b1:B
    add-int/lit8 v0, v4, 0x3

    aget-byte v9, p0, v0

    .line 98
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v1, p0, v4

    .end local v1           #b2:B
    aget-byte v0, v0, v1

    .line 99
    .restart local v0       #b1:B
    sget-object v1, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    add-int/lit8 v11, v4, 0x1

    aget-byte v11, p0, v11

    aget-byte v1, v1, v11

    .line 101
    .restart local v1       #b2:B
    const/16 v11, 0x3d

    if-eq v8, v11, :cond_4

    const/16 v11, 0x3d

    if-eq v9, v11, :cond_4

    .line 103
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .end local v2           #b3:B
    aget-byte v2, v2, v8

    .line 104
    .restart local v2       #b3:B
    sget-object v3, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .end local v3           #b4:B
    aget-byte v3, v3, v9

    .line 106
    .restart local v3       #b4:B
    shl-int/lit8 v11, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 107
    add-int/lit8 v11, v6, 0x1

    and-int/lit8 v12, v1, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v2, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    .line 109
    add-int/lit8 v11, v6, 0x2

    shl-int/lit8 v12, v2, 0x6

    or-int/2addr v12, v3

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    .line 121
    :cond_3
    :goto_2
    add-int/lit8 v6, v6, 0x3

    .line 93
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 110
    :cond_4
    const/16 v11, 0x3d

    if-ne v8, v11, :cond_5

    .line 112
    shl-int/lit8 v11, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    goto :goto_2

    .line 113
    :cond_5
    const/16 v11, 0x3d

    if-ne v9, v11, :cond_3

    .line 115
    sget-object v2, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    .end local v2           #b3:B
    aget-byte v2, v2, v8

    .line 117
    .restart local v2       #b3:B
    shl-int/lit8 v11, v0, 0x2

    shr-int/lit8 v12, v1, 0x4

    or-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v5, v6

    .line 118
    add-int/lit8 v11, v6, 0x1

    and-int/lit8 v12, v1, 0xf

    shl-int/lit8 v12, v12, 0x4

    shr-int/lit8 v13, v2, 0x2

    and-int/lit8 v13, v13, 0xf

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    goto :goto_2

    :cond_6
    move-object p0, v5

    .line 123
    goto/16 :goto_0
.end method

.method static discardNonBase64([B)[B
    .locals 7
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    .line 152
    array-length v5, p0

    new-array v2, v5, [B

    .line 153
    .local v2, groomedData:[B
    const/4 v0, 0x0

    .line 155
    .local v0, bytesCopied:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_1

    .line 156
    aget-byte v5, p0, v3

    invoke-static {v5}, Lcom/google/android/mms/pdu/Base64;->isBase64(B)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 157
    add-int/lit8 v1, v0, 0x1

    .end local v0           #bytesCopied:I
    .local v1, bytesCopied:I
    aget-byte v5, p0, v3

    aput-byte v5, v2, v0

    move v0, v1

    .line 155
    .end local v1           #bytesCopied:I
    .restart local v0       #bytesCopied:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    new-array v4, v0, [B

    .line 163
    .local v4, packedData:[B
    invoke-static {v2, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    return-object v4
.end method

.method private static isBase64(B)Z
    .locals 3
    .parameter "octect"

    .prologue
    const/4 v2, 0x1

    .line 133
    const/16 v0, 0x3d

    if-ne p0, v0, :cond_0

    move v0, v2

    .line 138
    :goto_0
    return v0

    .line 135
    :cond_0
    sget-object v0, Lcom/google/android/mms/pdu/Base64;->base64Alphabet:[B

    aget-byte v0, v0, p0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 136
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    move v0, v2

    .line 138
    goto :goto_0
.end method
