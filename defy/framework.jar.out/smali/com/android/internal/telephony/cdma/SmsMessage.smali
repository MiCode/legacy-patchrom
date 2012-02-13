.class public Lcom/android/internal/telephony/cdma/SmsMessage;
.super Lcom/android/internal/telephony/SmsMessageBase;
.source "SmsMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;,
        Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;
    }
.end annotation


# static fields
.field public static IMSC_RESPONSE_CODE_INTERNAL_ERROR:I = 0x0

.field public static IMSC_RESPONSE_CODE_NOT_ACCEPTABLE_HERE:I = 0x0

.field public static IMSC_RESPONSE_CODE_NOT_FOUND:I = 0x0

.field public static IMSC_RESPONSE_CODE_OK:I = 0x0

.field public static IMSC_RESPONSE_CODE_OK_END:I = 0x0

.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"

.field static final LOG_TAG:Ljava/lang/String; = "CDMA"

.field private static final RETURN_ACK:I = 0x1

.field private static final RETURN_NO_ACK:I


# instance fields
.field private mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

.field protected mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

.field protected mtMsgID:I

.field protected onSip:Z

.field private status:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/16 v0, 0xc8

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_OK:I

    const/16 v0, 0x12c

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_OK_END:I

    const/16 v0, 0x1e8

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_NOT_ACCEPTABLE_HERE:I

    const/16 v0, 0x1f4

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_INTERNAL_ERROR:I

    const/16 v0, 0x194

    sput v0, Lcom/android/internal/telephony/cdma/SmsMessage;->IMSC_RESPONSE_CODE_NOT_FOUND:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Lcom/android/internal/telephony/SmsMessageBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->onSip:Z

    return-void
.end method

.method public static addEnvelopTagForStr([B[BZ)Ljava/lang/String;
    .locals 9
    .parameter "smsc"
    .parameter "rawPdu"
    .parameter "isCdmaPdu"

    .prologue
    const-string v7, "d1"

    .local v7, smsppDownloadTag:Ljava/lang/String;
    const-string v4, "82"

    .local v4, deviceIdenTag:Ljava/lang/String;
    const-string v2, "02"

    .local v2, deviceIdenLen:Ljava/lang/String;
    const-string v3, "83"

    .local v3, deviceIdenSrc:Ljava/lang/String;
    const-string v1, "81"

    .local v1, deviceIdenDes:Ljava/lang/String;
    const-string v0, ""

    .local v0, addrTag:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, smscLen:I
    if-eqz p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    .end local v0           #addrTag:Ljava/lang/String;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "06"

    .end local v5           #smscLen:I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #addrTag:Ljava/lang/String;
    array-length p0, p0

    .end local p0
    add-int/lit8 p0, p0, 0x1

    .local p0, smscLen:I
    move v6, p0

    .end local p0           #smscLen:I
    .local v6, smscLen:I
    move-object p0, v0

    .end local v0           #addrTag:Ljava/lang/String;
    .local p0, addrTag:Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    const-string p2, "c8"

    .end local p2
    move-object v5, p2

    .local v5, pduTag:Ljava/lang/String;
    :goto_1
    array-length p2, p1

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, pduLen:Ljava/lang/String;
    array-length p2, p1

    add-int/2addr p2, v6

    add-int/lit8 p2, p2, 0x6

    .local p2, rawPdulen:I
    const/16 v6, 0x80

    if-ge p2, v6, :cond_1

    .end local v6           #smscLen:I
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .local p2, dataLen:Ljava/lang/String;
    :goto_2
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p1

    .local p1, rawPduString:Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #dataLen:Ljava/lang/String;
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #addrTag:Ljava/lang/String;
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .local p0, envString:Ljava/lang/String;
    return-object p0

    .end local v0           #pduLen:Ljava/lang/String;
    .end local v5           #pduTag:Ljava/lang/String;
    .restart local v6       #smscLen:I
    .local p0, addrTag:Ljava/lang/String;
    .local p1, rawPdu:[B
    .local p2, isCdmaPdu:Z
    :cond_0
    const-string p2, "8b"

    move-object v5, p2

    goto :goto_1

    .end local v6           #smscLen:I
    .restart local v0       #pduLen:Ljava/lang/String;
    .restart local v5       #pduTag:Ljava/lang/String;
    .local p2, rawPdulen:I
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "81"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    .end local p2           #rawPdulen:I
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .local p2, dataLen:Ljava/lang/String;
    goto :goto_2

    .local v0, addrTag:Ljava/lang/String;
    .local v5, smscLen:I
    .local p0, smsc:[B
    .local p2, isCdmaPdu:Z
    :cond_2
    move v6, v5

    .end local v5           #smscLen:I
    .restart local v6       #smscLen:I
    move-object p0, v0

    .end local v0           #addrTag:Ljava/lang/String;
    .local p0, addrTag:Ljava/lang/String;
    goto :goto_0
.end method

.method public static calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .locals 1
    .parameter "messageBody"
    .parameter "use7bitOnly"

    .prologue
    invoke-static {p0, p1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->calcTextEncodingDetails(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v0

    return-object v0
.end method

.method private convertDtmfToAscii(B)B
    .locals 1
    .parameter "dtmfDigit"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/16 v0, 0x20

    .local v0, asciiDigit:B
    :goto_0
    return v0

    .end local v0           #asciiDigit:B
    :pswitch_0
    const/16 v0, 0x44

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_1
    const/16 v0, 0x31

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_2
    const/16 v0, 0x32

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_3
    const/16 v0, 0x33

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_4
    const/16 v0, 0x34

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_5
    const/16 v0, 0x35

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_6
    const/16 v0, 0x36

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_7
    const/16 v0, 0x37

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_8
    const/16 v0, 0x38

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_9
    const/16 v0, 0x39

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_a
    const/16 v0, 0x30

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_b
    const/16 v0, 0x2a

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_c
    const/16 v0, 0x23

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_d
    const/16 v0, 0x41

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_e
    const/16 v0, 0x42

    .restart local v0       #asciiDigit:B
    goto :goto_0

    .end local v0           #asciiDigit:B
    :pswitch_f
    const/16 v0, 0x43

    .restart local v0       #asciiDigit:B
    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public static create3gppSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V
    .locals 19
    .parameter "pdu"
    .parameter "tracker"
    .parameter "defSmscStr"
    .parameter "rpMessageRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v4, Ljava/io/ByteArrayInputStream;

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v4, bais:Ljava/io/ByteArrayInputStream;
    new-instance v7, Ljava/io/DataInputStream;

    invoke-direct {v7, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v7, dis:Ljava/io/DataInputStream;
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    .end local p0
    const/16 v4, 0x64

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .end local v4           #bais:Ljava/io/ByteArrayInputStream;
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v8, Ljava/io/DataOutputStream;

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v8, dos:Ljava/io/DataOutputStream;
    const-string v4, "CDMA"

    const-string v5, " create3gppSipPdu"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v11, 0x1

    .local v11, mtiByte:I
    const/4 v10, 0x0

    .local v10, msgRef:I
    :try_start_0
    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->readInt()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .local v6, digitMode:I
    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v12

    .local v12, numberOfDigits:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .local v5, da:Ljava/lang/StringBuilder;
    const-string v4, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, " numberOfDigits is "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    .local v4, i:I
    move v9, v4

    .end local v4           #i:I
    .local v9, i:I
    :goto_0
    if-ge v9, v12, :cond_4

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .local v4, c:I
    if-nez v6, :cond_0

    const/4 v13, 0x1

    if-lt v4, v13, :cond_1

    const/16 v13, 0x9

    if-gt v4, v13, :cond_1

    add-int/lit8 v4, v4, 0x30

    :cond_0
    :goto_1
    int-to-char v4, v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .end local v4           #c:I
    add-int/lit8 v4, v9, 0x1

    .end local v9           #i:I
    .local v4, i:I
    move v9, v4

    .end local v4           #i:I
    .restart local v9       #i:I
    goto :goto_0

    .local v4, c:I
    :cond_1
    const/16 v13, 0xa

    if-ne v4, v13, :cond_2

    const/16 v4, 0x30

    goto :goto_1

    :cond_2
    const/16 v13, 0xb

    if-ne v4, v13, :cond_3

    const/16 v4, 0x2a

    goto :goto_1

    :cond_3
    const/16 v13, 0xc

    if-ne v4, v13, :cond_0

    const/16 v4, 0x23

    goto :goto_1

    .end local v4           #c:I
    :cond_4
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v6

    .local v6, daBytes:[B
    const/4 v12, 0x0

    .local v12, pi:I
    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v7}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .local v4, bearerDataLen:I
    new-array v4, v4, [B

    .local v4, bearerData:[B
    invoke-virtual {v7, v4}, Ljava/io/DataInputStream;->read([B)I

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v4

    .local v4, bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v7, 0x0

    .local v7, dcs:I
    const/4 v14, 0x0

    .local v14, userData:[B
    const/4 v9, 0x0

    .local v9, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    if-eqz v4, :cond_14

    iget-object v9, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    move-object v13, v9

    .end local v9           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .local v13, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_2
    if-eqz v13, :cond_6

    iget-boolean v9, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v9, :cond_13

    or-int/lit8 v9, v11, 0x40

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    :goto_3
    :try_start_1
    iget-boolean v11, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    if-eqz v11, :cond_12

    or-int/lit8 v9, v9, 0x20

    move v11, v9

    .end local v9           #mtiByte:I
    .restart local v11       #mtiByte:I
    :goto_4
    const/4 v9, 0x0

    .local v9, header:[B
    :try_start_2
    iget-boolean v15, v4, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz v15, :cond_5

    iget-object v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v15, :cond_5

    iget-object v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .end local v9           #header:[B
    invoke-static {v9}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    .restart local v9       #header:[B
    :cond_5
    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " ud.msgEncoding is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v13

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v15, "CDMA"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " bd.hasUserDataHeader is "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object v0, v4

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    sparse-switch v15, :sswitch_data_0

    .end local v9           #header:[B
    .end local v13           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_6
    :goto_5
    move v9, v11

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    move-object v11, v14

    .end local v14           #userData:[B
    .local v11, userData:[B
    :goto_6
    :try_start_3
    invoke-virtual {v8, v9}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz v6, :cond_7

    array-length v10, v6

    .end local v10           #msgRef:I
    const/4 v13, 0x1

    sub-int/2addr v10, v13

    mul-int/lit8 v10, v10, 0x2

    array-length v13, v6

    const/4 v14, 0x1

    sub-int/2addr v13, v14

    aget-byte v13, v6, v13

    and-int/lit16 v13, v13, 0xf0

    const/16 v14, 0xf0

    if-ne v13, v14, :cond_b

    const/4 v13, 0x1

    :goto_7
    sub-int/2addr v10, v13

    invoke-virtual {v8, v10}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v10, 0x0

    array-length v13, v6

    invoke-virtual {v8, v6, v10, v13}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_7
    invoke-virtual {v8, v12}, Ljava/io/DataOutputStream;->write(I)V

    invoke-virtual {v8, v7}, Ljava/io/DataOutputStream;->write(I)V

    if-eqz v11, :cond_f

    const-string v6, "CDMA"

    .end local v6           #daBytes:[B
    new-instance v7, Ljava/lang/StringBuilder;

    .end local v7           #dcs:I
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userData.length "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v10, v11

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "CDMA"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "userData"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v6, v11

    const/16 v7, 0x8d

    if-gt v6, v7, :cond_c

    const/4 v6, 0x0

    array-length v7, v11

    invoke-virtual {v8, v11, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    move-object v6, v11

    .end local v11           #userData:[B
    .local v6, userData:[B
    :goto_8
    invoke-virtual/range {p0 .. p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    .local v8, tpdu:[B
    const-string p0, "CDMA"

    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #userData:[B
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "raw PDU is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v8}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    move-object v1, v6

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    move-object v6, v0

    .local v6, map:Ljava/util/HashMap;
    const-string p0, "smsc"

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    check-cast p0, [B

    .local p0, smsc:[B
    array-length v7, v8

    .local v7, size:I
    const-string v10, "CDMA"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "tpdu size is: "

    .end local v12           #pi:I
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v11, v7, 0x14

    invoke-direct {v10, v11}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v10, tpdubo:Ljava/io/ByteArrayOutputStream;
    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/io/ByteArrayOutputStream;->write(I)V

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/16 p3, 0x0

    move-object v0, v10

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local p3
    if-eqz p0, :cond_d

    const/16 p2, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p3, v0

    .end local p2
    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local p0           #smsc:[B
    :cond_8
    :goto_9
    invoke-virtual {v10, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz v8, :cond_9

    const/16 p0, 0x0

    move-object v0, v8

    array-length v0, v0

    move/from16 p2, v0

    move-object v0, v10

    move-object v1, v8

    move/from16 v2, p0

    move/from16 v3, p2

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_9
    if-eqz v4, :cond_a

    move-object v0, v4

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    move/from16 p0, v0

    move/from16 v0, p0

    move-object/from16 v1, p1

    iput v0, v1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    :cond_a
    const-string p0, "sip_pdu"

    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .end local p1
    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "desitnation_addr"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    move-object v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move/from16 p0, v9

    .end local v4           #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v5           #da:Ljava/lang/StringBuilder;
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #size:I
    .end local v8           #tpdu:[B
    .end local v9           #mtiByte:I
    .end local v10           #tpdubo:Ljava/io/ByteArrayOutputStream;
    .local p0, mtiByte:I
    :goto_a
    return-void

    .restart local v4       #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v5       #da:Ljava/lang/StringBuilder;
    .local v6, daBytes:[B
    .local v7, dcs:I
    .local v8, dos:Ljava/io/DataOutputStream;
    .local v9, header:[B
    .local v10, msgRef:I
    .local v11, mtiByte:I
    .restart local v12       #pi:I
    .restart local v13       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v14       #userData:[B
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .restart local p1
    .restart local p2
    .restart local p3
    :sswitch_0
    const/4 v7, 0x4

    :try_start_4
    iget-object v9, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .end local v14           #userData:[B
    .local v9, userData:[B
    move-object/from16 v18, v9

    .end local v9           #userData:[B
    .local v18, userData:[B
    move v9, v11

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    move-object/from16 v11, v18

    .end local v18           #userData:[B
    .local v11, userData:[B
    goto/16 :goto_6

    .local v9, header:[B
    .local v11, mtiByte:I
    .restart local v14       #userData:[B
    :sswitch_1
    const/4 v7, 0x0

    :try_start_5
    iget-object v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-eqz v15, :cond_11

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .end local v13           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-static {v13, v9}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm7BitPackedWithHeader(Ljava/lang/String;[B)[B
    :try_end_5
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-result-object v9

    .end local v14           #userData:[B
    .local v9, userData:[B
    :goto_b
    move-object/from16 v18, v9

    .end local v9           #userData:[B
    .restart local v18       #userData:[B
    move v9, v11

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    move-object/from16 v11, v18

    .end local v18           #userData:[B
    .local v11, userData:[B
    goto/16 :goto_6

    .local v9, header:[B
    .local v11, mtiByte:I
    .restart local v14       #userData:[B
    :catch_0
    move-exception v9

    .local v9, ex:Lcom/android/internal/telephony/EncodeException;
    :try_start_6
    const-string v13, "CDMA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " stringToGsm7BitPackedWithHeader exception - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #ex:Lcom/android/internal/telephony/EncodeException;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move v9, v11

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    move-object v11, v14

    .end local v14           #userData:[B
    .local v11, userData:[B
    goto/16 :goto_6

    .local v9, header:[B
    .local v11, mtiByte:I
    .restart local v13       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v14       #userData:[B
    :sswitch_2
    const/16 v7, 0x8

    :try_start_7
    iget-object v15, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    if-eqz v15, :cond_10

    iget-object v13, v13, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .end local v13           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    invoke-static {v13, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->encodeUCS2(Ljava/lang/String;[B)[B
    :try_end_7
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    move-result-object v9

    .end local v14           #userData:[B
    .local v9, userData:[B
    :goto_c
    move-object/from16 v18, v9

    .end local v9           #userData:[B
    .restart local v18       #userData:[B
    move v9, v11

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    move-object/from16 v11, v18

    .end local v18           #userData:[B
    .local v11, userData:[B
    goto/16 :goto_6

    .local v9, header:[B
    .local v11, mtiByte:I
    .restart local v14       #userData:[B
    :catch_1
    move-exception v9

    .local v9, e:Ljava/io/UnsupportedEncodingException;
    :try_start_8
    const-string v13, "CDMA"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, " encodeUCS2 exception - "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    .end local v9           #e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v13, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_5

    .end local v4           #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .end local v5           #da:Ljava/lang/StringBuilder;
    .end local v6           #daBytes:[B
    .end local v7           #dcs:I
    .end local v12           #pi:I
    .end local v14           #userData:[B
    :catch_2
    move-exception p0

    move/from16 p1, v11

    .end local v8           #dos:Ljava/io/DataOutputStream;
    .end local v10           #msgRef:I
    .end local v11           #mtiByte:I
    .end local p2
    .end local p3
    .local p0, e:Ljava/lang/Exception;
    .local p1, mtiByte:I
    :goto_d
    const-string p2, "CDMA"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " exception  is "

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 p0, p1

    .end local p1           #mtiByte:I
    .local p0, mtiByte:I
    goto/16 :goto_a

    .restart local v4       #bd:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v5       #da:Ljava/lang/StringBuilder;
    .restart local v6       #daBytes:[B
    .restart local v7       #dcs:I
    .restart local v8       #dos:Ljava/io/DataOutputStream;
    .local v9, mtiByte:I
    .local v11, userData:[B
    .restart local v12       #pi:I
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .local p1, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local p2
    .restart local p3
    :cond_b
    const/4 v13, 0x0

    goto/16 :goto_7

    .end local v6           #daBytes:[B
    .end local v7           #dcs:I
    :cond_c
    const/4 v6, 0x0

    .end local v11           #userData:[B
    .local v6, userData:[B
    goto/16 :goto_8

    .end local v12           #pi:I
    .end local p3
    .local v6, map:Ljava/util/HashMap;
    .local v7, size:I
    .local v8, tpdu:[B
    .local v10, tpdubo:Ljava/io/ByteArrayOutputStream;
    .local p0, smsc:[B
    :cond_d
    if-eqz p2, :cond_e

    :try_start_9
    invoke-static/range {p2 .. p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p0

    .local p0, defSmsc:[B
    if-eqz p0, :cond_8

    const/16 p2, 0x0

    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 p3, v0

    .end local p2
    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto/16 :goto_9

    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #size:I
    .end local v8           #tpdu:[B
    .end local v10           #tpdubo:Ljava/io/ByteArrayOutputStream;
    .end local p0           #defSmsc:[B
    .end local p1           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :catch_3
    move-exception p0

    move/from16 p1, v9

    .end local v9           #mtiByte:I
    .local p1, mtiByte:I
    goto :goto_d

    .restart local v6       #map:Ljava/util/HashMap;
    .restart local v7       #size:I
    .restart local v8       #tpdu:[B
    .restart local v9       #mtiByte:I
    .restart local v10       #tpdubo:Ljava/io/ByteArrayOutputStream;
    .local p0, smsc:[B
    .local p1, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    .restart local p2
    :cond_e
    const/16 p0, 0x0

    move-object v0, v10

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_9

    .end local v10           #tpdubo:Ljava/io/ByteArrayOutputStream;
    .local v6, daBytes:[B
    .local v7, dcs:I
    .local v8, dos:Ljava/io/DataOutputStream;
    .restart local v11       #userData:[B
    .restart local v12       #pi:I
    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    .restart local p3
    :cond_f
    move-object v6, v11

    .end local v11           #userData:[B
    .local v6, userData:[B
    goto/16 :goto_8

    .local v6, daBytes:[B
    .local v9, header:[B
    .local v10, msgRef:I
    .local v11, mtiByte:I
    .restart local v13       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v14       #userData:[B
    :cond_10
    move-object v9, v14

    .end local v14           #userData:[B
    .local v9, userData:[B
    goto :goto_c

    .local v9, header:[B
    .restart local v14       #userData:[B
    :cond_11
    move-object v9, v14

    .end local v14           #userData:[B
    .local v9, userData:[B
    goto/16 :goto_b

    .end local v11           #mtiByte:I
    .local v9, mtiByte:I
    .restart local v14       #userData:[B
    :cond_12
    move v11, v9

    .end local v9           #mtiByte:I
    .restart local v11       #mtiByte:I
    goto/16 :goto_4

    :cond_13
    move v9, v11

    .end local v11           #mtiByte:I
    .restart local v9       #mtiByte:I
    goto/16 :goto_3

    .end local v13           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .local v9, ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v11       #mtiByte:I
    :cond_14
    move-object v13, v9

    .end local v9           #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v13       #ud:Lcom/android/internal/telephony/cdma/sms/UserData;
    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x2 -> :sswitch_1
        0x4 -> :sswitch_2
        0x9 -> :sswitch_1
    .end sparse-switch
.end method

.method public static create3gppSipPduFromRawPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;Ljava/lang/String;I)V
    .locals 7
    .parameter "pdu"
    .parameter "tracker"
    .parameter "defSmscStr"
    .parameter "rpMessageRef"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v2, dis:Ljava/io/DataInputStream;
    :try_start_0
    const-string v1, "CDMA"

    .end local v1           #bais:Ljava/io/ByteArrayInputStream;
    new-instance v2, Ljava/lang/StringBuilder;

    .end local v2           #dis:Ljava/io/DataInputStream;
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "raw PDU is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v2, p0

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, newPdu:Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v2, 0x0

    array-length v3, p0

    invoke-virtual {v1, p0, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    .local v1, gsmRawPdu:[B
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v1, map:Ljava/util/HashMap;
    const-string v2, "smsc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v0, v2

    check-cast v0, [B

    move-object v3, v0

    .local v3, smsc:[B
    array-length v2, p0

    .local v2, size:I
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pdu size is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/io/ByteArrayOutputStream;

    add-int/lit8 v5, v2, 0x14

    invoke-direct {v4, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v4, tpdubo:Ljava/io/ByteArrayOutputStream;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-virtual {v4, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p3, 0x0

    invoke-virtual {v4, p3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .end local p3
    if-eqz v3, :cond_2

    const/4 p2, 0x0

    array-length p3, v3

    .end local p2
    invoke-virtual {v4, v3, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v3           #smsc:[B
    :cond_0
    :goto_0
    invoke-virtual {v4, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-eqz p0, :cond_1

    const/4 p2, 0x0

    array-length p3, p0

    invoke-virtual {v4, p0, p2, p3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_1
    const/4 p0, 0x0

    iput p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    .end local p0
    const-string p0, "sip_pdu"

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    .end local p1
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #size:I
    .end local v4           #tpdubo:Ljava/io/ByteArrayOutputStream;
    :goto_1
    return-void

    .restart local v1       #map:Ljava/util/HashMap;
    .restart local v2       #size:I
    .restart local v3       #smsc:[B
    .restart local v4       #tpdubo:Ljava/io/ByteArrayOutputStream;
    .restart local p0
    .restart local p1
    .restart local p2
    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object p2

    .local p2, defSmsc:[B
    if-eqz p2, :cond_0

    const/4 p3, 0x0

    array-length v3, p2

    .end local v3           #smsc:[B
    invoke-virtual {v4, p2, p3, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #size:I
    .end local v4           #tpdubo:Ljava/io/ByteArrayOutputStream;
    .end local p0
    .end local p1
    .end local p2           #defSmsc:[B
    :catch_0
    move-exception p0

    .local p0, e:Ljava/lang/Exception;
    const-string p1, "CDMA"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, " exception  is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #e:Ljava/lang/Exception;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .restart local v1       #map:Ljava/util/HashMap;
    .restart local v2       #size:I
    .restart local v3       #smsc:[B
    .restart local v4       #tpdubo:Ljava/io/ByteArrayOutputStream;
    .local p0, pdu:[B
    .restart local p1
    .local p2, defSmscStr:Ljava/lang/String;
    :cond_3
    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {v4, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private static createCMTPdu([B)[B
    .locals 9
    .parameter "sippdu"

    .prologue
    const/4 v8, 0x0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, inStream:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    array-length v6, p0

    invoke-direct {v1, v6}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, outStream:Ljava/io/ByteArrayOutputStream;
    const-wide/16 v6, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v5

    .local v5, scLength:I
    invoke-virtual {v1, v5}, Ljava/io/ByteArrayOutputStream;->write(I)V

    if-lez v5, :cond_0

    new-array v4, v5, [B

    .local v4, scBytes:[B
    invoke-virtual {v0, v4, v8, v5}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v1, v4, v8, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .end local v4           #scBytes:[B
    :cond_0
    const-wide/16 v6, 0x1

    invoke-virtual {v0, v6, v7}, Ljava/io/ByteArrayInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    .local v3, rawPduLength:I
    new-array v2, v3, [B

    .local v2, rawPdu:[B
    invoke-virtual {v0, v2, v8, v3}, Ljava/io/ByteArrayInputStream;->read([BII)I

    invoke-virtual {v1, v2, v8, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    return-object v6
.end method

.method public static createEnvelopPdu([BZ)Ljava/lang/String;
    .locals 6
    .parameter "sippdu"
    .parameter "isCdmaPdu"

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, inStream:Ljava/io/ByteArrayInputStream;
    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/io/ByteArrayInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v2

    .local v2, scLength:I
    const/4 v1, 0x0

    .local v1, scBytes:[B
    const/4 p0, 0x0

    .local p0, tpdu:[B
    const/4 p0, 0x0

    .local p0, index:I
    if-lez v2, :cond_0

    add-int/lit8 v1, v2, 0x1

    new-array v1, v1, [B

    const/4 v3, 0x0

    and-int/lit16 v4, v2, 0xff

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :cond_0
    move-object v2, v1

    .end local v1           #scBytes:[B
    .local v2, scBytes:[B
    const-wide/16 v3, 0x1

    invoke-virtual {v0, v3, v4}, Ljava/io/ByteArrayInputStream;->skip(J)J

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v1

    .local v1, tpduLen:I
    new-array v3, v1, [B

    .local v3, tpdu:[B
    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1}, Ljava/io/ByteArrayInputStream;->read([BII)I

    add-int/lit8 p0, p0, 0x1

    aget-byte p0, v3, p0

    .end local p0           #index:I
    and-int/lit16 p0, p0, 0xff

    .local p0, addressLength:I
    add-int/lit8 p0, p0, 0x1

    div-int/lit8 p0, p0, 0x2

    .end local p0           #addressLength:I
    add-int/lit8 p0, p0, 0x2

    .local p0, lengthBytes:I
    add-int/lit8 p0, p0, 0x1

    .local p0, index:I
    add-int/lit8 v0, p0, 0x1

    .end local p0           #index:I
    .local v0, index:I
    aget-byte p0, v3, p0

    and-int/lit16 v1, p0, 0xff

    .local v1, protocolIdentifier:I
    add-int/lit8 p0, v0, 0x1

    .end local v0           #index:I
    .restart local p0       #index:I
    aget-byte p0, v3, v0

    .end local p0           #index:I
    and-int/lit16 p0, p0, 0xff

    and-int/lit8 p0, p0, 0x3

    .local p0, messageClass:I
    const-string v0, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x7f

    if-ne v1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {v2, v3, p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->addEnvelopTagForStr([B[BZ)Ljava/lang/String;

    move-result-object p0

    .end local p0           #messageClass:I
    :goto_0
    return-object p0

    .restart local p0       #messageClass:I
    :cond_1
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public static createFromEfRecord(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 8
    .parameter "index"
    .parameter "data"

    .prologue
    const/4 v6, 0x0

    const-string v7, "CDMA"

    :try_start_0
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    iput p0, v1, Lcom/android/internal/telephony/SmsMessageBase;->indexOnIcc:I

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_0

    const-string v4, "CDMA"

    const-string v5, "SMS parsing failed: Trying to parse a free record"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v4, v6

    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :goto_0
    return-object v4

    .restart local v1       #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :cond_0
    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit8 v4, v4, 0x7

    iput v4, v1, Lcom/android/internal/telephony/SmsMessageBase;->statusOnIcc:I

    const/4 v4, 0x1

    aget-byte v3, p1, v4

    .local v3, size:I
    new-array v2, v3, [B

    .local v2, pdu:[B
    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static {p1, v4, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v1

    goto :goto_0

    .end local v1           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .end local v2           #pdu:[B
    .end local v3           #size:I
    :catch_0
    move-exception v4

    move-object v0, v4

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v4, "CDMA"

    const-string v4, "SMS PDU parsing failed: "

    invoke-static {v7, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v4, v6

    goto :goto_0
.end method

.method public static createFromPdu([B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 4
    .parameter "pdu"

    .prologue
    new-instance v1, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v1, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    :try_start_0
    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePdu([B)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v2, "CDMA"

    const-string v3, "SMS PDU parsing failed: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->setEmpty()V

    goto :goto_0
.end method

.method public static createMsgFrom3gppSipPdu(I[B[I)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 12
    .parameter "mtMsgID"
    .parameter "pdu"
    .parameter "dcs"

    .prologue
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v2, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local v1, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->createCMTPdu([B)[B

    move-result-object p1

    .local p1, rawpdu:[B
    invoke-static {p1}, Lcom/android/internal/telephony/gsm/SmsMessage;->createFromPdu([B)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v3

    .local v3, gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object p1

    .local p1, scAddr:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v9

    .local v9, orAddr:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getDataCodingScheme()I

    move-result p1

    .local p1, dataCodingScheme:I
    const/4 v4, 0x0

    aput p1, p2, v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    .local v8, msgBody:Ljava/lang/String;
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getNumOfVoicemails()I

    move-result v4

    .local v4, gsmVoiceMailNum:I
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isStatusReportMessage()Z

    move-result v6

    .local v6, isStatusReportMessage:Z
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v5

    .local v5, gsmuserdata:[B
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object p2

    .local p2, gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    if-nez p2, :cond_1

    const/4 v10, 0x0

    iput-boolean v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    :goto_0
    const/4 v10, 0x1

    iput-boolean v10, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->onSip:Z

    iput p0, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mtMsgID:I

    iput-object v2, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    const/4 p0, 0x0

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .end local p0
    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_0
    const/16 p0, 0x1003

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    :goto_1
    const/4 p0, 0x0

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/4 p0, 0x0

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    const/4 p0, 0x0

    iput-byte p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    const/4 p0, 0x0

    iput-byte p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    const/4 p0, 0x0

    iput-byte p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    if-eqz v9, :cond_b

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local p0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-eqz p0, :cond_4

    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    :try_start_1
    iget-object v10, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v10, v10

    if-ge v0, v10, :cond_4

    iget-object v10, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v11, p0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v11, v11, v0

    invoke-direct {v7, v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v11

    aput-byte v11, v10, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local p0, mtMsgID:I
    :cond_1
    const/4 v10, 0x1

    :try_start_2
    iput-boolean v10, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .end local v3           #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .end local v4           #gsmVoiceMailNum:I
    .end local v5           #gsmuserdata:[B
    .end local v6           #isStatusReportMessage:Z
    .end local v8           #msgBody:Ljava/lang/String;
    .end local v9           #orAddr:Ljava/lang/String;
    .end local p0           #mtMsgID:I
    .end local p1           #dataCodingScheme:I
    .end local p2           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :catch_0
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local p0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local p1, ex:Ljava/lang/Exception;
    :goto_3
    const-string p2, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIP Pdu decode failed: "

    .end local v1           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    .end local p1           #ex:Ljava/lang/Exception;
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_4
    return-object p1

    .end local p0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v1       #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    .restart local v3       #gsmSms:Lcom/android/internal/telephony/gsm/SmsMessage;
    .restart local v4       #gsmVoiceMailNum:I
    .restart local v5       #gsmuserdata:[B
    .restart local v6       #isStatusReportMessage:Z
    .restart local v8       #msgBody:Ljava/lang/String;
    .restart local v9       #orAddr:Ljava/lang/String;
    .local p1, dataCodingScheme:I
    .restart local p2       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :cond_2
    :try_start_3
    iget-boolean p0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz p0, :cond_3

    const/16 p0, 0x1005

    :goto_5
    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_3
    const/16 p0, 0x1002

    goto :goto_5

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_4
    :try_start_4
    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :goto_6
    if-eqz v6, :cond_9

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    :goto_7
    const/4 v0, 0x0

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v0, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    shr-int/lit8 v6, p1, 0x2

    and-int/lit8 v6, v6, 0x3

    packed-switch v6, :pswitch_data_0

    .end local v6           #isStatusReportMessage:Z
    .end local v8           #msgBody:Ljava/lang/String;
    .end local v9           #orAddr:Ljava/lang/String;
    .end local p1           #dataCodingScheme:I
    :cond_5
    :goto_8
    iget p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/16 p2, 0x9

    if-eq p1, p2, :cond_6

    .end local p2           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    iget p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_a

    :cond_6
    const/4 p1, 0x1

    iput-boolean p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    :goto_9
    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iput v4, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_8
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p1

    .local p1, encodedSms:[B
    iput-object p1, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iput-object p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object p0, v7, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    move-object p1, v7

    goto :goto_4

    .end local v0           #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v6       #isStatusReportMessage:Z
    .restart local v8       #msgBody:Ljava/lang/String;
    .restart local v9       #orAddr:Ljava/lang/String;
    .local p1, dataCodingScheme:I
    .restart local p2       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    const/4 v0, 0x1

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    goto :goto_7

    .end local v6           #isStatusReportMessage:Z
    .end local v8           #msgBody:Ljava/lang/String;
    .end local v9           #orAddr:Ljava/lang/String;
    .end local p1           #dataCodingScheme:I
    .end local p2           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :catch_1
    move-exception p1

    goto :goto_3

    .restart local v0       #userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local v8       #msgBody:Ljava/lang/String;
    .restart local v9       #orAddr:Ljava/lang/String;
    .restart local p1       #dataCodingScheme:I
    .restart local p2       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :pswitch_0
    const/16 p1, 0x9

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .end local p1           #dataCodingScheme:I
    iput-object v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz p1, :cond_5

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto :goto_8

    .restart local p1       #dataCodingScheme:I
    :pswitch_1
    const/4 p1, 0x4

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .end local p1           #dataCodingScheme:I
    iput-object v8, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iget-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz p1, :cond_5

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto :goto_8

    .restart local p1       #dataCodingScheme:I
    :pswitch_2
    const-string v6, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    .end local v8           #msgBody:Ljava/lang/String;
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unsupported SMS data coding scheme "

    .end local v9           #orAddr:Ljava/lang/String;
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .end local p1           #dataCodingScheme:I
    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x9

    iput p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    iput-object v5, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iget-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    if-eqz p1, :cond_5

    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    goto :goto_8

    .end local p2           #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :cond_a
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    .end local p0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v6       #isStatusReportMessage:Z
    .restart local v8       #msgBody:Ljava/lang/String;
    .restart local v9       #orAddr:Ljava/lang/String;
    .restart local p1       #dataCodingScheme:I
    .restart local p2       #gsmSmsheader:Lcom/android/internal/telephony/SmsHeader;
    :cond_b
    move-object p0, v0

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static createMsgFromSipPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 9
    .parameter "mtMsgID"
    .parameter "pdu"

    .prologue
    const-string v8, "SIP Pdu decode failed: "

    const-string v7, "CDMA"

    new-instance v3, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v3, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v0, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v2, Lcom/android/internal/util/BitwiseInputStream;

    invoke-direct {v2, p1}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local v2, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive MT SMS in createMsgFromSipPdu : mtMsgID "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pdu Length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MT SMS raw data on SIP = \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->onSip:Z

    iput p0, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->mtMsgID:I

    iput-object v0, v3, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    iput v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    packed-switch v4, :pswitch_data_0

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "createMsgFromSipPdu: messageType "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "is not supported in CDMA mode."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wrong messageType"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v4

    move-object v1, v4

    .local v1, ex:Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP Pdu decode failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .end local v1           #ex:Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return-object v4

    :pswitch_0
    :try_start_1
    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseAckMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V

    :goto_2
    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    move-object v4, v3

    goto :goto_1

    :pswitch_1
    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseBroadcastMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v1, v4

    .local v1, ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    const-string v4, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIP Pdu decode failed: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Lcom/android/internal/util/BitwiseInputStream$AccessException;
    :pswitch_2
    :try_start_2
    invoke-static {v3, v0, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->parsePTPMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    :try_end_2
    .catch Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createPdu()V
    .locals 8

    .prologue
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    .local v3, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    iget-object v0, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v5, 0x64

    invoke-direct {v1, v5}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local v1, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v5, Ljava/io/BufferedOutputStream;

    invoke-direct {v5, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v2, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v2, dos:Ljava/io/DataOutputStream;
    :try_start_0
    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    iget v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-byte v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v5, v5

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v5, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v6, 0x0

    iget-object v7, v3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v7, v7

    invoke-virtual {v2, v5, v6, v7}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v5

    move-object v4, v5

    .local v4, ex:Ljava/io/IOException;
    const-string v5, "CDMA"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createPdu: conversion from object to byte array failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static createSipPdu([BLcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 11
    .parameter "pdu"
    .parameter "tracker"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;,
            Lcom/android/internal/util/BitwiseOutputStream$AccessException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v0, bais:Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v1, dis:Ljava/io/DataInputStream;
    new-instance v7, Lcom/android/internal/util/BitwiseOutputStream;

    array-length v0, p0

    .end local v0           #bais:Ljava/io/ByteArrayInputStream;
    shl-int/lit8 v0, v0, 0x2

    invoke-direct {v7, v0}, Lcom/android/internal/util/BitwiseOutputStream;-><init>(I)V

    .local v7, outStream:Lcom/android/internal/util/BitwiseOutputStream;
    const/4 v2, 0x0

    .local v2, paramLength:I
    iget-object v3, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v3, map:Ljava/util/HashMap;
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .local v0, addr:Ljava/lang/StringBuffer;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Create MO SMS in createSipPdu : \noriginal pdu length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, p0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " \n "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MO SMS raw data = \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v5, "\'"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x8

    const/4 v4, 0x0

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p0, 0x8

    const/4 v4, 0x0

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p0, 0x8

    const/4 v4, 0x2

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    .local p0, paramValue:I
    const/16 v4, 0x8

    shr-int/lit8 v5, p0, 0x8

    invoke-virtual {v7, v4, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 v4, 0x8

    invoke-virtual {v7, v4, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    const/16 p0, 0x8

    const/4 v4, 0x1

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local p0           #paramValue:I
    const/16 p0, 0x8

    const/4 v4, 0x2

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v9

    .local v9, paramValue:I
    const/16 p0, 0x8

    shr-int/lit8 v4, v9, 0x8

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p0, 0x8

    invoke-virtual {v7, p0, v9}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/16 p0, 0x8

    const/4 v4, 0x4

    invoke-virtual {v7, p0, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result p0

    .local p0, digitMode:I
    add-int/lit8 v4, v2, 0x1

    .end local v2           #paramLength:I
    .local v4, paramLength:I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .local v2, numberMode:I
    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    .local v6, numberType:I
    const/4 v5, 0x1

    if-ne p0, v5, :cond_0

    add-int/lit8 v4, v4, 0x3

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .local v5, numberPlan:I
    if-eqz p0, :cond_d

    const/4 v8, 0x1

    if-eq v2, v8, :cond_d

    add-int/lit8 v4, v4, 0x4

    move v8, v4

    .end local v4           #paramLength:I
    .local v8, paramLength:I
    :goto_0
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v4

    .local v4, numberOfDigits:I
    const/4 v10, 0x1

    if-ne p0, v10, :cond_2

    shl-int/lit8 v10, v4, 0x3

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v8, v10

    :goto_1
    add-int/lit8 v8, v8, 0x7

    shr-int/lit8 v8, v8, 0x3

    const/16 v10, 0x8

    invoke-virtual {v7, v10, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10, p0}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    shl-int/lit8 v8, v8, 0x3

    add-int/lit8 v8, v8, -0x2

    const/4 v10, 0x1

    if-ne p0, v10, :cond_c

    const/4 v10, 0x3

    invoke-virtual {v7, v10, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    add-int/lit8 v6, v8, -0x3

    .end local v8           #paramLength:I
    .local v6, paramLength:I
    :goto_2
    if-eqz p0, :cond_b

    const/4 v8, 0x1

    if-eq v2, v8, :cond_b

    const/4 v2, 0x4

    invoke-virtual {v7, v2, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local v2           #numberMode:I
    add-int/lit8 v2, v6, -0x4

    .end local v6           #paramLength:I
    .local v2, paramLength:I
    :goto_3
    const/16 v5, 0x8

    invoke-virtual {v7, v5, v4}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local v5           #numberPlan:I
    add-int/lit8 v5, v2, -0x8

    .end local v2           #paramLength:I
    .local v5, paramLength:I
    const/4 v2, 0x0

    .local v2, i:I
    move v6, v9

    .end local v9           #paramValue:I
    .local v6, paramValue:I
    :goto_4
    if-ge v2, v4, :cond_7

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v6

    if-nez p0, :cond_6

    const/4 v8, 0x4

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    add-int/lit8 v5, v5, -0x4

    const/4 v8, 0x1

    if-lt v6, v8, :cond_3

    const/16 v8, 0x9

    if-gt v6, v8, :cond_3

    add-int/lit8 v6, v6, 0x30

    :cond_1
    :goto_5
    int-to-char v8, v6

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .local v2, numberMode:I
    .local v5, numberPlan:I
    .local v6, numberType:I
    .restart local v8       #paramLength:I
    .restart local v9       #paramValue:I
    :cond_2
    shl-int/lit8 v10, v4, 0x2

    add-int/lit8 v10, v10, 0x8

    add-int/2addr v8, v10

    goto :goto_1

    .end local v8           #paramLength:I
    .end local v9           #paramValue:I
    .local v2, i:I
    .local v5, paramLength:I
    .local v6, paramValue:I
    :cond_3
    const/16 v8, 0xa

    if-ne v6, v8, :cond_4

    const/16 v6, 0x30

    goto :goto_5

    :cond_4
    const/16 v8, 0xb

    if-ne v6, v8, :cond_5

    const/16 v6, 0x2a

    goto :goto_5

    :cond_5
    const/16 v8, 0xc

    if-ne v6, v8, :cond_1

    const/16 v6, 0x23

    goto :goto_5

    :cond_6
    const/16 v8, 0x8

    invoke-virtual {v7, v8, v6}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    add-int/lit8 v5, v5, -0x8

    goto :goto_5

    :cond_7
    invoke-virtual {v7, v5}, Lcom/android/internal/util/BitwiseOutputStream;->skip(I)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v2

    .end local v5           #paramLength:I
    .local v2, paramLength:I
    const/4 p0, 0x0

    .local p0, i:I
    :goto_6
    if-ge p0, v2, :cond_8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    add-int/lit8 p0, p0, 0x1

    goto :goto_6

    :cond_8
    const/16 p0, 0x8

    const/16 v2, 0x8

    invoke-virtual {v7, p0, v2}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    .end local v2           #paramLength:I
    .end local p0           #i:I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v5

    .restart local v5       #paramLength:I
    const/16 p0, 0x8

    invoke-virtual {v7, p0, v5}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    const/4 p0, 0x5

    new-array v4, p0, [B

    .local v4, msgID:[B
    const/4 p0, 0x0

    .restart local p0       #i:I
    const/4 v2, 0x0

    .end local v6           #paramValue:I
    .local v2, j:I
    :goto_7
    if-ge p0, v5, :cond_a

    const/4 v6, 0x5

    if-ge v2, v6, :cond_9

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    aput-byte v6, v4, v2

    const/16 v6, 0x8

    aget-byte v8, v4, v2

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    add-int/lit8 v2, v2, 0x1

    :goto_8
    add-int/lit8 p0, p0, 0x1

    goto :goto_7

    :cond_9
    const/16 v6, 0x8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->read()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lcom/android/internal/util/BitwiseOutputStream;->write(II)V

    goto :goto_8

    :cond_a
    new-instance p0, Lcom/android/internal/util/BitwiseInputStream;

    .end local p0           #i:I
    invoke-direct {p0, v4}, Lcom/android/internal/util/BitwiseInputStream;-><init>([B)V

    .local p0, inStream:Lcom/android/internal/util/BitwiseInputStream;
    const/16 v1, 0x14

    invoke-virtual {p0, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    .end local v1           #dis:Ljava/io/DataInputStream;
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .end local v2           #j:I
    move-result p0

    .end local p0           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    or-int/2addr p0, v1

    iput p0, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p0

    .local p0, sippdu:[B
    const-string p1, "CDMA"

    .end local p1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIP pdu length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " desitnation_addr : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MO SMS raw data on SIP = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p0

    .end local p0           #sippdu:[B
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "sip_pdu"

    invoke-virtual {v7}, Lcom/android/internal/util/BitwiseOutputStream;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "desitnation_addr"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .restart local v1       #dis:Ljava/io/DataInputStream;
    .local v2, numberMode:I
    .local v4, numberOfDigits:I
    .local v5, numberPlan:I
    .local v6, paramLength:I
    .restart local v9       #paramValue:I
    .local p0, digitMode:I
    .restart local p1
    :cond_b
    move v2, v6

    .end local v6           #paramLength:I
    .local v2, paramLength:I
    goto/16 :goto_3

    .local v2, numberMode:I
    .local v6, numberType:I
    .restart local v8       #paramLength:I
    :cond_c
    move v6, v8

    .end local v8           #paramLength:I
    .local v6, paramLength:I
    goto/16 :goto_2

    .local v4, paramLength:I
    .local v6, numberType:I
    :cond_d
    move v8, v4

    .end local v4           #paramLength:I
    .restart local v8       #paramLength:I
    goto/16 :goto_0
.end method

.method private static decodeAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 8
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .parameter "isOriginalAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 p3, 0xa

    .local p3, EXPECTED_PARAM_SIZE:I
    const/4 v0, 0x0

    .local v0, decodeSuccess:Z
    new-instance p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local p3           #EXPECTED_PARAM_SIZE:I
    invoke-direct {p3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local p3, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    .local v1, paramBits:I
    const/16 v2, 0xa

    if-lt v1, v2, :cond_9

    add-int/lit8 v0, v1, -0xa

    .end local v1           #paramBits:I
    .local v0, paramBits:I
    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    iget v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    add-int/lit8 v0, v0, -0x3

    :goto_0
    iget v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-eqz v1, :cond_1

    iget v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x4

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    add-int/lit8 v0, v0, -0x4

    move v2, v0

    .end local v0           #paramBits:I
    .local v2, paramBits:I
    :goto_1
    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v0

    iput v0, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    iget v0, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v0, v0, [B

    .local v0, data:[B
    const-string v1, "CDMA"

    const-string v3, "MT SMS decode address !!!: "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, index:I
    :goto_2
    iget v3, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge v1, v3, :cond_3

    iget v3, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-nez v3, :cond_2

    const/4 v3, 0x4

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    .local v3, value:B
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v3

    .end local v3           #value:B
    aput-byte v3, v0, v1

    :goto_3
    const-string v3, "CDMA"

    const-string v4, "Addr[%d] : %2x"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aget-byte v7, v0, v1

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v1           #index:I
    .end local v2           #paramBits:I
    .local v0, paramBits:I
    :cond_0
    const/4 v1, 0x0

    iput v1, p3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    iput v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    move v2, v0

    .end local v0           #paramBits:I
    .restart local v2       #paramBits:I
    goto :goto_1

    .local v0, data:[B
    .restart local v1       #index:I
    :cond_2
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    goto :goto_3

    :cond_3
    iget v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    .end local v1           #index:I
    if-nez v1, :cond_7

    iget v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    shl-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    .end local v2           #paramBits:I
    .local v1, paramBits:I
    :goto_4
    iput-object v0, p3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v0

    .end local v0           #data:[B
    if-eqz v0, :cond_4

    iget v0, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget v0, p3, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-object v0, p3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v2, 0x0

    aget-byte v0, v0, v2

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_4

    const-string v0, "SmsMessage for NBPCD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PCD formatted address. Converting to ASCII:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v0

    .local v0, temp:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .end local v0           #temp:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #temp:Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    .end local v0           #temp:Ljava/lang/String;
    iput-object v0, p3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const-string v0, "SmsMessage for NBPCD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PCD formatted address used  getAsciiBytes Adding a +:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p3, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    const-string v0, "SmsMessage for NBPCD"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Increasing number of digits"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iput-object p3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object p3, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    const/4 p0, 0x1

    .local p0, decodeSuccess:Z
    move p1, v1

    .end local v1           #paramBits:I
    .local p1, paramBits:I
    :goto_5
    if-eqz p0, :cond_5

    const/16 p3, 0x8

    if-lt p1, p3, :cond_6

    .end local p3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_5
    const-string p3, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CAUSE_CODES decode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p0, :cond_8

    const-string v1, "succeeded"

    :goto_6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (extra bits = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p2, p1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return p0

    .local v0, data:[B
    .restart local v2       #paramBits:I
    .local p0, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .local p1, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local p3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_7
    iget v1, p3, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    shl-int/lit8 v1, v1, 0x3

    sub-int v1, v2, v1

    .end local v2           #paramBits:I
    .restart local v1       #paramBits:I
    goto/16 :goto_4

    .end local v0           #data:[B
    .end local v1           #paramBits:I
    .end local p3           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .local p0, decodeSuccess:Z
    .local p1, paramBits:I
    :cond_8
    const-string v1, "failed"

    goto :goto_6

    .local v0, decodeSuccess:Z
    .restart local v1       #paramBits:I
    .local p0, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    .local p1, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local p3       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_9
    move p1, v1

    .end local v1           #paramBits:I
    .local p1, paramBits:I
    move p0, v0

    .end local v0           #decodeSuccess:Z
    .local p0, decodeSuccess:Z
    goto :goto_5
.end method

.method private static decodeBearerData(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .local v1, decodeSuccess:Z
    const/16 v3, 0x8

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .local v2, paramBits:I
    if-ltz v2, :cond_0

    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->readByteArray(I)[B

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v1, 0x1

    const/4 v2, 0x0

    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAM_BEARER_DATA decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1

    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeCauseCodes(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v0, 0x8

    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .local v2, paramBits:I
    if-lt v2, v4, :cond_1

    add-int/lit8 v2, v2, -0x8

    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    iget-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    if-eqz v3, :cond_0

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    int-to-byte v3, v3

    iput-byte v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    add-int/lit8 v2, v2, -0x8

    :cond_0
    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    if-lez v2, :cond_3

    :cond_2
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CAUSE_CODES decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_4

    const-string v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1

    :cond_4
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeReplyOption(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v0, 0x8

    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .local v2, paramBits:I
    if-lt v2, v4, :cond_0

    add-int/lit8 v2, v2, -0x8

    const/4 v3, 0x6

    invoke-virtual {p2, v3}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAM_BEARER_REPLY_OPTION decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1

    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v0, 0x10

    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SERVICE_CATEGORY decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1

    :cond_3
    const-string v5, "failed"

    goto :goto_0
.end method

.method private static decodeSubAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z
    .locals 2
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .parameter "isOriginalAddr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/lit8 v0, v1, 0x8

    .local v0, paramBits:I
    invoke-virtual {p2, v0}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    const/4 v1, 0x1

    return v1
.end method

.method private static decodeTeleserviceID(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z
    .locals 6
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x8

    const/16 v0, 0x10

    .local v0, EXPECTED_PARAM_SIZE:I
    const/4 v1, 0x0

    .local v1, decodeSuccess:Z
    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    .local v2, paramBits:I
    const/16 v3, 0x10

    if-lt v2, v3, :cond_0

    add-int/lit8 v2, v2, -0x10

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v4

    or-int/2addr v3, v4

    iput v3, p1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    if-lez v2, :cond_2

    :cond_1
    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PARAM_TELESERVICE_ID decode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v1, :cond_3

    const-string v5, "succeeded"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (extra bits = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p2, v2}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    return v1

    :cond_3
    const-string v5, "failed"

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

.method private static declared-synchronized getNextMessageId()I
    .locals 6

    .prologue
    const-string v2, "CDMA"

    const-string v2, "persist.radio.cdma.msgid"

    const-class v2, Lcom/android/internal/telephony/cdma/SmsMessage;

    monitor-enter v2

    :try_start_0
    const-string v3, "persist.radio.cdma.msgid"

    const/4 v4, 0x1

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .local v0, msgId:I
    const v3, 0xffff

    rem-int v3, v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .local v1, nextMsgId:Ljava/lang/String;
    const-string v3, "persist.radio.cdma.msgid"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "CDMA:SMS"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next persist.radio.cdma.msgid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "CDMA"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readback gets "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "persist.radio.cdma.msgid"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    return v0

    .end local v0           #msgId:I
    .end local v1           #nextMsgId:Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;Z)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"

    .prologue
    const/4 v0, 0x0

    .local v0, cbNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, priority:I
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 4
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    const/4 v3, 0x0

    new-instance v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-direct {v0}, Lcom/android/internal/telephony/SmsHeader$PortAddrs;-><init>()V

    .local v0, portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    iput p2, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    iput v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->origPort:I

    iput-boolean v3, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->areEightBits:Z

    new-instance v1, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v1}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v1, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    new-instance v2, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v2, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object v1, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    iput-object p3, v2, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    invoke-static {p1, p4, v2, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v3

    return-object v3
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"

    .prologue
    const/4 v5, 0x0

    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    invoke-static {p1, p3, v0, p5, p6}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 7
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "statusReportRequested"

    .prologue
    const/4 v5, 0x0

    .local v5, cbNumber:Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, priority:I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-static/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getTPLayerLengthForPDU(Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "getTPLayerLengthForPDU: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public static newFromCDMATPDU([B)[B
    .locals 7
    .parameter "part"

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v0, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v2}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v2, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local v0           #msg:Lcom/android/internal/telephony/cdma/SmsMessage;
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

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result p0

    if-lez p0, :cond_b

    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    .local p0, param:I
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    mul-int/lit8 v4, v1, 0x8

    .local v4, length:I
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/16 p0, 0x10

    if-ge v4, p0, :cond_1

    .end local p0           #param:I
    const-string p0, "CDMA"

    const-string v0, "Teleservice Identifier has wrong length"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    .end local v2           #env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .end local v4           #length:I
    :goto_1
    return-object p0

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v2       #env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    .restart local v3       #inStream:Lcom/android/internal/util/BitwiseInputStream;
    .restart local v4       #length:I
    :cond_1
    const/16 p0, 0x8

    invoke-virtual {v3, p0}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    or-int/2addr p0, v1

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

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
    const-string p0, "CDMA"

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
    const-string p0, "CDMA"

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

    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    or-int/2addr p0, v1

    iput p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

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

    const/4 v1, 0x4

    .local v1, fieldBits:I
    const/4 p0, 0x2

    .local p0, consumedBits:I
    iget v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v3, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    .end local v1           #fieldBits:I
    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x4

    invoke-virtual {v3, v1}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    const/16 v1, 0x8

    .restart local v1       #fieldBits:I
    add-int/lit8 p0, p0, 0x7

    :cond_3
    const/16 v5, 0x8

    invoke-virtual {v3, v5}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v5

    iput v5, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 p0, p0, 0x8

    sub-int/2addr v4, p0

    .local v4, remainingBits:I
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .end local p0           #consumedBits:I
    mul-int/2addr p0, v1

    .local p0, dataBits:I
    sub-int v1, v4, p0

    .local v1, paddingBits:I
    if-ge v4, p0, :cond_4

    const-string p0, "CDMA"

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

    invoke-virtual {v3, v1}, Lcom/android/internal/util/BitwiseInputStream;->skip(I)V

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I
    :try_end_1
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_5

    .end local v1           #paddingBits:I
    :try_start_2
    new-instance p0, Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v4, 0x0

    iget-object v5, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v4           #remainingBits:I
    array-length v5, v5

    const-string v6, "US-ASCII"

    invoke-direct {p0, v1, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result p0

    if-eqz p0, :cond_0

    iget p0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    const/16 v1, 0x2b

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    const-string p0, "CDMA"

    .end local p0           #ex:Ljava/io/UnsupportedEncodingException;
    const-string v0, "error decoding Originating Address"

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_1

    .restart local v0       #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local v4       #remainingBits:I
    :cond_5
    new-instance v1, Ljava/lang/StringBuffer;

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(I)V

    .local v1, strBuf:Ljava/lang/StringBuffer;
    const/4 p0, 0x0

    .end local v4           #remainingBits:I
    .local p0, i:I
    :goto_2
    iget v4, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    if-ge p0, v4, :cond_a

    iget-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    div-int/lit8 v5, p0, 0x2

    aget-byte v4, v4, v5

    const/4 v5, 0x4

    rem-int/lit8 v6, p0, 0x2

    mul-int/lit8 v6, v6, 0x4

    sub-int/2addr v5, v6

    ushr-int/2addr v4, v5

    and-int/lit8 v4, v4, 0xf

    .local v4, val:I
    const/4 v5, 0x1

    if-lt v4, v5, :cond_6

    const/16 v5, 0x9

    if-gt v4, v5, :cond_6

    const/16 v5, 0xa

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    .end local v4           #val:I
    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    .restart local v4       #val:I
    :cond_6
    const/16 v5, 0xa

    if-ne v4, v5, :cond_7

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_7
    const/16 v5, 0xb

    if-ne v4, v5, :cond_8

    const/16 v4, 0x2a

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_8
    const/16 v5, 0xc

    if-ne v4, v5, :cond_9

    const/16 v4, 0x23

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_9
    const-string p0, "CDMA"

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
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    .end local p0           #i:I
    iput-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    goto/16 :goto_0

    .end local v1           #strBuf:Ljava/lang/StringBuffer;
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
    iput-object p0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B
    :try_end_3
    .catch Lcom/android/internal/util/BitwiseInputStream$AccessException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .end local v4           #length:I
    :cond_b
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result p0

    if-eqz p0, :cond_c

    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    iget p0, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_c

    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_c

    iget-object p0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {p0}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object p0

    .local p0, temp:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "+"

    .end local v3           #inStream:Lcom/android/internal/util/BitwiseInputStream;
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    iget-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([B)V

    .restart local p0       #temp:Ljava/lang/String;
    iget p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    .end local p0           #temp:Ljava/lang/String;
    add-int/lit8 p0, p0, 0x1

    iput p0, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    :cond_c
    iput-object v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    :try_start_4
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0x64

    invoke-direct {p0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local v1, dos:Ljava/io/DataOutputStream;
    iget v3, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget v3, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget v3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v3, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v4, 0x0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v0           #addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length v0, v0

    invoke-virtual {v1, v3, v4, v0}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_d

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/io/DataOutputStream;->write(I)V

    iget-object v0, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v3, 0x0

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .end local v2           #env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    array-length v2, v2

    invoke-virtual {v1, v0, v3, v2}, Ljava/io/DataOutputStream;->write([BII)V

    :cond_d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object p0

    goto/16 :goto_1

    .end local v1           #dos:Ljava/io/DataOutputStream;
    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    :catch_2
    move-exception p0

    .local p0, ex:Ljava/io/IOException;
    const-string v0, "CDMA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating newFromCDMATPDU SubmitPdu failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

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

.method public static newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "newFromCDS: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMT([Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "lines"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "newFromCMT: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromCMTI(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 2
    .parameter "line"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "newFromCMTI: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public static newFromParcel(Landroid/os/Parcel;)Lcom/android/internal/telephony/cdma/SmsMessage;
    .locals 14
    .parameter "p"

    .prologue
    const/4 v13, 0x0

    const/4 v11, 0x1

    const-string v12, "SmsMessage for NBPCD"

    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    .local v7, msg:Lcom/android/internal/telephony/cdma/SmsMessage;
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v5, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    if-eqz v9, :cond_2

    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-eqz v9, :cond_0

    const/high16 v9, 0x5

    iget v10, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-ne v9, v10, :cond_2

    :cond_0
    iput v11, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    :goto_0
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .local v1, addressDigitMode:I
    and-int/lit16 v9, v1, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    iput v9, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v9

    and-int/lit16 v9, v9, 0xff

    int-to-byte v9, v9

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .local v2, count:B
    iput v2, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v4, v2, [B

    .local v4, data:[B
    const/4 v6, 0x0

    .local v6, index:I
    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    if-nez v1, :cond_1

    aget-byte v9, v4, v6

    invoke-direct {v7, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->convertDtmfToAscii(B)B

    move-result v9

    aput-byte v9, v4, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v1           #addressDigitMode:I
    .end local v2           #count:B
    .end local v4           #data:[B
    .end local v6           #index:I
    :cond_2
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-nez v9, :cond_3

    const/4 v9, 0x2

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    :cond_3
    iput v13, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    goto :goto_0

    .restart local v1       #addressDigitMode:I
    .restart local v2       #count:B
    .restart local v4       #data:[B
    .restart local v6       #index:I
    :cond_4
    iput-object v4, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v2

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v2, :cond_5

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .local v3, countInt:I
    if-lez v3, :cond_7

    new-array v4, v3, [B

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v3, :cond_6

    invoke-virtual {p0}, Landroid/os/Parcel;->readByte()B

    move-result v9

    aput-byte v9, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_6
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :cond_7
    invoke-static {}, Lcom/android/internal/telephony/cdma/CDMAPhone;->isNBPCDEnable()Z

    move-result v9

    if-eqz v9, :cond_8

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    if-ne v9, v11, :cond_8

    iget v9, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    if-ne v9, v11, :cond_8

    iget-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    aget-byte v9, v9, v13

    const/16 v10, 0x2b

    if-eq v9, v10, :cond_8

    const-string v9, "SmsMessage for NBPCD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PCD formatted address. Converting to ASCII:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-static {v9}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v8

    .local v8, temp:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "+"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v9

    iput-object v9, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const-string v9, "SmsMessage for NBPCD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PCD formatted address used  getAsciiBytes Adding a +:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    add-int/lit8 v9, v9, 0x1

    iput v9, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    const-string v9, "SmsMessage for NBPCD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Increasing number of digits"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #temp:Ljava/lang/String;
    :cond_8
    iput-object v0, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v0, v7, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v5, v7, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage;->createPdu()V

    return-object v7
.end method

.method public static parseAckMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 8
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;,
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const-string v7, ")"

    const/4 v1, 0x0

    .local v1, foundParamMask:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .local v0, decodeSuccess:Z
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .local v2, paramId:I
    const/4 v4, 0x1

    shl-int v3, v4, v2

    .local v3, paramIdBit:I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal duplicate parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported ACK msg parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    const/4 v4, 0x0

    invoke-static {p0, p1, p2, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSubAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    :goto_1
    if-eqz v0, :cond_0

    or-int/2addr v1, v3

    goto :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeCauseCodes(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    goto :goto_1

    .end local v0           #decodeSuccess:Z
    .end local v2           #paramId:I
    .end local v3           #paramIdBit:I
    :cond_2
    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing CAUSE_CODES subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static parseBroadcastMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 8
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;,
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const-string v7, ")"

    const/4 v1, 0x0

    .local v1, foundParamMask:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .local v0, decodeSuccess:Z
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .local v2, paramId:I
    const/4 v4, 0x1

    shl-int v3, v4, v2

    .local v3, paramIdBit:I
    and-int v4, v1, v3

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "illegal duplicate parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    sparse-switch v2, :sswitch_data_0

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported Boradcast msg parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    or-int/2addr v1, v3

    goto :goto_0

    :sswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeBearerData(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    goto :goto_1

    .end local v0           #decodeSuccess:Z
    .end local v2           #paramId:I
    .end local v3           #paramIdBit:I
    :cond_2
    and-int/lit8 v4, v1, 0x2

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing SERVICE_CATEGORY subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public static parsePTPMsg(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)V
    .locals 11
    .parameter "msg"
    .parameter "env"
    .parameter "inStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;,
            Lcom/android/internal/util/BitwiseInputStream$AccessException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const-string v10, ")"

    const/4 v1, 0x0

    .local v1, foundParamMask:I
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v4

    if-lez v4, :cond_2

    const/4 v0, 0x0

    .local v0, decodeSuccess:Z
    const/16 v4, 0x8

    invoke-virtual {p2, v4}, Lcom/android/internal/util/BitwiseInputStream;->read(I)I

    move-result v2

    .local v2, paramId:I
    shl-int v3, v9, v2

    .local v3, paramIdBit:I
    const-string v4, "CDMA"

    const-string v5, "Msg paramId %d : avai %d \n "

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p2}, Lcom/android/internal/util/BitwiseInputStream;->available()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int v4, v1, v3

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!!!illegal duplicate parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unsupported PTP msg parameter ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeTeleserviceID(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    :goto_1
    if-eqz v0, :cond_0

    or-int/2addr v1, v3

    goto/16 :goto_0

    :pswitch_2
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeServiceCategory(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    invoke-static {p0, p1, p2, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    goto :goto_1

    :pswitch_4
    invoke-static {p0, p1, p2, v9}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeSubAddress(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;Z)Z

    move-result v0

    goto :goto_1

    :pswitch_5
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeReplyOption(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    goto :goto_1

    :pswitch_6
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/cdma/SmsMessage;->decodeBearerData(Lcom/android/internal/telephony/cdma/SmsMessage;Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;Lcom/android/internal/util/BitwiseInputStream;)Z

    move-result v0

    goto :goto_1

    .end local v0           #decodeSuccess:Z
    .end local v2           #paramId:I
    .end local v3           #paramIdBit:I
    :cond_2
    and-int/lit8 v4, v1, 0x4

    if-nez v4, :cond_3

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing ORIGINATING_ADDRESS subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    and-int/lit8 v4, v1, 0x1

    if-nez v4, :cond_4

    new-instance v4, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;

    const-string v5, "missing TELESERVICE_ID subparam"

    invoke-direct {v4, v5}, Lcom/android/internal/telephony/cdma/SmsMessage$PduFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private parsePdu([B)V
    .locals 10
    .parameter "pdu"

    .prologue
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .local v1, bais:Ljava/io/ByteArrayInputStream;
    new-instance v3, Ljava/io/DataInputStream;

    invoke-direct {v3, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .local v3, dis:Ljava/io/DataInputStream;
    new-instance v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v4}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local v4, env:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local v0, addr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :try_start_0
    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .local v6, length:I
    iput v6, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    new-array v7, v6, [B

    iput-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v7, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v6}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v7

    iput v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->replySeqNo:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->errorClass:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readByte()B

    move-result v7

    iput-byte v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->causeCode:B

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .local v2, bearerDataLength:I
    new-array v7, v2, [B

    iput-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v7, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8, v2}, Ljava/io/DataInputStream;->read([BII)I

    invoke-virtual {v3}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #bearerDataLength:I
    .end local v6           #length:I
    :goto_0
    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iput-object v0, v4, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iput-object v4, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iput-object p1, p0, Lcom/android/internal/telephony/SmsMessageBase;->mPdu:[B

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    return-void

    :catch_0
    move-exception v7

    move-object v5, v7

    .local v5, ex:Ljava/lang/Exception;
    const-string v7, "CDMA"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createFromPdu: conversion from byte array to object failed: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 3
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"

    .prologue
    const/4 v0, 0x0

    .local v0, cbNumber:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, priority:I
    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v2

    return-object v2
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v0

    .local v0, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local p0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;-><init>()V

    .local p0, mSmsCallbackAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v0, :cond_0

    const/4 p0, 0x0

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p0           #mSmsCallbackAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .end local p1
    .end local p2
    .end local p3
    .end local p4
    :goto_0
    return-object p0

    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p0       #mSmsCallbackAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    .restart local p1
    .restart local p2
    .restart local p3
    .restart local p4
    :cond_0
    new-instance p0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    .end local p0           #mSmsCallbackAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .local p0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-static {}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNextMessageId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .end local p1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-eqz p3, :cond_2

    invoke-static {p3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .end local p3
    :goto_1
    iput p4, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    iput-object p2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-static {p0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object p2

    .local p2, encodedBearerData:[B
    const-string p1, "CDMA:SMS"

    const/4 p3, 0x2

    invoke-static {p1, p3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "CDMA"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MO (encoded) BearerData = "

    .end local p4
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "CDMA"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "MO raw BearerData = \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-static {p2}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "\'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p2, :cond_3

    const/4 p0, 0x0

    goto :goto_0

    .local p2, userData:Lcom/android/internal/telephony/cdma/sms/UserData;
    .restart local p3
    .restart local p4
    :cond_2
    const-string p1, "CDMA"

    const-string p3, "sData.getCallbackNumber cbNumber is null"

    .end local p3
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local p4
    .local p2, encodedBearerData:[B
    :cond_3
    iget-boolean p0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->hasUserDataHeader:Z

    .end local p0           #bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    if-eqz p0, :cond_4

    const/16 p0, 0x1005

    .local p0, teleservice:I
    :goto_2
    new-instance p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {p3}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .local p3, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 p1, 0x0

    iput p1, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    iput p0, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    iput-object v0, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    const/4 p0, 0x1

    iput p0, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .end local p0           #teleservice:I
    iput-object p2, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    :try_start_0
    new-instance p0, Ljava/io/ByteArrayOutputStream;

    const/16 p1, 0x64

    invoke-direct {p0, p1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .local p0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance p1, Ljava/io/DataOutputStream;

    invoke-direct {p1, p0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .local p1, dos:Ljava/io/DataOutputStream;
    iget p3, p3, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .end local p3           #envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget p3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    iget p3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    iget p3, v0, Lcom/android/internal/telephony/SmsAddress;->ton:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    iget p3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    iget p3, v0, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    iget-object p3, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    const/4 p4, 0x0

    iget-object v0, v0, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    array-length v0, v0

    invoke-virtual {p1, p3, p4, v0}, Ljava/io/DataOutputStream;->write([BII)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    array-length p3, p2

    invoke-virtual {p1, p3}, Ljava/io/DataOutputStream;->write(I)V

    const/4 p3, 0x0

    array-length p4, p2

    invoke-virtual {p1, p2, p3, p4}, Ljava/io/DataOutputStream;->write([BII)V

    invoke-virtual {p1}, Ljava/io/DataOutputStream;->close()V

    new-instance p1, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    .end local p1           #dos:Ljava/io/DataOutputStream;
    invoke-direct {p1}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .local p1, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    .end local p0           #baos:Ljava/io/ByteArrayOutputStream;
    iput-object p0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    const/4 p0, 0x0

    iput-object p0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    goto/16 :goto_0

    .end local p1           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .restart local v0       #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :cond_4
    const/16 p0, 0x1002

    goto :goto_2

    .end local v0           #destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    :catch_0
    move-exception p0

    .local p0, ex:Ljava/io/IOException;
    const-string p1, "CDMA"

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2           #encodedBearerData:[B
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "creating SubmitPdu failed: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #ex:Ljava/io/IOException;
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto/16 :goto_0
.end method

.method public static smscByteToString([B)Ljava/lang/String;
    .locals 7
    .parameter "smsc"

    .prologue
    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .local v0, index:I
    add-int/lit8 v1, v0, 0x1

    .end local v0           #index:I
    .local v1, index:I
    aget-byte v2, p0, v0

    .local v2, len:I
    if-nez v2, :cond_0

    const/4 v3, 0x0

    .local v3, ret:Ljava/lang/String;
    :goto_0
    move-object v5, v3

    .end local v1           #index:I
    .end local v2           #len:I
    .end local v3           #ret:Ljava/lang/String;
    :goto_1
    return-object v5

    .restart local v1       #index:I
    .restart local v2       #len:I
    :cond_0
    :try_start_0
    invoke-static {p0, v1, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .end local v3           #ret:Ljava/lang/String;
    :catch_0
    move-exception v4

    .local v4, tr:Ljava/lang/RuntimeException;
    const-string v5, "CDMA"

    const-string v6, "invalid SC address: "

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x0

    .restart local v3       #ret:Ljava/lang/String;
    goto :goto_0

    .end local v1           #index:I
    .end local v2           #len:I
    .end local v3           #ret:Ljava/lang/String;
    .end local v4           #tr:Ljava/lang/RuntimeException;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getCallbackNumberAddress()Ljava/lang/String;
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getIncomingSmsFingerprint()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v0, output:Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v1, v1, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->origAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v2, v2, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    array-length v2, v2

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method public getLanguage()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->language:I

    return v0
.end method

.method public getMessageClass()Landroid/telephony/SmsMessage$MessageClass;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->displayMode:I

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/telephony/SmsMessage$MessageClass;->UNKNOWN:Landroid/telephony/SmsMessage$MessageClass;

    goto :goto_0
.end method

.method public getMessageId()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    return v0
.end method

.method public getMessageType()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    return v0
.end method

.method getNumOfVoicemails()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    return v0
.end method

.method public getPriority()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    return v0
.end method

.method public getProtocolIdentifier()I
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "getProtocolIdentifier: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public getServiceCategory()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->serviceCategory:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    shl-int/lit8 v0, v0, 0x10

    return v0
.end method

.method getTeleService()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    return v0
.end method

.method public isCphsMwiMessage()Z
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "isCphsMwiMessage: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isMWIClearMessage()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMWISetMessage()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMwiDontStore()Z
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReplace()Z
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "isReplace: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isReplyPathPresent()Z
    .locals 2

    .prologue
    const-string v0, "CDMA"

    const-string v1, "isReplyPathPresent: is not supported in CDMA mode."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public isStatusReportMessage()Z
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected parseSms()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const-string v3, "CDMA"

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    iput v1, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->numberOfMessages:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    const-string v0, "CDMA:SMS"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT raw BearerData = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mEnvelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    iget-object v1, v1, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v1}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MT (decoded) BearerData = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    iput v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payload:[B

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/SmsMessageBase;->originatingAddress:Lcom/android/internal/telephony/SmsAddress;

    iget-object v2, v2, Lcom/android/internal/telephony/SmsAddress;->origBytes:[B

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, v0, Lcom/android/internal/telephony/SmsAddress;->address:Ljava/lang/String;

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->msgCenterTimeStamp:Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/cdma/sms/BearerData$TimeStamp;->toMillis(Z)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    :cond_5
    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SMS SC timestamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->scTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget-boolean v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatusSet:Z

    if-nez v0, :cond_a

    const-string v0, "CDMA"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DELIVERY_ACK message without msgStatus ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-nez v1, :cond_9

    const-string v1, "also missing"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " userData)."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->messageBody:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    if-eq v0, v4, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-nez v0, :cond_c

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseMessageBody()V

    goto/16 :goto_0

    :cond_9
    const-string v1, "does have"

    goto :goto_1

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->errorClass:I

    shl-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageStatus:I

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->status:I

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v4, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v0, v0, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    if-eq v0, v5, :cond_6

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported message type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/SmsMessage;->mBearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;

    iget v2, v2, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c
    iget-object v0, p0, Lcom/android/internal/telephony/SmsMessageBase;->userData:[B

    if-eqz v0, :cond_0

    goto/16 :goto_0
.end method

.method protected setEmpty()V
    .locals 2

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SmsMessageBase;->setEmpty()V

    const-string v0, "CDMA"

    const-string v1, "nothing to do for gsm message in addition to the memebers of base class"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
