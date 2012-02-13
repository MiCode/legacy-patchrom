.class Lcom/android/phone/InCallScreen$1;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 640
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    .line 643
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 644
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handler: ignoring message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; we\'re destroyed!"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 966
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 647
    .restart local p0
    :cond_1
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 648
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Handler: handling message "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " while not in foreground"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 656
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 657
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v8, p1, Landroid/os/Message;->what:I

    sparse-switch v8, :sswitch_data_0

    goto :goto_0

    .line 799
    :sswitch_1
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v8, p0}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 659
    .restart local p0
    :sswitch_2
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v8, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 663
    .restart local p0
    :sswitch_3
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v8, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceCompleted(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 668
    .restart local p0
    :sswitch_4
    sget-boolean v8, Lcom/android/phone/PhoneApp;->FTR_27024_CALLFIREWALL_INCOMINGCALL:Z

    if-eqz v8, :cond_5

    .line 669
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v8

    if-nez v8, :cond_6

    const/4 v8, 0x1

    move v4, v8

    .line 670
    .local v4, hasRingingCall:Z
    :goto_1
    if-eqz v4, :cond_5

    .line 671
    sget-object v8, Lcom/android/phone/PhoneHubService;->mCallbacks:Lcom/motorola/firewall/CallFirewallCallback;

    if-eqz v8, :cond_5

    .line 672
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "mPhoneCheckService != null pass phone number&calllog type to firewall app"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 673
    const/4 v1, 0x1

    .line 674
    .local v1, callType:I
    const/4 v6, 0x0

    .line 675
    .local v6, phoneNumber:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 676
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v6

    .line 678
    :cond_3
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PHONE_STATE_CHANGED , PhoneUtils.CallerInfoToken info.currentInfo.phoneNumber"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 679
    const/4 v7, 0x0

    .line 680
    .local v7, result:I
    if-eqz v6, :cond_4

    .line 681
    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-interface {v9}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v9

    invoke-static {v6, v1, v8, v9}, Lcom/android/phone/PhoneHubService;->PhoneCheckNumber(Ljava/lang/String;IZI)I

    move-result v7

    .line 684
    :cond_4
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mPhoneCheckService PhoneCheckNumber result"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 685
    const/4 v8, 0x2

    if-eq v8, v7, :cond_0

    const/4 v8, 0x3

    if-eq v8, v7, :cond_0

    .line 693
    .end local v1           #callType:I
    .end local v4           #hasRingingCall:Z
    .end local v6           #phoneNumber:Ljava/lang/String;
    .end local v7           #result:I
    :cond_5
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v8, p0}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 669
    .restart local p0
    :cond_6
    const/4 v8, 0x0

    move v4, v8

    goto/16 :goto_1

    .line 697
    :sswitch_5
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v8, p0}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 709
    .restart local p0
    :sswitch_6
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v8

    if-nez v8, :cond_8

    .line 710
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Z

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    .line 711
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Z

    move-result v9

    if-eq v8, v9, :cond_8

    .line 712
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_2
    #setter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$802(Lcom/android/phone/InCallScreen;Z)Z

    .line 713
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_7

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    :cond_7
    const/4 v8, 0x1

    move v5, v8

    .line 714
    .local v5, newIsHSPlugged:Z
    :goto_3
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PLUG OR UNPLUG "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    if-nez v5, :cond_d

    .line 717
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 718
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 780
    .end local v5           #newIsHSPlugged:Z
    :cond_8
    :goto_4
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 712
    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    .line 713
    :cond_a
    const/4 v8, 0x0

    move v5, v8

    goto :goto_3

    .line 719
    .restart local v5       #newIsHSPlugged:Z
    :cond_b
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_8

    .line 725
    :cond_c
    const-string v8, "InCallScreen"

    const-string v9, "we need to terminate all the calls"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->hangupAllCalls()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto :goto_4

    .line 729
    :cond_d
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)Z

    move-result v8

    if-nez v8, :cond_f

    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_f

    .line 730
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v9, Lcom/android/phone/InCallScreen$OptionsMenuPress;->BLUETOOTH_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    if-eq v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v9, Lcom/android/phone/InCallScreen$OptionsMenuPress;->SPEAKER_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    if-ne v8, v9, :cond_8

    .line 732
    :cond_e
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->setSpeaker(Z)V

    .line 733
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v9, Lcom/android/phone/InCallScreen$OptionsMenuPress;->NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    #setter for: Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$1202(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$OptionsMenuPress;)Lcom/android/phone/InCallScreen$OptionsMenuPress;

    goto :goto_4

    .line 738
    :cond_f
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_4

    .line 746
    .end local v5           #newIsHSPlugged:Z
    :cond_10
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_12

    .line 751
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_11

    .line 752
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v8}, Lcom/android/phone/InCallScreen;->setDockModePhone()V

    .line 754
    :cond_11
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 755
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v9

    #setter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$802(Lcom/android/phone/InCallScreen;Z)Z

    goto/16 :goto_4

    .line 758
    :cond_12
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Z

    move-result v9

    if-ne v8, v9, :cond_14

    .line 762
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_13

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PhoneUtils.isSpeakerOn()is:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v10}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 763
    :cond_13
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v9

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_4

    .line 768
    :cond_14
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 769
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v9, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v9}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Z

    move-result v9

    if-nez v9, :cond_15

    const/4 v9, 0x1

    :goto_5
    #setter for: Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$802(Lcom/android/phone/InCallScreen;Z)Z

    goto/16 :goto_4

    :cond_15
    const/4 v9, 0x0

    goto :goto_5

    .line 786
    :sswitch_7
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "service state chg event...msg.arg1="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 787
    :cond_16
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/android/phone/InCallScreen;->mEriTxt:Ljava/lang/String;

    .line 790
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->isEriBannerEnabled(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 791
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mEriTxt ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Lcom/android/phone/InCallScreen;->mEriTxt:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 792
    :cond_17
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/CallCard;->displayERIwrapper()V

    goto/16 :goto_0

    .line 803
    :sswitch_8
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 807
    :sswitch_9
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v8, p0}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 811
    .restart local p0
    :sswitch_a
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v9, p1, Landroid/os/Message;->arg1:I

    int-to-char v9, v9

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v8, p0, v9}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 815
    .restart local p0
    :sswitch_b
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 819
    :sswitch_c
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 823
    :sswitch_d
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 828
    :sswitch_e
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 832
    :sswitch_f
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 837
    :cond_18
    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 842
    :sswitch_10
    iget v8, p1, Landroid/os/Message;->arg1:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_1a

    .line 843
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "TURN_OFF_AIRPLANE message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 844
    :cond_19
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x1

    #calls: Lcom/android/phone/InCallScreen;->turnOffAirplaneMode(Z)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;Z)V

    goto/16 :goto_0

    .line 845
    :cond_1a
    iget v8, p1, Landroid/os/Message;->arg1:I

    if-nez v8, :cond_0

    .line 846
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1b

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "DONT_TURN_OFF_AIRPLANE message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 847
    :cond_1b
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    #calls: Lcom/android/phone/InCallScreen;->turnOffAirplaneMode(Z)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;Z)V

    goto/16 :goto_0

    .line 853
    :sswitch_11
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v8

    if-eqz v8, :cond_1c

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 859
    :cond_1c
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 863
    :sswitch_12
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1d

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 864
    :cond_1d
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    .line 868
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v9

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v9, v10}, Lcom/android/phone/PhoneUtils;->isIncomingCallRestricted(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 873
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    .line 874
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v8

    if-nez v8, :cond_1e

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 875
    :cond_1e
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 880
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_13
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_1f

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 881
    :cond_1f
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v8, :cond_0

    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v8

    sget-object v9, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v8, v9, :cond_0

    .line 885
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 888
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    .line 892
    sget-boolean v8, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z

    if-eqz v8, :cond_20

    .line 893
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->autoLaunchDTMFDialpad()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)V

    .line 897
    :cond_20
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto/16 :goto_0

    .line 902
    :sswitch_14
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    .line 903
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v8, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 908
    .restart local p0
    :sswitch_15
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    .line 909
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v8}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 914
    :sswitch_16
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    .line 915
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v8}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 920
    :sswitch_17
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v8

    if-eqz v8, :cond_0

    .line 921
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$100()Z

    move-result v8

    if-eqz v8, :cond_21

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 922
    :cond_21
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 923
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$2602(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 928
    :sswitch_18
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v9, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$2702(Lcom/android/phone/InCallScreen;Z)Z

    .line 929
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 938
    :sswitch_19
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2200()Z

    move-result v8

    if-eqz v8, :cond_22

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v9, "REQUEST_UPDATE_SCREEN..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v8, v9}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 939
    :cond_22
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 945
    :sswitch_1a
    sget-boolean v8, Lcom/android/phone/PhoneApp;->FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v8, v8, Lcom/android/phone/OtaUtils;->mIsSetupMode:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v8, v8, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v8, v8, Lcom/android/phone/OtaUtils;->mIsProgramStarted:Z

    if-nez v8, :cond_0

    .line 949
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v8

    const-string v9, "1"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-interface {v8, v9, v10, v11, v12}, Lcom/android/internal/telephony/Phone;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)V

    .line 950
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x7f

    const-wide/16 v10, 0x1388

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 958
    :sswitch_1b
    :try_start_0
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mVaTime:Landroid/widget/TextView;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)Landroid/widget/TextView;

    move-result-object v8

    iget-object v9, v0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    invoke-interface {v9}, Lcom/motorola/soundrecorder/ISoundRecorderService;->getProgress()J

    move-result-wide v9

    invoke-static {v9, v10}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 959
    iget-object v8, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x1f40

    const-wide/16 v10, 0x1f4

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 960
    :catch_0
    move-exception v8

    move-object v3, v8

    .line 961
    .local v3, e:Landroid/os/RemoteException;
    const-string v8, "InCallScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "voice record service getProgress() error : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 657
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_1
        0x34 -> :sswitch_9
        0x35 -> :sswitch_8
        0x65 -> :sswitch_4
        0x66 -> :sswitch_5
        0x67 -> :sswitch_6
        0x68 -> :sswitch_a
        0x6a -> :sswitch_b
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6e -> :sswitch_2
        0x6f -> :sswitch_3
        0x70 -> :sswitch_e
        0x71 -> :sswitch_f
        0x73 -> :sswitch_11
        0x74 -> :sswitch_12
        0x75 -> :sswitch_13
        0x76 -> :sswitch_14
        0x77 -> :sswitch_15
        0x78 -> :sswitch_16
        0x79 -> :sswitch_17
        0x7a -> :sswitch_18
        0x7b -> :sswitch_0
        0x7c -> :sswitch_10
        0x7d -> :sswitch_19
        0x7e -> :sswitch_7
        0x7f -> :sswitch_1a
        0x1f40 -> :sswitch_1b
    .end sparse-switch
.end method
