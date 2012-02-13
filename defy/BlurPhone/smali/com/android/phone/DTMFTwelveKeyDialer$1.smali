.class Lcom/android/phone/DTMFTwelveKeyDialer$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter

    .prologue
    .line 575
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    const/4 v1, 0x0

    .line 578
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 592
    :cond_0
    :goto_0
    return-void

    .line 582
    :pswitch_0
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "disconnect message recieved, shutting down."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 583
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 584
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    #getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    goto :goto_0

    .line 587
    :pswitch_1
    invoke-static {}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "dtmf confirmation received from FW."

    #calls: Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Ljava/lang/String;)V

    .line 589
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    .line 578
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
