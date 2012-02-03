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
    .line 430
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .parameter "msg"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 434
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 436
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 437
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: ignoring message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; we\'re destroyed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 668
    .end local p0
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 440
    .restart local p0
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 441
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: handling message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while not in foreground"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 449
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 450
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 499
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 454
    .restart local p0
    :sswitch_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 455
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v5, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 459
    .restart local p0
    :sswitch_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 463
    .restart local p0
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 475
    .restart local p0
    :sswitch_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v5

    if-nez v5, :cond_3

    .line 476
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v8, :cond_3

    .line 479
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->isTouchLocked()Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 480
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$900(Lcom/android/phone/InCallScreen;)V

    .line 495
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 503
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 512
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;)V

    .line 516
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v2, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/MmiCode;

    .line 518
    .local v2, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 519
    .local v3, phoneType:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_4

    .line 520
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v0, v2, v9, v9}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 521
    :cond_4
    if-ne v3, v8, :cond_0

    .line 522
    invoke-interface {v2}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v5, v6, :cond_0

    .line 523
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Got MMI_COMPLETE, finishing InCallScreen..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 525
    :cond_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v5, v6, :cond_6

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 526
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 529
    :cond_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 535
    .end local v2           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v3           #phoneType:I
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-char v6, v6

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v5, p0, v6}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 539
    .restart local p0
    :sswitch_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 543
    :sswitch_a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 547
    :sswitch_b
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 552
    :sswitch_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 556
    :sswitch_d
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "ALLOW_SCREEN_ON message..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 561
    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 565
    :sswitch_e
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "TOUCH_LOCK_TIMER..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 566
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 570
    :sswitch_f
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "REQUEST_UPDATE_BLUETOOTH_INDICATION..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 576
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 580
    :sswitch_10
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 581
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 584
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 587
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    .line 588
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 593
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    :sswitch_11
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 594
    :cond_8
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_0

    .line 597
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5, v10}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 600
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 605
    :sswitch_12
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    .line 606
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v5, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 611
    .restart local p0
    :sswitch_13
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    .line 612
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 617
    :sswitch_14
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    .line 618
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 623
    :sswitch_15
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 624
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$200()Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 625
    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 626
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v9}, Lcom/android/phone/InCallScreen;->access$1902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 631
    :sswitch_16
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v5, v10}, Lcom/android/phone/InCallScreen;->access$2002(Lcom/android/phone/InCallScreen;Z)Z

    .line 632
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2100(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 636
    :sswitch_17
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto/16 :goto_0

    .line 640
    :sswitch_18
    sget-boolean v5, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v5, :cond_a

    .line 641
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 643
    :cond_a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v8}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .line 653
    :sswitch_19
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v4, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Landroid/telephony/ServiceState;

    .line 654
    .local v4, state:Landroid/telephony/ServiceState;
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    .line 655
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 656
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 657
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "STATE_IN_SERVICE : start call "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 658
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    .line 659
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v5, v9}, Lcom/android/phone/InCallScreen;->access$2402(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 660
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 450
    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_1
        0x34 -> :sswitch_7
        0x35 -> :sswitch_6
        0x65 -> :sswitch_3
        0x66 -> :sswitch_4
        0x67 -> :sswitch_5
        0x68 -> :sswitch_8
        0x6a -> :sswitch_9
        0x6b -> :sswitch_a
        0x6c -> :sswitch_b
        0x6e -> :sswitch_2
        0x6f -> :sswitch_c
        0x70 -> :sswitch_d
        0x71 -> :sswitch_e
        0x72 -> :sswitch_f
        0x73 -> :sswitch_10
        0x74 -> :sswitch_11
        0x75 -> :sswitch_12
        0x76 -> :sswitch_13
        0x77 -> :sswitch_14
        0x78 -> :sswitch_15
        0x79 -> :sswitch_16
        0x7a -> :sswitch_17
        0x7b -> :sswitch_18
        0x7c -> :sswitch_0
        0x96 -> :sswitch_19
    .end sparse-switch
.end method
