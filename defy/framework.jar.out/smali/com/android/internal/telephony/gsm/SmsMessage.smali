.class public Lcom/android/internal/telephony/gsm/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;,
        Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;,
        Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    }
.end annotation


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "GSM"

.field public static final MAX_COMMAND_DATA:I = 0x92

.field public static final TP_DCS__NO_CLASS__UCS2__UNCOMPRESSED:I = 0x8

.field public static final VALIDITY_PERIOD_FORMAT_ABSOLUTE:I = 0x3

.field public static final VALIDITY_PERIOD_FORMAT_ENHANCED:I = 0x1

.field public static final VALIDITY_PERIOD_FORMAT_NONE:I = 0x0

.field public static final VALIDITY_PERIOD_FORMAT_RELATIVE:I = 0x2

.field private static sConcatRefNum:I


# instance fields
.field private automaticDeletion:Z

.field private dataCodingScheme:I

.field private dischargeTimeMillis:J

.field private firstOctet:I

.field private forSubmit:Z

.field protected isMwiUdh:Z

.field private isStatusReportMessage:Z

.field private messageClass:Landroid/telephony/SmsMessage$MessageClass;

.field private mti:I

.field protected mwiUdhVmCount:I

.field private protocolIdentifier:I

.field private recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

.field private replyPathPresent:Z

.field private status:I

.field vpTimeFormat:I

.field vpTimeMillis:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->firstOctet:I

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return-void
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 12
    .parameter "msgBody"
    .parameter "use7bitOnly"

    .prologue
    const/16 v8, 0xa0

    const/16 v11, 0x8c

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    invoke-direct {v6}, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;-><init>()V

    .local v6, ted:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-nez p1, :cond_0

    move v7, v9

    :goto_0
    :try_start_0
    invoke-static {p0, v7}, Lcom/android/internal/telephony/GsmAlphabet;->countGsmSeptets(Ljava/lang/CharSequence;Z)I

    move-result v5

    .local v5, septets:I
    iput v5, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    if-le v5, v8, :cond_4

    rem-int/lit16 v4, v5, 0x99

    .local v4, remainder:I
    if-eqz v4, :cond_1

    move v1, v9

    .local v1, hasRemainder:Z
    :goto_1
    div-int/lit16 v7, v5, 0x99

    if-eqz v1, :cond_2

    move v8, v9

    :goto_2
    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-eqz v1, :cond_3

    const/16 v7, 0x99

    sub-int/2addr v7, v4

    :goto_3
    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .end local v1           #hasRemainder:Z
    .end local v4           #remainder:I
    :goto_4
    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .end local v5           #septets:I
    :goto_5
    return-object v6

    :cond_0
    move v7, v10

    goto :goto_0

    .restart local v4       #remainder:I
    .restart local v5       #septets:I
    :cond_1
    move v1, v10

    goto :goto_1

    .restart local v1       #hasRemainder:Z
    :cond_2
    move v8, v10

    goto :goto_2

    :cond_3
    move v7, v10

    goto :goto_3

    .end local v1           #hasRemainder:Z
    .end local v4           #remainder:I
    :cond_4
    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    sub-int v7, v8, v5

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .end local v5           #septets:I
    :catch_0
    move-exception v7

    move-object v0, v7

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    mul-int/lit8 v3, v7, 0x2

    .local v3, octets:I
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitCount:I

    if-le v3, v11, :cond_9

    const/16 v2, 0x86

    .local v2, max_user_data_bytes_with_header:I
    const-string v7, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v7, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v7

    if-ne v7, v9, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v7

    const/4 v8, 0x5

    if-ne v7, v8, :cond_5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v7

    const-string v8, "20404"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/16 v7, 0x9

    const/4 v8, 0x2

    sub-int v8, v2, v8

    mul-int/lit16 v7, v7, 0x84

    if-gt v3, v7, :cond_5

    add-int/lit8 v2, v2, -0x2

    :cond_5
    rem-int v4, v3, v2

    .restart local v4       #remainder:I
    if-eqz v4, :cond_6

    move v1, v9

    .restart local v1       #hasRemainder:Z
    :goto_6
    div-int v7, v3, v2

    if-eqz v1, :cond_7

    move v8, v9

    :goto_7
    add-int/2addr v7, v8

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    if-eqz v1, :cond_8

    sub-int v7, v2, v4

    div-int/lit8 v7, v7, 0x2

    :goto_8
    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    .end local v1           #hasRemainder:Z
    .end local v2           #max_user_data_bytes_with_header:I
    .end local v4           #remainder:I
    :goto_9
    const/4 v7, 0x3

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    goto :goto_5

    .restart local v2       #max_user_data_bytes_with_header:I
    .restart local v4       #remainder:I
    :cond_6
    move v1, v10

    goto :goto_6

    .restart local v1       #hasRemainder:Z
    :cond_7
    move v8, v10

    goto :goto_7

    :cond_8
    move v7, v10

    goto :goto_8

    .end local v1           #hasRemainder:Z
    .end local v2           #max_user_data_bytes_with_header:I
    .end local v4           #remainder:I
    :cond_9
    iput v9, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->msgCount:I

    sub-int v7, v11, v3

    div-int/lit8 v7, v7, 0x2

    iput v7, v6, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitsRemaining:I

    goto :goto_9
.end method

.method public static concatByteArray([B[B)[B
    .locals 5
    .parameter "b1"
    .parameter "b2"

    .prologue
    const/4 v4, 0x0

    if-nez p0, :cond_2

    move v0, v4

    .local v0, len1:I
    :goto_0
    if-nez p1, :cond_3

    move v1, v4

    .local v1, len2:I
    :goto_1
    add-int v3, v0, v1

    new-array v2, v3, [B

    .local v2, sum:[B
    if-eqz p0, :cond_0

    invoke-static {p0, v4, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {p1, v4, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    return-object v2

    .end local v0           #len1:I
    .end local v1           #len2:I
    .end local v2           #sum:[B
    :cond_2
    array-length v3, p0

    move v0, v3

    goto :goto_0

    .restart local v0       #len1:I
    :cond_3
    array-length v3, p1

    move v1, v3

    goto :goto_1
.end method

.method private static createAConcatRefNum()I
    .locals 1

    .prologue
    sget v0, Lcom/android/internal/telephony/gsm/SmsMessage;->sConcatRefNum:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/internal/telephony/gsm/SmsMessage;->sConcatRefNum:I

    sget v0, Lcom/android/internal/telephony/gsm/SmsMessage;->sConcatRefNum:I

    return v0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const-string v7, "GSM"

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    const-string v4, "GSM"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v4

    .restart local v1       #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    array-length v4, p1

    sub-int v3, v4, v5

    .local v3, size:I
    new-array v2, v3, [B

    .local v2, pdu:[B
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_0

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "GSM"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->setEmpty()V

    goto :goto_0
.end method

.method private static createUCS2MessageCsmp(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;II)Z
    .locals 9
    .parameter "message"
    .parameter "header"
    .parameter "bo"
    .parameter "fo"
    .parameter "vp"

    .prologue
    const/4 v8, 0x1

    const/4 v6, 0x0

    const-string v7, "GSM"

    const-string v4, "GSM"

    const-string v4, "createUCS2MessageCsmp: createUCS2MessageCsmp enter"

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v4, "utf-16be"

    invoke-virtual {p0, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .local v0, textPart:[B
    if-eqz p1, :cond_0

    array-length v4, p1

    array-length v5, v0

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x1

    new-array v2, v4, [B

    .local v2, userData:[B
    array-length v4, p1

    int-to-byte v4, v4

    aput-byte v4, v2, v6

    array-length v4, p1

    invoke-static {p1, v6, v2, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, p1

    add-int/lit8 v4, v4, 0x1

    array-length v5, v0

    invoke-static {v0, v6, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v4, v2

    const/16 v5, 0x8c

    if-le v4, v5, :cond_1

    const-string v4, "GSM"

    const-string v4, "createUCS2MessageCsmp: createUCS2MessageCsmp - Message too long"

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v6

    .end local v0           #textPart:[B
    .end local v2           #userData:[B
    :goto_1
    return v4

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, uex:Ljava/io/UnsupportedEncodingException;
    const-string v4, "GSM"

    const-string v4, "createUCS2MessageCsmp: Implausible UnsupportedEncodingException "

    invoke-static {v7, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v4, v6

    goto :goto_1

    .end local v1           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local v0       #textPart:[B
    :cond_0
    move-object v2, v0

    .restart local v2       #userData:[B
    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v4, p3, 0x18

    shr-int/lit8 v3, v4, 0x3

    .local v3, vp_format:I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "createUCS2MessageCsmp: write vp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_2
    array-length v4, v2

    invoke-virtual {p2, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v4, v2

    invoke-virtual {p2, v2, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    move v4, v8

    goto :goto_1
.end method

.method private static deNullify(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"

    .prologue
    if-nez p0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private static encodeUCS2(Ljava/lang/String;[B)[B
    .locals 7
    .parameter "message"
    .parameter "header"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "utf-16be"

    invoke-virtual {p0, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, textPart:[B
    if-eqz p1, :cond_0

    array-length v3, p1

    array-length v4, v1

    add-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    new-array v2, v3, [B

    .local v2, userData:[B
    array-length v3, p1

    int-to-byte v3, v3

    aput-byte v3, v2, v5

    array-length v3, p1

    invoke-static {p1, v5, v2, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v3, p1

    add-int/lit8 v3, v3, 0x1

    array-length v4, v1

    invoke-static {v1, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    array-length v3, v2

    add-int/lit8 v3, v3, 0x1

    new-array v0, v3, [B

    .local v0, ret:[B
    array-length v3, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v5

    array-length v3, v2

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    .end local v0           #ret:[B
    .end local v2           #userData:[B
    :cond_0
    move-object v2, v1

    .restart local v2       #userData:[B
    goto :goto_0
.end method

.method public static getCommandPdu(Ljava/lang/String;Ljava/lang/String;BBBB[B)Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;
    .locals 2
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "firstOctet"
    .parameter "protocolId"
    .parameter "cmdType"
    .parameter "msgNumber"
    .parameter "cmdData"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;-><init>()V

    .local v0, ret:Lcom/android/internal/telephony/gsm/SmsMessage$CommandPdu;
    if-nez p0, :cond_1

    const/4 p0, 0x0

    iput-object p0, v0, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    .end local p0
    :goto_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xb4

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local p2
    invoke-virtual {p0, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, p4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {p0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p1, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local p1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local p3
    .end local p4
    :cond_0
    :goto_1
    if-nez p6, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v0, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedCommand:[B

    move-object p0, v0

    :goto_3
    return-object p0

    .local p0, scAddress:Ljava/lang/String;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #scAddress:Ljava/lang/String;
    iput-object p0, v0, Lcom/android/internal/telephony/SmsMessageBase$CommandPduBase;->encodedScAddress:[B

    goto :goto_0

    .end local p2
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_2
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p1

    .local p1, daBytes:[B
    if-eqz p1, :cond_0

    array-length p2, p1

    const/4 p3, 0x1

    sub-int/2addr p2, p3

    mul-int/lit8 p2, p2, 0x2

    array-length p3, p1

    .end local p3
    const/4 p4, 0x1

    sub-int/2addr p3, p4

    aget-byte p3, p1, p3

    .end local p4
    and-int/lit16 p3, p3, 0xf0

    const/16 p4, 0xf0

    if-ne p3, p4, :cond_3

    const/4 p3, 0x1

    :goto_4
    sub-int/2addr p2, p3

    invoke-virtual {p0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    array-length p3, p1

    invoke-virtual {p0, p1, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    const/4 p3, 0x0

    goto :goto_4

    .end local p1           #daBytes:[B
    :cond_4
    array-length p1, p6

    .local p1, len:I
    const/16 p2, 0x92

    if-le p1, p2, :cond_5

    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p2, 0x0

    invoke-virtual {p0, p6, p2, p1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .local v5, retPdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez p0, :cond_3

    const/4 p0, 0x0

    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .end local p0
    :goto_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xb4

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, mtiByte:B
    const/4 v2, 0x0

    .local v2, btRp:B
    const/4 v4, 0x0

    .local v4, btUdhi:B
    const/4 v3, 0x0

    .local v3, btSri:B
    const/4 v0, 0x0

    .local v0, btMms:B
    const/4 v1, 0x0

    .local v1, btMti:B
    or-int/2addr v2, v4

    or-int/lit8 v2, v3, 0x0

    or-int/lit8 v0, v0, 0x0

    or-int/lit8 v0, v1, 0x0

    int-to-byte v0, v0

    .local v0, mtiByte:B
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local v2           #btRp:B
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p1

    .local p1, oaBytes:[B
    if-eqz p1, :cond_2

    array-length v0, p1

    .end local v0           #mtiByte:B
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p1

    .end local v1           #btMti:B
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_4

    const/4 v1, 0x1

    :goto_2
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2
    const/4 p1, 0x0

    .local p1, btPid:B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_0
    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPacked(Ljava/lang/String;)[B

    move-result-object v0

    .local v0, userData:[B
    const/4 p1, 0x0

    aget-byte p1, v0, p1
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local p1           #btPid:B
    and-int/lit16 p1, p1, 0xff

    const/16 v1, 0xa0

    if-le p1, v1, :cond_5

    const/4 p0, 0x0

    goto :goto_0

    .end local v0           #userData:[B
    .end local v3           #btSri:B
    .end local v4           #btUdhi:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, peerAddress:Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #scAddress:Ljava/lang/String;
    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_1

    .restart local v3       #btSri:B
    .restart local v4       #btUdhi:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p1, oaBytes:[B
    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    .end local p1           #oaBytes:[B
    .restart local v0       #userData:[B
    :cond_5
    const/4 p1, 0x0

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object p1

    .local p1, tmbs:[B
    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    array-length v1, v0

    .end local p1           #tmbs:[B
    invoke-virtual {p0, v0, p1, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_0

    .end local v0           #userData:[B
    .end local p2
    .end local p3
    :goto_3
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    move-object p0, v5

    goto :goto_0

    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p2
    .restart local p3
    :catch_0
    move-exception p1

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_2
    const-string p1, "utf-16be"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {p2, p1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object p2

    .local p2, userData:[B
    array-length p1, p2

    const/16 v0, 0x8c

    if-le p1, v0, :cond_6

    const/4 p0, 0x0

    goto/16 :goto_0

    .local p2, message:Ljava/lang/String;
    :catch_1
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto/16 :goto_0

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p2, userData:[B
    :cond_6
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object p1

    .local p1, tmbs:[B
    const/4 p3, 0x0

    array-length v0, p1

    .end local p3
    invoke-virtual {p0, p1, p3, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length p1, p2

    .end local p1           #tmbs:[B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p1, 0x0

    array-length p3, p2

    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3
.end method

.method public static getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"
    .parameter "header"
    .parameter "encoding"

    .prologue
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_1
    new-instance v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    invoke-direct {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;-><init>()V

    .local v5, retPdu:Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez p0, :cond_4

    const/4 p0, 0x0

    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    .end local p0
    :goto_1
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0xb4

    invoke-direct {p0, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v0, 0x0

    .local v0, mtiByte:B
    const/4 v2, 0x0

    .local v2, btRp:B
    if-nez p4, :cond_5

    const/4 v0, 0x0

    .end local v0           #mtiByte:B
    :goto_2
    shl-int/lit8 v0, v0, 0x6

    int-to-byte v4, v0

    .local v4, btUdhi:B
    const/4 v3, 0x0

    .local v3, btSri:B
    const/4 v0, 0x4

    .local v0, btMms:B
    const/4 v1, 0x0

    .local v1, btMti:B
    or-int/2addr v2, v4

    or-int/2addr v2, v3

    or-int/2addr v0, v2

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .local v0, mtiByte:B
    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local v2           #btRp:B
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object p1

    .local p1, oaBytes:[B
    if-eqz p1, :cond_2

    array-length v0, p1

    .end local v0           #mtiByte:B
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x2

    array-length v1, p1

    .end local v1           #btMti:B
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xf0

    const/16 v2, 0xf0

    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_3
    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_2
    const/4 p1, 0x0

    .local p1, btPid:B
    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-nez p5, :cond_3

    const/4 p5, 0x1

    :cond_3
    const/4 p1, 0x1

    if-ne p5, p1, :cond_7

    .end local p1           #btPid:B
    :try_start_0
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object p1

    .local p1, userData:[B
    :goto_4
    move-object p2, p1

    .end local p1           #userData:[B
    .local p2, userData:[B
    :goto_5
    const/4 p1, 0x1

    if-ne p5, p1, :cond_9

    const/4 p1, 0x0

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    const/16 p4, 0xa0

    if-le p1, p4, :cond_8

    .end local p4
    const/4 p0, 0x0

    goto :goto_0

    .end local v3           #btSri:B
    .end local v4           #btUdhi:B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, peerAddress:Ljava/lang/String;
    .local p2, message:Ljava/lang/String;
    .restart local p4
    :cond_4
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    .end local p0           #scAddress:Ljava/lang/String;
    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedScAddress:[B

    goto :goto_1

    .restart local v0       #mtiByte:B
    .restart local v2       #btRp:B
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    :cond_5
    const/4 v0, 0x1

    goto :goto_2

    .end local v0           #mtiByte:B
    .end local v2           #btRp:B
    .restart local v3       #btSri:B
    .restart local v4       #btUdhi:B
    .local p1, oaBytes:[B
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .end local p1           #oaBytes:[B
    :cond_7
    :try_start_1
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object p1

    .local p1, userData:[B
    goto :goto_4

    .end local p1           #userData:[B
    :catch_0
    move-exception p1

    .local p1, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_2
    const-string v0, "GSM"

    const-string v1, "Implausible UnsupportedEncodingException "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 p0, 0x0

    goto :goto_0

    .end local p1           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception p1

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 p5, 0x3

    :try_start_3
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p1

    .local p1, userData:[B
    const/4 p5, 0x3

    move-object p2, p1

    .end local p1           #userData:[B
    .local p2, userData:[B
    goto :goto_5

    .local p1, ex:Lcom/android/internal/telephony/EncodeException;
    .local p2, message:Ljava/lang/String;
    :catch_2
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    .end local p1           #ex:Lcom/android/internal/telephony/EncodeException;
    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2           #message:Ljava/lang/String;
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto/16 :goto_0

    .end local p4
    .local p0, bo:Ljava/io/ByteArrayOutputStream;
    .local p2, userData:[B
    :cond_8
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_6
    invoke-static {p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->packTimeStamp(Landroid/text/format/Time;)[B

    move-result-object p1

    .local p1, tmbs:[B
    const/4 p3, 0x0

    array-length p4, p1

    .end local p3
    invoke-virtual {p0, p1, p3, p4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 p1, 0x0

    array-length p3, p2

    .end local p1           #tmbs:[B
    invoke-virtual {p0, p2, p1, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #bo:Ljava/io/ByteArrayOutputStream;
    iput-object p0, v5, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->encodedMessage:[B

    move-object p0, v5

    goto/16 :goto_0

    .restart local p0       #bo:Ljava/io/ByteArrayOutputStream;
    .restart local p3
    .restart local p4
    :cond_9
    const/4 p1, 0x0

    aget-byte p1, p2, p1

    and-int/lit16 p1, p1, 0xff

    const/16 p4, 0x8c

    if-le p1, p4, :cond_a

    .end local p4
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_6
.end method

.method public static getDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    .local v8, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->createAConcatRefNum()I

    move-result v10

    .local v10, refNumber:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, msgCount:I
    const/4 v5, 0x0

    .local v5, encoding:I
    const/4 p2, 0x0

    .local p2, i:I
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object p2

    .local p2, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, p2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v1, :cond_1

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    if-ne v5, v1, :cond_1

    :cond_0
    iget v5, p2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    add-int/lit8 p2, v0, 0x1

    .end local v0           #i:I
    .local p2, i:I
    move v0, p2

    .end local p2           #i:I
    .restart local v0       #i:I
    goto :goto_0

    :cond_2
    new-array v9, v7, [Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    .local v9, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    const/4 p2, 0x1

    if-le v7, p2, :cond_3

    const/4 p2, 0x0

    .end local v0           #i:I
    .restart local p2       #i:I
    move v6, p2

    .end local p2           #i:I
    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_4

    new-instance p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {p2}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local p2, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v10, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v7, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v0, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object p2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    .end local v0           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-result-object p2

    .end local p2           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    aput-object p2, v9, v6

    add-int/lit8 p2, v6, 0x1

    .end local v6           #i:I
    .local p2, i:I
    move v6, p2

    .end local p2           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .end local v6           #i:I
    .local v0, i:I
    :cond_3
    const/4 p2, 0x1

    if-ne v7, p2, :cond_5

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .end local v0           #i:I
    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;[BI)Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object p0

    .end local p0
    aput-object p0, v9, p2

    :cond_4
    move-object p0, v9

    .end local p1
    :goto_2
    return-object p0

    .restart local v0       #i:I
    .restart local p0
    .restart local p1
    :cond_5
    const-string p0, "GSM"

    .end local p0
    const-string p1, "parts count is 0!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "originationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/16 v8, 0x8c

    const/4 v7, 0x0

    new-instance v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .local v1, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput p3, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v7, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v3, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v3}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v3, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v1, v3, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-static {v3}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    .local v4, smsHeaderData:[B
    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    if-le v5, v8, :cond_0

    const-string v5, "GSM"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SMS data message may only contain "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, v4

    sub-int v7, v8, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x0

    :goto_0
    return-object v5

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v2}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .local v2, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/16 v5, 0x41

    invoke-static {p0, p1, v5, p5, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, p4

    array-length v6, v4

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v5, v4

    invoke-virtual {v0, v4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    array-length v5, p4

    invoke-virtual {v0, p4, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, v2, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v5, v2

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;II[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[B)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 6
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"

    .prologue
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 9
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "header"
    .parameter "encoding"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 p0, 0x0

    .end local p0
    .end local p1
    .end local p2
    .end local p3
    :goto_0
    return-object p0

    .restart local p0
    .restart local p1
    .restart local p2
    .restart local p3
    :cond_1
    new-instance v3, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    invoke-direct {v3}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;-><init>()V

    .local v3, ret:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz p4, :cond_3

    const/16 v0, 0x40

    :goto_1
    or-int/lit8 v0, v0, 0x1

    int-to-byte v1, v0

    .local v1, mtiByte:B
    const/4 v0, 0x0

    .local v0, tpVpFormat:I
    const/4 v4, 0x0

    .local v4, tp_vp:[B
    :try_start_0
    const-string v2, "ro.gsm.sms.tp-vpf"

    const/4 v5, 0x0

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .end local v0           #tpVpFormat:I
    .local v2, tpVpFormat:I
    const/4 v0, 0x2

    if-ne v2, v0, :cond_b

    :try_start_1
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->getValidityPeriod(I)[B
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v4

    if-eqz v4, :cond_b

    shl-int/lit8 v0, v2, 0x3

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    or-int/2addr v0, v1

    int-to-byte v0, v0

    .end local v1           #mtiByte:B
    .local v0, mtiByte:B
    move-object v1, v4

    .end local v4           #tp_vp:[B
    .local v1, tp_vp:[B
    :goto_2
    move-object v8, v1

    .end local v1           #tp_vp:[B
    .local v8, tp_vp:[B
    move v1, v0

    .end local v0           #mtiByte:B
    .local v1, mtiByte:B
    move v0, v2

    .end local v2           #tpVpFormat:I
    .local v0, tpVpFormat:I
    move-object v2, v8

    .end local v8           #tp_vp:[B
    .local v2, tp_vp:[B
    :goto_3
    invoke-static {p0, p1, v1, p3, v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    const/4 p0, 0x0

    .local p0, smsMode:I
    const/4 v4, 0x0

    .local v4, fo:I
    const/4 v5, 0x0

    .local v5, vp:I
    const/4 v6, 0x0

    .local v6, dcs:I
    const-string p0, "gsm.smsmode"

    .end local p0           #smsMode:I
    const/4 p1, 0x0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .end local p1
    move-result p0

    .restart local p0       #smsMode:I
    const-string p1, "gsm.csmp.fo"

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .end local p3
    move-result v4

    const-string p1, "gsm.csmp.vp"

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string p1, "gsm.csmp.dcs"

    const/4 p3, 0x0

    invoke-static {p1, p3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const-string p1, "GSM"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage.getSubmitPdu:  fo = "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GSM"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage.getSubmitPdu:  vp = "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GSM"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SmsMessage.getSubmitPdu:  dcs = "

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_4

    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-eqz v6, :cond_4

    :cond_2
    const-string p0, "GSM"

    .end local p0           #smsMode:I
    const-string p1, "SmsMessage.getSubmitPdu - Calling getSubmitPduCsmp()."

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    move-object v2, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPduCsmp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;III)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .end local v1           #mtiByte:B
    .end local v2           #tp_vp:[B
    move-result-object p0

    goto/16 :goto_0

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v4           #fo:I
    .end local v5           #vp:I
    .end local v6           #dcs:I
    .local p0, scAddress:Ljava/lang/String;
    .restart local p1
    .restart local p3
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1

    .local v0, tpVpFormat:I
    .restart local v1       #mtiByte:B
    .local v4, tp_vp:[B
    :catch_0
    move-exception v2

    move-object v8, v2

    move v2, v0

    .end local v0           #tpVpFormat:I
    .local v2, tpVpFormat:I
    move-object v0, v8

    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_4
    const-string v0, "GSM"

    .end local v0           #e:Ljava/lang/NumberFormatException;
    const-string v5, "SmsMessage.getSubmitPdu: Error setting sms validity period"

    invoke-static {v0, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .end local v2           #tpVpFormat:I
    .local v0, tpVpFormat:I
    move-object v2, v4

    .end local v4           #tp_vp:[B
    .local v2, tp_vp:[B
    goto/16 :goto_3

    .end local p1
    .end local p3
    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    .local v4, fo:I
    .restart local v5       #vp:I
    .restart local v6       #dcs:I
    .local p0, smsMode:I
    :cond_4
    const-string p0, "GSM"

    .end local p0           #smsMode:I
    const-string p1, "SmsMessage.getSubmitPdu: create PDU without CSMP settings fo, vp, dcs"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p5, :cond_5

    const/4 p5, 0x1

    :cond_5
    const/4 p0, 0x1

    if-ne p5, p0, :cond_6

    :try_start_2
    invoke-static {p2, p4}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_2
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object p0

    .local p0, userData:[B
    :goto_5
    move-object p1, p0

    .end local p0           #userData:[B
    .local p1, userData:[B
    :goto_6
    const/4 p0, 0x1

    if-ne p5, p0, :cond_9

    const/4 p0, 0x0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    const/16 p2, 0xa0

    if-le p0, p2, :cond_7

    .end local p2
    const/4 p0, 0x0

    goto/16 :goto_0

    .end local p1           #userData:[B
    .restart local p2
    :cond_6
    :try_start_3
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object p0

    .restart local p0       #userData:[B
    goto :goto_5

    .end local p0           #userData:[B
    :catch_1
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    :try_start_4
    const-string p1, "GSM"

    const-string p3, "Implausible UnsupportedEncodingException "

    invoke-static {p1, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_4 .. :try_end_4} :catch_2

    const/4 p0, 0x0

    goto/16 :goto_0

    .end local p0           #uex:Ljava/io/UnsupportedEncodingException;
    :catch_2
    move-exception p0

    .local p0, ex:Lcom/android/internal/telephony/EncodeException;
    const/4 p5, 0x3

    :try_start_5
    invoke-static {p2, p4}, Lcom/android/internal/telephony/gsm/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object p0

    .local p0, userData:[B
    const/4 p5, 0x3

    move-object p1, p0

    .end local p0           #userData:[B
    .restart local p1       #userData:[B
    goto :goto_6

    .end local p1           #userData:[B
    .local p0, ex:Lcom/android/internal/telephony/EncodeException;
    :catch_3
    move-exception p0

    .local p0, uex:Ljava/io/UnsupportedEncodingException;
    const-string p1, "GSM"

    const-string p2, "Implausible UnsupportedEncodingException "

    .end local p2
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    goto/16 :goto_0

    .end local p0           #uex:Ljava/io/UnsupportedEncodingException;
    .restart local p1       #userData:[B
    :cond_7
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_7
    shr-int/lit8 p0, v1, 0x3

    and-int/lit8 p0, p0, 0x3

    .local p0, tp_vpf:I
    const/4 p2, 0x2

    if-ne p0, p2, :cond_8

    if-eqz v2, :cond_8

    const/4 p0, 0x0

    array-length p2, v2

    .end local p0           #tp_vpf:I
    invoke-virtual {v0, v2, p0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_8
    const/4 p0, 0x0

    array-length p2, p1

    invoke-virtual {v0, p1, p0, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    iput-object p0, v3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object p0, v3

    goto/16 :goto_0

    .restart local p2
    :cond_9
    const/4 p0, 0x0

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    const/16 p2, 0x8c

    if-le p0, p2, :cond_a

    .end local p2
    const/4 p0, 0x0

    goto/16 :goto_0

    :cond_a
    const/16 p0, 0x8

    invoke-virtual {v0, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_7

    .end local v0           #bo:Ljava/io/ByteArrayOutputStream;
    .end local v5           #vp:I
    .end local v6           #dcs:I
    .local v2, tpVpFormat:I
    .local v4, tp_vp:[B
    .local p0, scAddress:Ljava/lang/String;
    .local p1, destinationAddress:Ljava/lang/String;
    .restart local p2
    .restart local p3
    :catch_4
    move-exception v0

    goto/16 :goto_4

    :cond_b
    move v0, v1

    .end local v1           #mtiByte:B
    .local v0, mtiByte:B
    move-object v1, v4

    .end local v4           #tp_vp:[B
    .local v1, tp_vp:[B
    goto/16 :goto_2
.end method

.method private static getSubmitPduCsmp(Ljava/io/ByteArrayOutputStream;Ljava/lang/String;[BLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;III)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 8
    .parameter "bo"
    .parameter "message"
    .parameter "header"
    .parameter "ret"
    .parameter "fo"
    .parameter "vp"
    .parameter "dcs"

    .prologue
    const/4 v7, 0x0

    const-string v6, "GSM"

    and-int/lit8 v3, p6, 0xc

    const/16 v4, 0x8

    if-eq v3, v4, :cond_3

    :try_start_0
    const-string v3, "GSM"

    const-string v4, "getSubmitPduCsmp: try GsmAlphabet.stringToGsm7BitPackedWithHeader"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B

    move-result-object v1

    .local v1, userData:[B
    const/4 v3, 0x0

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa0

    if-le v3, v4, :cond_0

    move-object v3, v7

    .end local v1           #userData:[B
    :goto_0
    return-object v3

    .restart local v1       #userData:[B
    :cond_0
    const-string v3, "GSM"

    const-string v4, "getSubmitPduCsmp: write dcs = 0x00"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    and-int/lit8 v3, p4, 0x18

    shr-int/lit8 v2, v3, 0x3

    .local v2, vp_format:I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const-string v3, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSubmitPduCsmp: write vp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {p0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #userData:[B
    .end local v2           #vp_format:I
    :cond_2
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p3, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v3, p3

    goto :goto_0

    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, ex:Lcom/android/internal/telephony/EncodeException;
    invoke-static {p1, p2, p0, p4, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createUCS2MessageCsmp(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;II)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GSM"

    const-string v3, "getSubmitPduCsmp: createUCS2MessageCsmp failed - 1 "

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    goto :goto_0

    .end local v0           #ex:Lcom/android/internal/telephony/EncodeException;
    :cond_3
    invoke-static {p1, p2, p0, p4, p5}, Lcom/android/internal/telephony/gsm/SmsMessage;->createUCS2MessageCsmp(Ljava/lang/String;[BLjava/io/ByteArrayOutputStream;II)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "GSM"

    const-string v3, "getSubmitPduCsmp: createUCS2MessageCsmp failed - 2"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v7

    goto :goto_0
.end method

.method private static getSubmitPduHead(Ljava/lang/String;Ljava/lang/String;BZLcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;)Ljava/io/ByteArrayOutputStream;
    .locals 10
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "mtiByte"
    .parameter "statusReportRequested"
    .parameter "ret"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v9, "GSM"

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0xb4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v0, bo:Ljava/io/ByteArrayOutputStream;
    if-nez p0, :cond_2

    const/4 v4, 0x0

    iput-object v4, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    :goto_0
    if-eqz p3, :cond_0

    or-int/lit8 v4, p2, 0x20

    int-to-byte p2, v4

    const-string v4, "GSM"

    const-string v4, "SMS status report requested"

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v0, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const-string v4, "ro.telephony.gsm-routes-us-smsc"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "20404"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDwithUsPrefix(Ljava/lang/String;)[B

    move-result-object v1

    .local v1, daBytes:[B
    :goto_1
    if-eqz v1, :cond_1

    array-length v4, v1

    sub-int/2addr v4, v8

    mul-int/lit8 v4, v4, 0x2

    array-length v5, v1

    sub-int/2addr v5, v8

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xf0

    const/16 v6, 0xf0

    if-ne v5, v6, :cond_4

    move v5, v8

    :goto_2
    sub-int/2addr v4, v5

    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v4, v1

    invoke-virtual {v0, v1, v7, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    const/4 v3, 0x0

    .local v3, smsMode:I
    const/4 v2, 0x0

    .local v2, pid:I
    const-string v4, "gsm.smsmode"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "gsm.csmp.pid"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsMessage.getSubmitPduHead:  pid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v8, :cond_5

    if-eqz v2, :cond_5

    move v4, v2

    :goto_3
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-object v0

    .end local v1           #daBytes:[B
    .end local v2           #pid:I
    .end local v3           #smsMode:I
    :cond_2
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v4

    iput-object v4, p4, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    goto/16 :goto_0

    :cond_3
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .restart local v1       #daBytes:[B
    goto :goto_1

    :cond_4
    move v5, v7

    goto :goto_2

    .restart local v2       #pid:I
    .restart local v3       #smsMode:I
    :cond_5
    move v4, v7

    goto :goto_3
.end method

.method public static getSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .locals 11
    .parameter "scAddress"
    .parameter "destinationAddress"
    .parameter "messageOrig"
    .parameter "statusReportRequested"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/android/internal/telephony/gsm/SmsMessage;->deNullify(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    move-result-object v0

    .local v0, smsManager:Landroid/telephony/SmsManager;
    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v8

    .local v8, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/SmsMessage;->createAConcatRefNum()I

    move-result v10

    .local v10, refNumber:I
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .local v7, msgCount:I
    const/4 v5, 0x0

    .local v5, encoding:I
    const/4 p2, 0x0

    .local p2, i:I
    move v0, p2

    .end local p2           #i:I
    .local v0, i:I
    :goto_0
    if-ge v0, v7, :cond_2

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object p2

    .local p2, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v1, p2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v5, v1, :cond_1

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    if-ne v5, v1, :cond_1

    :cond_0
    iget v5, p2, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    add-int/lit8 p2, v0, 0x1

    .end local v0           #i:I
    .local p2, i:I
    move v0, p2

    .end local p2           #i:I
    .restart local v0       #i:I
    goto :goto_0

    :cond_2
    new-array v9, v7, [Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .local v9, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    const/4 p2, 0x1

    if-le v7, p2, :cond_3

    const/4 p2, 0x0

    .end local v0           #i:I
    .restart local p2       #i:I
    move v6, p2

    .end local p2           #i:I
    .local v6, i:I
    :goto_1
    if-ge v6, v7, :cond_4

    new-instance p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {p2}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local p2, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v10, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v0, v6, 0x1

    iput v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v7, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/4 v0, 0x1

    iput-boolean v0, p2, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v0, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v0, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object p2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    .end local v0           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-result-object p2

    .end local p2           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    aput-object p2, v9, v6

    add-int/lit8 p2, v6, 0x1

    .end local v6           #i:I
    .local p2, i:I
    move v6, p2

    .end local p2           #i:I
    .restart local v6       #i:I
    goto :goto_1

    .end local v6           #i:I
    .local v0, i:I
    :cond_3
    const/4 p2, 0x1

    if-ne v7, p2, :cond_5

    const/4 p2, 0x0

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .end local v0           #i:I
    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BI)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object p0

    .end local p0
    aput-object p0, v9, p2

    :cond_4
    move-object p0, v9

    .end local p1
    :goto_2
    return-object p0

    .restart local v0       #i:I
    .restart local p0
    .restart local p1
    :cond_5
    const-string p0, "GSM"

    .end local p0
    const-string p1, "parts count is 0!"

    .end local p1
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_2
.end method

.method public static getTLDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)[[B
    .locals 7
    .parameter "scAddress"
    .parameter "peerAddress"
    .parameter "message"
    .parameter "timeStamp"

    .prologue
    :try_start_0
    new-instance v4, Landroid/text/format/Time;

    invoke-direct {v4}, Landroid/text/format/Time;-><init>()V

    .local v4, t:Landroid/text/format/Time;
    invoke-virtual {v4, p3, p4}, Landroid/text/format/Time;->set(J)V

    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDeliverPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/text/format/Time;)[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;

    move-result-object v2

    .local v2, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    if-nez v2, :cond_0

    const/4 p0, 0x0

    check-cast p0, [[B

    .end local p0
    move-object v5, p0

    :goto_0
    return-object v5

    .restart local p0
    :cond_0
    array-length v1, v2

    .local v1, pduCount:I
    new-array v3, v1, [[B

    .local v3, ret:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v3

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #pduCount:I
    .end local v2           #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$DeliverPdu;
    .end local v3           #ret:[[B
    .end local v4           #t:Landroid/text/format/Time;
    .end local p0
    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, t:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "getTLDeliverPdus Exception is:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v4
.end method

.method public static getTLSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[[B
    .locals 7
    .parameter "scAddress"
    .parameter "destAddress"
    .parameter "message"
    .parameter "statusReportRequested"

    .prologue
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v2

    .local v2, pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-nez v2, :cond_0

    const/4 p0, 0x0

    check-cast p0, [[B

    .end local p0
    move-object v5, p0

    :goto_0
    return-object v5

    .restart local p0
    :cond_0
    array-length v1, v2

    .local v1, pduCount:I
    new-array v3, v1, [[B

    .local v3, ret:[[B
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_1

    aget-object v5, v2, v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;->toByteArray()[B

    move-result-object v5

    aput-object v5, v3, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v5, v3

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #pduCount:I
    .end local v2           #pduS:[Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v3           #ret:[[B
    .end local p0
    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, t:Ljava/lang/RuntimeException;
    const-string v5, "GSM"

    const-string v6, "getTLSubmitPdus Exception is:"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    throw v4
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 4
    .parameter "pdu"

    .prologue
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v0, v2, 0x2

    .local v0, len:I
    const/4 v1, 0x0

    .local v1, smscLen:I
    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    sub-int v2, v0, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    return v2
.end method

.method private static getValidityPeriod(I)[B
    .locals 9
    .parameter "validityFormat"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v6, "GSM"

    const/4 v2, 0x0

    .local v2, result:[B
    const/4 v3, 0x0

    .local v3, tpVpValue:I
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsMessage.getSubmitPdu: sms validity period format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_0

    move-object v4, v7

    :goto_0
    return-object v4

    :cond_0
    :try_start_0
    const-string v4, "ro.gsm.sms.tp-vp"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmsMessage.getSubmitPdu: sms validity period value: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    if-ne p0, v4, :cond_1

    new-array v2, v8, [B

    const/4 v4, 0x0

    and-int/lit16 v5, v3, 0xff

    int-to-byte v5, v5

    :try_start_1
    aput-byte v5, v2, v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v4, v2

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v4, "GSM"

    const-string v4, "SmsMessage.getSubmitPdu: Error setting sms validity period value"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_0

    .end local v0           #e:Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .local v1, ex:Ljava/lang/NumberFormatException;
    const-string v4, "GSM"

    const-string v4, "getValidityPeriod: Error Reading Encoded Validity Period"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    .end local v1           #ex:Ljava/lang/NumberFormatException;
    :cond_1
    if-eq p0, v8, :cond_2

    const/4 v4, 0x3

    if-ne p0, v4, :cond_3

    :cond_2
    move-object v4, v7

    goto :goto_0

    :cond_3
    const-string v4, "GSM"

    const-string v4, "getValidityPeriod: Invalid Format"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v7

    goto :goto_0
.end method

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "line"

    .prologue
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "CDS SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 4
    .parameter "lines"

    .prologue
    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/gsm/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v2, 0x1

    aget-object v2, p0, v2

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v1

    .end local v1           #msg:Lcom/android/internal/telephony/gsm/SmsMessage;
    :goto_0
    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    const-string v0, "GSM"

    const-string v1, "newFromCMTI: not yet supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/SmsMessageBase;
    .locals 2
    .parameter "p"

    .prologue
    const-string v0, "GSM"

    const-string v1, "newFromParcel: is not supported in GSM mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method static packTimeStamp(Landroid/text/format/Time;)[B
    .locals 12
    .parameter "timeStamp"

    .prologue
    const/16 v5, 0x76c

    const/4 v11, 0x6

    const/16 v4, 0x7d0

    const-wide/16 v9, 0x384

    const-wide/16 v7, 0xa

    const/4 v0, 0x0

    .local v0, high4Bits:B
    const/4 v1, 0x0

    .local v1, low4Bits:B
    const/4 v3, 0x7

    new-array v2, v3, [B

    .local v2, ret:[B
    if-nez p0, :cond_0

    new-instance p0, Landroid/text/format/Time;

    .end local p0
    invoke-direct {p0}, Landroid/text/format/Time;-><init>()V

    .restart local p0
    invoke-virtual {p0}, Landroid/text/format/Time;->setToNow()V

    :cond_0
    iget v3, p0, Landroid/text/format/Time;->year:I

    if-lt v3, v4, :cond_1

    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    :goto_0
    const/4 v3, 0x0

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    const/4 v3, 0x1

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    const/4 v3, 0x2

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p0, Landroid/text/format/Time;->hour:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->hour:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    const/4 v3, 0x3

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p0, Landroid/text/format/Time;->minute:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->minute:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    const/4 v3, 0x4

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget v3, p0, Landroid/text/format/Time;->second:I

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->second:I

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    const/4 v3, 0x5

    shl-int/lit8 v4, v0, 0x4

    or-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_2

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    neg-long v3, v3

    div-long/2addr v3, v9

    rem-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v0, v3

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    neg-long v3, v3

    div-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    or-int/lit16 v3, v3, 0x80

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    :goto_1
    return-object v2

    :cond_1
    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v5

    rem-int/lit8 v3, v3, 0xa

    int-to-byte v0, v3

    iget v3, p0, Landroid/text/format/Time;->year:I

    sub-int/2addr v3, v5

    div-int/lit8 v3, v3, 0xa

    int-to-byte v1, v3

    goto/16 :goto_0

    :cond_2
    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v3, v9

    rem-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v0, v3

    iget-wide v3, p0, Landroid/text/format/Time;->gmtoff:J

    div-long/2addr v3, v9

    div-long/2addr v3, v7

    long-to-int v3, v3

    int-to-byte v1, v3

    shl-int/lit8 v3, v0, 0x4

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v2, v11

    goto :goto_1
.end method

.method private parsePdu([B)V
    .locals 5
    .parameter "pdu"

    .prologue
    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    new-instance v1, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;-><init>([B)V

    .local v1, p:Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCAddress()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SMS SC address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SmsMessageBase;->scAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .local v0, firstByte:I
    and-int/lit8 v2, v0, 0x3

    iput v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    iget v2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mti:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported message type"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    :goto_0
    return-void

    :pswitch_1
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private parseSmsDeliver(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iput p2, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->firstOctet:I

    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v6

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS SC timestamp: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v6

    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method private parseSmsStatusReport(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    and-int/lit8 v3, p2, 0x20

    if-nez v3, :cond_0

    move v3, v5

    :goto_0
    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->forSubmit:Z

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getSCTimestampMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dischargeTimeMillis:J

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->moreDataPresent()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v0

    .local v0, extraParams:I
    move v2, v0

    .local v2, moreExtraParams:I
    :goto_1
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v2

    goto :goto_1

    .end local v0           #extraParams:I
    .end local v2           #moreExtraParams:I
    :cond_0
    move v3, v6

    goto :goto_0

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_1
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    :cond_2
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    :cond_3
    and-int/lit8 v3, v0, 0x4

    if-eqz v3, :cond_4

    and-int/lit8 v3, p2, 0x40

    const/16 v4, 0x40

    if-ne v3, v4, :cond_5

    move v1, v5

    .local v1, hasUserDataHeader:Z
    :goto_2
    invoke-direct {p0, p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    .end local v0           #extraParams:I
    .end local v1           #hasUserDataHeader:Z
    .end local v2           #moreExtraParams:I
    :cond_4
    return-void

    .restart local v0       #extraParams:I
    .restart local v2       #moreExtraParams:I
    :cond_5
    move v1, v6

    goto :goto_2
.end method

.method private parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V
    .locals 11
    .parameter "p"
    .parameter "hasUserDataHeader"

    .prologue
    const/4 v3, 0x0

    .local v3, hasMessageClass:Z
    const/4 v7, 0x0

    .local v7, userDataCompressed:Z
    const/4 v2, 0x0

    .local v2, encodingType:I
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0x80

    if-nez v8, :cond_5

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_1

    const/4 v8, 0x1

    :goto_0
    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x20

    if-eqz v8, :cond_2

    const/4 v8, 0x1

    move v7, v8

    :goto_1
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x10

    if-eqz v8, :cond_3

    const/4 v8, 0x1

    move v3, v8

    :goto_2
    if-eqz v7, :cond_4

    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "4 - Unsupported SMS data coding scheme (compression) "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    const/4 v8, 0x1

    if-ne v2, v8, :cond_e

    const/4 v8, 0x1

    :goto_4
    invoke-virtual {p1, p2, v8}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->constructUserData(ZZ)I

    move-result v1

    .local v1, count:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserData()[B

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    const/16 v8, 0xff

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    iget-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v6, v8, Lcom/android/internal/telephony/SmsHeader;->miscEltList:Ljava/util/ArrayList;

    .local v6, miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    if-eqz v6, :cond_11

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    const/4 v4, 0x0

    .local v4, i:I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_12

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;

    .local v5, miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    iget v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->id:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_0

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    if-eqz v8, :cond_0

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, 0x3

    if-nez v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v9, 0x0

    aget-byte v8, v8, v9

    and-int/lit8 v8, v8, -0x80

    if-nez v8, :cond_f

    const/4 v8, 0x1

    :goto_6
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    iget-object v8, v5, Lcom/android/internal/telephony/SmsHeader$MiscElt;->data:[B

    const/4 v9, 0x1

    aget-byte v8, v8, v9

    and-int/lit16 v8, v8, 0xff

    iput v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    if-lez v8, :cond_10

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    :goto_7
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmsMessage.parseUserData - UDHI bit is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SmsMessage.parseUserData - VM count is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .end local v1           #count:I
    .end local v4           #i:I
    .end local v5           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .end local v6           #miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    :cond_1
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    move v7, v8

    goto/16 :goto_1

    :cond_3
    const/4 v8, 0x0

    move v3, v8

    goto/16 :goto_2

    :cond_4
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    shr-int/lit8 v8, v8, 0x2

    and-int/lit8 v8, v8, 0x3

    packed-switch v8, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    const/4 v2, 0x1

    goto/16 :goto_3

    :pswitch_1
    const/4 v2, 0x3

    goto/16 :goto_3

    :pswitch_2
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "1 - Unsupported SMS data coding scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_5
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xf0

    if-ne v8, v9, :cond_7

    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->automaticDeletion:Z

    const/4 v3, 0x1

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x4

    if-nez v8, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_3

    :cond_6
    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_7
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xc0

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xd0

    if-eq v8, v9, :cond_8

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_d

    :cond_8
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xe0

    if-ne v8, v9, :cond_9

    const/4 v2, 0x3

    :goto_8
    const/4 v7, 0x0

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_a

    const/4 v8, 0x1

    move v0, v8

    .local v0, active:Z
    :goto_9
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x3

    if-nez v8, :cond_c

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v8, v8, 0xf0

    const/16 v9, 0xc0

    if-ne v8, v9, :cond_b

    const/4 v8, 0x1

    :goto_a
    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    goto/16 :goto_3

    .end local v0           #active:Z
    :cond_9
    const/4 v2, 0x1

    goto :goto_8

    :cond_a
    const/4 v8, 0x0

    move v0, v8

    goto :goto_9

    .restart local v0       #active:Z
    :cond_b
    const/4 v8, 0x0

    goto :goto_a

    :cond_c
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "MWI for fax, email, or other "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .end local v0           #active:Z
    :cond_d
    const-string v8, "GSM"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "3 - Unsupported SMS data coding scheme "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit16 v10, v10, 0xff

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_e
    const/4 v8, 0x0

    goto/16 :goto_4

    .restart local v1       #count:I
    .restart local v4       #i:I
    .restart local v5       #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    .restart local v6       #miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    :cond_f
    const/4 v8, 0x0

    goto/16 :goto_6

    :cond_10
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    goto/16 :goto_7

    .end local v4           #i:I
    .end local v5           #miscElt:Lcom/android/internal/telephony/SmsHeader$MiscElt;
    :cond_11
    const-string v8, "GSM"

    const-string v9, "SmsMessage.parseUserData - miscEltList is either null or empty."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v6           #miscEltList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/SmsHeader$MiscElt;>;"
    :cond_12
    :goto_b
    packed-switch v2, :pswitch_data_1

    :goto_c
    iget-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v8, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseMessageBody()V

    :cond_13
    if-nez v3, :cond_15

    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    :goto_d
    return-void

    :cond_14
    const-string v8, "GSM"

    const-string v9, "SmsMessage.parseUserData - userDataHeader is null."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :pswitch_3
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    :pswitch_4
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataGSM7Bit(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    :pswitch_5
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getUserDataUCS2(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    goto :goto_c

    :cond_15
    iget v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    and-int/lit8 v8, v8, 0x3

    packed-switch v8, :pswitch_data_2

    goto :goto_d

    :pswitch_6
    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    :pswitch_7
    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_1:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    :pswitch_8
    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_2:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    :pswitch_9
    sget-object v8, Landroid/telephony/SmsMessage$MessageClass;->CLASS_3:Landroid/telephony/SmsMessage$MessageClass;

    iput-object v8, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_d

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method


# virtual methods
.method public getCallbackNumberAddress()Ljava/lang/String;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataCodingScheme()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    return v0
.end method

.method public getFirstOctet()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->firstOctet:I

    return v0
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->messageClass:Landroid/telephony/SmsMessage$MessageClass;

    return-object v0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getNumOfVoicemails()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->mwiUdhVmCount:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    return v0
.end method

.method public getRecipientAddress()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->getAddressString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->status:I

    return v0
.end method

.method public getValidityPeriodFormat()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    return v0
.end method

.method public getValidityPeriodMillis()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    return-wide v0
.end method

.method public isCphsMwiMessage()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    .end local p0
    check-cast p0, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWIClearMessage()Z
    .locals 3

    .prologue
    const-string v2, "GSM"

    const/4 v0, 0x0

    .local v0, isMwiClear:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v1, :cond_1

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWIClearMessage - UDH Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageClear()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWIClearMessage - CPHS Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-nez v1, :cond_0

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWIClearMessage - DCS Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const-string v2, "GSM"

    const/4 v0, 0x0

    .local v0, isMwiSet:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-ne v1, v3, :cond_1

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWISetMessage - UDH Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_2

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWISetMessage - UDH Check. mwiSense is false"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    check-cast v1, Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmSmsAddress;->isCphsVoiceMessageSet()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWISetMessage - CPHS Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiSense:Z

    if-ne v1, v3, :cond_0

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMWISetMessage - DCS Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 3

    .prologue
    const-string v2, "GSM"

    const/4 v0, 0x0

    .local v0, dontStore:Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_1

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMwiDontStore - UDH Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiUdh:Z

    if-eqz v1, :cond_2

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMwiDontStore - UDH Check. mwiDontStore is false."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->isCphsMwiMessage()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMwiDontStore - CPHS Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, " "

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->isMwi:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mwiDontStore:Z

    if-eqz v1, :cond_0

    const-string v1, "GSM"

    const-string v1, "SmsMessage.isMwiDontStore - DCS Check."

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    and-int/lit8 v0, v0, 0x3f

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplyPathPresent()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage:Z

    return v0
.end method

.method public isTypeZero()Z
    .locals 2

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method parseSmsSubmit(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;I)V
    .locals 7
    .parameter "p"
    .parameter "firstByte"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    and-int/lit16 v1, p2, 0x80

    const/16 v2, 0x80

    if-ne v1, v2, :cond_1

    move v1, v6

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->replyPathPresent:Z

    shr-int/lit8 v1, p2, 0x3

    and-int/lit8 v1, v1, 0x3

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getAddress()Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->recipientAddress:Lcom/android/internal/telephony/gsm/GsmSmsAddress;

    if-eqz v1, :cond_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->protocolIdentifier:I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getByte()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->dataCodingScheme:I

    iget v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeFormat:I

    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;->getValidityPeriodMillis(I)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    const-string v1, "GSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SMS Validity period: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/android/internal/telephony/gsm/SmsMessage;->vpTimeMillis:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit8 v1, p2, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_2

    move v0, v6

    .local v0, hasUserDataHeader:Z
    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/SmsMessage;->parseUserData(Lcom/android/internal/telephony/gsm/SmsMessage$PduParser;Z)V

    return-void

    .end local v0           #hasUserDataHeader:Z
    :cond_1
    move v1, v5

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_1
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->setEmpty()V

    const-string v0, "GSM"

    const-string v1, "nothing to do for gsm message in addition to the memebers of base class"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
