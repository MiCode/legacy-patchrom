.class Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;
.super Lcom/motorola/android/ims/ConnectionStateListener;
.source "ImsSMSDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImsConnectionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    invoke-direct {p0}, Lcom/motorola/android/ims/ConnectionStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public processImsConnected(Z)V
    .locals 3
    .parameter "isLimited"

    .prologue
    const-string v0, "ImsSMSDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processImsConnected: isLimited="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #setter for: Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->mIsSmsLimitedMode:Z
    invoke-static {v0, p1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$102(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;Z)Z

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    #getter for: Lcom/android/internal/telephony/SMSDispatcher;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->access$200(Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v2, 0x18

    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method public processImsDisconnected()V
    .locals 3

    .prologue
    const-string v0, "ImsSMSDispatcher"

    const-string v1, "processImsDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    iget-object v1, p0, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher$ImsConnectionListener;->this$0:Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;

    const/16 v2, 0x17

    invoke-virtual {v1, v2}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/ImsSMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
