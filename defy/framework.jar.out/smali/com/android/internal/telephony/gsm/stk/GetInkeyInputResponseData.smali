.class Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;
.super Lcom/android/internal/telephony/gsm/stk/ResponseData;
.source "ResponseData.java"


# static fields
.field protected static final GET_INKEY_NO:B = 0x0t

.field protected static final GET_INKEY_YES:B = 0x1t


# instance fields
.field public mInData:Ljava/lang/String;

.field private mIsPacked:Z

.field private mIsUcs2:Z

.field private mIsYesNo:Z

.field private mYesNoResponse:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 1
    .parameter "inData"
    .parameter "ucs2"
    .parameter "packed"

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean p3, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .parameter "yesNoResponse"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/stk/ResponseData;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    iput-boolean p1, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    return-void
.end method


# virtual methods
.method public format(Ljava/io/ByteArrayOutputStream;)V
    .locals 14
    .parameter "buf"

    .prologue
    const/16 v13, 0x80

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-object v10, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->TEXT_STRING:Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;

    invoke-virtual {v10}, Lcom/android/internal/telephony/gsm/stk/ComprehensionTlvTag;->value()I

    move-result v10

    or-int/lit16 v8, v10, 0x80

    .local v8, tag:I
    invoke-virtual {p1, v8}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsYesNo:Z

    if-eqz v10, :cond_3

    new-array v2, v11, [B

    .local v2, data:[B
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mYesNoResponse:Z

    if-eqz v10, :cond_2

    move v10, v11

    :goto_0
    aput-byte v10, v2, v12

    :goto_1
    array-length v10, v2

    add-int/lit8 v5, v10, 0x1

    .local v5, len:I
    if-ge v5, v13, :cond_7

    :try_start_0
    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_b

    const/16 v10, 0x8

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_3
    move-object v0, v2

    .local v0, arr$:[B
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_4
    if-ge v4, v6, :cond_0

    aget-byte v1, v0, v4

    .local v1, b:B
    invoke-virtual {p1, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .end local v0           #arr$:[B
    .end local v1           #b:B
    .end local v4           #i$:I
    .end local v5           #len:I
    .end local v6           #len$:I
    :cond_2
    move v10, v12

    goto :goto_0

    .end local v2           #data:[B
    :cond_3
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    if-eqz v10, :cond_6

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_6

    :try_start_1
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsUcs2:Z

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    const-string v11, "UTF-16BE"

    invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    :cond_4
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    .local v7, size:I
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v9

    .local v9, tempData:[B
    new-array v2, v7, [B

    .restart local v2       #data:[B
    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-static {v9, v10, v2, v11, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .end local v2           #data:[B
    .end local v7           #size:I
    .end local v9           #tempData:[B
    :catch_0
    move-exception v10

    move-object v3, v10

    .local v3, e:Ljava/io/UnsupportedEncodingException;
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :cond_5
    :try_start_2
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mInData:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    :catch_1
    move-exception v10

    move-object v3, v10

    .local v3, e:Lcom/android/internal/telephony/EncodeException;
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_1

    .end local v2           #data:[B
    .end local v3           #e:Lcom/android/internal/telephony/EncodeException;
    :cond_6
    new-array v2, v12, [B

    .restart local v2       #data:[B
    goto :goto_1

    .restart local v5       #len:I
    :cond_7
    const/16 v10, 0xff

    if-gt v5, v10, :cond_8

    if-lt v5, v13, :cond_8

    const/16 v10, 0x81

    :try_start_3
    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_2

    :catch_2
    move-exception v10

    goto :goto_2

    :cond_8
    const v10, 0xffff

    if-gt v5, v10, :cond_9

    const/16 v10, 0x100

    if-lt v5, v10, :cond_9

    const/16 v10, 0x82

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v10, v5, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v10, v5, 0xff

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_9
    const v10, 0xffffff

    if-gt v5, v10, :cond_a

    const/high16 v10, 0x1

    if-lt v5, v10, :cond_a

    const/16 v10, 0x83

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v10, v5, 0x10

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    shr-int/lit8 v10, v5, 0x8

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit16 v10, v5, 0xff

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_2

    :cond_a
    new-instance v10, Lcom/android/internal/telephony/gsm/stk/ResultException;

    sget-object v11, Lcom/android/internal/telephony/gsm/stk/ResultCode;->CMD_DATA_NOT_UNDERSTOOD:Lcom/android/internal/telephony/gsm/stk/ResultCode;

    invoke-direct {v10, v11}, Lcom/android/internal/telephony/gsm/stk/ResultException;-><init>(Lcom/android/internal/telephony/gsm/stk/ResultCode;)V

    throw v10
    :try_end_3
    .catch Lcom/android/internal/telephony/gsm/stk/ResultException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_b
    iget-boolean v10, p0, Lcom/android/internal/telephony/gsm/stk/GetInkeyInputResponseData;->mIsPacked:Z

    if-eqz v10, :cond_c

    invoke-virtual {p1, v12}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    :cond_c
    const/4 v10, 0x4

    invoke-virtual {p1, v10}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3
.end method
