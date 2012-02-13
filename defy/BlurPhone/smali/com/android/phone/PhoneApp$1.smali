.class Lcom/android/phone/PhoneApp$1;
.super Landroid/os/Handler;
.source "PhoneApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 510
    iput-object p1, p0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17
    .parameter "msg"

    .prologue
    .line 513
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v12, v0

    sparse-switch v12, :sswitch_data_0

    .line 807
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 530
    .restart local p0
    .restart local p1
    :sswitch_1
    sget-boolean v12, Lcom/android/phone/PhoneApp;->VDBG:Z

    if-eqz v12, :cond_1

    .line 531
    const-string v12, "PhoneApp"

    const-string v13, "Got EVENT_SIM_ABSENT: SIM absent"

    invoke-static {v12, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #calls: Lcom/android/phone/PhoneApp;->shouldStartSimSwapAuthenticate(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V

    goto :goto_0

    .line 537
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const/high16 v13, 0x7f09

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 539
    const-string v12, "PhoneApp"

    const-string v13, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 547
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->instance(Landroid/content/Context;)Lcom/android/phone/IccNetworkDepersonalizationPanel;

    move-result-object v7

    .line 548
    .local v7, ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->isShowing()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 549
    const-string v12, "PhoneApp"

    const-string v13, "reflash sim depersonal panel"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->reflash()V

    goto :goto_0

    .line 553
    :cond_3
    const-string v12, "PhoneApp"

    const-string v13, "show sim depersonal panel"

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    invoke-virtual {v7}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    .line 566
    .end local v7           #ndpPanel:Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_4

    const-string v12, "PhoneApp"

    const-string v13, "- updating in-call notification from handler..."

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    :cond_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 571
    :sswitch_4
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 575
    :sswitch_5
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 579
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    move-object v0, v12

    move-object/from16 v1, p0

    #calls: Lcom/android/phone/PhoneApp;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v0, v1}, Lcom/android/phone/PhoneApp;->access$400(Lcom/android/phone/PhoneApp;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 583
    .restart local p0
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto/16 :goto_0

    .line 593
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v9

    .line 595
    .local v9, phoneState:Lcom/android/internal/telephony/Phone$State;
    sget-object v12, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v9, v12, :cond_6

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v12

    if-nez v12, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mBtHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v12}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v12

    if-nez v12, :cond_6

    .line 598
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v12

    if-nez v12, :cond_8

    .line 599
    sget-boolean v12, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mIsHardKeyboardOpen:Z
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$500(Lcom/android/phone/PhoneApp;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v12}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v12, v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isBluetoothAudioConnected()Z

    move-result v12

    if-nez v12, :cond_7

    .line 605
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.MAIN"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 606
    .local v6, intent:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v6, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 607
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-class v13, Lcom/android/phone/InCallScreen;

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 608
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-virtual {v12, v6}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 622
    .end local v6           #intent:Landroid/content/Intent;
    :cond_6
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12, v9}, Lcom/android/phone/PhoneApp;->updateProximitySensorMode(Lcom/android/internal/telephony/Phone$State;)V

    goto/16 :goto_0

    .line 612
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    goto :goto_1

    .line 617
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 629
    .end local v9           #phoneState:Lcom/android/internal/telephony/Phone$State;
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    const-string v13, "READY"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_a

    .line 633
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v12

    if-eqz v12, :cond_9

    .line 634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$600(Lcom/android/phone/PhoneApp;)Landroid/app/Activity;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/Activity;->finish()V

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$602(Lcom/android/phone/PhoneApp;Landroid/app/Activity;)Landroid/app/Activity;

    .line 637
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$700(Lcom/android/phone/PhoneApp;)Landroid/app/ProgressDialog;

    move-result-object v12

    invoke-virtual {v12}, Landroid/app/ProgressDialog;->dismiss()V

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$702(Lcom/android/phone/PhoneApp;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 642
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    const-string v13, "LOADED"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v13}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v13

    #calls: Lcom/android/phone/PhoneApp;->shouldStartSimSwapAuthenticate(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 644
    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v12, v0

    const-string v13, "NOT_READY"

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 648
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_c

    .line 649
    const-string v12, "PhoneApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "airplane mode: IccId ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getIccSerialNumber()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " Icc state="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v14, v0

    iget-object v14, v14, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v14}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_c
    const-string v12, "gsm.sim.mot.simswap"

    const/4 v13, 0x0

    invoke-static {v12, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 654
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_d

    .line 655
    const-string v12, "PhoneApp"

    const-string v13, "start loadEFLinearFixed to get SIM\'s ICC-ID under Airplane mode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mGetIccIdCount:I
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;I)I

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v12

    const/16 v13, 0x2fe2

    const/16 v14, 0x14

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 670
    :sswitch_a
    sget-object v12, Lcom/android/phone/PhoneApp$9;->$SwitchMap$com$android$internal$telephony$Phone$State:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v13, v0

    iget-object v13, v13, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/internal/telephony/Phone$State;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    goto/16 :goto_0

    .line 672
    :pswitch_0
    const-string v12, "PhoneApp"

    const-string v13, "EVENT_ACTION_DOCK_EVENT IDLE mode no action"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 676
    :pswitch_1
    const-string v12, "PhoneApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_ACTION_DOCK_EVENT call ongoing bInDockMode is: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isBluetoothAudioConnected()Z

    move-result v12

    if-nez v12, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v12

    if-eqz v12, :cond_f

    .line 678
    :cond_e
    const-string v12, "PhoneApp"

    const-string v13, " isHeadsetPlugged or BluetoothAudioConnected"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 680
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    if-nez v12, :cond_10

    .line 681
    const-string v12, "PhoneApp"

    const-string v13, "mInCallScreen is none,set speaker mode according dock mode "

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 683
    .local v3, context:Landroid/content/Context;
    sget-boolean v12, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    const/4 v13, 0x1

    invoke-static {v3, v12, v13}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto/16 :goto_0

    .line 685
    .end local v3           #context:Landroid/content/Context;
    :cond_10
    const-string v12, "PhoneApp"

    const-string v13, "mInCallScreen is active,call updateScreenForDock"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    sget-boolean v13, Lcom/android/phone/PhoneApp;->bInDockMode:Z

    invoke-virtual {v12, v13}, Lcom/android/phone/InCallScreen;->updateScreenForDock(Z)V

    goto/16 :goto_0

    .line 697
    :sswitch_b
    sget-boolean v12, Lcom/android/phone/PhoneApp;->FTR_36597_VZW_ROAMING_ALERT:Z

    if-nez v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v12

    if-eqz v12, :cond_0

    .line 699
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_13

    .line 700
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v12

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v12

    if-eqz v12, :cond_12

    .line 702
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->showInternationalDataRoaming()V

    .line 704
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const-class v13, Lcom/android/phone/InternationalRoamingAlert;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 705
    .local v10, roamingAlert:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12, v10}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 709
    .end local v10           #roamingAlert:Landroid/content/Intent;
    :cond_12
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->hideInternationalDataRoaming()V

    goto/16 :goto_0

    .line 714
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Lcom/android/phone/PhoneApp;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    .line 715
    .local v11, tm:Landroid/telephony/TelephonyManager;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v12

    const/4 v13, 0x5

    if-ne v12, v13, :cond_0

    .line 716
    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v8

    .line 717
    .local v8, networkIso:Ljava/lang/String;
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_14

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_14

    .line 721
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->showInternationalDataRoaming()V

    .line 723
    new-instance v10, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const-class v13, Lcom/android/phone/InternationalRoamingAlert;

    invoke-direct {v10, v12, v13}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 724
    .restart local v10       #roamingAlert:Landroid/content/Intent;
    const/high16 v12, 0x1000

    invoke-virtual {v10, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12, v10}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 728
    .end local v10           #roamingAlert:Landroid/content/Intent;
    :cond_14
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->hideInternationalDataRoaming()V

    goto/16 :goto_0

    .line 738
    .end local v8           #networkIso:Ljava/lang/String;
    .end local v11           #tm:Landroid/telephony/TelephonyManager;
    :sswitch_c
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/NotificationMgr;->hideInternationalDataRoaming()V

    .line 740
    sget-boolean v12, Lcom/android/phone/PhoneApp;->FTR_36597_VZW_ROAMING_ALERT:Z

    if-eqz v12, :cond_0

    .line 741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Lcom/android/internal/telephony/Phone;->setDataRoamingEnabled(Z)V

    goto/16 :goto_0

    .line 747
    :sswitch_d
    sget-boolean v12, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 748
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_15

    const-string v12, "PhoneApp"

    const-string v13, "FTR33129: 60sec timer EXPIRED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    :cond_15
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_16

    const-string v12, "PhoneApp"

    const-string v13, "FTR33129: STOP SettingsObserver"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Landroid/content/ContentQueryMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v13, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$SettingsObserver;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #calls: Lcom/android/phone/PhoneApp;->restoreBacklightSettings()V
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_0

    .line 756
    :sswitch_e
    sget-boolean v12, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/4 v13, 0x1

    if-ne v12, v13, :cond_0

    .line 757
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_17

    const-string v12, "PhoneApp"

    const-string v13, "FTR33129: 30sec timer EXPIRED"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_17
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_18

    const-string v12, "PhoneApp"

    const-string v13, "FTR33129 STOP SettingsObserver"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSettings:Landroid/content/ContentQueryMap;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$1100(Lcom/android/phone/PhoneApp;)Landroid/content/ContentQueryMap;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v13, v0

    #getter for: Lcom/android/phone/PhoneApp;->mSettingsObserver:Lcom/android/phone/PhoneApp$SettingsObserver;
    invoke-static {v13}, Lcom/android/phone/PhoneApp;->access$1000(Lcom/android/phone/PhoneApp;)Lcom/android/phone/PhoneApp$SettingsObserver;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/content/ContentQueryMap;->deleteObserver(Ljava/util/Observer;)V

    .line 760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #calls: Lcom/android/phone/PhoneApp;->restoreBacklightSettings()V
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$1200(Lcom/android/phone/PhoneApp;)V

    goto/16 :goto_0

    .line 766
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Landroid/os/AsyncResult;

    .line 767
    .local v2, ar:Landroid/os/AsyncResult;
    move-object v0, v2

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, [B

    move-object/from16 v0, p1

    check-cast v0, [B

    move-object v4, v0

    .line 769
    .local v4, data:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "airplane_mode_on"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    const/4 v13, 0x1

    if-eq v12, v13, :cond_0

    .line 770
    iget-object v12, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v12, :cond_1a

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mGetIccIdCount:I
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v12

    const/16 v13, 0x14

    if-lt v12, v13, :cond_19

    .line 772
    const-string v12, "PhoneApp"

    const-string v13, "EVENT_GET_ICCID_DONE: exception happens: it might be ABSENT sim in airplane mode"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mGetIccIdCount:I
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;I)I

    .line 774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #calls: Lcom/android/phone/PhoneApp;->shouldStartSimSwapAuthenticate(Ljava/lang/String;)V
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 776
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$808(Lcom/android/phone/PhoneApp;)I

    .line 777
    const-string v12, "PhoneApp"

    const-string v13, "EVENT_GET_ICCID_DONE: exception happens: SIM is not ready; retrying - attemt: %s"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object/from16 v16, v0

    #getter for: Lcom/android/phone/PhoneApp;->mGetIccIdCount:I
    invoke-static/range {v16 .. v16}, Lcom/android/phone/PhoneApp;->access$800(Lcom/android/phone/PhoneApp;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    iget-object v12, v12, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getIccFileHandler()Lcom/android/internal/telephony/IccFileHandler;

    move-result-object v12

    const/16 v13, 0x2fe2

    const/16 v14, 0x14

    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/telephony/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 781
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    const/4 v13, 0x0

    #setter for: Lcom/android/phone/PhoneApp;->mGetIccIdCount:I
    invoke-static {v12, v13}, Lcom/android/phone/PhoneApp;->access$802(Lcom/android/phone/PhoneApp;I)I

    .line 782
    const/4 v12, 0x0

    array-length v13, v4

    invoke-static {v4, v12, v13}, Lcom/android/internal/telephony/IccUtils;->bcdToString([BII)Ljava/lang/String;

    move-result-object v5

    .line 783
    .local v5, iccId:Ljava/lang/String;
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_1b

    .line 784
    const-string v12, "PhoneApp"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "EVENT_GET_ICCID_DONE: iccid="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #calls: Lcom/android/phone/PhoneApp;->shouldStartSimSwapAuthenticate(Ljava/lang/String;)V
    invoke-static {v12, v5}, Lcom/android/phone/PhoneApp;->access$300(Lcom/android/phone/PhoneApp;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 794
    .end local v2           #ar:Landroid/os/AsyncResult;
    .end local v4           #data:[B
    .end local v5           #iccId:Ljava/lang/String;
    .restart local p1
    :sswitch_10
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_1c

    const-string v12, "PhoneApp"

    const-string v13, "EVENT_AFTER_BOOT_UP_PROCESS"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_1c
    const-string v12, "PhoneApp"

    const-string v13, "no CFU retrieval"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 801
    :sswitch_11
    sget-boolean v12, Lcom/android/phone/PhoneApp;->DBG:Z

    if-eqz v12, :cond_1d

    const-string v12, "PhoneApp"

    const-string v13, "update incall ui for social info"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    if-eqz v12, :cond_0

    .line 803
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/PhoneApp$1;->this$0:Lcom/android/phone/PhoneApp;

    move-object v12, v0

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v12}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/phone/InCallScreen;->updateCallCardOnly()V

    goto/16 :goto_0

    .line 513
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_11
        0x1 -> :sswitch_1
        0x2 -> :sswitch_0
        0x3 -> :sswitch_2
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_b
        0xe -> :sswitch_c
        0xf -> :sswitch_d
        0x10 -> :sswitch_e
        0x13 -> :sswitch_a
        0x14 -> :sswitch_f
        0x19 -> :sswitch_10
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch

    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
