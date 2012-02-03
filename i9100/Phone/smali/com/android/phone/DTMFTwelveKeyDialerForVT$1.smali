.class Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialerForVT.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialerForVT;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)V
    .locals 0
    .parameter

    .prologue
    .line 377
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 380
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 395
    :goto_0
    return-void

    .line 384
    :pswitch_0
    const-string v0, "disconnect message recieved, shutting down."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000(Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$300(Lcom/android/phone/DTMFTwelveKeyDialerForVT;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 387
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    goto :goto_0

    .line 390
    :pswitch_1
    const-string v0, "dtmf confirmation received from FW."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialerForVT;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->access$000(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialerForVT$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->handleBurstDtmfConfirmation()V

    goto :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
