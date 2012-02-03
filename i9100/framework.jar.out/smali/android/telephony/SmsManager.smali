.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# static fields
.field private static final CopyToSim_Fail:I = 0x1

.field private static final CopyToSim_NotAvailable:I = 0x2

.field private static final CopyToSim_Success:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "SmsManager"

.field public static final RESULT_ERROR_DSAC_FAILURE:I = 0x7

.field public static final RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final STATUS_ON_ICC_FREE:I = 0x0

.field public static final STATUS_ON_ICC_READ:I = 0x1

.field public static final STATUS_ON_ICC_SENT:I = 0x5

.field public static final STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final STATUS_ON_ICC_UNSENT:I = 0x7

.field public static final VALUE_INPUT_MODE_AUTO:I = 0x2

.field public static final VALUE_INPUT_MODE_GSM7BIT:I = 0x0

.field public static final VALUE_INPUT_MODE_UCS2:I = 0x1

.field private static mEnableMakeReadSimMsg:Z

.field static mMsgEncodingType:I

.field private static sInstance:Landroid/telephony/SmsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Landroid/telephony/SmsManager;->mEnableMakeReadSimMsg:Z

    .line 905
    const/4 v0, 0x0

    sput v0, Landroid/telephony/SmsManager;->mMsgEncodingType:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 543
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 545
    return-void
.end method

.method private createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 818
    .local p1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 819
    .local v3, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_1

    .line 820
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 821
    .local v0, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 822
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SmsRawData;

    .line 824
    .local v1, data:Lcom/android/internal/telephony/SmsRawData;
    if-eqz v1, :cond_0

    .line 825
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v1}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[B)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 826
    .local v4, sms:Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    .line 827
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 821
    .end local v4           #sms:Landroid/telephony/SmsMessage;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 832
    .end local v0           #count:I
    .end local v1           #data:Lcom/android/internal/telephony/SmsRawData;
    .end local v2           #i:I
    :cond_1
    return-object v3
.end method

.method public static getDefault()Landroid/telephony/SmsManager;
    .locals 1

    .prologue
    .line 537
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    if-nez v0, :cond_0

    .line 538
    new-instance v0, Landroid/telephony/SmsManager;

    invoke-direct {v0}, Landroid/telephony/SmsManager;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    .line 540
    :cond_0
    sget-object v0, Landroid/telephony/SmsManager;->sInstance:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method private setByte(SLjava/io/ByteArrayOutputStream;)V
    .locals 2
    .parameter "a"
    .parameter "out"

    .prologue
    .line 474
    const/4 v0, 0x0

    .line 475
    .local v0, c:I
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 476
    shr-int/lit8 v0, p1, 0x8

    .line 477
    and-int/lit16 v1, v0, 0xff

    int-to-byte v1, v1

    invoke-virtual {p2, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 478
    return-void
.end method


# virtual methods
.method public MakeSimPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 8
    .parameter "body"
    .parameter "scAddress"
    .parameter "Address"
    .parameter "SmsType"
    .parameter "date"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v6, 0x1

    const-string v7, "SmsManager"

    .line 590
    const/4 v2, 0x0

    .line 592
    .local v2, result:Z
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSMSAvailable()Z

    move-result v3

    if-nez v3, :cond_0

    .line 594
    const-string v3, "SmsManager"

    const-string v3, "getSimDeliverPdu : CopyToSim_NotAvailable"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 632
    :goto_0
    return v3

    .line 598
    :cond_0
    if-ne p4, v6, :cond_2

    .line 602
    const/4 v3, 0x0

    :try_start_0
    invoke-static {p2, p3, p1, p5, v3}, Landroid/telephony/SmsMessage;->getSimDeliverPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$DeliverPdu;

    move-result-object v1

    .line 603
    .local v1, pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    if-nez v1, :cond_1

    move v3, v6

    .line 604
    goto :goto_0

    .line 606
    :cond_1
    iget-object v3, v1, Landroid/telephony/SmsMessage$DeliverPdu;->encodedScAddress:[B

    iget-object v4, v1, Landroid/telephony/SmsMessage$DeliverPdu;->encodedMessage:[B

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 626
    .end local v1           #pdus:Landroid/telephony/SmsMessage$DeliverPdu;
    :goto_1
    if-eqz v2, :cond_5

    .line 628
    const/4 v3, 0x0

    goto :goto_0

    .line 608
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 610
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "SmsManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSimDeliverPdu Encoding ERR: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v6

    .line 611
    goto :goto_0

    .line 616
    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    invoke-static {p2, p3, p1, v5}, Landroid/telephony/SmsMessage;->getSimSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Landroid/telephony/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 617
    .local v1, pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    if-nez v1, :cond_3

    move v3, v6

    .line 618
    goto :goto_0

    .line 620
    :cond_3
    if-ne p4, v4, :cond_4

    .line 621
    iget-object v3, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v4, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v5, 0x5

    invoke-virtual {p0, v3, v4, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    goto :goto_1

    .line 623
    :cond_4
    iget-object v3, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedScAddress:[B

    iget-object v4, v1, Landroid/telephony/SmsMessage$SubmitPdu;->encodedMessage:[B

    const/4 v5, 0x7

    invoke-virtual {p0, v3, v4, v5}, Landroid/telephony/SmsManager;->copyMessageToIcc([B[BI)Z

    move-result v2

    goto :goto_1

    .end local v1           #pdus:Landroid/telephony/SmsMessage$SubmitPdu;
    :cond_5
    move v3, v6

    .line 632
    goto :goto_0
.end method

.method public copyMessageToIcc([B[BI)Z
    .locals 3
    .parameter "smsc"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 561
    const/4 v1, 0x0

    .line 564
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 565
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 566
    invoke-interface {v0, p3, p2, p1}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEf(I[B[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 572
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 568
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public deleteMessageFromIcc(I)Z
    .locals 4
    .parameter "messageIndex"

    .prologue
    .line 686
    const/4 v2, 0x0

    .line 687
    .local v2, success:Z
    const/16 v3, 0xaf

    new-array v1, v3, [B

    .line 688
    .local v1, pdu:[B
    const/4 v3, -0x1

    invoke-static {v1, v3}, Ljava/util/Arrays;->fill([BB)V

    .line 691
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 692
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 693
    const/4 v3, 0x0

    invoke-interface {v0, p1, v3, v1}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 699
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 695
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    invoke-static {p1}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public divideMessage(Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1
    .parameter "text"
    .parameter "encodingType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    invoke-static {p1, p2}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public enableMakeReadSimMsgChn(Z)V
    .locals 0
    .parameter "status"

    .prologue
    .line 733
    sput-boolean p1, Landroid/telephony/SmsManager;->mEnableMakeReadSimMsg:Z

    .line 734
    return-void
.end method

.method public getAllMessagesFromIcc()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .prologue
    .line 747
    const/4 v1, 0x0

    .line 750
    .local v1, records:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 751
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 753
    sget-boolean v2, Landroid/telephony/SmsManager;->mEnableMakeReadSimMsg:Z

    invoke-interface {v0, v2}, Lcom/android/internal/telephony/ISms;->enableHandleSmsesForChn(Z)V

    .line 755
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEf()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 761
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v2

    return-object v2

    .line 757
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getCbSettings()Landroid/telephony/gsm/CbConfig;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v9, "SmsManager"

    .line 337
    const-string v7, "SmsManager"

    const-string v7, "[CB] In getCbConfig of SmsManager.java  "

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v6, 0x0

    .line 341
    .local v6, out:[B
    new-instance v0, Landroid/telephony/gsm/CbConfig;

    invoke-direct {v0}, Landroid/telephony/gsm/CbConfig;-><init>()V

    .line 344
    .local v0, cbConfig:Landroid/telephony/gsm/CbConfig;
    :try_start_0
    const-string v7, "isms"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 346
    .local v3, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_0

    .line 347
    invoke-interface {v3}, Lcom/android/internal/telephony/ISms;->getCbSettings()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 363
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :goto_0
    if-nez v6, :cond_1

    .line 364
    const-string v7, "SmsManager"

    const-string v7, "[CB] out is null. Return null."

    invoke-static {v9, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v12

    .line 398
    :goto_1
    return-object v7

    .line 351
    .restart local v3       #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :try_start_1
    const-string v7, "SmsManager"

    const-string v8, "[CB] iccISms == null."

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v12

    .line 352
    goto :goto_1

    .line 354
    .end local v3           #iccISms:Lcom/android/internal/telephony/ISms;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 356
    .local v1, ex:Landroid/os/RemoteException;
    const-string v7, "SmsManager"

    const-string v7, "[CB ] Exception In getCbConfig of SmsManager.java  "

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 358
    .end local v1           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    move-object v1, v7

    .line 360
    .local v1, ex:Ljava/lang/NullPointerException;
    const-string v7, "SmsManager"

    const-string v7, "[CB ] NULL Exception In getCbConfig of SmsManager.java  "

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 368
    .end local v1           #ex:Ljava/lang/NullPointerException;
    :cond_1
    aget-byte v7, v6, v11

    if-ne v7, v10, :cond_2

    .line 369
    iput-boolean v10, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    .line 373
    :goto_2
    aget-byte v7, v6, v10

    int-to-char v7, v7

    iput-char v7, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    .line 374
    const/4 v7, 0x2

    aget-byte v7, v6, v7

    int-to-char v7, v7

    iput-char v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    .line 375
    const/4 v7, 0x3

    aget-byte v7, v6, v7

    iput v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    .line 377
    iget v7, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    new-array v5, v7, [S

    .line 379
    .local v5, msgIDs:[S
    const/4 v2, 0x4

    .local v2, i:I
    const/4 v4, 0x0

    .local v4, j:I
    :goto_3
    array-length v7, v5

    if-ge v4, v7, :cond_3

    .line 382
    aget-byte v7, v6, v2

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v8, v2, 0x1

    aget-byte v8, v6, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v8, v8, 0x8

    or-int/2addr v7, v8

    int-to-short v7, v7

    aput-short v7, v5, v4

    .line 379
    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 371
    .end local v2           #i:I
    .end local v4           #j:I
    .end local v5           #msgIDs:[S
    :cond_2
    iput-boolean v11, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    goto :goto_2

    .line 385
    .restart local v2       #i:I
    .restart local v4       #j:I
    .restart local v5       #msgIDs:[S
    :cond_3
    iput-object v5, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    .line 387
    const-string v7, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[SmsManger- CB] bCBEnabled = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, v0, Landroid/telephony/gsm/CbConfig;->bCBEnabled:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " selectedId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-char v8, v0, Landroid/telephony/gsm/CbConfig;->selectedId:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msgIdMaxCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-char v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdMaxCount:C

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " msgIdCount = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v0, Landroid/telephony/gsm/CbConfig;->msgIdCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    const/4 v2, 0x0

    :goto_4
    iget-object v7, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    array-length v7, v7

    if-ge v2, v7, :cond_4

    .line 394
    const-string v7, "SmsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[CB] msgIDs =  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Landroid/telephony/gsm/CbConfig;->msgIDs:[S

    aget-short v8, v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_4
    move-object v7, v0

    .line 398
    goto/16 :goto_1
.end method

.method public getMessagesFromIcc(I)[B
    .locals 3
    .parameter "index"

    .prologue
    .line 846
    const/4 v1, 0x0

    .line 849
    .local v1, record:[B
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 850
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 851
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getMessagesFromIccEf(I)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 857
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return-object v1

    .line 853
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public getSMSAvailable()Z
    .locals 5

    .prologue
    const-string v4, "SmsManager"

    .line 638
    const-string v3, "SmsManager"

    const-string v3, "getSMSAvailable in SmsManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v2, 0x0

    .line 641
    .local v2, ret:Z
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 643
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 644
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 650
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 646
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 648
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v3, "[CB ] Exception In getSMSAvailable() of SmsManager.java  "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getSMSPAvailable()Z
    .locals 5

    .prologue
    const-string v4, "SmsManager"

    .line 658
    const-string v3, "SmsManager"

    const-string v3, "getSMSPAvailable in SmsManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const/4 v2, 0x0

    .line 662
    .local v2, ret:Z
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 664
    .local v1, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_0

    .line 665
    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getSMSPAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 671
    .end local v1           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v2

    .line 667
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 669
    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "SmsManager"

    const-string v3, "[CB ] Exception In getSMSPAvailable() of SmsManager.java  "

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 7
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "destinationPort"
    .parameter "data"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 516
    :cond_0
    if-eqz p4, :cond_1

    array-length v1, p4

    if-nez v1, :cond_2

    .line 517
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message data"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 521
    :cond_2
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 522
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    .line 523
    const v1, 0xffff

    and-int v3, p3, v1

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ISms;->sendData(Ljava/lang/String;Ljava/lang/String;I[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 529
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 526
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
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
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v3, :cond_2

    .line 245
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_2
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v3, :cond_4

    .line 250
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 251
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_3

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 252
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 259
    :cond_4
    const/4 v5, 0x0

    .line 260
    .local v5, sentIntent:Landroid/app/PendingIntent;
    const/4 v6, 0x0

    .line 261
    .local v6, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 262
    invoke-virtual {p4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    check-cast v5, Landroid/app/PendingIntent;

    .line 264
    .restart local v5       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 265
    invoke-virtual {p5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v6, Landroid/app/PendingIntent;

    .line 267
    .restart local v6       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 255
    .end local v5           #sentIntent:Landroid/app/PendingIntent;
    .end local v6           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIII)V
    .locals 13
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
    .line 285
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid destinationAddress"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 288
    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v3, v4, :cond_2

    .line 289
    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Invalid message body"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 292
    :cond_2
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    .line 294
    :try_start_0
    const-string v3, "isms"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v2

    .line 295
    .local v2, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_3

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 297
    invoke-interface/range {v2 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    .end local v2           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_3
    :goto_0
    return-void

    .line 305
    :cond_4
    const/4 v7, 0x0

    .line 306
    .local v7, sentIntent:Landroid/app/PendingIntent;
    const/4 v8, 0x0

    .line 307
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_5

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 308
    const/4 v3, 0x0

    move-object/from16 v0, p4

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 310
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_5
    if-eqz p5, :cond_6

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 311
    const/4 v3, 0x0

    move-object/from16 v0, p5

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 314
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_6
    const/4 v3, 0x0

    move-object/from16 v0, p3

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    invoke-virtual/range {v3 .. v12}, Landroid/telephony/SmsManager;->sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V

    goto :goto_0

    .line 301
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 99
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 100
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 103
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 111
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 112
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 113
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    .locals 10
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "replyPath"
    .parameter "expiry"
    .parameter "serviceType"
    .parameter "encodingType"

    .prologue
    .line 162
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 166
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 171
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 172
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 173
    invoke-interface/range {v0 .. v9}, Lcom/android/internal/telephony/ISms;->sendTextwithOptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public sendTextMessageForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .locals 6
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"

    .prologue
    .line 128
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid destinationAddress"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid message body"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    :cond_1
    :try_start_0
    const-string v1, "isms"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 138
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 139
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->sendTextForMobileTracker(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_2
    :goto_0
    return-void

    .line 141
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public setCbSettings(ZCI[S[Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;)V
    .locals 10
    .parameter "bcbEnable"
    .parameter "selectId"
    .parameter "idCount"
    .parameter "msgId"
    .parameter "languageId"

    .prologue
    const/4 v4, 0x0

    const-string v9, "SmsManager"

    .line 420
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 422
    .local v8, out:Ljava/io/ByteArrayOutputStream;
    const-string v2, "SmsManager"

    const-string v2, "[SMSManager] In setCbConfig of SmsManager.java  "

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    const-string v2, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSManager] cbEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " selectId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " idCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    if-nez p4, :cond_0

    .line 430
    const/16 v2, 0xff

    aput-short v2, p4, v4

    .line 433
    :cond_0
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    array-length v2, p4

    if-ge v7, v2, :cond_1

    .line 434
    const-string v2, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSManager] msgId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-short v3, p4, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 437
    :cond_1
    if-nez p5, :cond_2

    .line 438
    sget-object v2, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->MSGSMS_CB_LANGUAGE_DUMMY:Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;

    aput-object v2, p5, v4

    .line 441
    :cond_2
    const/4 v2, 0x1

    if-ne p1, v2, :cond_3

    .line 442
    const/4 v1, 0x1

    .line 446
    .local v1, cbEnable:B
    :goto_1
    const/4 v7, 0x0

    :goto_2
    array-length v2, p4

    if-ge v7, v2, :cond_4

    .line 447
    aget-short v2, p4, v7

    invoke-direct {p0, v2, v8}, Landroid/telephony/SmsManager;->setByte(SLjava/io/ByteArrayOutputStream;)V

    .line 446
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 444
    .end local v1           #cbEnable:B
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #cbEnable:B
    goto :goto_1

    .line 450
    :cond_4
    array-length v2, p5

    new-array v5, v2, [I

    .line 452
    .local v5, langInt:[I
    const/4 v7, 0x0

    :goto_3
    array-length v2, p5

    if-ge v7, v2, :cond_5

    .line 454
    aget-object v2, p5, v7

    invoke-virtual {v2}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v2

    aput v2, v5, v7

    .line 456
    const-string v2, "SmsManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[SMSManager] langInt"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v5, v7

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Language = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p5, v7

    invoke-virtual {v3}, Landroid/telephony/gsm/CbSettings$CB_SETTINGS_LANG_TYPE;->getLanguage()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v9, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 462
    :cond_5
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 463
    .local v0, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_6

    .line 464
    int-to-byte v2, p2

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move v3, p3

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ISms;->setCbConfig(BBI[B[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 470
    .end local v0           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_6
    :goto_4
    return-void

    .line 466
    :catch_0
    move-exception v2

    move-object v6, v2

    .line 468
    .local v6, ex:Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v2, "[SMSManager ] Exception In setCbConfig of SmsManager.java  "

    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public updateMessageOnIcc(II[B)Z
    .locals 3
    .parameter "messageIndex"
    .parameter "newStatus"
    .parameter "pdu"

    .prologue
    .line 717
    const/4 v1, 0x0

    .line 720
    .local v1, success:Z
    :try_start_0
    const-string v2, "isms"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 721
    .local v0, iccISms:Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_0

    .line 722
    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEf(II[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 728
    .end local v0           #iccISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_0
    return v1

    .line 724
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public updateSmsServiceCenterOnSim(Ljava/lang/String;)Z
    .locals 9
    .parameter "scAddress"

    .prologue
    .line 778
    const/4 v5, 0x0

    .line 783
    .local v5, success:Z
    if-nez p1, :cond_1

    .line 784
    const/4 v0, 0x0

    .line 797
    .local v0, encodedScAddress:[B
    :goto_0
    :try_start_0
    const-string v7, "isms"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object v4

    .line 799
    .local v4, simISms:Lcom/android/internal/telephony/ISms;
    if-eqz v4, :cond_0

    .line 800
    invoke-interface {v4, v0}, Lcom/android/internal/telephony/ISms;->updateSmsServiceCenterOnSimEf([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    .end local v4           #simISms:Lcom/android/internal/telephony/ISms;
    :cond_0
    :goto_1
    move v6, v5

    .line 806
    .end local v0           #encodedScAddress:[B
    .end local v5           #success:Z
    .local v6, success:I
    :goto_2
    return v6

    .line 786
    .end local v6           #success:I
    .restart local v5       #success:Z
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 787
    .local v3, numberLenReal:I
    move v2, v3

    .line 788
    .local v2, numberLenEffective:I
    const/16 v7, 0x2b

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_3

    const/4 v7, 0x1

    move v1, v7

    .line 789
    .local v1, hasPlus:Z
    :goto_3
    if-eqz v1, :cond_2

    add-int/lit8 v2, v2, -0x1

    .line 790
    :cond_2
    const/16 v7, 0x14

    if-le v2, v7, :cond_4

    move v6, v5

    .line 791
    .restart local v6       #success:I
    goto :goto_2

    .line 788
    .end local v1           #hasPlus:Z
    .end local v6           #success:I
    :cond_3
    const/4 v7, 0x0

    move v1, v7

    goto :goto_3

    .line 793
    .restart local v1       #hasPlus:Z
    :cond_4
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->networkPortionToCalledPartyBCDWithLength(Ljava/lang/String;)[B

    move-result-object v0

    .restart local v0       #encodedScAddress:[B
    goto :goto_0

    .line 802
    .end local v1           #hasPlus:Z
    .end local v2           #numberLenEffective:I
    .end local v3           #numberLenReal:I
    :catch_0
    move-exception v7

    goto :goto_1
.end method
