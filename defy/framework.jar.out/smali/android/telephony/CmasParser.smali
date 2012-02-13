.class public Landroid/telephony/CmasParser;
.super Ljava/lang/Object;
.source "CmasParser.java"


# static fields
.field private static final LOCAL_DEBUG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "CMASParser"


# instance fields
.field cmas:Landroid/telephony/CmasMessage;

.field uData:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private extractSeptets([B)[B
    .locals 7
    .parameter "sepStream"

    .prologue
    const/4 v1, 0x0

    .local v1, expandedData:[B
    :try_start_0
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    array-length v5, p1

    mul-int/lit8 v5, v5, 0x8

    div-int/lit8 v4, v5, 0x7

    .local v4, wantedFields:I
    new-array v1, v4, [B

    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v4, :cond_0

    const/4 v5, 0x7

    invoke-virtual {v3, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    int-to-byte v5, v5

    aput-byte v5, v1, v2
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v2           #i:I
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #wantedFields:I
    :catch_0
    move-exception v5

    move-object v0, v5

    .local v0, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v5, "CMASParser"

    const-string v6, "Access Exception in Bitstream"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v0           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :cond_0
    return-object v1
.end method

.method private parseERecordOne(II)V
    .locals 3
    .parameter "index"
    .parameter "eRecordLen"

    .prologue
    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, index:I
    aget-byte v2, v2, p1

    iput-byte v2, v1, Landroid/telephony/CmasMessage;->cmaeCategory:B

    iget-object v1, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    aget-byte v2, v2, v0

    iput-byte v2, v1, Landroid/telephony/CmasMessage;->cmaeResponseType:B

    iget-object v1, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    aget-byte v2, v2, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, v1, Landroid/telephony/CmasMessage;->cmaeSeverity:I

    iget-object v1, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    aget-byte v2, v2, p1

    and-int/lit8 v2, v2, 0xf

    iput v2, v1, Landroid/telephony/CmasMessage;->cmaeUrgency:I

    iget-object v1, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    aget-byte v2, v2, v0

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v2, v2, 0xf

    iput v2, v1, Landroid/telephony/CmasMessage;->cmaeCertainty:I

    move p1, v0

    .end local v0           #index:I
    .restart local p1
    goto :goto_0
.end method

.method private parseERecordTwo(II)V
    .locals 4
    .parameter "index"
    .parameter "eRecordLen"

    .prologue
    const/16 v2, 0xa

    if-ge p2, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    aget-byte v2, v2, p1

    shr-int/lit8 v2, v2, 0x4

    and-int/lit8 v1, v2, 0xf

    .local v1, msg_id:I
    shl-int/lit8 v1, v1, 0xc

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .local v0, index:I
    aget-byte v2, v2, p1

    and-int/lit8 v2, v2, 0xf

    shl-int/lit8 v2, v2, 0x8

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    aget-byte v2, v2, v0

    add-int/2addr v1, v2

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iput v1, v2, Landroid/telephony/CmasMessage;->cmaeIdentifier:I

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    aget-byte v3, v3, p1

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeAlertHandling:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    aget-byte v3, v3, v0

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeExpiresYear:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    aget-byte v3, v3, p1

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeExpiresMonth:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    aget-byte v3, v3, v0

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeExpiresDay:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    aget-byte v3, v3, p1

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeExpiresHours:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 p1, v0, 0x1

    .end local v0           #index:I
    .restart local p1
    aget-byte v3, v3, v0

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeExpiresMinutes:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v0, p1, 0x1

    .end local p1
    .restart local v0       #index:I
    aget-byte v3, v3, p1

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeExpiresSeconds:B

    iget-object v2, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v3, p0, Landroid/telephony/CmasParser;->uData:[B

    aget-byte v3, v3, v0

    iput-byte v3, v2, Landroid/telephony/CmasMessage;->cmaeLanguage:B

    move p1, v0

    .end local v0           #index:I
    .restart local p1
    goto :goto_0
.end method

.method private parseERecordZero(II)V
    .locals 12
    .parameter "index"
    .parameter "eRecordLen"

    .prologue
    const/4 v10, 0x0

    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, p0, Landroid/telephony/CmasParser;->uData:[B

    aget-byte v9, v9, p1

    shr-int/lit8 v9, v9, 0x3

    and-int/lit8 v9, v9, 0x1f

    iput v9, v8, Landroid/telephony/CmasMessage;->cmaeCharSet:I

    new-array v0, p2, [B

    .local v0, alertText:[B
    iget-object v8, p0, Landroid/telephony/CmasParser;->uData:[B

    invoke-static {v8, p1, v0, v10, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-byte v8, v0, v10

    and-int/lit8 v8, v8, 0x7

    int-to-byte v8, v8

    aput-byte v8, v0, v10

    :try_start_0
    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget v8, v8, Landroid/telephony/CmasMessage;->cmaeCharSet:I

    sparse-switch v8, :sswitch_data_0

    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    const-string v9, ""

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    :goto_0
    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v9, v9, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    iput v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertTextLength:I

    :goto_1
    return-void

    :sswitch_0
    const/4 v7, 0x5

    .local v7, unusedBits:I
    mul-int/lit8 v8, p2, 0x8

    sub-int/2addr v8, v7

    div-int/lit8 v4, v8, 0x7

    .local v4, lengthSeptets:I
    invoke-direct {p0, v0}, Landroid/telephony/CmasParser;->stripOff5Bits([B)[B

    move-result-object v8

    invoke-direct {p0, v8}, Landroid/telephony/CmasParser;->extractSeptets([B)[B

    move-result-object v6

    .local v6, septets:[B
    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    new-instance v9, Ljava/lang/String;

    const/4 v10, 0x0

    const-string v11, "US-ASCII"

    invoke-direct {v9, v6, v10, v4, v11}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v4           #lengthSeptets:I
    .end local v6           #septets:[B
    .end local v7           #unusedBits:I
    :catch_0
    move-exception v8

    move-object v2, v8

    .local v2, e:Ljava/io/UnsupportedEncodingException;
    const-string v8, "CMASParser"

    const-string v9, "Unsupported Encoding Exception in Record 0"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v2           #e:Ljava/io/UnsupportedEncodingException;
    :sswitch_1
    :try_start_1
    array-length v8, v0

    new-array v5, v8, [B

    .local v5, reversed:[B
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    array-length v8, v0

    if-ge v3, v8, :cond_0

    array-length v8, v0

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    sub-int/2addr v8, v3

    aget-byte v8, v0, v8

    aput-byte v8, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    mul-int/lit8 v8, p2, 0x8

    const/4 v9, 0x5

    sub-int/2addr v8, v9

    rem-int/lit8 v7, v8, 0x7

    .restart local v7       #unusedBits:I
    mul-int/lit8 v8, p2, 0x8

    sub-int/2addr v8, v7

    div-int/lit8 v4, v8, 0x7

    .restart local v4       #lengthSeptets:I
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v8, 0x0

    invoke-static {v5, v8, v4, v7}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BIII)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v1, alertTextBuilder:Ljava/lang/StringBuilder;
    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;

    goto :goto_0

    .end local v1           #alertTextBuilder:Ljava/lang/StringBuilder;
    .end local v3           #i:I
    .end local v4           #lengthSeptets:I
    .end local v5           #reversed:[B
    .end local v7           #unusedBits:I
    :sswitch_2
    invoke-direct {p0, v0}, Landroid/telephony/CmasParser;->stripOff5Bits([B)[B

    move-result-object v0

    iget-object v8, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    new-instance v9, Ljava/lang/String;

    const-string v10, "UTF-16"

    invoke-direct {v9, v0, v10}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    iput-object v9, v8, Landroid/telephony/CmasMessage;->cmaeAlertText:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method private stripOff5Bits([B)[B
    .locals 6
    .parameter "array"

    .prologue
    const/4 v5, 0x5

    const/4 v2, 0x0

    .local v2, strippedArray:[B
    :try_start_0
    new-instance v1, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v1, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v1, inStream:Lcom/android/internal/util/BitwiseInputStream;
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x8

    sub-int v3, v4, v5

    .local v3, wantedBits:I
    const/4 v4, 0x5

    invoke-virtual {v1, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    invoke-virtual {v1, v3}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .end local v1           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v3           #wantedBits:I
    :goto_0
    return-object v4

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v4, "CMASParser"

    const-string v5, "Access Exception in Bitstream"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    goto :goto_0
.end method


# virtual methods
.method public parseBroadcastSms(Landroid/telephony/SmsMessage;)Landroid/telephony/CmasMessage;
    .locals 14
    .parameter "msg"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/telephony/CmasException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x1

    const-string v13, "No E Record 0 present in CMAS message"

    const-string v12, "CMAE Protocol is not 0x00"

    const-string v9, "CMASParser"

    new-instance v7, Landroid/telephony/CmasMessage;

    invoke-direct {v7}, Landroid/telephony/CmasMessage;-><init>()V

    iput-object v7, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getPriority()I

    move-result v7

    if-eq v7, v11, :cond_0

    new-instance v7, Landroid/telephony/CmasException;

    const-string v8, "Priority is not set to 0x3 (Emergency)"

    invoke-direct {v7, v8}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v7

    const/16 v8, 0x1000

    if-lt v7, v8, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v7

    const/16 v8, 0x1004

    if-le v7, v8, :cond_2

    :cond_1
    new-instance v7, Landroid/telephony/CmasException;

    const-string v8, "Invalid Service Category"

    invoke-direct {v7, v8}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    const-string v7, "CMASParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "msg.getMessageId in CMAS parser is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getMessageId()I

    move-result v8

    iput v8, v7, Landroid/telephony/CmasMessage;->cmaeIdentifier:I

    iget-object v7, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getServiceCategory()I

    move-result v8

    iput v8, v7, Landroid/telephony/CmasMessage;->cmasService:I

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getLanguage()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getLanguage()I

    move-result v7

    if-eq v7, v10, :cond_3

    new-instance v7, Landroid/telephony/CmasException;

    const-string v8, "Language is not set to English"

    invoke-direct {v7, v8}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_3
    invoke-virtual {p1}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v7

    iput-object v7, p0, Landroid/telephony/CmasParser;->uData:[B

    iget-object v7, p0, Landroid/telephony/CmasParser;->uData:[B

    if-eqz v7, :cond_4

    iget-object v7, p0, Landroid/telephony/CmasParser;->uData:[B

    array-length v7, v7

    if-ge v7, v11, :cond_5

    :cond_4
    const-string v7, "CMASParser"

    const-string v7, "Received SMS without user data"

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/telephony/CmasException;

    const-string v8, "Insufficient or no User Data"

    invoke-direct {v7, v8}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_5
    const/4 v5, 0x0

    .local v5, index:I
    iget-object v7, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-object v8, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .local v6, index:I
    aget-byte v8, v8, v5

    iput-byte v8, v7, Landroid/telephony/CmasMessage;->cmaeProtocolVersion:B

    iget-object v7, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    iget-byte v7, v7, Landroid/telephony/CmasMessage;->cmaeProtocolVersion:B

    if-eqz v7, :cond_6

    const-string v7, "CMASParser"

    const-string v7, "CMAE Protocol is not 0x00"

    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/telephony/CmasException;

    const-string v8, "CMAE Protocol is not 0x00"

    invoke-direct {v7, v12}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_6
    const/4 v2, 0x0

    .local v2, eRecordTwoPresent:Z
    move v1, v2

    .local v1, eRecordOnePresent:Z
    move v4, v2

    .local v4, eRecordZeroPresent:Z
    move v5, v6

    .end local v6           #index:I
    .restart local v5       #index:I
    :goto_0
    iget-object v7, p0, Landroid/telephony/CmasParser;->uData:[B

    array-length v7, v7

    sub-int/2addr v7, v10

    if-ge v5, v7, :cond_7

    iget-object v7, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v6, v5, 0x1

    .end local v5           #index:I
    .restart local v6       #index:I
    aget-byte v3, v7, v5

    .local v3, eRecordType:I
    iget-object v7, p0, Landroid/telephony/CmasParser;->uData:[B

    add-int/lit8 v5, v6, 0x1

    .end local v6           #index:I
    .restart local v5       #index:I
    aget-byte v0, v7, v6

    .local v0, eRecordLen:I
    const-string v7, "CMASParser"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Record type is"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    add-int v7, v5, v0

    iget-object v8, p0, Landroid/telephony/CmasParser;->uData:[B

    array-length v8, v8

    if-le v7, v8, :cond_8

    .end local v0           #eRecordLen:I
    .end local v3           #eRecordType:I
    :cond_7
    if-nez v4, :cond_a

    const-string v7, "CMASParser"

    const-string v7, "No E Record 0 present in CMAS message"

    invoke-static {v9, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/telephony/CmasException;

    const-string v8, "No E Record 0 present in CMAS message"

    invoke-direct {v7, v13}, Landroid/telephony/CmasException;-><init>(Ljava/lang/String;)V

    throw v7

    .restart local v0       #eRecordLen:I
    .restart local v3       #eRecordType:I
    :cond_8
    packed-switch v3, :pswitch_data_0

    :cond_9
    :goto_1
    add-int/2addr v5, v0

    goto :goto_0

    :pswitch_0
    if-nez v4, :cond_9

    const/4 v4, 0x1

    invoke-direct {p0, v5, v0}, Landroid/telephony/CmasParser;->parseERecordZero(II)V

    goto :goto_1

    :pswitch_1
    if-nez v1, :cond_9

    const/4 v1, 0x1

    invoke-direct {p0, v5, v0}, Landroid/telephony/CmasParser;->parseERecordOne(II)V

    goto :goto_1

    :pswitch_2
    if-nez v2, :cond_9

    const/4 v2, 0x1

    invoke-direct {p0, v5, v0}, Landroid/telephony/CmasParser;->parseERecordTwo(II)V

    goto :goto_1

    .end local v0           #eRecordLen:I
    .end local v3           #eRecordType:I
    :cond_a
    iget-object v7, p0, Landroid/telephony/CmasParser;->cmas:Landroid/telephony/CmasMessage;

    return-object v7

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
