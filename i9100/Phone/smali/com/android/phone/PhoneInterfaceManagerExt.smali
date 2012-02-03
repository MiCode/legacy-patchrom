.class public Lcom/android/phone/PhoneInterfaceManagerExt;
.super Lcom/android/internal/telephony/ITelephonyExt$Stub;
.source "PhoneInterfaceManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;,
        Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    }
.end annotation


# instance fields
.field mApp:Lcom/android/phone/PhoneApp;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/phone/PhoneApp;Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "app"
    .parameter "phone"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/telephony/ITelephonyExt$Stub;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    .line 49
    iput-object p2, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 50
    iget-object v0, p1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 51
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->publish()V

    .line 52
    return-void
.end method

.method private enforceModifyPermission()V
    .locals 3

    .prologue
    .line 543
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    return-void
.end method

.method private enforceReadPermission()V
    .locals 3

    .prologue
    .line 556
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mApp:Lcom/android/phone/PhoneApp;

    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/phone/PhoneApp;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 560
    const-string v0, "PhoneInterfaceManagerExt"

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

    .line 561
    return-void
.end method

.method private publish()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/PhoneInterfaceManagerExt;->log(Ljava/lang/String;)V

    .line 57
    const-string v0, "phoneext"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 58
    return-void
.end method


# virtual methods
.method public getActiveCallsCount()I
    .locals 1

    .prologue
    .line 606
    const/4 v0, 0x0

    return v0
.end method

.method public getCallBaseTime()J
    .locals 2

    .prologue
    .line 637
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallTime()J
    .locals 2

    .prologue
    .line 629
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getCallerName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 621
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHoldCallsCount()I
    .locals 1

    .prologue
    .line 613
    const/4 v0, 0x0

    return v0
.end method

.method public getMsisdnavailable()Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 80
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getMsisdnavailable()Z

    move-result v0

    return v0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 586
    const/4 v0, 0x1

    return v0
.end method

.method public getPin2LockKey()I
    .locals 2

    .prologue
    .line 94
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPin2Key()I

    move-result v0

    return v0
.end method

.method public getPinLockKey()I
    .locals 2

    .prologue
    .line 84
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getPinLockKey"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getLockPinKey()I

    move-result v0

    return v0
.end method

.method public getSimPin2Retry()I
    .locals 2

    .prologue
    .line 124
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPin2Retry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPin2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPinRetry()I
    .locals 2

    .prologue
    .line 104
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPinRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPinRetry()I

    move-result v0

    return v0
.end method

.method public getSimPuk2Retry()I
    .locals 2

    .prologue
    .line 135
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPuk2Retry()I

    move-result v0

    return v0
.end method

.method public getSimPukRetry()I
    .locals 2

    .prologue
    .line 114
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getSimPukRetry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getSimLockInfoResult()Lcom/android/internal/telephony/SimLockInfoResult;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimLockInfoResult;->getPukRetry()I

    move-result v0

    return v0
.end method

.method public getTelephonyFeature()Ljava/util/Map;
    .locals 2

    .prologue
    .line 145
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "getTelephonyFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-static {}, Lcom/android/internal/telephony/NonstaticTelephonyFeature;->getInstance()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTimeInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 649
    const/4 v0, 0x0

    return-object v0
.end method

.method public initiateFakecall()V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public isConferenceCall()Z
    .locals 1

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public isFirstCallDialingAndSecondCallActive()Z
    .locals 1

    .prologue
    .line 669
    const/4 v0, 0x0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 657
    const/4 v0, 0x0

    return v0
.end method

.method public isMultiCall()Z
    .locals 1

    .prologue
    .line 665
    const/4 v0, 0x0

    return v0
.end method

.method public isSimFDNEnabled()Z
    .locals 1

    .prologue
    .line 533
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceReadPermission()V

    .line 534
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isSimFDNEnabled()Z

    move-result v0

    return v0
.end method

.method public sendRequestToRIL([B[BI)I
    .locals 1
    .parameter "data"
    .parameter "response"
    .parameter "what"

    .prologue
    .line 645
    const/4 v0, 0x0

    return v0
.end method

.method public setMute(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 579
    return-void
.end method

.method public showPopupCallScreen()Z
    .locals 1

    .prologue
    .line 653
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPerso(Ljava/lang/String;)Z
    .locals 1
    .parameter "passwd"

    .prologue
    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public supplyPin2(Ljava/lang/String;)Z
    .locals 2
    .parameter "pin2"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 69
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 70
    .local v0, checkSimPin2:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->start()V

    .line 71
    invoke-virtual {v0, p1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPin2;->checkPin2(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "puk"
    .parameter "newPin"

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/android/phone/PhoneInterfaceManagerExt;->enforceModifyPermission()V

    .line 62
    new-instance v0, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;

    iget-object v1, p0, Lcom/android/phone/PhoneInterfaceManagerExt;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;-><init>(Lcom/android/internal/telephony/IccCard;)V

    .line 63
    .local v0, checkSimPuk:Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;
    invoke-virtual {v0}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->start()V

    .line 64
    invoke-virtual {v0, p1, p2}, Lcom/android/phone/PhoneInterfaceManagerExt$CheckSimPuk;->checkPuk(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public switchHoldingAndActive()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public turnOnBluetooth()V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method public turnOnSpeaker(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 593
    return-void
.end method

.method public updateRAFTproximity(I)V
    .locals 2
    .parameter "raft_phone_state"

    .prologue
    .line 676
    const-string v0, "PhoneInterfaceManagerExt"

    const-string v1, "updateRAFTproximity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-void
.end method
