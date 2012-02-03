.class public Lcom/android/phone/PhoneInterfaceManager;
.super Lcom/android/internal/telephony/ITelephony$Stub;
.source "PhoneInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManager$1;,
        Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;,
        Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;,
        Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;,
        Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;,
        Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    }
.end annotation


# instance fields
.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephony$Stub;-><init>()V

    .line 537
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    .line 538
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 539
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 540
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;-><init>(Lcom/android/phone/PhoneInterfaceManager;Lcom/android/phone/PhoneInterfaceManager$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    .line 541
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->publish()V

    .line 542
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/PhoneInterfaceManager;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->answerRingingCallInternal()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/PhoneInterfaceManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->silenceRingerInternal()V

    return-void
.end method

.method private answerRingingCallInternal()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 745
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    move v2, v5

    .line 746
    .local v2, hasRingingCall:Z
    :goto_0
    if-eqz v2, :cond_0

    .line 747
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v5

    .line 748
    .local v0, hasActiveCall:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v5

    .line 749
    .local v1, hasHoldingCall:Z
    :goto_2
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 755
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v4, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 766
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_0
    :goto_3
    return-void

    .end local v2           #hasRingingCall:Z
    :cond_1
    move v2, v4

    .line 745
    goto :goto_0

    .restart local v2       #hasRingingCall:Z
    :cond_2
    move v0, v4

    .line 747
    goto :goto_1

    .restart local v0       #hasActiveCall:Z
    :cond_3
    move v1, v4

    .line 748
    goto :goto_2

    .line 761
    .restart local v1       #hasHoldingCall:Z
    :cond_4
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_3
.end method

.method private createTelUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 1123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    const/4 v1, 0x0

    .line 1129
    :goto_0
    return-object v1

    .line 1127
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "tel:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v0, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private enforceCallPermission()V
    .locals 3

    .prologue
    .line 1118
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 1096
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    return-void
.end method

.method private exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x44d

    if-eq v2, v3, :cond_0

    .line 579
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Only Smartcard API may access UICC"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 580
    :cond_0
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "> exchangeAPDU "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/4 v10, 0x7

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;

    move v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v2 .. v9}, Lcom/android/phone/PhoneInterfaceManager$IccAPDUArgument;-><init>(IIIIIILjava/lang/String;)V

    invoke-direct {p0, v10, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/IccIoResult;

    .line 584
    .local v10, response:Lcom/android/internal/telephony/IccIoResult;
    const-string v2, "PhoneInterfaceManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "< exchangeAPDU "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    iget v2, v10, Lcom/android/internal/telephony/IccIoResult;->sw1:I

    shl-int/lit8 v2, v2, 0x8

    iget v3, v10, Lcom/android/internal/telephony/IccIoResult;->sw2:I

    add-int/2addr v2, v3

    const/high16 v3, 0x1

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 587
    .local v11, s:Ljava/lang/String;
    iget-object v2, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    if-eqz v2, :cond_1

    .line 588
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v10, Lcom/android/internal/telephony/IccIoResult;->payload:[B

    invoke-static {v3}, Lcom/android/internal/telephony/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 589
    :cond_1
    return-object v11
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1133
    const-string v0, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PhoneIntfMgr] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1134
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 548
    const-string v0, "phone"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 549
    return-void
.end method

.method private sendRequest(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .parameter "command"
    .parameter "argument"

    .prologue
    .line 502
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v3}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 503
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "This method will deadlock if called from the main thread."

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 507
    :cond_0
    new-instance v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;

    invoke-direct {v1, p2}, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;-><init>(Ljava/lang/Object;)V

    .line 508
    .local v1, request:Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v2, p1, v1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 509
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 512
    monitor-enter v1

    .line 513
    :goto_0
    :try_start_0
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_1

    .line 515
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 516
    :catch_0
    move-exception v2

    goto :goto_0

    .line 521
    :cond_1
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 522
    iget-object v2, v1, Lcom/android/phone/PhoneInterfaceManager$MainThreadRequest;->result:Ljava/lang/Object;

    return-object v2

    .line 521
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private sendRequestAsync(I)V
    .locals 1
    .parameter "command"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mMainThreadHandler:Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;

    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$MainThreadHandler;->sendEmptyMessage(I)Z

    .line 534
    return-void
.end method

.method private showCallScreenInternal(ZZ)Z
    .locals 4
    .parameter "specifyInitialDialpadState"
    .parameter "initialDialpadState"

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 675
    const/4 v3, 0x0

    .line 692
    :goto_0
    return v3

    .line 678
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 681
    .local v0, callingId:J
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 682
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInVTCallIntent()Landroid/content/Intent;

    move-result-object v2

    .line 688
    .local v2, intent:Landroid/content/Intent;
    :goto_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v2}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 690
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    const/4 v3, 0x1

    goto :goto_0

    .line 683
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    if-eqz p1, :cond_2

    .line 684
    :try_start_1
    invoke-static {p2}, Lcom/android/phone/PhoneApp;->createInCallIntent(Z)Landroid/content/Intent;

    move-result-object v2

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 686
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->createInCallIntent()Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .restart local v2       #intent:Landroid/content/Intent;
    goto :goto_1

    .line 690
    .end local v2           #intent:Landroid/content/Intent;
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method private silenceRingerInternal()V
    .locals 2

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 791
    const-string v0, "silenceRingerInternal: silencing..."

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 794
    :cond_0
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 1

    .prologue
    .line 720
    const-string v0, "answerRingingCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 726
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 727
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 728
    return-void
.end method

.method public answerVoIPCall()Z
    .locals 1

    .prologue
    .line 1242
    const/4 v0, 0x0

    return v0
.end method

.method public call(Ljava/lang/String;)V
    .locals 4
    .parameter "number"

    .prologue
    .line 654
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 659
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 661
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 662
    .local v1, url:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 670
    :goto_0
    return-void

    .line 666
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 667
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 668
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v2, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public callInVoIP(Ljava/lang/String;)V
    .locals 0
    .parameter "number"

    .prologue
    .line 1298
    return-void
.end method

.method public cancelMissedCallsNotification()V
    .locals 1

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1012
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->cancelMissedCallNotification()V

    .line 1013
    return-void
.end method

.method public changeUARFCN(I)Z
    .locals 1
    .parameter "ch"

    .prologue
    .line 1379
    const/4 v0, 0x0

    return v0
.end method

.method public closeIccLogicalChannel(I)Z
    .locals 4
    .parameter "channel"

    .prologue
    const-string v3, "PhoneInterfaceManager"

    .line 619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x44d

    if-eq v1, v2, :cond_0

    .line 620
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 621
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> closeIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/16 v1, 0xb

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;

    invoke-direct {v2, p1}, Lcom/android/phone/PhoneInterfaceManager$IccCloseChannel;-><init>(I)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 624
    .local v0, err:Ljava/lang/Integer;
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "< closeIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 626
    const/4 v1, 0x0

    .line 628
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 5
    .parameter "number"

    .prologue
    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dial: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 638
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneInterfaceManager;->createTelUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 639
    .local v2, url:Ljava/lang/String;
    if-nez v2, :cond_1

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 644
    :cond_1
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 645
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v3, :cond_0

    .line 646
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 647
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 648
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    invoke-virtual {v3, v0}, Lcom/android/phone/PhoneApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public disableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 972
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 973
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->disableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public disableDataConnectivity()Z
    .locals 1

    .prologue
    .line 977
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 978
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    .line 1054
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->disableLocationUpdates()V

    .line 1057
    return-void
.end method

.method public disableStatusBarforVoIP()V
    .locals 0

    .prologue
    .line 1352
    return-void
.end method

.method public enableApnType(Ljava/lang/String;)I
    .locals 1
    .parameter "type"

    .prologue
    .line 967
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 968
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/Phone;->enableApnType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public enableDataConnectivity()Z
    .locals 1

    .prologue
    .line 962
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 963
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableDataConnectivity()Z

    move-result v0

    return v0
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.CONTROL_LOCATION_UPDATES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->enableLocationUpdates()V

    .line 1051
    return-void
.end method

.method public endCall()Z
    .locals 2

    .prologue
    .line 714
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceCallPermission()V

    .line 715
    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public getActivePhoneType()I
    .locals 1

    .prologue
    .line 1137
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    return v0
.end method

.method public getActiveVoIPCallsCount()I
    .locals 1

    .prologue
    .line 1341
    const/4 v0, 0x0

    return v0
.end method

.method public getCallState()I
    .locals 1

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertCallState(Lcom/android/internal/telephony/Phone$State;)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 1144
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconIndex()I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriIconMode()I

    move-result v0

    return v0
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1158
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaNeedsProvisioning()Z
    .locals 6

    .prologue
    .line 1165
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->getActivePhoneType()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 1166
    const/4 v3, 0x0

    .line 1178
    :goto_0
    return v3

    .line 1169
    :cond_0
    const/4 v2, 0x0

    .line 1170
    .local v2, needsProvisioning:Z
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getCdmaMin()Ljava/lang/String;

    move-result-object v0

    .line 1172
    .local v0, cdmaMin:Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Lcom/android/phone/OtaUtils;->needsActivation(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :goto_1
    move v3, v2

    .line 1178
    goto :goto_0

    .line 1173
    :catch_0
    move-exception v1

    .line 1175
    .local v1, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA MIN string "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_1

    const-string v5, "was null"

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    const-string v5, "was too short"

    goto :goto_2
.end method

.method public getCellLocation()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 1031
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1042
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1043
    .local v0, data:Landroid/os/Bundle;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/telephony/CellLocation;->fillInNotifierBundle(Landroid/os/Bundle;)V

    .line 1044
    return-object v0

    .line 1033
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1039
    .local v1, e:Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v2, v3, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getCurrentVoIPNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1294
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDataActivity()I
    .locals 1

    .prologue
    .line 1025
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataActivityState(Lcom/android/internal/telephony/Phone$DataActivityState;)I

    move-result v0

    return v0
.end method

.method public getDataNetworkDisable()Z
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x0

    return v0
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1364
    const/4 v0, 0x0

    return v0
.end method

.method public getDataState()I
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getDataConnectionState()Lcom/android/internal/telephony/Phone$DataState;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/DefaultPhoneNotifier;->convertDataState(Lcom/android/internal/telephony/Phone$DataState;)I

    move-result v0

    return v0
.end method

.method public getHoldVoIPCallsCount()I
    .locals 1

    .prologue
    .line 1348
    const/4 v0, 0x0

    return v0
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 1062
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    :goto_0
    const/4 v1, 0x0

    .line 1076
    .local v1, cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    const/4 v3, 0x2

    const/4 v4, 0x0

    :try_start_1
    invoke-direct {p0, v3, v4}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1082
    :goto_1
    return-object v1

    .line 1064
    .end local v1           #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1069
    .local v2, e:Ljava/lang/SecurityException;
    iget-object v3, p0, Lcom/android/phone/PhoneInterfaceManager;->mApp:Lcom/android/phone/PhoneApp;

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1078
    .end local v2           #e:Ljava/lang/SecurityException;
    .restart local v1       #cells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/telephony/NeighboringCellInfo;>;"
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 1079
    .local v2, e:Ljava/lang/RuntimeException;
    const-string v3, "PhoneInterfaceManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNeighboringCellInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 1192
    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 1193
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 1218
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1195
    :pswitch_0
    const/4 v1, 0x1

    goto :goto_0

    .line 1197
    :pswitch_1
    const/4 v1, 0x2

    goto :goto_0

    .line 1199
    :pswitch_2
    const/4 v1, 0x3

    goto :goto_0

    .line 1201
    :pswitch_3
    const/16 v1, 0x8

    goto :goto_0

    .line 1203
    :pswitch_4
    const/16 v1, 0x9

    goto :goto_0

    .line 1205
    :pswitch_5
    const/16 v1, 0xa

    goto :goto_0

    .line 1208
    :pswitch_6
    const/4 v1, 0x4

    goto :goto_0

    .line 1210
    :pswitch_7
    const/4 v1, 0x7

    goto :goto_0

    .line 1212
    :pswitch_8
    const/4 v1, 0x5

    goto :goto_0

    .line 1214
    :pswitch_9
    const/4 v1, 0x6

    goto :goto_0

    .line 1216
    :pswitch_a
    const/16 v1, 0xc

    goto :goto_0

    .line 1193
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_a
    .end packed-switch
.end method

.method public getPhoneServiceState()I
    .locals 1

    .prologue
    .line 935
    const/4 v0, 0x0

    return v0
.end method

.method public getServiceState()I
    .locals 1

    .prologue
    .line 1371
    const/4 v0, 0x0

    return v0
.end method

.method public getVoIPCallBaseTime()J
    .locals 2

    .prologue
    .line 1313
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getVoIPMute()Z
    .locals 1

    .prologue
    .line 1324
    const/4 v0, 0x0

    return v0
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 1185
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getVoiceMessageCount()I

    move-result v0

    return v0
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 1
    .parameter "dialString"

    .prologue
    .line 1006
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 1007
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hangupVoIPCall()Z
    .locals 1

    .prologue
    .line 1246
    const/4 v0, 0x0

    return v0
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1226
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->hasIccCard()Z

    move-result v0

    return v0
.end method

.method public isAlerting()Z
    .locals 1

    .prologue
    .line 1305
    const/4 v0, 0x0

    return v0
.end method

.method public isAnyKeyMode()Z
    .locals 1

    .prologue
    .line 1238
    const/4 v0, 0x0

    return v0
.end method

.method public isDataConnectivityPossible()Z
    .locals 1

    .prologue
    .line 1002
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->isDataConnectivityPossible()Z

    move-result v0

    return v0
.end method

.method public isDialing()Z
    .locals 1

    .prologue
    .line 915
    const/4 v0, 0x0

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .prologue
    .line 805
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOffhook()Z
    .locals 2

    .prologue
    .line 797
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRadioOn()Z
    .locals 2

    .prologue
    .line 910
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRinging()Z
    .locals 2

    .prologue
    .line 801
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRoamingArea()Z
    .locals 1

    .prologue
    .line 988
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 927
    const/4 v0, 0x0

    return v0
.end method

.method public isSimPermBlocked()I
    .locals 2

    .prologue
    .line 823
    const-string v0, "PhoneInterfaceManager"

    const-string v1, "isSimPermBlocked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->isSimBlocked()I

    move-result v0

    return v0
.end method

.method public isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 809
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceReadPermission()V

    .line 810
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimPinEnabled()Z

    move-result v0

    return v0
.end method

.method public isStartVideoCall()Z
    .locals 1

    .prologue
    .line 923
    const/4 v0, 0x0

    return v0
.end method

.method public isVideoCall()Z
    .locals 1

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public isVoIPActivated()Z
    .locals 1

    .prologue
    .line 1290
    const/4 v0, 0x0

    return v0
.end method

.method public isVoIPDialing()Z
    .locals 1

    .prologue
    .line 1286
    const/4 v0, 0x0

    return v0
.end method

.method public isVoIPIdle()Z
    .locals 1

    .prologue
    .line 1274
    const/4 v0, 0x0

    return v0
.end method

.method public isVoIPRingOrDialing()Z
    .locals 1

    .prologue
    .line 1278
    const/4 v0, 0x0

    return v0
.end method

.method public isVoIPRinging()Z
    .locals 1

    .prologue
    .line 1282
    const/4 v0, 0x0

    return v0
.end method

.method public moveVoIPToTop()Z
    .locals 1

    .prologue
    .line 1301
    const/4 v0, 0x0

    return v0
.end method

.method public notifyMissedCall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .parameter "name"
    .parameter "number"
    .parameter "label"
    .parameter "date"

    .prologue
    .line 997
    return-void
.end method

.method public openIccLogicalChannel(Ljava/lang/String;)I
    .locals 4
    .parameter "AID"

    .prologue
    const-string v3, "PhoneInterfaceManager"

    .line 609
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x44d

    if-eq v1, v2, :cond_0

    .line 610
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Only Smartcard API may access UICC"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 611
    :cond_0
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "> openIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v1, 0x9

    new-instance v2, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;

    invoke-direct {v2, p1}, Lcom/android/phone/PhoneInterfaceManager$IccOpenChannel;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/android/phone/PhoneInterfaceManager;->sendRequest(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 614
    .local v0, channel:Ljava/lang/Integer;
    const-string v1, "PhoneInterfaceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "< openIccLogicalChannel "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method public reenableStatusBarforVoIP()V
    .locals 0

    .prologue
    .line 1355
    return-void
.end method

.method public registerForCurrentVoIP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "apkName"
    .parameter "actionExitName"
    .parameter "voipPhoneNumber"

    .prologue
    .line 1232
    return-void
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 1
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    .line 943
    const/4 v0, 0x1

    return v0
.end method

.method public setActiveVoIPCallsCount(I)V
    .locals 0
    .parameter "activeCalls"

    .prologue
    .line 1338
    return-void
.end method

.method public setDMPort(Ljava/lang/String;)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 1375
    const/4 v0, 0x0

    return v0
.end method

.method public setDataConnectionToggleExt()I
    .locals 1

    .prologue
    .line 984
    const/4 v0, 0x1

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 0
    .parameter "set"

    .prologue
    .line 1361
    return-void
.end method

.method public setDefaultSharedPreferencesForPhone(Ljava/lang/String;Z)V
    .locals 0
    .parameter "pref"
    .parameter "set"

    .prologue
    .line 1368
    return-void
.end method

.method public setHoldVoIPCallsCount(I)V
    .locals 0
    .parameter "holdCalls"

    .prologue
    .line 1345
    return-void
.end method

.method public setRadio(Z)Z
    .locals 3
    .parameter "turnOn"

    .prologue
    const/4 v2, 0x1

    .line 954
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 955
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    move v0, v2

    :goto_0
    if-eq v0, p1, :cond_0

    .line 956
    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->toggleRadioOnOff()V

    .line 958
    :cond_0
    return v2

    .line 955
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVoIPCallBaseTime(J)V
    .locals 0
    .parameter "baseCallTime"

    .prologue
    .line 1317
    return-void
.end method

.method public setVoIPDialing()V
    .locals 0

    .prologue
    .line 1253
    return-void
.end method

.method public setVoIPDisconnected()V
    .locals 0

    .prologue
    .line 1265
    return-void
.end method

.method public setVoIPDisconnecting()V
    .locals 0

    .prologue
    .line 1262
    return-void
.end method

.method public setVoIPHolding()V
    .locals 0

    .prologue
    .line 1271
    return-void
.end method

.method public setVoIPIdle()V
    .locals 0

    .prologue
    .line 1259
    return-void
.end method

.method public setVoIPInCall()V
    .locals 0

    .prologue
    .line 1256
    return-void
.end method

.method public setVoIPMute(Z)Z
    .locals 1
    .parameter "flag"

    .prologue
    .line 1331
    const/4 v0, 0x0

    return v0
.end method

.method public setVoIPMuteState(Z)V
    .locals 0
    .parameter "falg"

    .prologue
    .line 1328
    return-void
.end method

.method public setVoIPRinging()V
    .locals 0

    .prologue
    .line 1250
    return-void
.end method

.method public setVoIPWaiting()V
    .locals 0

    .prologue
    .line 1268
    return-void
.end method

.method public showCallScreen()Z
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 697
    invoke-direct {p0, v0, v0}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public showCallScreenWithDialpad(Z)Z
    .locals 1
    .parameter "showDialpad"

    .prologue
    .line 705
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/phone/PhoneInterfaceManager;->showCallScreenInternal(ZZ)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 1

    .prologue
    .line 772
    const-string v0, "silenceRinger..."

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->log(Ljava/lang/String;)V

    .line 776
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 777
    const/4 v0, 0x6

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->sendRequestAsync(I)V

    .line 778
    return-void
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin"

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 815
    new-instance v0, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 816
    .local v0, checkSimPin:Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->start()V

    .line 817
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManager$CheckSimPin;->checkPin(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchVoIPHoldingAndActive()Z
    .locals 1

    .prologue
    .line 1320
    const/4 v0, 0x0

    return v0
.end method

.method public toggleRadioOnOff()V
    .locals 2

    .prologue
    .line 949
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManager;->enforceModifyPermission()V

    .line 950
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/phone/PhoneInterfaceManager;->isRadioOn()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    .line 951
    return-void

    .line 950
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public transmitIccAPDU(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "cla"
    .parameter "command"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 598
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transmitIccLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "cla"
    .parameter "command"
    .parameter "channel"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"
    .parameter "data"

    .prologue
    .line 604
    invoke-direct/range {p0 .. p7}, Lcom/android/phone/PhoneInterfaceManager;->exchangeIccAPDU(IIIIIILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public turnOnVoIPSpeaker(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 1335
    return-void
.end method

.method public unregisterForCurrentVoIP()V
    .locals 0

    .prologue
    .line 1235
    return-void
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->updateServiceLocation()V

    .line 907
    return-void
.end method
