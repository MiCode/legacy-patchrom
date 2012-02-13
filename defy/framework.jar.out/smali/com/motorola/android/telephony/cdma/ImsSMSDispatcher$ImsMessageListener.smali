.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;
.super Lcom/motorola/android/ims/service/smsonims/PageMessageListener;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsMessageListener"
.end annotation


# instance fields
.field private mTracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;)V
    .locals 1
    .parameter
    .parameter "tracker"

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {p0}, Lcom/motorola/android/ims/service/smsonims/PageMessageListener;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->mTracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    iput-object p2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->mTracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    return-void
.end method


# virtual methods
.method public processMessageResponse(I)V
    .locals 6
    .parameter "response"

    .prologue
    const/4 v5, 0x0

    const-string v2, "ImsSMSDispatcher"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMessageResponse:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/SmsResponse;

    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->mTracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    iget v2, v2, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mMessageRef:I

    invoke-direct {v1, v2, v5, p1}, Lcom/android/internal/telephony/SmsResponse;-><init>(ILjava/lang/String;I)V

    .local v1, smsRsp:Lcom/android/internal/telephony/SmsResponse;
    iget-object v2, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->mTracker:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsTracker;

    invoke-virtual {v2, v3, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, reply:Landroid/os/Message;
    const/16 v2, 0xd

    if-ne p1, v2, :cond_0

    invoke-static {v0, v1, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    :goto_0
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_0
    new-instance v2, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;

    iget-object v3, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsMessageListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsSmsException;-><init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto :goto_0
.end method
