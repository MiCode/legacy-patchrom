.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;
.super Lcom/motorola/android/ims/service/smsonims/SmsOnImsServiceListener;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsSmsServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/IMSService;)V
    .locals 0
    .parameter
    .parameter "service"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {p0, p2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsServiceListener;-><init>(Lcom/motorola/android/ims/IMSService;)V

    return-void
.end method


# virtual methods
.method public processMessageReceived(Lcom/motorola/android/ims/service/smsonims/PageMessage;)V
    .locals 13
    .parameter "message"

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const-string v10, "ImsSMSDispatcher"

    const-string v8, "ImsSMSDispatcher"

    const-string v8, "processMessageReceived"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/16 v8, 0xd

    invoke-virtual {p1, v8}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->sendResponse(I)V

    const-string v8, "ImsSMSDispatcher"

    const-string v8, "ACK ims sms(ok)"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Landroid/telephony/SmsMessage;

    invoke-direct {v7}, Landroid/telephony/SmsMessage;-><init>()V

    .local v7, sms:Landroid/telephony/SmsMessage;
    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getMsgId()J

    move-result-wide v3

    .local v3, msgID:J
    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getBody()[B

    move-result-object v6

    .local v6, pSMSBody:[B
    const-string v8, "ImsSMSDispatcher"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MT SIP PDU: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v6}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getFormat()I

    move-result v2

    .local v2, format:I
    if-nez v2, :cond_2

    const-string v8, "ImsSMSDispatcher"

    const-string v8, "process 3gpp2 sms"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v8, v3

    invoke-static {v8, v6}, Lcom/android/internal/telephony/cdma/SmsMessage;->createMsgFromSipPdu(I[B)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v8

    iput-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #setter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mLastDispatchedPageMessage:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    invoke-static {v8, p1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$502(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/ims/service/smsonims/PageMessage;)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-virtual {v8, v11, p1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .local v5, newSms:Landroid/os/Message;
    const/4 v8, 0x0

    invoke-static {v5, v7, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .end local v2           #format:I
    .end local v3           #msgID:J
    .end local v5           #newSms:Landroid/os/Message;
    .end local v6           #pSMSBody:[B
    .end local v7           #sms:Landroid/telephony/SmsMessage;
    :cond_1
    :goto_1
    return-void

    .restart local v2       #format:I
    .restart local v3       #msgID:J
    .restart local v6       #pSMSBody:[B
    .restart local v7       #sms:Landroid/telephony/SmsMessage;
    :cond_2
    if-ne v2, v11, :cond_6

    const-string v8, "ImsSMSDispatcher"

    const-string v8, "process 3gpp sms"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v11, [I

    .local v0, dcs:[I
    invoke-static {v6, v12}, Lcom/android/internal/telephony/cdma/SmsMessage;->createEnvelopPdu([BZ)Ljava/lang/String;

    move-result-object v1

    .local v1, envString:Ljava/lang/String;
    if-eqz v1, :cond_4

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    if-eqz v8, :cond_3

    const-string v8, "ImsSMSDispatcher"

    const-string v8, "cdma send envelop cmd to ril "

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mCmdIf:Lcom/android/internal/telephony/CommandsInterface;
    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$400(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v8

    iget-object v9, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v10, 0x19

    invoke-virtual {v9, v10}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-interface {v8, v1, v9}, Lcom/android/internal/telephony/CommandsInterface;->sendEnvelope(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :cond_3
    const-string v8, "ImsSMSDispatcher"

    const-string v8, "Cdma dispatch SMS-PP error"

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    long-to-int v8, v3

    invoke-static {v8, v6, v0}, Lcom/android/internal/telephony/cdma/SmsMessage;->createMsgFrom3gppSipPdu(I[B[I)Lcom/android/internal/telephony/cdma/SmsMessage;

    move-result-object v8

    iput-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    iget-object v8, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z
    invoke-static {v8}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$100(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z

    move-result v8

    if-ne v8, v11, :cond_0

    iget-object v8, v7, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    if-eqz v8, :cond_0

    aget v8, v0, v12

    and-int/lit16 v8, v8, 0xd3

    const/16 v9, 0x12

    if-eq v8, v9, :cond_5

    aget v8, v0, v12

    and-int/lit16 v8, v8, 0xf3

    const/16 v9, 0xf2

    if-ne v8, v9, :cond_0

    :cond_5
    const-string v8, "ImsSMSDispatcher"

    const-string v8, "Current is limitede mode,terminate non-administrative SMS"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #dcs:[I
    .end local v1           #envString:Ljava/lang/String;
    :cond_6
    const-string v8, "ImsSMSDispatcher"

    const-string v8, "Unknow ims sms format, ignore"

    invoke-static {v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processServiceClosed(Lcom/motorola/android/ims/IMSService;)V
    .locals 2
    .parameter "service"

    .prologue
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "processServiceClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processServiceOpen(Lcom/motorola/android/ims/IMSService;Z)V
    .locals 5
    .parameter "service"
    .parameter "status"

    .prologue
    const-string v4, "ImsSMSDispatcher"

    const-string v2, "ImsSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processServiceOpen "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    const-string v2, "iphonenvinfo"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/telephony/IPhoneNVInfo;

    move-result-object v1

    .local v1, ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-interface {v1}, Lcom/motorola/android/telephony/IPhoneNVInfo;->getImsSmsFormat()Z

    move-result v3

    #setter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z
    invoke-static {v2, v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$302(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :goto_1
    const-string v2, "ImsSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMS SMS Format is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsServiceListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIs3gppFormat:Z
    invoke-static {v3}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$300(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "3gpp"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .restart local v1       #ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :cond_1
    :try_start_1
    const-string v2, "ImsSMSDispatcher"

    const-string v3, "Get null object of IPhoneNVInfo !!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .end local v1           #ipnv:Lcom/motorola/android/telephony/IPhoneNVInfo;
    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "ImsSMSDispatcher"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error get IMS sms format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_2
    const-string v3, "3gpp2"

    goto :goto_2
.end method
