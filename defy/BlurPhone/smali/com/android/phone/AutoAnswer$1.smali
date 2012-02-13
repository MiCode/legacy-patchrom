.class Lcom/android/phone/AutoAnswer$1;
.super Ljava/lang/Object;
.source "AutoAnswer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/AutoAnswer;-><init>(Lcom/android/internal/telephony/Phone;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/AutoAnswer;


# direct methods
.method constructor <init>(Lcom/android/phone/AutoAnswer;)V
    .locals 0
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 67
    iget-object v1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    #getter for: Lcom/android/phone/AutoAnswer;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/AutoAnswer;->access$000(Lcom/android/phone/AutoAnswer;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 68
    .local v0, audioManager:Landroid/media/AudioManager;
    iget-object v1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    const/4 v2, 0x0

    #setter for: Lcom/android/phone/AutoAnswer;->mAutoAnswerFlag:Z
    invoke-static {v1, v2}, Lcom/android/phone/AutoAnswer;->access$102(Lcom/android/phone/AutoAnswer;Z)Z

    .line 69
    invoke-static {}, Lcom/android/phone/AutoAnswer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto Answer time out. isBluetoothAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    invoke-virtual {v3}, Lcom/android/phone/AutoAnswer;->isBluetoothAvailable()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is BT connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    invoke-virtual {v3}, Lcom/android/phone/AutoAnswer;->isBluetoothAudioConnected()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ring mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/AutoAnswer;->access$300(Lcom/android/phone/AutoAnswer;Ljava/lang/String;)V

    .line 73
    :cond_0
    iget-object v1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    invoke-virtual {v1}, Lcom/android/phone/AutoAnswer;->isBluetoothAvailable()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    if-eqz v1, :cond_3

    .line 75
    invoke-static {}, Lcom/android/phone/AutoAnswer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    const-string v2, "Auto Answer time out. Answer call. "

    #calls: Lcom/android/phone/AutoAnswer;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/AutoAnswer;->access$300(Lcom/android/phone/AutoAnswer;Ljava/lang/String;)V

    .line 76
    :cond_2
    iget-object v1, p0, Lcom/android/phone/AutoAnswer$1;->this$0:Lcom/android/phone/AutoAnswer;

    #getter for: Lcom/android/phone/AutoAnswer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/AutoAnswer;->access$400(Lcom/android/phone/AutoAnswer;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 78
    :cond_3
    return-void
.end method
