.class public Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.super Lcom/android/internal/telephony/SMSDispatcher;
.source "CdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CDMA"


# instance fields
.field private mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mIsSwitchedToCdma:Z

.field private mLastAcknowledgedSmsFingerprint:[B

.field private mLastDispatchedSmsFingerprint:[B


# direct methods
.method protected constructor <init>(Lcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 1
    .parameter "phone"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-void
.end method

.method protected constructor <init>(ZZLcom/android/internal/telephony/cdma/CDMAPhone;)V
    .locals 2
    .parameter "isCdmaGsmWorldPhone"
    .parameter "isSwitchedToCdma"
    .parameter "phone"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/SMSDispatcher;-><init>(ZLcom/android/internal/telephony/PhoneBase;)V

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    if-nez p1, :cond_0

    const-string v0, "CDMA"

    const-string v1, "CdmaSMSDispatcher, this shouldn\'t be called."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mCdmaPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz p2, :cond_1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->switchToCdma()V

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    goto :goto_0
.end method

.method private handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V
    .locals 7
    .parameter "sms"

    .prologue
    const/4 v2, 0x0

    .local v2, i:I
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, count:I
    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .local v4, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget v5, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    iget v6, p1, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    if-ne v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->deliveryPendingList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v3, v4, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mDeliveryIntent:Landroid/app/PendingIntent;

    .local v3, intent:Landroid/app/PendingIntent;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, fillIn:Landroid/content/Intent;
    const-string v5, "pdu"

    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v5, "stack_type"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/SMSDispatcher;->mContext:Landroid/content/Context;

    const/4 v6, -0x1

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #fillIn:Landroid/content/Intent;
    .end local v3           #intent:Landroid/app/PendingIntent;
    .end local v4           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    :goto_1
    return-void

    .restart local v4       #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .restart local v1       #fillIn:Landroid/content/Intent;
    .restart local v3       #intent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private resultToCause(I)I
    .locals 1
    .parameter "rc"

    .prologue
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/16 v0, 0x60

    :goto_0
    return v0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/16 v0, 0x62

    goto :goto_0

    :pswitch_3
    const/16 v0, 0x23

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x4

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 4
    .parameter "success"
    .parameter "result"
    .parameter "response"

    .prologue
    const-string v2, "ril.cdma.inecmmode"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, inEcm:Ljava/lang/String;
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->resultToCause(I)I

    move-result v0

    .local v0, causeCode:I
    iget-object v2, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, p1, v0, p3}, Lcom/android/internal/telephony/CommandsInterface;->acknowledgeLastIncomingCdmaSms(ZILandroid/os/Message;)V

    if-nez v0, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    goto :goto_0
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastActivation(ZLandroid/os/Message;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected dispatchCmasPdus([[B)V
    .locals 3
    .parameter "pdus"

    .prologue
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.CMAS_RECEIVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "pdus"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.RECEIVE_CMAS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 19
    .parameter "smsb"

    .prologue
    if-nez p1, :cond_0

    const-string v16, "CDMA"

    const-string v17, "dispatchMessage: message is null"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x2

    .end local p1
    :goto_0
    return v16

    .restart local p1
    :cond_0
    const-string v16, "ril.cdma.inecmmode"

    const-string v17, "false"

    invoke-static/range {v16 .. v17}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .local v6, inEcm:Ljava/lang/String;
    const-string v16, "true"

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    const/16 v16, -0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    check-cast v0, Lcom/android/internal/telephony/cdma/SmsMessage;

    move-object v10, v0

    .local v10, sms:Lcom/android/internal/telephony/cdma/SmsMessage;
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v8

    .local v8, msgtype:I
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isCmasMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v7

    .local v7, msgPriority:I
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v16

    const/16 v17, 0x3

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [[B

    move-object v9, v0

    .local v9, pdus:[[B
    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v17

    aput-object v17, v9, v16

    const-string v16, "CDMA"

    const-string v17, "Received CMAS with destination Address dispatchPortAddressedCmasPdus"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchCmasPdus([[B)V

    const/16 v16, 0x1

    goto :goto_0

    .end local v7           #msgPriority:I
    .end local v9           #pdus:[[B
    :cond_2
    const/16 v16, 0x4

    goto :goto_0

    :cond_3
    const-string v16, "CDMA"

    const-string v17, "inside the dispatch, Condition is failed for cmas message"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getIncomingSmsFingerprint()[B

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastDispatchedSmsFingerprint:[B

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mLastAcknowledgedSmsFingerprint:[B

    move-object/from16 v17, v0

    invoke-static/range {v16 .. v17}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v16

    if-eqz v16, :cond_4

    const/16 v16, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->parseSms()V

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getTeleService()I

    move-result v13

    .local v13, teleService:I
    const/4 v5, 0x0

    .local v5, handled:Z
    const/16 v16, 0x1003

    move/from16 v0, v16

    move v1, v13

    if-eq v0, v1, :cond_5

    const/high16 v16, 0x4

    move/from16 v0, v16

    move v1, v13

    if-ne v0, v1, :cond_8

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIncomingVoiceMailBlocked()Z

    move-result v16

    if-eqz v16, :cond_6

    const/16 v16, 0x5

    goto/16 :goto_0

    :cond_6
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getNumOfVoicemails()I

    move-result v14

    .local v14, voicemailCount:I
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPriority()I

    move-result v15

    .local v15, voicemailPriority:I
    const-string v16, "CDMA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Voicemail count="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v16, "CDMA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Voicemail priority="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .local v12, sp:Landroid/content/SharedPreferences;
    invoke-interface {v12}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const-string v16, "vm_count_key_cdma"

    move-object v0, v4

    move-object/from16 v1, v16

    move v2, v14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v16, "vm_priority_key_cdma"

    move-object v0, v4

    move-object/from16 v1, v16

    move v2, v15

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Lcom/android/internal/telephony/cdma/CDMAPhone;

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CDMAPhone;->updateMessageWaitingIndicator(II)V

    const/4 v5, 0x1

    .end local v4           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v12           #sp:Landroid/content/SharedPreferences;
    .end local v14           #voicemailCount:I
    .end local v15           #voicemailPriority:I
    :cond_7
    :goto_1
    if-eqz v5, :cond_b

    const/16 v16, 0x1

    goto/16 :goto_0

    .restart local p1
    :cond_8
    const/16 v16, 0x1002

    move/from16 v0, v16

    move v1, v13

    if-eq v0, v1, :cond_9

    const/16 v16, 0x1005

    move/from16 v0, v16

    move v1, v13

    if-ne v0, v1, :cond_a

    :cond_9
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->isStatusReportMessage()Z

    move-result v16

    if-eqz v16, :cond_a

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->handleCdmaStatusReport(Lcom/android/internal/telephony/cdma/SmsMessage;)V

    const/4 v5, 0x1

    goto :goto_1

    :cond_a
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v16

    if-nez v16, :cond_7

    const-string v16, "CDMA"

    const-string v17, "Received SMS without user data"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_1

    .end local p1
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mStorageAvailable:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageClass()Landroid/telephony/SmsMessage$MessageClass;

    move-result-object v16

    sget-object v17, Landroid/telephony/SmsMessage$MessageClass;->CLASS_0:Landroid/telephony/SmsMessage$MessageClass;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_c

    const-string v16, "CDMA"

    const-string v17, "RESULT_SMS_OUT_OF_MEMORY"

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v16, 0x3

    goto/16 :goto_0

    :cond_c
    const/16 v16, 0x1004

    move/from16 v0, v16

    move v1, v13

    if-ne v0, v1, :cond_d

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v16

    move-object v0, v10

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase;->messageRef:I

    move/from16 v17, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processCdmaWapPdu([BILjava/lang/String;)I

    move-result v16

    goto/16 :goto_0

    :cond_d
    const/16 v16, 0x1002

    move/from16 v0, v16

    move v1, v13

    if-eq v0, v1, :cond_e

    const/16 v16, 0x1005

    move/from16 v0, v16

    move v1, v13

    if-eq v0, v1, :cond_e

    const/16 v16, 0x1

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_e

    const/16 v16, 0x4

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v11

    .local v11, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    if-eqz v11, :cond_f

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v16, v0

    if-nez v16, :cond_13

    :cond_f
    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [[B

    move-object v9, v0

    .restart local v9       #pdus:[[B
    const/16 v16, 0x0

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getPdu()[B

    move-result-object v17

    aput-object v17, v9, v16

    if-eqz v11, :cond_11

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    if-eqz v16, :cond_11

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v16, v0

    const/16 v17, 0xb84

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object/from16 v16, v0

    invoke-virtual {v10}, Lcom/android/internal/telephony/cdma/SmsMessage;->getUserData()[B

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v16

    goto/16 :goto_0

    :cond_10
    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v9

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    :goto_2
    const/16 v16, -0x1

    goto/16 :goto_0

    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isIncomingSmsBlocked()Z

    move-result v16

    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isCmasMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z

    move-result v16

    if-nez v16, :cond_12

    const/16 v16, 0x5

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    move-object v1, v9

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPdus([[B)V

    goto :goto_2

    .end local v9           #pdus:[[B
    :cond_13
    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    move-object/from16 v16, v0

    move-object v0, v11

    iget-object v0, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->processMessagePart(Lcom/android/internal/telephony/SmsMessageBase;Lcom/android/internal/telephony/SmsHeader$ConcatRef;Lcom/android/internal/telephony/SmsHeader$PortAddrs;)I

    move-result v16

    goto/16 :goto_0
.end method

.method public dispose()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/android/internal/telephony/SMSDispatcher;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForNVReady(Landroid/os/Handler;)V

    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCdmaBroadcastConfig(Landroid/os/Message;)V

    return-void
.end method

.method protected handleStatusReport(Landroid/os/AsyncResult;)V
    .locals 2
    .parameter "ar"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "handleStatusReport is a special GSM function, should never be called in CDMA!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected isCmasMessage(Lcom/android/internal/telephony/cdma/SmsMessage;)Z
    .locals 4
    .parameter "sms"

    .prologue
    const/4 v0, 0x0

    .local v0, isCmas:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getServiceCategory()I

    move-result v1

    .local v1, serviceCategory:I
    invoke-virtual {p1}, Lcom/android/internal/telephony/cdma/SmsMessage;->getMessageType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x1000

    if-lt v1, v2, :cond_0

    const/16 v2, 0x1005

    if-ge v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method protected processCdmaWapPdu([BILjava/lang/String;)I
    .locals 30
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "address"

    .prologue
    const/16 v18, 0x0

    .local v18, index:I
    const/16 v26, 0x0

    .local v26, sourcePort:I
    const/4 v14, 0x0

    .local v14, destinationPort:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    aget-byte v20, p1, v18

    .local v20, msgType:I
    if-eqz v20, :cond_1

    const-string v4, "CDMA"

    const-string v5, "Received a WAP SMS which is not WDP. Discard."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    :cond_0
    :goto_0
    return v4

    .end local v18           #index:I
    .restart local v19       #index:I
    :cond_1
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v27, p1, v19

    .local v27, totalSegments:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v24, p1, v18

    .local v24, segment:I
    if-nez v24, :cond_9

    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v26, v4, 0x8

    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int v26, v26, v4

    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    aget-byte v4, p1, v19

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v14, v4, 0x8

    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    aget-byte v4, p1, v18

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v14, v4

    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    :goto_1
    new-instance v29, Ljava/lang/StringBuilder;

    const-string v4, "reference_number ="

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .local v29, where:Ljava/lang/StringBuilder;
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " AND address = ?"

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    new-array v8, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p3, v8, v4

    .local v8, whereArgs:[Ljava/lang/String;
    const-string v4, "CDMA"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received WAP PDU. Type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", originator = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", src-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", dst-port = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", segment# = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v23, 0x0

    check-cast v23, [[B

    .local v23, pdus:[[B
    const/4 v10, 0x0

    .local v10, cursor:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->RAW_PROJECTION:[Ljava/lang/String;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v11

    .local v11, cursorCount:I
    const/4 v4, 0x1

    sub-int v4, v27, v4

    if-eq v11, v4, :cond_2

    new-instance v28, Landroid/content/ContentValues;

    invoke-direct/range {v28 .. v28}, Landroid/content/ContentValues;-><init>()V

    .local v28, values:Landroid/content/ContentValues;
    const-string v4, "date"

    new-instance v5, Ljava/lang/Long;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/lang/Long;-><init>(J)V

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "pdu"

    move-object/from16 v0, p1

    array-length v0, v0

    move v5, v0

    sub-int v5, v5, v18

    move-object/from16 v0, p1

    move/from16 v1, v18

    move v2, v5

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/HexDump;->toHexString([BII)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "address"

    move-object/from16 v0, v28

    move-object v1, v4

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "reference_number"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "count"

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "sequence"

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v4, "destination_port"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v28

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    if-eqz v10, :cond_0

    .end local v11           #cursorCount:I
    .end local v28           #values:Landroid/content/ContentValues;
    :goto_2
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .restart local v11       #cursorCount:I
    :cond_2
    :try_start_1
    const-string v4, "pdu"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v22

    .local v22, pduColumn:I
    const-string v4, "sequence"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v25

    .local v25, sequenceColumn:I
    move/from16 v0, v27

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    const/16 v17, 0x0

    .local v17, i:I
    :goto_3
    move/from16 v0, v17

    move v1, v11

    if-ge v0, v1, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-object v0, v10

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v12, v4

    .local v12, cursorSequence:I
    if-nez v12, :cond_3

    const-string v4, "destination_port"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .local v15, destinationPortColumn:I
    invoke-interface {v10, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    long-to-int v14, v4

    .end local v15           #destinationPortColumn:I
    :cond_3
    move-object v0, v10

    move/from16 v1, v22

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v4

    aput-object v4, v23, v12

    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .end local v12           #cursorSequence:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mRawUri:Landroid/net/Uri;

    move-object v5, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v10, :cond_5

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_5
    new-instance v21, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .local v21, output:Ljava/io/ByteArrayOutputStream;
    const/16 v17, 0x0

    :goto_4
    move/from16 v0, v17

    move/from16 v1, v27

    if-ge v0, v1, :cond_8

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p1

    array-length v0, v0

    move v4, v0

    sub-int v4, v4, v18

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move/from16 v2, v18

    move v3, v4

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_5
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .end local v11           #cursorCount:I
    .end local v17           #i:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v25           #sequenceColumn:I
    :catch_0
    move-exception v4

    move-object/from16 v16, v4

    .local v16, e:Landroid/database/SQLException;
    :try_start_2
    const-string v4, "CDMA"

    const-string v5, "Can\'t access multipart SMS database"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x2

    if-eqz v10, :cond_0

    goto/16 :goto_2

    .end local v16           #e:Landroid/database/SQLException;
    :catchall_0
    move-exception v4

    if-eqz v10, :cond_6

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v4

    .restart local v11       #cursorCount:I
    .restart local v17       #i:I
    .restart local v21       #output:Ljava/io/ByteArrayOutputStream;
    .restart local v22       #pduColumn:I
    .restart local v25       #sequenceColumn:I
    :cond_7
    aget-object v4, v23, v17

    const/4 v5, 0x0

    aget-object v6, v23, v17

    array-length v6, v6

    move-object/from16 v0, v21

    move-object v1, v4

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_5

    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v13

    .local v13, datagram:[B
    packed-switch v14, :pswitch_data_0

    const/4 v4, 0x1

    move v0, v4

    new-array v0, v0, [[B

    move-object/from16 v23, v0

    const/4 v4, 0x0

    aput-object v13, v23, v4

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispatchPortAddressedPdus([[BI)V

    const/4 v4, -0x1

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/SMSDispatcher;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    move-object v4, v0

    invoke-virtual {v4, v13}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([B)I

    move-result v4

    goto/16 :goto_0

    .end local v8           #whereArgs:[Ljava/lang/String;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #cursorCount:I
    .end local v13           #datagram:[B
    .end local v17           #i:I
    .end local v18           #index:I
    .end local v21           #output:Ljava/io/ByteArrayOutputStream;
    .end local v22           #pduColumn:I
    .end local v23           #pdus:[[B
    .end local v25           #sequenceColumn:I
    .end local v29           #where:Ljava/lang/StringBuilder;
    .restart local v19       #index:I
    :cond_9
    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0xb84
        :pswitch_0
    .end packed-switch
.end method

.method protected sendData(Ljava/lang/String;Ljava/lang/String;II[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 3
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "destPort"
    .parameter "origPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    int-to-short v1, p3

    if-eqz p7, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {p2, p1, v1, p5, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
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
    int-to-short v1, p3

    if-eqz p6, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-static {p2, p1, v1, p4, v2}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;S[BZ)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    .local v0, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, v0, p5, p6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    return-void

    .end local v0           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected sendMultipartSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 2
    .parameter "tracker"

    .prologue
    const-string v0, "CDMA"

    const-string v1, "TODO: CdmaSMSDispatcher.sendMultipartSms not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
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
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x0

    .local v6, cbNumber:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, priority:I
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V

    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;I)V
    .locals 18
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "cbNumber"
    .parameter "priority"
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
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v16

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move v11, v0

    .local v11, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, msgCount:I
    const/4 v8, 0x0

    .local v8, encoding:I
    const/4 v9, 0x0

    .end local p2
    .local v9, i:I
    :goto_0
    if-ge v9, v10, :cond_2

    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    const/16 v16, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v7

    .local v7, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    move-object v0, v7

    iget v0, v0, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    move/from16 v16, v0

    move v0, v8

    move/from16 v1, v16

    if-eq v0, v1, :cond_1

    if-eqz v8, :cond_0

    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_1

    :cond_0
    iget v8, v7, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .end local v7           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    :cond_2
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v10, :cond_5

    new-instance v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .local v5, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iput v11, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    add-int/lit8 v16, v9, 0x1

    move/from16 v0, v16

    move-object v1, v5

    iput v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iput v10, v5, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v5

    iput-boolean v0, v1, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    new-instance v13, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v13}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .local v13, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v5, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    const/4 v12, 0x0

    .local v12, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_3

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move v1, v9

    if-le v0, v1, :cond_3

    move-object/from16 v0, p4

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    .end local v12           #sentIntent:Landroid/app/PendingIntent;
    check-cast v12, Landroid/app/PendingIntent;

    .restart local v12       #sentIntent:Landroid/app/PendingIntent;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isOutgoingSmsBlocked()Z

    move-result v16

    if-eqz v16, :cond_6

    if-eqz v12, :cond_4

    const/16 v16, 0x8

    :try_start_0
    move-object v0, v12

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    const-string v16, "CDMA"

    const-string v17, "Block SMS when the sms restriction is enabled."

    invoke-static/range {v16 .. v17}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .end local v5           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v12           #sentIntent:Landroid/app/PendingIntent;
    .end local v13           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_5
    return-void

    .restart local v5       #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .restart local v12       #sentIntent:Landroid/app/PendingIntent;
    .restart local v13       #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    :cond_6
    const/4 v6, 0x0

    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_7

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v16

    move/from16 v0, v16

    move v1, v9

    if-le v0, v1, :cond_7

    move-object/from16 v0, p5

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_7
    new-instance v15, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v15, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    move-object/from16 v0, p3

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    move-object/from16 v0, p2

    move-object v1, v15

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    iput-object v13, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    const/16 v16, 0x1

    move v0, v8

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    const/16 v16, 0x9

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_3
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object v1, v15

    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    if-eqz v6, :cond_9

    const/16 v16, 0x1

    sub-int v16, v10, v16

    move v0, v9

    move/from16 v1, v16

    if-ne v0, v1, :cond_9

    const/16 v16, 0x1

    :goto_4
    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .local v14, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v12

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .end local v14           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :cond_8
    const/16 v16, 0x4

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_3

    :cond_9
    const/16 v16, 0x0

    goto :goto_4

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v15           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :catch_0
    move-exception v16

    goto :goto_2
.end method

.method protected sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 6
    .parameter "tracker"

    .prologue
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .local v1, map:Ljava/util/HashMap;
    const-string v4, "pdu"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .local v2, pdu:[B
    const/4 v4, 0x2

    invoke-virtual {p0, v4, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .local v3, reply:Landroid/os/Message;
    const-string v4, "CDMA"

    const-string v5, "sms send via 1x"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    return-void
.end method

.method protected sendSmsMore(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 0
    .parameter "tracker"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSms(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    return-void
.end method

.method protected sendStkSms([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "smsc"
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    return-void
.end method

.method protected sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 2
    .parameter "pdu"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const-string v0, "ril.cdma.inecmmode"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v0, "CDMA"

    const-string v1, "Block SMS in Emergency Callback mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    iget-object v0, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedScAddress:[B

    iget-object v1, p1, Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;->encodedMessage:[B

    invoke-virtual {p0, v0, v1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendRawPdu([B[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 8
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V

    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;I)V
    .locals 16
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "cbNumber"
    .parameter "priority"

    .prologue
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->isOutgoingSmsBlocked()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz p4, :cond_0

    const/16 v5, 0x8

    :try_start_0
    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const-string v5, "CDMA"

    const-string v6, "Block SMS when the sms restriction is enabled."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    const/4 v14, 0x0

    .local v14, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    const-string v5, "ro.cdma.sms.latin_encode"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v13, 0x0

    .local v13, encoding:I
    const/4 v5, 0x0

    move-object/from16 v0, p3

    move v1, v5

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;

    move-result-object v12

    .local v12, details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    iget v13, v12, Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;->codeUnitSize:I

    new-instance v15, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v15}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .local v15, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    const/4 v5, 0x1

    if-ne v13, v5, :cond_2

    const/4 v5, 0x2

    iput v5, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    :goto_2
    const/4 v5, 0x1

    iput-boolean v5, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    move-object/from16 v0, p3

    move-object v1, v15

    iput-object v0, v1, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    const/4 v5, 0x0

    iput-object v5, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    if-eqz p5, :cond_4

    const/4 v5, 0x1

    :goto_3
    move-object/from16 v0, p1

    move-object v1, v15

    move v2, v5

    move-object/from16 v3, p6

    move/from16 v4, p7

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLjava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    .end local v12           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v13           #encoding:I
    .end local v15           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :goto_4
    if-eqz v14, :cond_7

    move-object/from16 v0, p0

    move-object v1, v14

    move-object/from16 v2, p4

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_1

    .restart local v12       #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .restart local v13       #encoding:I
    .restart local v15       #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_2
    const/4 v5, 0x2

    if-ne v13, v5, :cond_3

    const/16 v5, 0x8

    iput v5, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    :cond_3
    const/4 v5, 0x4

    iput v5, v15, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    .end local v12           #details:Lcom/android/internal/telephony/SmsMessageBase$TextEncodingDetails;
    .end local v13           #encoding:I
    .end local v15           #uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    :cond_5
    if-eqz p5, :cond_6

    const/4 v5, 0x1

    move v8, v5

    :goto_5
    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move/from16 v11, p7

    invoke-static/range {v5 .. v11}, Lcom/android/internal/telephony/cdma/SmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Ljava/lang/String;I)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v14

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    move v8, v5

    goto :goto_5

    :cond_7
    if-eqz p4, :cond_8

    const/4 v5, 0x3

    :try_start_1
    move-object/from16 v0, p4

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_8
    :goto_6
    const-string v5, "CDMA"

    const-string v6, "Error: null Pdu."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v14           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v5

    goto/16 :goto_0

    .restart local v14       #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_1
    move-exception v5

    goto :goto_6
.end method

.method public setCellBroadcastConfig([ILandroid/os/Message;)V
    .locals 1
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    iget-object v0, p0, Lcom/android/internal/telephony/SMSDispatcher;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCdmaBroadcastConfig([ILandroid/os/Message;)V

    return-void
.end method

.method public switchToCdma()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->initializeSmsDispatcher()V

    goto :goto_0
.end method

.method public switchToGsm()V
    .locals 1

    .prologue
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->mIsSwitchedToCdma:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->dispose()V

    goto :goto_0
.end method
