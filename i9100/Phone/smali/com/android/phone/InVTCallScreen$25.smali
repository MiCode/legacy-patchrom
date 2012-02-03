.class Lcom/android/phone/InVTCallScreen$25;
.super Ljava/lang/Object;
.source "InVTCallScreen.java"

# interfaces
.implements Lsiso/vt/VTManager$VTStackStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InVTCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InVTCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 8425
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStateChanged(Lsiso/vt/VTManager$VTEventForUI;Lsiso/vt/VideoTelephonyData;)V
    .locals 9
    .parameter "state"
    .parameter "data"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v3, "InVTCallScreen:: "

    const-string v4, "InVTCallScreen"

    .line 8427
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Inside VTStackStateListener"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8428
    const-string v1, "InVTCallScreen:: "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged State :: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8430
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_FIRST_VIDEO_FRAME_DECODED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_2

    .line 8432
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v1, :cond_0

    .line 8434
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v1, v1, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 8436
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8437
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f0d0307

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 8697
    .end local p0
    :cond_1
    :goto_0
    return-void

    .line 8440
    .restart local p0
    :cond_2
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_VIDEO_TX_OLC_ESTABLISHED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_7

    .line 8443
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8445
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7600(Lcom/android/phone/InVTCallScreen;)V

    .line 8447
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_1

    .line 8449
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const-string v2, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    #calls: Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 8450
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d023f

    invoke-static {v1, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 8456
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4800(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4900(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v1

    if-nez v1, :cond_6

    .line 8459
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->enableHideMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$5000(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_0

    .line 8461
    :cond_6
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8462
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->sendLiveVideo()V

    goto :goto_0

    .line 8466
    :cond_7
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_CALL_DEINITIALIZED:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_11

    .line 8467
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_CALL_DEINITIALIZED"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8469
    invoke-static {v6}, Lcom/android/phone/InVTCallScreen;->access$2102(Z)Z

    .line 8470
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$7700(Lcom/android/phone/InVTCallScreen;Z)V

    .line 8472
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 8473
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8474
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$7900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 8475
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8000(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 8477
    :cond_8
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 8478
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->releaseVTManager()V

    .line 8479
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->deinitVTManager()V

    .line 8480
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1, v8}, Lcom/android/phone/InVTCallScreen;->access$2402(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;

    .line 8483
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1400(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 8484
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 8485
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8486
    :cond_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 8487
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)V

    .line 8488
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, p0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 8490
    .restart local p0
    :cond_b
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8496
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 8497
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8498
    :cond_d
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 8499
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2200(Lcom/android/phone/InVTCallScreen;)V

    .line 8500
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$1500(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;

    move-result-object v2

    iget-object p0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v1, p0}, Lcom/android/phone/InVTCallScreen;->access$2300(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 8501
    .restart local p0
    :cond_e
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 8502
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 8503
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8509
    :cond_f
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 8512
    :cond_10
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x6c

    const-wide/16 v3, 0x1194

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 8519
    :cond_11
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_END_CALL_REQUEST:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_13

    .line 8520
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_END_CALL_REQUEST"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8522
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->removesurfaceview()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8300(Lcom/android/phone/InVTCallScreen;)V

    .line 8523
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2000(Lcom/android/phone/InVTCallScreen;)V

    .line 8524
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 8525
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)V

    .line 8527
    :cond_12
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8528
    :cond_13
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_SESSION_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_14

    .line 8529
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_SESSION_STOP_SUCCESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8531
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8533
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8534
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lsiso/vt/VTManager;->cleanupCall()V

    goto/16 :goto_0

    .line 8538
    :cond_14
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_VT_PROTOCOL_ERR_IND:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_15

    .line 8539
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_VT_PROTOCOL_ERR_IND"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8541
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->removesurfaceview()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8300(Lcom/android/phone/InVTCallScreen;)V

    .line 8542
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopVTCall()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$2000(Lcom/android/phone/InVTCallScreen;)V

    .line 8543
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$1902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8546
    :cond_15
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_16

    .line 8547
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_IC_START_FAILURE"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8552
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0305

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 8554
    :cond_16
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_IC_START_SUCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1a

    .line 8555
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_IC_START_SUCESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8557
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8500(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_18

    .line 8558
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4100(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 8560
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/phone/InVTCallScreen;->access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8562
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 8565
    :cond_17
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8567
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4300(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 8568
    const-string v1, "InVTCallScreen"

    const-string v1, "H324M_IC_START_SUCESS:: Preset Image Enabled"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8570
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$3902(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8571
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4302(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8579
    :cond_18
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$4102(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8580
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$8502(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8573
    :cond_19
    const-string v1, "InVTCallScreen"

    const-string v1, "H324M_IC_START_SUCESS:: Preset Image Desabled"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8576
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$3902(Lcom/android/phone/InVTCallScreen;Z)Z

    goto :goto_1

    .line 8582
    :cond_1a
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1b

    .line 8583
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_REC_START_FAILURE"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8584
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 8585
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 8586
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)V

    .line 8587
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0318

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0

    .line 8590
    :cond_1b
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1c

    .line 8591
    const-string v1, "InVTCallScreen"

    const-string v1, "onStateChanged: for H324M_REC_START_SUCCESS"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 8595
    :cond_1c
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1e

    .line 8596
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-boolean v1, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    if-eqz v1, :cond_1d

    .line 8598
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iput-boolean v6, v1, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 8600
    :cond_1d
    const-string v1, "InVTCallScreen:: "

    const-string v1, "VTMNGR_CAMERA_START_SUCCESS "

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8601
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 8602
    :cond_1e
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->VTMNGR_CAMERA_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1f

    .line 8603
    const-string v1, "InVTCallScreen:: "

    const-string v1, "VTMNGR_CAMERA_START_FAILURE"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8604
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v7}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8605
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;Z)V

    goto/16 :goto_0

    .line 8606
    :cond_1f
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_STOP_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_22

    .line 8607
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_STOP_SUCCESS"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8608
    invoke-static {}, Lcom/android/phone/MediaLowSpaceReceiver;->unRegisterLowMemoryListner()V

    .line 8609
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8800(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 8610
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031a

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031b

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8621
    :goto_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 8622
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 8624
    :cond_20
    new-array v0, v7, [Ljava/lang/String;

    .line 8625
    .local v0, path:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 8626
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v2, Lcom/android/phone/InVTCallScreen$25$1;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$25$1;-><init>(Lcom/android/phone/InVTCallScreen$25;)V

    invoke-static {v1, v0, v8, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 8631
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$8802(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8616
    .end local v0           #path:[Ljava/lang/String;
    :cond_21
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031b

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_2

    .line 8633
    :cond_22
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_MAX_TIMEOUT:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_24

    .line 8634
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_MAX_TIMEOUT"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8635
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 8636
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)V

    .line 8638
    :cond_23
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031b

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8642
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$8802(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8643
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8644
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 8647
    :cond_24
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_26

    .line 8648
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8649
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 8650
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)V

    .line 8652
    :cond_25
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/InVTCallScreen;->access$8900(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v5, 0x7f0d031b

    invoke-virtual {v4, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    #setter for: Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 8656
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$8802(Lcom/android/phone/InVTCallScreen;Z)Z

    goto/16 :goto_0

    .line 8659
    :cond_26
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_REC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_27

    .line 8660
    const-string v1, "InVTCallScreen:: "

    const-string v1, "H324M_REC_PROTOCOL_ERROR"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8661
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$900(Lcom/android/phone/InVTCallScreen;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8662
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$1000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 8667
    :cond_27
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_SUCCESS:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_28

    .line 8669
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #setter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v1, v6}, Lcom/android/phone/InVTCallScreen;->access$3702(Lcom/android/phone/InVTCallScreen;Z)Z

    .line 8670
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #getter for: Lcom/android/phone/InVTCallScreen;->mHideCheck:Z
    invoke-static {v2}, Lcom/android/phone/InVTCallScreen;->access$3700(Lcom/android/phone/InVTCallScreen;)Z

    move-result v2

    #calls: Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8700(Lcom/android/phone/InVTCallScreen;Z)V

    .line 8671
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    #calls: Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V
    invoke-static {v1}, Lcom/android/phone/InVTCallScreen;->access$9000(Lcom/android/phone/InVTCallScreen;)V

    goto/16 :goto_0

    .line 8674
    :cond_28
    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_PROTOCOL_ERROR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_29

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_29

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_START_FAILURE:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_29

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_29

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_FILE_READ_ERR:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_29

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_UNSUPPORTED_VIDEO:Lsiso/vt/VTManager$VTEventForUI;

    if-eq p1, v1, :cond_29

    sget-object v1, Lsiso/vt/VTManager$VTEventForUI;->H324M_FC_NO_AUDIO:Lsiso/vt/VTManager$VTEventForUI;

    if-ne p1, v1, :cond_1

    .line 8681
    :cond_29
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen$25;->this$0:Lcom/android/phone/InVTCallScreen;

    const v2, 0x7f0d0305

    #calls: Lcom/android/phone/InVTCallScreen;->displayToast(I)V
    invoke-static {v1, v2}, Lcom/android/phone/InVTCallScreen;->access$8400(Lcom/android/phone/InVTCallScreen;I)V

    goto/16 :goto_0
.end method
