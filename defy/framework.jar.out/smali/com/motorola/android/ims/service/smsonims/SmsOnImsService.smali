.class public Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;
.super Lcom/motorola/android/ims/IMSService;
.source "SmsOnImsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;,
        Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmsOnImsService"


# instance fields
.field private mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

.field private mSMS:Lcom/motorola/android/ims/IIMSCSms;

.field messages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/motorola/android/ims/service/smsonims/PageMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "serviceName"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/ims/IMSService;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;-><init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;)V

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    iput-object p0, p0, Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    const-string v0, "smsonims"

    iput-object v0, p0, Lcom/motorola/android/ims/IMSService;->serviceType:Ljava/lang/String;

    const-string v0, "SmsOnImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate serviceName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)Lcom/motorola/android/ims/IMSService;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)Lcom/motorola/android/ims/IMSServiceListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)J
    .locals 2
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)J
    .locals 2
    .parameter "x0"

    .prologue
    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected addCallBack()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    invoke-interface {v1, v2}, Lcom/motorola/android/ims/IIMSCSms;->registerCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SmsOnImsService"

    const-string v2, "Failed to set the callback for SMS server"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public close()V
    .locals 1

    .prologue
    invoke-super {p0}, Lcom/motorola/android/ims/IMSService;->close()V

    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createSMSMessage(Ljava/lang/String;[B)Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .locals 4
    .parameter "toAddr"
    .parameter "body"

    .prologue
    const/4 v1, 0x0

    .local v1, format:I
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-interface {v2}, Lcom/motorola/android/ims/IIMSCSms;->getSmsProtocolType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2, v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->createSMSMessage(Ljava/lang/String;[BI)Lcom/motorola/android/ims/service/smsonims/PageMessage;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v2

    move-object v0, v2

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "SmsOnImsService"

    const-string v3, "Failed to get Sms protocol type - format"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public createSMSMessage(Ljava/lang/String;[BI)Lcom/motorola/android/ims/service/smsonims/PageMessage;
    .locals 7
    .parameter "toAddr"
    .parameter "body"
    .parameter "format"

    .prologue
    new-instance v0, Lcom/motorola/android/ims/service/smsonims/PageMessage;

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/ims/service/smsonims/PageMessage;-><init>(Lcom/motorola/android/ims/IMSService;Ljava/lang/String;I[BJ)V

    .local v0, msg:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    return-object v0
.end method

.method public getFeatureTags()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .local v1, format:I
    iget-object v3, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-interface {v3}, Lcom/motorola/android/ims/IIMSCSms;->getSmsProtocolType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    const-string v2, ""

    .local v2, tags:Ljava/lang/String;
    if-nez v1, :cond_2

    const-string v2, "+g.3gpp2.smsip"

    :cond_1
    :goto_1
    return-object v2

    .end local v2           #tags:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v0, v3

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "SmsOnImsService"

    const-string v4, "Failed to get Sms protocol type - format"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v2       #tags:Ljava/lang/String;
    :cond_2
    const/4 v3, 0x1

    if-ne v3, v1, :cond_3

    const-string v2, "+g.3gpp.smsip"

    goto :goto_1

    :cond_3
    const/4 v3, 0x2

    if-ne v3, v1, :cond_1

    const-string v2, ""

    goto :goto_1
.end method

.method public open()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/motorola/android/ims/IMSException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Lcom/motorola/android/ims/IMSService;->open()V

    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getSMSServer()Lcom/motorola/android/ims/IIMSCSms;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get SMS Server."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method protected removeCallBack()V
    .locals 3

    .prologue
    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mCallBack:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;

    invoke-interface {v1, v2}, Lcom/motorola/android/ims/IIMSCSms;->unRegisterCallback(Lcom/motorola/android/ims/IIMSCSmsCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "SmsOnImsService"

    const-string v2, "Failed to remove the callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method send(Lcom/motorola/android/ims/service/smsonims/PageMessage;)V
    .locals 9
    .parameter "msg"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getToAddr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getFormat()I

    move-result v4

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getBody()[B

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/motorola/android/ims/IIMSCSms;->sendMessage(JLjava/lang/String;I[B)J

    move-result-wide v7

    .local v7, msgId:J
    invoke-virtual {p1, v7, v8}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setMsgId(J)V

    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v7           #msgId:J
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    .local v6, e:Landroid/os/RemoteException;
    const-string v0, "SmsOnImsService"

    const-string v1, "Failed to send the sms to the remote"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method sendResponse(Lcom/motorola/android/ims/service/smsonims/PageMessage;I)V
    .locals 8
    .parameter "msg"
    .parameter "status"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->mSMS:Lcom/motorola/android/ims/IIMSCSms;

    invoke-virtual {p0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getMsgId()J

    move-result-wide v3

    const/4 v6, 0x0

    move v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/motorola/android/ims/IIMSCSms;->sendResponse(JJI[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    .local v7, e:Landroid/os/RemoteException;
    const-string v0, "SmsOnImsService"

    const-string v1, "Failed to send the response"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
