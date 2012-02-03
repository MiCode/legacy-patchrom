.class final Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "GsmSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    }
.end annotation


# static fields
.field private static SMSC_ADDRESS_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GSM"

.field private static final hexDigitChars:Ljava/lang/String; = "0123456789abcdef"


# instance fields
.field private mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

.field private final mSmsCbPageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;",
            "[[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const/16 v0, 0x15

    sput v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    return-void
.end method

.method constructor <init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V
    .locals 3
    .parameter "phone"

    .prologue
    .line 72
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    .line 770
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    .line 75
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    check-cast v0, Lcom/android/internal/telephony/BaseCommands;

    const/16 v1, 0xd

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/BaseCommands;->setOnNewGsmBroadcastSms(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 76
    return-void
.end method

.method private getSmscNumber([BZ)Ljava/lang/String;
    .locals 14
    .parameter "a"
    .parameter "garbage_value"

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    sget v11, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SMSC_ADDRESS_LENGTH:I

    invoke-direct {v0, v11}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 81
    .local v0, buf:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 85
    .local v2, extra:I
    const/4 v8, 0x0

    .line 87
    .local v8, smsc_length:I
    const/4 v4, 0x0

    .line 89
    .local v4, international:Z
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    if-nez v11, :cond_0

    .line 91
    const-string v6, "NotSet"

    .local v6, smsc:Ljava/lang/String;
    move-object v7, v6

    .line 139
    .end local v6           #smsc:Ljava/lang/String;
    .local v7, smsc:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 94
    .end local v7           #smsc:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x1

    aget-byte v11, p1, v11

    const/16 v12, -0x6f

    if-ne v11, v12, :cond_1

    .line 95
    const-string v11, "+"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 96
    const/4 v4, 0x1

    .line 98
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 100
    const/16 v11, 0xa

    new-array v9, v11, [B

    .line 101
    .local v9, temp2:[B
    const/4 v11, 0x0

    array-length v12, p1

    const/4 v13, 0x2

    sub-int/2addr v12, v13

    invoke-static {p1, v2, v9, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    const/4 v1, 0x0

    .local v1, cx:I
    :goto_1
    array-length v11, v9

    if-ge v1, v11, :cond_5

    .line 104
    aget-byte v11, v9, v1

    const/4 v12, -0x1

    if-ne v11, v12, :cond_3

    .line 103
    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 107
    :cond_3
    aget-byte v11, v9, v1

    and-int/lit16 v11, v11, 0xff

    div-int/lit8 v3, v11, 0x10

    .line 108
    .local v3, hn:I
    aget-byte v11, v9, v1

    and-int/lit8 v5, v11, 0xf

    .line 109
    .local v5, ln:I
    const/16 v11, 0xa

    if-ge v5, v11, :cond_4

    .line 110
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v5}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 112
    :cond_4
    const/16 v11, 0xa

    if-ge v3, v11, :cond_2

    .line 113
    const-string v11, "0123456789abcdef"

    invoke-virtual {v11, v3}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 118
    .end local v3           #hn:I
    .end local v5           #ln:I
    :cond_5
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    .line 120
    .local v10, temp_smsc:Ljava/lang/String;
    const/4 v11, 0x0

    aget-byte v11, p1, v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    mul-int/lit8 v8, v11, 0x2

    .line 122
    if-eqz v4, :cond_7

    .line 124
    const/4 v11, 0x0

    add-int/lit8 v12, v8, 0x1

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 125
    .restart local v6       #smsc:Ljava/lang/String;
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "international even smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_3
    if-eqz p2, :cond_6

    .line 134
    const/4 v11, 0x0

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 137
    :cond_6
    const-string v11, "GSM"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "smsc = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v6

    .line 139
    .end local v6           #smsc:Ljava/lang/String;
    .restart local v7       #smsc:Ljava/lang/String;
    goto/16 :goto_0

    .line 129
    .end local v7           #smsc:Ljava/lang/String;
    :cond_7
    const/4 v11, 0x0

    invoke-virtual {v10, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .restart local v6       #smsc:Ljava/lang/String;
    goto :goto_3
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    .line 658
    packed-switch p1, :pswitch_data_0

    .line 675
    :pswitch_0
    const/16 v0, 0xff

    :goto_0
    return v0

    .line 662
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 664
    :pswitch_2
    const/16 v0, 0xd3

    goto :goto_0

    .line 666
    :pswitch_3
    const/16 v0, 0xd4

    goto :goto_0

    .line 668
    :pswitch_4
    const/16 v0, 0xd5

    goto :goto_0

    .line 671
    :pswitch_5
    const/16 v0, 0xd6

    goto :goto_0

    .line 658
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 26
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 510
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object v4, v0

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v24

    .line 511
    .local v24, ss:I
    if-eqz v24, :cond_1

    .line 512
    const/16 v17, 0x0

    .local v17, i:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v13

    .local v13, count:I
    :goto_0
    move/from16 v0, v17

    move v1, v13

    if-ge v0, v1, :cond_9

    .line 513
    const/16 v22, 0x0

    .line 514
    .local v22, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_0

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_0

    .line 515
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 517
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v2, v22

    move-object v3, v5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 518
    .local v25, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->handleNotInService(ILcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 512
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 523
    .end local v13           #count:I
    .end local v17           #i:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v4

    move v0, v4

    and-int/lit16 v0, v0, 0xff

    move/from16 v21, v0

    .line 524
    .local v21, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 525
    .local v19, msgCount:I
    const/4 v9, 0x0

    .line 527
    .local v9, encoding:I
    sput v19, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 529
    move/from16 v0, v19

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 530
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .restart local v17       #i:I
    :goto_1
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    .line 531
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 532
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v4, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v9, v4, :cond_3

    if-eqz v9, :cond_2

    const/4 v4, 0x1

    if-ne v9, v4, :cond_3

    .line 535
    :cond_2
    iget v9, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 537
    :cond_3
    aput-object v15, v16, v17

    .line 530
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 540
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_4
    const/16 v17, 0x0

    :goto_2
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_9

    .line 541
    new-instance v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v12}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 542
    .local v12, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v21

    move-object v1, v12

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 543
    add-int/lit8 v4, v17, 0x1

    iput v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 544
    move/from16 v0, v19

    move-object v1, v12

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 545
    const/4 v4, 0x0

    iput-boolean v4, v12, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 546
    new-instance v23, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 547
    .local v23, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v12

    move-object/from16 v1, v23

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 548
    const/4 v4, 0x1

    if-ne v9, v4, :cond_5

    .line 549
    aget-object v4, v16, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 550
    aget-object v4, v16, v17

    iget v4, v4, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v4

    move-object/from16 v1, v23

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 553
    :cond_5
    const/16 v22, 0x0

    .line 554
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_6

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_6

    .line 555
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    check-cast v22, Landroid/app/PendingIntent;

    .line 558
    .restart local v22       #sentIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v14, 0x0

    .line 559
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v0, v4

    move/from16 v1, v17

    if-le v0, v1, :cond_7

    .line 560
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 563
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v14, :cond_8

    const/4 v4, 0x1

    move v7, v4

    :goto_3
    invoke-static/range {v23 .. v23}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v8

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v10, v0

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v11, v0

    move-object/from16 v4, p2

    move-object/from16 v5, p1

    invoke-static/range {v4 .. v11}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v20

    .line 567
    .local v20, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    new-instance v18, Ljava/util/HashMap;

    invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v18, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v4, "smsc"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string/jumbo v4, "pdu"

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v5, v0

    move-object/from16 v0, v18

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    move-object v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->SmsTrackerFactory(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v25

    .line 572
    .restart local v25       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 540
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_2

    .line 563
    .end local v18           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v20           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v25           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_8
    const/4 v4, 0x0

    move v7, v4

    goto :goto_3

    .line 574
    .end local v9           #encoding:I
    .end local v12           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v16           #encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v19           #msgCount:I
    .end local v21           #refNumber:I
    .end local v22           #sentIntent:Landroid/app/PendingIntent;
    .end local v23           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_9
    return-void
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 2
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    .line 629
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->resultToCause(I)I

    move-result v1

    invoke-interface {v0, p1, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingGsmSms(ZILandroid/os/Message;)V

    .line 632
    :cond_0
    return-void
.end method

.method protected activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 637
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 639
    return-void
.end method

.method protected dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 12
    .parameter "smsb"

    .prologue
    .line 217
    const/4 v5, 0x0

    .line 218
    .local v5, ramBoot:Z
    const-string/jumbo v9, "ram"

    const-string v10, "encryption.bootmode"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 219
    const/4 v5, 0x1

    .line 222
    :cond_0
    if-nez p1, :cond_1

    .line 223
    const/4 v9, 0x2

    .line 318
    :goto_0
    return v9

    .line 224
    :cond_1
    if-eqz v5, :cond_2

    .line 225
    const/4 v9, 0x2

    goto :goto_0

    .line 227
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/internal/telephony/gsm/SmsMessage;

    move-object v6, v0

    .line 228
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    const/4 v3, 0x0

    .line 230
    .local v3, handled:Z
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isTypeZero()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 233
    const-string v9, "GSM"

    const-string v10, "Received short message type 0, Don\'t display or store it. Send Ack"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const/4 v9, 0x1

    goto :goto_0

    .line 238
    :cond_3
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWISetMessage()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 257
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 259
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 261
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received voice mail indicator set SMS shouldStore="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_5

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_4
    :goto_2
    if-eqz v3, :cond_8

    .line 272
    const/4 v9, 0x1

    goto :goto_0

    .line 261
    :cond_5
    const/4 v11, 0x0

    goto :goto_1

    .line 263
    :cond_6
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMWIClearMessage()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 264
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateMessageWaitingIndicator(Z)V

    .line 265
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->isMwiDontStore()Z

    move-result v3

    .line 267
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Received voice mail indicator clear SMS shouldStore="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-nez v3, :cond_7

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const/4 v11, 0x0

    goto :goto_3

    .line 275
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    if-nez v9, :cond_9

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v9

    sget-object v10, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    if-eq v9, v10, :cond_9

    .line 278
    const/4 v9, 0x3

    goto/16 :goto_0

    .line 281
    :cond_9
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v7

    .line 283
    .local v7, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v7, :cond_b

    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v9, :cond_b

    const/16 v9, 0xb84

    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v10, v10, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    if-ne v9, v10, :cond_b

    .line 284
    const/4 v2, 0x1

    .line 286
    .local v2, enabled:Z
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "roaming_wap_push_enabled"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v8

    .line 287
    .local v8, value:I
    const/4 v9, 0x1

    if-ne v9, v8, :cond_a

    const/4 v9, 0x1

    move v2, v9

    .line 288
    :goto_4
    const-string v9, "GSM"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isRoamingPushEnabled : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 292
    .end local v8           #value:I
    :goto_5
    if-nez v2, :cond_b

    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v9

    if-eqz v9, :cond_b

    .line 293
    const/4 v9, 0x1

    goto/16 :goto_0

    .line 287
    .restart local v8       #value:I
    :cond_a
    const/4 v9, 0x0

    move v2, v9

    goto :goto_4

    .line 289
    .end local v8           #value:I
    :catch_0
    move-exception v9

    move-object v1, v9

    .line 290
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 299
    .end local v1           #e:Ljava/lang/Exception;
    .end local v2           #enabled:Z
    :cond_b
    if-eqz v7, :cond_c

    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v9, :cond_f

    .line 301
    :cond_c
    const/4 v9, 0x1

    new-array v4, v9, [[B

    .line 302
    .local v4, pdus:[[B
    const/4 v9, 0x0

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getPdu()[B

    move-result-object v10

    aput-object v10, v4, v9

    .line 304
    if-eqz v7, :cond_e

    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v9, :cond_e

    .line 305
    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    const/16 v10, 0xb84

    if-ne v9, v10, :cond_d

    .line 306
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getUserData()[B

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v9

    goto/16 :goto_0

    .line 309
    :cond_d
    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    iget v9, v9, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    invoke-virtual {p0, v4, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    .line 315
    :goto_6
    const/4 v9, -0x1

    goto/16 :goto_0

    .line 313
    :cond_e
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_6

    .line 318
    .end local v4           #pdus:[[B
    :cond_f
    iget-object v9, v7, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    iget-object v10, v7, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    invoke-virtual {p0, v6, v9, v10}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v9

    goto/16 :goto_0
.end method

.method public dispatchSmsServiceCenter(Ljava/lang/String;)V
    .locals 8
    .parameter "smsc_hexstring"

    .prologue
    const/4 v7, -0x1

    const-string v6, "GSM"

    .line 146
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.GET_SMSC"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v1, intent:Landroid/content/Intent;
    const/4 v0, 0x0

    .line 150
    .local v0, garbage_value:Z
    const-string v4, "GSM"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "smsc_hexstring = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const-string v4, "f"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    const-string v4, "F"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v7, :cond_0

    .line 155
    const/4 v0, 0x0

    .line 156
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring doesn\'t have garbage value"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 166
    .local v2, scAddress:[B
    const/4 v4, 0x1

    new-array v3, v4, [Ljava/lang/String;

    .line 168
    .local v3, smsc:[Ljava/lang/String;
    const/4 v4, 0x0

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getSmscNumber([BZ)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 170
    const-string/jumbo v4, "smsc"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string v4, "android.permission.RECEIVE_SMS"

    invoke-virtual {p0, v1, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatch(Landroid/content/Intent;Ljava/lang/String;)V

    .line 173
    return-void

    .line 160
    .end local v2           #scAddress:[B
    .end local v3           #smsc:[Ljava/lang/String;
    :cond_0
    const/4 v0, 0x1

    .line 161
    const-string v4, "GSM"

    const-string/jumbo v4, "smsc_hexstring has garbage value"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 644
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    invoke-virtual {p1}, Landroid/os/Message;->recycle()V

    .line 646
    return-void
.end method

.method protected handleBroadcastSms([B)V
    .locals 23
    .parameter "Cbpdu"

    .prologue
    .line 776
    const/16 v17, 0x0

    :try_start_0
    check-cast v17, [[B

    .line 777
    .local v17, pdus:[[B
    move-object/from16 v19, p1

    .line 780
    .local v19, receivedPdu:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 781
    new-instance v20, Ljava/lang/StringBuilder;

    const-string v21, "SMS CB pdu data: "

    invoke-direct/range {v20 .. v21}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 782
    .local v20, sb:Ljava/lang/StringBuilder;
    move v15, v11

    .local v15, j:I
    :goto_1
    add-int/lit8 v21, v11, 0x8

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v21, v0

    move v0, v15

    move/from16 v1, v21

    if-ge v0, v1, :cond_1

    .line 783
    aget-byte v21, v19, v15

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move v5, v0

    .line 784
    .local v5, b:I
    const/16 v21, 0x10

    move v0, v5

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    .line 785
    const/16 v21, 0x30

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 787
    :cond_0
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const/16 v22, 0x20

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 782
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 789
    .end local v5           #b:I
    :cond_1
    const-string v21, "GSM"

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    add-int/lit8 v11, v11, 0x8

    goto :goto_0

    .line 793
    .end local v15           #j:I
    .end local v20           #sb:Ljava/lang/StringBuilder;
    :cond_2
    new-instance v10, Lcom/android/internal/telephony/gsm/SmsCbHeader;

    move-object v0, v10

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/SmsCbHeader;-><init>([B)V

    .line 794
    .local v10, header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    const-string v21, "gsm.operator.numeric"

    invoke-static/range {v21 .. v21}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 795
    .local v18, plmn:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mGsmPhone:Lcom/android/internal/telephony/gsm/GSMPhone;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 796
    .local v6, cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v16

    .line 797
    .local v16, lac:I
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v7

    .line 799
    .local v7, cid:I
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 801
    new-instance v8, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    move-object v0, v8

    move-object v1, v10

    move-object/from16 v2, v18

    move/from16 v3, v16

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;-><init>(Lcom/android/internal/telephony/gsm/SmsCbHeader;Ljava/lang/String;II)V

    .line 804
    .local v8, concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #pdus:[[B
    check-cast v17, [[B

    .line 806
    .restart local v17       #pdus:[[B
    if-nez v17, :cond_3

    .line 809
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->nrOfPages:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 811
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    :cond_3
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->pageIndex:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v21, v21, v22

    aput-object v19, v17, v21

    .line 817
    const/4 v11, 0x0

    :goto_2
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v21, v0

    move v0, v11

    move/from16 v1, v21

    if-ge v0, v1, :cond_6

    .line 818
    aget-object v21, v17, v11

    if-nez v21, :cond_5

    .line 852
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v8           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :cond_4
    :goto_3
    return-void

    .line 817
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v8       #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 825
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    .end local v8           #concatInfo:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    :goto_4
    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/gsm/SmsCbHeader;->messageIdentifier:I

    move/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/internal/telephony/gsm/SmsCbHeader;->isEmergencyMessage(I)Z

    move-result v13

    .line 833
    .local v13, isEmergencyMessage:Z
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchBroadcastPdus([[BZ)V

    .line 835
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->dispatchCbPdus([[B)V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mSmsCbPageMap:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .line 842
    .local v14, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    :cond_7
    :goto_5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    .line 843
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;

    .line 845
    .local v12, info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    move-object v0, v12

    move-object/from16 v1, v18

    move/from16 v2, v16

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;->matchesLocation(Ljava/lang/String;II)Z

    move-result v21

    if-nez v21, :cond_7

    .line 846
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 849
    .end local v6           #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .end local v7           #cid:I
    .end local v10           #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .end local v11           #i:I
    .end local v12           #info:Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;
    .end local v13           #isEmergencyMessage:Z
    .end local v14           #iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/gsm/GsmSMSDispatcher$SmsCbConcatInfo;>;"
    .end local v16           #lac:I
    .end local v17           #pdus:[[B
    .end local v18           #plmn:Ljava/lang/String;
    .end local v19           #receivedPdu:[B
    :catch_0
    move-exception v21

    move-object/from16 v9, v21

    .line 850
    .local v9, e:Ljava/lang/RuntimeException;
    const-string v21, "GSM"

    const-string v22, "Error in decoding SMS CB pdu"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v9

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 828
    .end local v9           #e:Ljava/lang/RuntimeException;
    .restart local v6       #cellLocation:Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7       #cid:I
    .restart local v10       #header:Lcom/android/internal/telephony/gsm/SmsCbHeader;
    .restart local v11       #i:I
    .restart local v16       #lac:I
    .restart local v17       #pdus:[[B
    .restart local v18       #plmn:Ljava/lang/String;
    .restart local v19       #receivedPdu:[B
    :cond_8
    const/16 v21, 0x1

    :try_start_1
    move/from16 v0, v21

    new-array v0, v0, [[B

    move-object/from16 v17, v0

    .line 829
    const/16 v21, 0x0

    aput-object v19, v17, v21
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 12
    .parameter "ar"

    .prologue
    const/4 v11, 0x1

    .line 183
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    .line 184
    .local v5, pduString:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/internal/telephony/gsm/SmsMessage;->newFromCDS(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SmsMessage;

    move-result-object v6

    .line 185
    .local v6, sms:Lcom/android/internal/telephony/gsm/SmsMessage;
    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->getStatus()I

    move-result v7

    .line 188
    .local v7, tpStatus:I
    if-eqz v6, :cond_2

    .line 189
    iget v4, v6, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    .line 190
    .local v4, messageRef:I
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 191
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 192
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v9, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    if-ne v9, v4, :cond_3

    .line 194
    const/16 v9, 0x40

    if-ge v7, v9, :cond_0

    const/16 v9, 0x20

    if-ge v7, v9, :cond_1

    .line 195
    :cond_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 197
    :cond_1
    iget-object v3, v8, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .line 198
    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 199
    .local v1, fillIn:Landroid/content/Intent;
    const-string/jumbo v9, "pdu"

    invoke-static {v5}, Lcom/android/internal/telephony/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 201
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v10, -0x1

    invoke-virtual {v3, v9, v10, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    .end local v0           #count:I
    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v2           #i:I
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #messageRef:I
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_2
    :goto_1
    const/4 v9, 0x0

    invoke-virtual {p0, v11, v11, v9}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    .line 210
    return-void

    .line 190
    .restart local v0       #count:I
    .restart local v2       #i:I
    .restart local v4       #messageRef:I
    .restart local v8       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 202
    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v9

    goto :goto_1
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 325
    if-eqz p6, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, p4, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;I[BZ)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 327
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p5, p6}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 328
    return-void

    .line 325
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    .line 612
    iget-object v6, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 614
    .local v6, map:Ljava/util/HashMap;
    const-string v0, "destination"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 615
    .local v1, destinationAddress:Ljava/lang/String;
    const-string/jumbo v0, "scaddress"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 617
    .local v2, scAddress:Ljava/lang/String;
    const-string/jumbo v0, "parts"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 618
    .local v3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v0, "sentIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 619
    .local v4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "deliveryIntents"

    invoke-virtual {v6, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .local v5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    move-object v0, p0

    .line 621
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendMultipartTextWithPermit(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 624
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 23
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 367
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 368
    .local v20, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v18

    .line 369
    .local v18, msgCount:I
    const/4 v10, 0x0

    .line 371
    .local v10, encoding:I
    sput v18, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 373
    move/from16 v0, v18

    new-array v0, v0, [Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-object/from16 v16, v0

    .line 374
    .local v16, encodingForParts:[Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    .line 375
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 376
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v5, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    if-eq v10, v5, :cond_1

    if-eqz v10, :cond_0

    const/4 v5, 0x1

    if-ne v10, v5, :cond_1

    .line 379
    :cond_0
    iget v10, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    .line 381
    :cond_1
    aput-object v15, v16, v17

    .line 374
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 384
    .end local v15           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_7

    .line 385
    new-instance v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 386
    .local v13, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v20

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 387
    add-int/lit8 v5, v17, 0x1

    iput v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 388
    move/from16 v0, v18

    move-object v1, v13

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 395
    const/4 v5, 0x1

    iput-boolean v5, v13, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 396
    new-instance v22, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 397
    .local v22, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object v0, v13

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 398
    const/4 v5, 0x1

    if-ne v10, v5, :cond_3

    .line 399
    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 400
    aget-object v5, v16, v17

    iget v5, v5, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move v0, v5

    move-object/from16 v1, v22

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 403
    :cond_3
    const/16 v21, 0x0

    .line 404
    .local v21, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    .line 405
    move-object/from16 v0, p4

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    check-cast v21, Landroid/app/PendingIntent;

    .line 408
    .restart local v21       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v14, 0x0

    .line 409
    .local v14, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 410
    move-object/from16 v0, p5

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v14, Landroid/app/PendingIntent;

    .line 413
    .restart local v14       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v14, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v22 .. v22}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v11, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v12, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-static/range {v5 .. v12}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v19

    .line 417
    .local v19, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v21

    move-object v4, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 384
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 413
    .end local v19           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    .line 419
    .end local v13           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v14           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v21           #sentIntent:Landroid/app/PendingIntent;
    .end local v22           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 26
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter
    .parameter
    .parameter
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;ZIII)V"
        }
    .end annotation

    .prologue
    .line 427
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v5

    move v0, v5

    and-int/lit16 v0, v0, 0xff

    move/from16 v23, v0

    .line 429
    .local v23, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v5

    sput v5, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->mRemainingMessages:I

    .line 431
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v21

    .line 432
    .local v21, msgCount:I
    const/16 v19, 0x0

    .line 434
    .local v19, encoding:I
    const/16 v20, 0x0

    .local v20, i:I
    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    .line 435
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v18

    .line 436
    .local v18, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move v5, v0

    move/from16 v0, v19

    move v1, v5

    if-eq v0, v1, :cond_1

    if-eqz v19, :cond_0

    const/4 v5, 0x1

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_1

    .line 439
    :cond_0
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v19, v0

    .line 434
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 443
    .end local v18           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/16 v20, 0x0

    :goto_1
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_7

    .line 444
    new-instance v16, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct/range {v16 .. v16}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 445
    .local v16, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v23

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 446
    add-int/lit8 v5, v20, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 447
    move/from16 v0, v21

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 455
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, v16

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 456
    new-instance v25, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 457
    .local v25, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    move-object/from16 v0, v16

    move-object/from16 v1, v25

    iput-object v0, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 459
    const/16 v24, 0x0

    .line 460
    .local v24, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v20

    if-le v0, v1, :cond_3

    .line 461
    move-object/from16 v0, p4

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    .end local v24           #sentIntent:Landroid/app/PendingIntent;
    check-cast v24, Landroid/app/PendingIntent;

    .line 464
    .restart local v24       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    const/16 v17, 0x0

    .line 465
    .local v17, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_4

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v0, v5

    move/from16 v1, v20

    if-le v0, v1, :cond_4

    .line 466
    move-object/from16 v0, p5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v17, Landroid/app/PendingIntent;

    .line 469
    .restart local v17       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_4
    move-object/from16 v0, p3

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v17, :cond_5

    const/4 v5, 0x1

    move v8, v5

    :goto_2
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    const/4 v5, 0x3

    move/from16 v0, v19

    move v1, v5

    if-ne v0, v1, :cond_6

    const/4 v5, 0x1

    move v13, v5

    :goto_3
    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move v14, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move v15, v0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-static/range {v5 .. v15}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v22

    .line 474
    .local v22, pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v24

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 443
    add-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 469
    .end local v22           #pdus:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_5
    const/4 v5, 0x0

    move v8, v5

    goto :goto_2

    :cond_6
    move/from16 v13, p9

    goto :goto_3

    .line 476
    .end local v16           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v17           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v24           #sentIntent:Landroid/app/PendingIntent;
    .end local v25           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_7
    return-void
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 578
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 580
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 581
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 583
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 584
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 586
    return-void
.end method

.method protected sendSmsForMobileTracker(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 8
    .parameter "tracker"

    .prologue
    .line 591
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 593
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v5, "smsc"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v4, v0

    .line 594
    .local v4, smsc:[B
    const-string/jumbo v5, "pdu"

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    move-object v0, v5

    check-cast v0, [B

    move-object v2, v0

    .line 596
    .local v2, pdu:[B
    const/4 v5, 0x2

    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 597
    .local v3, reply:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v4}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendMobileTrackerSMS(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 599
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 333
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 335
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 336
    return-void

    .line 333
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 342
    if-eqz p5, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {p2, p1, p3, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v0

    .line 344
    .local v0, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    iget-object v1, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v2, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v1, v2, p4, p5}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPduForMobileTracker([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 345
    return-void

    .line 342
    .end local v0           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 17
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 354
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/gsm/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v15

    .line 355
    .local v15, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    if-eqz p5, :cond_0

    const/4 v5, 0x1

    move v8, v5

    :goto_0
    iget v13, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageTable:I

    iget v14, v15, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-static/range {v5 .. v14}, Lcom/android/internal/telephony/gsm/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIIIII)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v16

    .line 358
    .local v16, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    move-object v5, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    .line 359
    return-void

    .line 355
    .end local v16           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v5, 0x0

    move v8, v5

    goto :goto_0
.end method

.method protected setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 651
    const-string v0, "GSM"

    const-string v1, "Error! The functionality cell broadcast sms is not implemented for GSM."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p2}, Landroid/os/Message;->recycle()V

    .line 653
    return-void
.end method
