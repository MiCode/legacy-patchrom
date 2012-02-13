.class Lcom/android/phone/BluetoothAtSms$2;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothAtSms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BluetoothAtSms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/BluetoothAtSms;


# direct methods
.method constructor <init>(Lcom/android/phone/BluetoothAtSms;)V
    .locals 0
    .parameter

    .prologue
    .line 327
    iput-object p1, p0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 331
    const-string v20, "BtAtSms"

    const-string v21, "Blur mSmsReciever enter"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v20, "android.provider.Telephony.SMS_RECEIVED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_6

    .line 333
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_BODY_RECV_ACTION, mode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 336
    :pswitch_0
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_BODY_RECV_ACTION, mt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v20, v0

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 339
    .local v10, bundle:Landroid/os/Bundle;
    if-eqz v10, :cond_5

    .line 340
    invoke-static/range {p2 .. p2}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v14

    .line 342
    .local v14, messages:[Landroid/telephony/SmsMessage;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mSmsFormatType:I
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$300(Lcom/android/phone/BluetoothAtSms;)I

    move-result v20

    if-nez v20, :cond_3

    .line 343
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 346
    const/16 v20, 0x0

    aget-object v13, v14, v20

    .line 347
    .local v13, message:Landroid/telephony/SmsMessage;
    const-string v18, ""

    .line 349
    .local v18, result:Ljava/lang/String;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 350
    .local v9, activePhone:I
    const/16 v20, 0x2

    move/from16 v0, v20

    move v1, v9

    if-ne v0, v1, :cond_2

    .line 351
    const-string v20, "TAG"

    const-string v21, "Phone type is CDMA"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v15, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;

    const/16 v20, 0x0

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;-><init>(Lcom/android/phone/BluetoothAtSms$1;)V

    .line 353
    .local v15, msg:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->type:I

    .line 354
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->service_center:Ljava/lang/String;

    .line 355
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->address:Ljava/lang/String;

    .line 356
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v15

    iput-object v0, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->body:Ljava/lang/String;

    .line 357
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    move-object v1, v15

    iput v0, v1, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->date:I

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodeMessagePduLength(Landroid/content/Context;)I

    move-result v19

    .line 360
    .local v19, tpdulen:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$000(Lcom/android/phone/BluetoothAtSms;)Landroid/content/Context;

    move-result-object v20

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;->getEncodePdu(Landroid/content/Context;)[B

    move-result-object v17

    .line 362
    .local v17, pdu:[B
    if-eqz v17, :cond_1

    if-eqz v19, :cond_1

    .line 363
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMT: ,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    #calls: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 377
    .end local v15           #msg:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v17           #pdu:[B
    :goto_1
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 367
    .restart local v15       #msg:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .restart local v17       #pdu:[B
    :cond_1
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "pdu=null or tpdulen="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 370
    .end local v15           #msg:Lcom/android/phone/BluetoothAtSms$SmsMessageOnME;
    .end local v17           #pdu:[B
    .end local v19           #tpdulen:I
    :cond_2
    const-string v20, "TAG"

    const-string v21, "Phone type is GSM"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v20

    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v20, v0

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v21

    const/16 v22, 0x0

    aget-byte v21, v21, v22

    sub-int v20, v20, v21

    const/16 v21, 0x1

    sub-int v19, v20, v21

    .line 372
    .restart local v19       #tpdulen:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMT: ,"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Landroid/telephony/SmsMessage;->getPdu()[B

    move-result-object v22

    #calls: Lcom/android/phone/BluetoothAtSms;->SmsPdubyte2HexStr([B)Ljava/lang/String;
    invoke-static/range {v21 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$500(Lcom/android/phone/BluetoothAtSms;[B)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto/16 :goto_1

    .line 381
    .end local v9           #activePhone:I
    .end local v13           #message:Landroid/telephony/SmsMessage;
    .end local v18           #result:Ljava/lang/String;
    .end local v19           #tpdulen:I
    :cond_3
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 382
    .local v3, MessageBody:Ljava/lang/StringBuffer;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    move-object v0, v14

    array-length v0, v0

    move/from16 v20, v0

    move v0, v11

    move/from16 v1, v20

    if-ge v0, v1, :cond_4

    .line 383
    aget-object v20, v14, v11

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    move-result-object v20

    move-object v0, v3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 382
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 385
    :cond_4
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v4

    .line 386
    .local v4, OriginatingAddress:Ljava/lang/String;
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    move-result-wide v7

    .line 387
    .local v7, TimeStamp:J
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMT: \""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide v1, v7

    #calls: Lcom/android/phone/BluetoothAtSms;->timeStampFormat(J)Ljava/lang/String;
    invoke-static {v0, v1, v2}, Lcom/android/phone/BluetoothAtSms;->access$600(Lcom/android/phone/BluetoothAtSms;J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\""

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 390
    .restart local v18       #result:Ljava/lang/String;
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 395
    .end local v3           #MessageBody:Ljava/lang/StringBuffer;
    .end local v4           #OriginatingAddress:Ljava/lang/String;
    .end local v7           #TimeStamp:J
    .end local v11           #i:I
    .end local v14           #messages:[Landroid/telephony/SmsMessage;
    .end local v18           #result:Ljava/lang/String;
    :cond_5
    const-string v20, "BtAtSms"

    const-string v21, "bundle=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 403
    .end local v10           #bundle:Landroid/os/Bundle;
    :cond_6
    const-string v20, "android.provider.Telephony.SMS_RECEIVED_STORED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 404
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_URI_RECV_ACTION, mode="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mode:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_1

    goto/16 :goto_0

    .line 407
    :pswitch_1
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "SMS_URI_RECV_ACTION, mt="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v22, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v22 .. v22}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v22

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mCnmiConfig:Lcom/android/phone/BluetoothAtSms$CNMI;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$200(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothAtSms$CNMI;

    move-result-object v20

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/phone/BluetoothAtSms$CNMI;->mt:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_0

    .line 409
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v10

    .line 410
    .restart local v10       #bundle:Landroid/os/Bundle;
    if-nez v10, :cond_7

    .line 411
    const-string v20, "BtAtSms"

    const-string v21, "bundle=null"

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 414
    :cond_7
    const-string v20, "uri"

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 415
    .local v6, ReceivedSMSUriStr:Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 416
    .local v5, ReceivedSMSUri:Landroid/net/Uri;
    invoke-virtual {v5}, Landroid/net/Uri;->getEncodedPath()Ljava/lang/String;

    move-result-object v16

    .line 417
    .local v16, path:Ljava/lang/String;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 418
    .local v12, index:I
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "+CMTI: \"ME\","

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "\r\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 419
    .restart local v18       #result:Ljava/lang/String;
    const-string v20, "BtAtSms"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "New meesage incoming: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/BluetoothAtSms$2;->this$0:Lcom/android/phone/BluetoothAtSms;

    move-object/from16 v20, v0

    #getter for: Lcom/android/phone/BluetoothAtSms;->mHandsfree:Lcom/android/phone/BluetoothHandsfree;
    invoke-static/range {v20 .. v20}, Lcom/android/phone/BluetoothAtSms;->access$100(Lcom/android/phone/BluetoothAtSms;)Lcom/android/phone/BluetoothHandsfree;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/phone/BluetoothHandsfree;->sendURC(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 405
    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method
