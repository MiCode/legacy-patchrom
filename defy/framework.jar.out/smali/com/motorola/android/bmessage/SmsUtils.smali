.class public Lcom/motorola/android/bmessage/SmsUtils;
.super Landroid/telephony/SmsMessage;
.source "SmsUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/bmessage/SmsUtils$1;,
        Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "BTSMSUtils"

.field public static final MODE_CDMA:I = 0x0

.field public static final MODE_UMTS:I = 0x1


# instance fields
.field private m_mode:I


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/SmsMessageBase;I)V
    .locals 0
    .parameter "base"
    .parameter "mode"

    .prologue
    invoke-direct {p0}, Landroid/telephony/SmsMessage;-><init>()V

    iput-object p1, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iput p2, p0, Lcom/motorola/android/bmessage/SmsUtils;->m_mode:I

    return-void
.end method

.method private static encodeDtmfSmsAddress(Ljava/lang/String;)[B
    .locals 12
    .parameter "address"

    .prologue
    const/16 v11, 0x30

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .local v3, digits:I
    mul-int/lit8 v1, v3, 0x4

    .local v1, dataBits:I
    div-int/lit8 v2, v1, 0x8

    .local v2, dataBytes:I
    rem-int/lit8 v7, v1, 0x8

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    add-int/2addr v2, v7

    new-array v5, v2, [B

    .local v5, rawData:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v3, :cond_5

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .local v0, c:C
    const/4 v6, 0x0

    .local v6, val:I
    const/16 v7, 0x31

    if-lt v0, v7, :cond_1

    const/16 v7, 0x39

    if-gt v0, v7, :cond_1

    sub-int v6, v0, v11

    :goto_2
    div-int/lit8 v7, v4, 0x2

    aget-byte v8, v5, v7

    const/4 v9, 0x4

    rem-int/lit8 v10, v4, 0x2

    mul-int/lit8 v10, v10, 0x4

    sub-int/2addr v9, v10

    shl-int v9, v6, v9

    or-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .end local v0           #c:C
    .end local v4           #i:I
    .end local v5           #rawData:[B
    .end local v6           #val:I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0

    .restart local v0       #c:C
    .restart local v4       #i:I
    .restart local v5       #rawData:[B
    .restart local v6       #val:I
    :cond_1
    if-ne v0, v11, :cond_2

    const/16 v6, 0xa

    goto :goto_2

    :cond_2
    const/16 v7, 0x2a

    if-ne v0, v7, :cond_3

    const/16 v6, 0xb

    goto :goto_2

    :cond_3
    const/16 v7, 0x23

    if-ne v0, v7, :cond_4

    const/16 v6, 0xc

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    .end local v0           #c:C
    .end local v6           #val:I
    :goto_3
    return-object v7

    :cond_5
    move-object v7, v5

    goto :goto_3
.end method

.method private static getCDMATLDeliverPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;JLjava/lang/String;I)[B
    .locals 3
    .parameter "fromAddress"
    .parameter "userData"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .local v0, fromAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    .end local p4
    .end local p5
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p4
    .restart local p5
    :cond_0
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local p0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    :try_start_0
    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz p4, :cond_1

    invoke-static {p4}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object p4

    .end local p4
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_1
    iput p5, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p1

    .local p1, encodedBearerData:[B
    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local p1, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p4
    :catch_0
    move-exception p0

    .local p0, ex:Ljava/io/UnsupportedEncodingException;
    const-string p0, "BTSMSUtils"

    .end local p0           #ex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "invalid SMS address, cannot convert to ASCII"

    .end local p1           #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .restart local p1       #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/android/bmessage/SmsUtils;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_1

    .end local p4
    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local p1, encodedBearerData:[B
    :cond_3
    const-wide/16 p4, 0x0

    cmp-long p4, p2, p4

    if-eqz p4, :cond_6

    array-length p4, p1

    add-int/lit8 p4, p4, 0x8

    new-array p4, p4, [B

    .local p4, encodedBearerDataWithTime:[B
    const/4 p5, 0x0

    const/4 v1, 0x0

    array-length v2, p1

    .end local p5
    invoke-static {p1, p5, p4, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    .local p1, pos:I
    new-instance p5, Landroid/text/format/Time;

    invoke-direct {p5}, Landroid/text/format/Time;-><init>()V

    .local p5, time:Landroid/text/format/Time;
    invoke-virtual {p5, p2, p3}, Landroid/text/format/Time;->set(J)V

    add-int/lit8 p2, p1, 0x1

    .end local p1           #pos:I
    .local p2, pos:I
    const/4 p3, 0x3

    aput-byte p3, p4, p1

    add-int/lit8 p1, p2, 0x1

    .end local p2           #pos:I
    .restart local p1       #pos:I
    const/4 p3, 0x5

    aput-byte p3, p4, p2

    add-int/lit8 p2, p1, 0x1

    .end local p1           #pos:I
    .restart local p2       #pos:I
    iget p3, p5, Landroid/text/format/Time;->year:I

    const/16 v1, 0x7d0

    sub-int/2addr p3, v1

    div-int/lit8 p3, p3, 0xa

    shl-int/lit8 p3, p3, 0x4

    iget v1, p5, Landroid/text/format/Time;->year:I

    const/16 v2, 0x7d0

    sub-int/2addr v1, v2

    rem-int/lit8 v1, v1, 0xa

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, p1

    add-int/lit8 p1, p2, 0x1

    .end local p2           #pos:I
    .restart local p1       #pos:I
    iget p3, p5, Landroid/text/format/Time;->month:I

    div-int/lit8 p3, p3, 0xa

    shl-int/lit8 p3, p3, 0x4

    iget v1, p5, Landroid/text/format/Time;->month:I

    rem-int/lit8 v1, v1, 0xa

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, p2

    add-int/lit8 p2, p1, 0x1

    .end local p1           #pos:I
    .restart local p2       #pos:I
    iget p3, p5, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 p3, p3, 0xa

    shl-int/lit8 p3, p3, 0x4

    iget v1, p5, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v1, v1, 0xa

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, p1

    add-int/lit8 p1, p2, 0x1

    .end local p2           #pos:I
    .restart local p1       #pos:I
    iget p3, p5, Landroid/text/format/Time;->hour:I

    div-int/lit8 p3, p3, 0xa

    shl-int/lit8 p3, p3, 0x4

    iget v1, p5, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v1, v1, 0xa

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, p2

    add-int/lit8 p2, p1, 0x1

    .end local p1           #pos:I
    .restart local p2       #pos:I
    iget p3, p5, Landroid/text/format/Time;->minute:I

    div-int/lit8 p3, p3, 0xa

    shl-int/lit8 p3, p3, 0x4

    iget v1, p5, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v1, v1, 0xa

    or-int/2addr p3, v1

    int-to-byte p3, p3

    aput-byte p3, p4, p1

    add-int/lit8 p1, p2, 0x1

    .end local p2           #pos:I
    .restart local p1       #pos:I
    iget p1, p5, Landroid/text/format/Time;->second:I

    .end local p1           #pos:I
    div-int/lit8 p1, p1, 0xa

    shl-int/lit8 p1, p1, 0x4

    iget p3, p5, Landroid/text/format/Time;->second:I

    rem-int/lit8 p3, p3, 0xa

    or-int/2addr p1, p3

    int-to-byte p1, p1

    aput-byte p1, p4, p2

    move-object p1, p4

    .end local p4           #encodedBearerDataWithTime:[B
    .end local p5           #time:Landroid/text/format/Time;
    .local p1, encodedBearerDataWithTime:[B
    :goto_2
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-eqz p0, :cond_7

    const/16 p0, 0x1005

    .local p0, teleservice:I
    :goto_3
    :try_start_1
    new-instance p2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 p3, 0x12c

    invoke-direct {p2, p3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .local p2, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 p3, 0x8

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    const/4 p4, 0x0

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    const/4 p4, 0x2

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    const p4, 0xffff

    and-int/2addr p4, p0

    shr-int/lit8 p4, p4, 0x8

    invoke-virtual {p2, p3, p4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {p2, p3, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p0           #teleservice:I
    const/16 p0, 0x8

    const/4 p3, 0x2

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0xa

    .local p3, paramBits:I
    const/4 p0, 0x0

    .local p0, dataBits:I
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local p0           #dataBits:I
    const/4 p4, 0x1

    if-ne p0, p4, :cond_8

    add-int/lit8 p3, p3, 0x7

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 p0, p0, 0x8

    .restart local p0       #dataBits:I
    :goto_4
    add-int/2addr p3, p0

    div-int/lit8 p4, p3, 0x8

    rem-int/lit8 p5, p3, 0x8

    if-lez p5, :cond_9

    const/4 p5, 0x1

    :goto_5
    add-int/2addr p4, p5

    .local p4, paramBytes:I
    mul-int/lit8 p5, p4, 0x8

    sub-int p3, p5, p3

    .local p3, paddingBits:I
    const/16 p5, 0x8

    invoke-virtual {p2, p5, p4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 p4, 0x1

    iget p5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local p4           #paramBytes:I
    invoke-virtual {p2, p4, p5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 p4, 0x1

    const/4 p5, 0x0

    invoke-virtual {p2, p4, p5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget p4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 p5, 0x1

    if-ne p4, p5, :cond_4

    const/4 p4, 0x3

    iget p5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p2, p4, p5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 p4, 0x4

    iget p5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p2, p4, p5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_4
    const/16 p4, 0x8

    iget p5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p2, p4, p5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object p4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {p2, p0, p4}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez p3, :cond_5

    const/4 p0, 0x0

    invoke-virtual {p2, p3, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p0           #dataBits:I
    :cond_5
    const/16 p0, 0x8

    const/16 p3, 0x8

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p3           #paddingBits:I
    const/16 p0, 0x8

    array-length p3, p1

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    array-length p0, p1

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_0

    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local p1, encodedBearerData:[B
    .local p2, timeStamp:J
    .local p5, priority:I
    :cond_6
    move-object p1, p1

    .local p1, encodedBearerDataWithTime:[B
    goto/16 :goto_2

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local p2           #timeStamp:J
    .end local p5           #priority:I
    :cond_7
    const/16 p0, 0x1002

    goto/16 :goto_3

    .local p2, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .local p3, paramBits:I
    :cond_8
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    mul-int/lit8 p0, p0, 0x4

    .local p0, dataBits:I
    goto :goto_4

    :cond_9
    const/4 p5, 0x0

    goto :goto_5

    .end local p0           #dataBits:I
    .end local p2           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local p3           #paramBits:I
    :catch_1
    move-exception p0

    .local p0, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string p1, "BTSMSUtils"

    .end local p1           #encodedBearerDataWithTime:[B
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "creating deliverPdu failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method private static getCDMATLDeliverPdu(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B
    .locals 10
    .parameter "fromAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    const/4 v0, 0x0

    check-cast v0, [[B

    .local v0, pdus:[[B
    const/4 v0, 0x0

    .local v0, msgBody:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, address:Ljava/lang/String;
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .end local v0           #address:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, msgBody:Ljava/lang/String;
    const-string v0, "1111"

    .end local p1
    .restart local v0       #address:Ljava/lang/String;
    :goto_0
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object p1

    .local p1, encodingParams:[I
    const/4 v1, 0x0

    aget v1, p1, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 p1, 0x1

    new-array p1, p1, [[B

    .local p1, pdus:[[B
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 p0, 0x0

    iput-object p0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .end local p0           #msgBody:Ljava/lang/String;
    const/4 p0, 0x0

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLDeliverPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;JLjava/lang/String;I)[B

    move-result-object p2

    .end local p2
    aput-object p2, p1, p0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    check-cast p0, [[B

    move-object v9, p1

    .end local p1           #pdus:[[B
    .local v9, pdus:[[B
    move-object p1, p0

    move-object p0, v9

    .end local v1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local v9           #pdus:[[B
    .local p0, pdus:[[B
    :goto_1
    return-object p1

    .end local v0           #address:Ljava/lang/String;
    .local p0, fromAddress:Ljava/lang/String;
    .local p1, message:Ljava/lang/String;
    .restart local p2
    :cond_0
    move-object p1, p1

    .local p1, msgBody:Ljava/lang/String;
    move-object v0, p0

    .restart local v0       #address:Ljava/lang/String;
    move-object p0, p1

    .end local p1           #msgBody:Ljava/lang/String;
    .local p0, msgBody:Ljava/lang/String;
    goto :goto_0

    .end local p0           #msgBody:Ljava/lang/String;
    .end local p2
    .restart local v1       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .local p1, pdus:[[B
    :cond_1
    move-object p0, p1

    .end local v1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .end local p1           #pdus:[[B
    .local p0, pdus:[[B
    :goto_2
    move-object p1, p0

    goto :goto_1

    .local p0, msgBody:Ljava/lang/String;
    .local p1, encodingParams:[I
    .restart local p2
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v1, p0}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .local v7, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    .end local p0           #msgBody:Ljava/lang/String;
    new-array v8, p0, [[B

    .local v8, pdus:[[B
    const/4 p0, 0x0

    .local p0, i:I
    move v6, p0

    .end local v1           #smsManager:Landroid/telephony/SmsManager;
    .end local p0           #i:I
    .local v6, i:I
    :goto_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ge v6, p0, :cond_5

    new-instance p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local p0, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v1, v6, 0x1

    iput v1, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v2, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v2}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v2, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object p0, v2, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 p0, 0x3

    aget p0, p1, p0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_3

    .end local v2           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/16 p0, 0x9

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_4
    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLDeliverPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;JLjava/lang/String;I)[B

    move-result-object p0

    aput-object p0, v8, v6

    aget-object p0, v8, v6

    if-nez p0, :cond_4

    const/4 p0, 0x0

    check-cast p0, [[B

    move-object p1, p0

    move-object p0, v8

    .end local v8           #pdus:[[B
    .local p0, pdus:[[B
    goto :goto_1

    .end local p0           #pdus:[[B
    .restart local v8       #pdus:[[B
    :cond_3
    const/4 p0, 0x4

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    :cond_4
    add-int/lit8 p0, v6, 0x1

    .end local v6           #i:I
    .local p0, i:I
    move v6, p0

    .end local p0           #i:I
    .restart local v6       #i:I
    goto :goto_3

    .end local v1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_5
    move-object p0, v8

    .end local v8           #pdus:[[B
    .local p0, pdus:[[B
    goto :goto_2
.end method

.method private static getCDMATLSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)[B
    .locals 3
    .parameter "destAddress"
    .parameter "userData"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .local v0, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_0
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local p0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    :try_start_0
    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const-string v1, "US-ASCII"

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz p2, :cond_1

    invoke-static {p2}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object p2

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :cond_1
    iput p3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p1

    .local p1, encodedBearerData:[B
    if-nez p1, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local p1, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p2
    :catch_0
    move-exception p0

    .local p0, ex:Ljava/io/UnsupportedEncodingException;
    const-string p0, "BTSMSUtils"

    .end local p0           #ex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "invalid SMS address, cannot convert to ASCII"

    .end local p1           #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .restart local p1       #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {p0}, Lcom/motorola/android/bmessage/SmsUtils;->encodeDtmfSmsAddress(Ljava/lang/String;)[B

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    goto :goto_1

    .end local p2
    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .local p1, encodedBearerData:[B
    :cond_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-eqz p0, :cond_6

    const/16 p0, 0x1005

    .local p0, teleservice:I
    :goto_2
    :try_start_1
    new-instance p2, Lcom/android/internal/util/BitwiseOutputStream;

    const/16 p3, 0x12c

    invoke-direct {p2, p3}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .end local p3
    .local p2, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/16 p3, 0x8

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    const/4 v1, 0x0

    invoke-virtual {p2, p3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    const/4 v1, 0x2

    invoke-virtual {p2, p3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    const v1, 0xffff

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    invoke-virtual {p2, p3, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0x8

    and-int/lit16 p0, p0, 0xff

    invoke-virtual {p2, p3, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p0           #teleservice:I
    const/16 p0, 0x8

    const/4 p3, 0x4

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p3, 0xa

    .local p3, paramBits:I
    const/4 p0, 0x0

    .local p0, dataBits:I
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local p0           #dataBits:I
    const/4 v1, 0x1

    if-ne p0, v1, :cond_7

    add-int/lit8 p3, p3, 0x7

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    mul-int/lit8 p0, p0, 0x8

    .restart local p0       #dataBits:I
    :goto_3
    add-int/2addr p3, p0

    div-int/lit8 v1, p3, 0x8

    rem-int/lit8 v2, p3, 0x8

    if-lez v2, :cond_8

    const/4 v2, 0x1

    :goto_4
    add-int/2addr v1, v2

    .local v1, paramBytes:I
    mul-int/lit8 v2, v1, 0x8

    sub-int p3, v2, p3

    .local p3, paddingBits:I
    const/16 v2, 0x8

    invoke-virtual {p2, v2, v1}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v1, 0x1

    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local v1           #paramBytes:I
    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const/4 v1, 0x3

    iget v2, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v1, 0x4

    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    :cond_4
    const/16 v1, 0x8

    iget v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p2, p0, v0}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    if-lez p3, :cond_5

    const/4 p0, 0x0

    invoke-virtual {p2, p3, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p0           #dataBits:I
    :cond_5
    const/16 p0, 0x8

    const/16 p3, 0x8

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p3           #paddingBits:I
    const/16 p0, 0x8

    array-length p3, p1

    invoke-virtual {p2, p0, p3}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    array-length p0, p1

    mul-int/lit8 p0, p0, 0x8

    invoke-virtual {p2, p0, p1}, Lcom/android/internal/util/BitwiseOutputStream;->writeByteArray(I[B)V

    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0

    goto/16 :goto_0

    .end local p2           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local p3, priority:I
    :cond_6
    const/16 p0, 0x1002

    goto/16 :goto_2

    .restart local p2       #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .local p3, paramBits:I
    :cond_7
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseOutputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    mul-int/lit8 p0, p0, 0x4

    .restart local p0       #dataBits:I
    goto :goto_3

    :cond_8
    const/4 v2, 0x0

    goto :goto_4

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p0           #dataBits:I
    .end local p2           #outStream:Lcom/android/internal/util/BitwiseOutputStream;
    .end local p3           #paramBits:I
    :catch_1
    move-exception p0

    .local p0, ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    const-string p1, "BTSMSUtils"

    .end local p1           #encodedBearerData:[B
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "creating deliverPdu failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Lcom/android/internal/util/BitwiseOutputStream$AccessException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method private static getCDMATLSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[[B
    .locals 6
    .parameter "destAddress"
    .parameter "message"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    const/4 v0, 0x0

    check-cast v0, [[B

    .local v0, pdus:[[B
    const/4 v0, 0x0

    .local v0, msgBody:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, address:Ljava/lang/String;
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    .end local v0           #address:Ljava/lang/String;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .local p1, msgBody:Ljava/lang/String;
    const-string p0, "1111"

    .local p0, address:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v0

    .local v0, encodingParams:[I
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_2

    const/4 v0, 0x1

    new-array v0, v0, [[B

    .local v0, pdus:[[B
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .end local p1           #msgBody:Ljava/lang/String;
    const/4 p1, 0x0

    invoke-static {p0, v1, p2, p3}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)[B

    move-result-object p0

    .end local p0           #address:Ljava/lang/String;
    aput-object p0, v0, p1

    const/4 p0, 0x0

    aget-object p0, v0, p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    check-cast p0, [[B

    move-object p1, p0

    move-object p0, v0

    .end local v0           #pdus:[[B
    .end local v1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .local p0, pdus:[[B
    :goto_1
    return-object p1

    .local p0, destAddress:Ljava/lang/String;
    .local p1, message:Ljava/lang/String;
    :cond_0
    move-object p1, p1

    .local p1, msgBody:Ljava/lang/String;
    move-object p0, p0

    .local p0, address:Ljava/lang/String;
    goto :goto_0

    .end local p0           #address:Ljava/lang/String;
    .end local p1           #msgBody:Ljava/lang/String;
    .restart local v0       #pdus:[[B
    .restart local v1       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_1
    move-object p0, v0

    .end local v0           #pdus:[[B
    .end local v1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .local p0, pdus:[[B
    :goto_2
    move-object p1, p0

    goto :goto_1

    .local v0, encodingParams:[I
    .local p0, address:Ljava/lang/String;
    .restart local p1       #msgBody:Ljava/lang/String;
    :cond_2
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v1

    .local v1, smsManager:Landroid/telephony/SmsManager;
    invoke-virtual {v1, p1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .local v2, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    .end local p1           #msgBody:Ljava/lang/String;
    new-array v3, p1, [[B

    .local v3, pdus:[[B
    const/4 p1, 0x0

    .local p1, i:I
    move v1, p1

    .end local p1           #i:I
    .local v1, i:I
    :goto_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_5

    new-instance p1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {p1}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local p1, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    const/16 v4, 0xc8

    iput v4, p1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v4, v1, 0x1

    iput v4, p1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v4, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v4}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v4, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object p1, v4, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    new-instance p1, Lcom/android/internal/telephony/cdma/sms/UserData;

    .end local p1           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local p1, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v4, 0x3

    aget v4, v0, v4

    .end local v4           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    const/16 v4, 0x9

    iput v4, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_4
    invoke-static {p0, p1, p2, p3}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)[B

    move-result-object p1

    .end local p1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    aput-object p1, v3, v1

    aget-object p1, v3, v1

    if-nez p1, :cond_4

    const/4 p0, 0x0

    check-cast p0, [[B

    .end local p0           #address:Ljava/lang/String;
    move-object p1, p0

    move-object p0, v3

    .end local v3           #pdus:[[B
    .local p0, pdus:[[B
    goto :goto_1

    .restart local v3       #pdus:[[B
    .local p0, address:Ljava/lang/String;
    .restart local p1       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_3
    const/4 v4, 0x4

    iput v4, p1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_4

    .end local p1           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_4
    add-int/lit8 p1, v1, 0x1

    .end local v1           #i:I
    .local p1, i:I
    move v1, p1

    .end local p1           #i:I
    .restart local v1       #i:I
    goto :goto_3

    :cond_5
    move-object p0, v3

    .end local v3           #pdus:[[B
    .local p0, pdus:[[B
    goto :goto_2
.end method

.method public static getTLDeliverPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B
    .locals 1
    .parameter "mode"
    .parameter "fromAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    if-nez p0, :cond_0

    invoke-static/range {p1 .. p6}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLDeliverPdu(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTLDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[[B

    move-result-object v0

    goto :goto_0
.end method

.method public static getTLSubmitPdu(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;I)[[B
    .locals 2
    .parameter "mode"
    .parameter "destAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    if-nez p0, :cond_0

    invoke-static {p1, p2, p5, p6}, Lcom/motorola/android/bmessage/SmsUtils;->getCDMATLSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)[[B

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getTLSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[[B

    move-result-object v0

    goto :goto_0
.end method

.method private static newFromCDMATLPDU([B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    .locals 8
    .parameter "part"

    .prologue
    new-instance v5, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    const/4 v0, 0x0

    invoke-direct {v5, v0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;-><init>(Lcom/motorola/android/bmessage/SmsUtils$1;)V

    .local v5, msg:Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v1, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    new-instance v3, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v3, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .end local p0
    move-result p0

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result p0

    if-lez p0, :cond_b

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    .local p0, param:I
    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    mul-int/lit8 v4, v2, 0x8

    .local v4, length:I
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p0, 0x10

    if-ge v4, p0, :cond_1

    .end local p0           #param:I
    const-string p0, "BTSMSUtils"

    const-string v0, "Teleservice Identifier has wrong length"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #length:I
    :goto_1
    return-object p0

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4       #length:I
    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr p0, v2

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/16 p0, 0x10

    sub-int p0, v4, p0

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V
    :try_end_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #length:I
    :catch_0
    move-exception p0

    .local p0, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string p0, "BTSMSUtils"

    .end local p0           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v0, "BitwiseOutputStream.AccessException"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_1

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v3       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4       #length:I
    .local p0, param:I
    :pswitch_2
    const/16 p0, 0x10

    if-ge v4, p0, :cond_2

    .end local p0           #param:I
    :try_start_1
    const-string p0, "BTSMSUtils"

    const-string v0, "Service Category has wrong length"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_1

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_2
    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    const/16 v2, 0x8

    invoke-virtual {v3, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    or-int/2addr p0, v2

    iput p0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/16 p0, 0x10

    sub-int p0, v4, p0

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_0

    .restart local p0       #param:I
    :pswitch_3
    invoke-virtual {v3, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {v3, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto :goto_0

    :pswitch_5
    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .end local p0           #param:I
    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 p0, 0x1

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v2, 0x4

    .local v2, fieldBits:I
    const/4 p0, 0x2

    .local p0, consumedBits:I
    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v3, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .end local v2           #fieldBits:I
    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v2, 0x4

    invoke-virtual {v3, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    const/16 v2, 0x8

    .restart local v2       #fieldBits:I
    add-int/lit8 p0, p0, 0x7

    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v6

    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 p0, p0, 0x8

    sub-int/2addr v4, p0

    .local v4, remainingBits:I
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .end local p0           #consumedBits:I
    mul-int/2addr p0, v2

    .local p0, dataBits:I
    sub-int v2, v4, p0

    .local v2, paddingBits:I
    if-ge v4, p0, :cond_4

    const-string p0, "BTSMSUtils"

    .end local p0           #dataBits:I
    const-string v0, "error decoding Originating Address"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_1

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0       #dataBits:I
    :cond_4
    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object p0

    .end local p0           #dataBits:I
    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v3, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_5

    .end local v2           #paddingBits:I
    :try_start_2
    new-instance p0, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v4, 0x0

    iget-object v6, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v4           #remainingBits:I
    array-length v6, v6

    const-string v7, "US-ASCII"

    invoke-direct {p0, v2, v4, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_0

    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/16 v2, 0x2b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_1
    move-exception p0

    .local p0, ex:Ljava/io/UnsupportedEncodingException;
    :try_start_3
    const-string p0, "BTSMSUtils"

    .end local p0           #ex:Ljava/io/UnsupportedEncodingException;
    const-string v0, "error decoding Originating Address"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_1

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v4       #remainingBits:I
    :cond_5
    new-instance v2, Ljava/lang/StringBuffer;

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-direct {v2, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v2, strBuf:Ljava/lang/StringBuffer;
    const/4 p0, 0x0

    .end local v4           #remainingBits:I
    .local p0, i:I
    :goto_2
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge p0, v4, :cond_a

    iget-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    div-int/lit8 v6, p0, 0x2

    aget-byte v4, v4, v6

    const/4 v6, 0x4

    rem-int/lit8 v7, p0, 0x2

    mul-int/lit8 v7, v7, 0x4

    sub-int/2addr v6, v7

    ushr-int/2addr v4, v6

    and-int/lit8 v4, v4, 0xf

    .local v4, val:I
    const/4 v6, 0x1

    if-lt v4, v6, :cond_6

    const/16 v6, 0x9

    if-gt v4, v6, :cond_6

    const/16 v6, 0xa

    invoke-static {v4, v6}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .end local v4           #val:I
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .restart local v4       #val:I
    :cond_6
    const/16 v6, 0xa

    if-ne v4, v6, :cond_7

    const/16 v4, 0x30

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const/16 v6, 0xb

    if-ne v4, v6, :cond_8

    const/16 v4, 0x2a

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const/16 v6, 0xc

    if-ne v4, v6, :cond_9

    const/16 v4, 0x23

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const-string p0, "BTSMSUtils"

    .end local p0           #i:I
    const-string v0, "error decoding Dtmf Sms Address"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_1

    .end local v4           #val:I
    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0       #i:I
    :cond_a
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #i:I
    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_0

    .end local v2           #strBuf:Ljava/lang/StringBuffer;
    .local v4, length:I
    .local p0, param:I
    :pswitch_6
    invoke-virtual {v3, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {v3, v4}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    goto/16 :goto_0

    :pswitch_8
    invoke-virtual {v3, v4}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object p0

    .end local p0           #param:I
    iput-object p0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v4           #length:I
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result p0

    if-eqz p0, :cond_c

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_c

    iget p0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v2, 0x1

    if-ne p0, v2, :cond_c

    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v2, 0x0

    aget-byte p0, p0, v2

    const/16 v2, 0x2b

    if-eq p0, v2, :cond_c

    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {p0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object p0

    .local p0, temp:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #temp:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .restart local p0       #temp:Ljava/lang/String;
    invoke-static {p0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #temp:Ljava/lang/String;
    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    new-instance p0, Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([B)V

    .restart local p0       #temp:Ljava/lang/String;
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .end local p0           #temp:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    :cond_c
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    #setter for: Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->destinationAddress:Lcom/android/internal/telephony/SmsAddress;
    invoke-static {v5, v0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->access$102(Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;Lcom/android/internal/telephony/SmsAddress;)Lcom/android/internal/telephony/SmsAddress;

    invoke-virtual {v5, v1}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->setEnvelope(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)V

    invoke-virtual {v5}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->parseMessage()V

    move-object p0, v5

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static newFromCDMATLPDU([[B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    .locals 9
    .parameter "parts"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const-string v8, "BTSMSUtils"

    if-nez p0, :cond_0

    move-object v4, v7

    :goto_0
    return-object v4

    :cond_0
    aget-object v4, p0, v6

    aget-byte v2, v4, v6

    .local v2, msgType:B
    if-eqz v2, :cond_1

    const-string v4, "BTSMSUtils"

    const-string v4, "it is not SMS PDU, will return null"

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_0

    :cond_1
    array-length v4, p0

    new-array v3, v4, [Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    .local v3, msgs:[Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_3

    aget-object v4, p0, v1

    invoke-static {v4}, Lcom/motorola/android/bmessage/SmsUtils;->newFromCDMATLPDU([B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    move-result-object v4

    aput-object v4, v3, v1

    aget-object v4, v3, v1

    if-nez v4, :cond_2

    const-string v4, "BTSMSUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to decode segment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, body:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_2
    array-length v4, p0

    if-ge v1, v4, :cond_4

    aget-object v4, v3, v1

    invoke-virtual {v4}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    aget-object v4, v3, v6

    invoke-virtual {v4}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->isEmail()Z

    move-result v4

    if-eqz v4, :cond_5

    aget-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->setEmailBody(Ljava/lang/String;)V

    :goto_3
    aget-object v4, v3, v6

    goto :goto_0

    :cond_5
    aget-object v4, v3, v6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->setMessageBody(Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static newFromTLPDU(I[[B)Landroid/telephony/SmsMessage;
    .locals 2
    .parameter "mode"
    .parameter "parts"

    .prologue
    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/motorola/android/bmessage/SmsUtils;->newFromCDMATLPDU([[B)Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    move-result-object v0

    .local v0, wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/motorola/android/bmessage/SmsUtils;

    invoke-direct {v1, v0, p0}, Lcom/motorola/android/bmessage/SmsUtils;-><init>(Lcom/android/internal/telephony/SmsMessageBase;I)V

    :goto_1
    return-object v1

    .end local v0           #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    :cond_0
    const/4 v0, 0x0

    .restart local v0       #wrappedMessage:Lcom/android/internal/telephony/SmsMessageBase;
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget v0, p0, Lcom/motorola/android/bmessage/SmsUtils;->m_mode:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    .end local p0
    check-cast p0, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;

    invoke-virtual {p0}, Lcom/motorola/android/bmessage/SmsUtils$CDMASmsMessage;->getDestinationAddress()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
