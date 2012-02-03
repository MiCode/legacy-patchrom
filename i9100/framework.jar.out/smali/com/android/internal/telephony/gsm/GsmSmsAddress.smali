.class public Lcom/android/internal/telephony/gsm/GsmSmsAddress;
.super Lcom/android/internal/telephony/SmsAddress;
.source "GsmSmsAddress.java"


# static fields
.field static final DOCOMO:Ljava/lang/String; = "DOCOMO"

.field static final DOCOMO_SMS:Ljava/lang/String; = "DOCOMO SMS"

.field static final NTT_DOCOMO:Ljava/lang/String; = "NTT DOCOMO"

.field static final OFFSET_ADDRESS_LENGTH:I = 0x0

.field static final OFFSET_ADDRESS_VALUE:I = 0x2

.field static final OFFSET_TOA:I = 0x1


# instance fields
.field partofaddress:Ljava/lang/String;


# direct methods
.method public constructor <init>([BII)V
    .locals 8
    .parameter "data"
    .parameter "offset"
    .parameter "length"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x1

    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsAddress;-><init>()V

    .line 48
    new-array v4, p3, [B

    iput-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .line 49
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {p1, p2, v4, v5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 52
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v4, v4, v5

    and-int/lit16 v0, v4, 0xff

    .line 54
    .local v0, addressLength:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v4, v4, v7

    and-int/lit16 v3, v4, 0xff

    .line 55
    .local v3, toa:I
    shr-int/lit8 v4, v3, 0x4

    and-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    .line 58
    and-int/lit16 v4, v3, 0x80

    const/16 v5, 0x80

    if-eq v4, v5, :cond_0

    .line 59
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "Invalid TOA - high bit must be set"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 64
    mul-int/lit8 v4, v0, 0x4

    div-int/lit8 v1, v4, 0x7

    .line 66
    .local v1, countSeptets:I
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v5, 0x2

    invoke-static {v4, v5, v1}, Lcom/android/internal/telephony/GsmAlphabet;->gsm7BitPackedToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 114
    .end local v1           #countSeptets:I
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    sub-int v5, p3, v7

    aget-byte v2, v4, v5

    .line 75
    .local v2, lastByte:B
    and-int/lit8 v4, v0, 0x1

    if-ne v4, v7, :cond_2

    .line 77
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    sub-int v5, p3, v7

    aget-byte v6, v4, v5

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    .line 79
    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    sub-int v5, p3, v7

    invoke-static {v4, v7, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    .line 83
    iget-object v4, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    sub-int v5, p3, v7

    aput-byte v2, v4, v5

    goto :goto_0
.end method


# virtual methods
.method public getAddressString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    return-object v0
.end method

.method public isAlphanumeric()Z
    .locals 2

    .prologue
    .line 124
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageClear()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 180
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x10

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x90

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCphsVoiceMessageIndicatorAddress()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isAlphanumeric()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v3

    and-int/lit8 v0, v0, 0xf

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isCphsVoiceMessageSet()Z
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageIndicatorAddress()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x11

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x91

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNetworkSpecific()Z
    .locals 2

    .prologue
    .line 128
    iget v0, p0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
