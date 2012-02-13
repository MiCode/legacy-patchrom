.class Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;
.super Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;
.source "SmsOnImsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SMSCallBack"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;


# direct methods
.method private constructor <init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    invoke-direct {p0}, Lcom/motorola/android/ims/IIMSCSmsCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;-><init>(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)V

    return-void
.end method


# virtual methods
.method public getRegistrationId()J
    .locals 4

    .prologue
    const-string v0, "SmsOnImsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRegistrationId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    #calls: Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J
    invoke-static {v2}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->access$200(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    #calls: Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->getRegId()J
    invoke-static {v0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->access$300(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public onMessageReceived(JJLjava/lang/String;I[B)V
    .locals 7
    .parameter "regId"
    .parameter "msgId"
    .parameter "fromAddress"
    .parameter "format"
    .parameter "body"

    .prologue
    const-string v1, "SmsOnImsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMessageReceived regId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fromAddress:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " format:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " body:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/motorola/android/ims/service/smsonims/PageMessage;

    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    #getter for: Lcom/motorola/android/ims/IMSService;->mService:Lcom/motorola/android/ims/IMSService;
    invoke-static {v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->access$000(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)Lcom/motorola/android/ims/IMSService;

    move-result-object v1

    const/4 v2, 0x0

    move v3, p6

    move-object v4, p7

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/motorola/android/ims/service/smsonims/PageMessage;-><init>(Lcom/motorola/android/ims/IMSService;Ljava/lang/String;I[BJ)V

    .local v0, message:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    invoke-virtual {v0, p5}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->setFromAddr(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    #getter for: Lcom/motorola/android/ims/IMSService;->mServiceListener:Lcom/motorola/android/ims/IMSServiceListener;
    invoke-static {v1}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->access$100(Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;)Lcom/motorola/android/ims/IMSServiceListener;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsServiceListener;

    invoke-virtual {p0, v0}, Lcom/motorola/android/ims/service/smsonims/SmsOnImsServiceListener;->processMessageReceived(Lcom/motorola/android/ims/service/smsonims/PageMessage;)V

    return-void
.end method

.method public onMessageResponse(JJI[B)V
    .locals 5
    .parameter "regId"
    .parameter "msgId"
    .parameter "statusCode"
    .parameter "body"

    .prologue
    const-string v2, "SmsOnImsService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onMessageResponse regId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " msgId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " statusCode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " body "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iget-object v2, v2, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/motorola/android/ims/service/smsonims/PageMessage;

    .local v1, msg:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    invoke-virtual {v1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getMsgId()J

    move-result-wide v2

    cmp-long v2, p3, v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/motorola/android/ims/service/smsonims/PageMessage;->getListener()Lcom/motorola/android/ims/service/smsonims/PageMessageListener;

    move-result-object v2

    invoke-virtual {v2, p5}, Lcom/motorola/android/ims/service/smsonims/PageMessageListener;->processMessageResponse(I)V

    iget-object v2, p0, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService$SMSCallBack;->this$0:Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;

    iget-object v2, v2, Lcom/motorola/android/ims/service/smsonims/SmsOnImsService;->messages:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .end local v1           #msg:Lcom/motorola/android/ims/service/smsonims/PageMessage;
    :cond_1
    return-void
.end method
