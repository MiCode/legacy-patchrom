.class public Lcom/motorola/android/telephony/PhoneNVInfoProxy;
.super Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;
.source "PhoneNVInfoProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PhoneNVInfoProxy"


# instance fields
.field private mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;


# direct methods
.method public constructor <init>(Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;)V
    .locals 2
    .parameter "phoneNVInfo"

    .prologue
    const-string v1, "iphonenvinfo"

    invoke-direct {p0}, Lcom/motorola/android/telephony/IPhoneNVInfo$Stub;-><init>()V

    iput-object p1, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const-string v0, "iphonenvinfo"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "iphonenvinfo"

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getImsCdmaScanTimer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f54

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsEmpaSupported()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsHomeDomain()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4c

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsMultimodeScanTimer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f53

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsPcscfPort()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4b

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsPhoneContextURI()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4d

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImsSigComp()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4e

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsFormat()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f51

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsSmsOverIP()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f52

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsT1Timer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f48

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsT2Timer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f50

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getImsTestMode()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getImsTfTimer()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4f

    invoke-virtual {v0, v1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getPhoneNVInfoInt(I)I

    move-result v0

    return v0
.end method

.method public getModemAPN()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->getModemAPN()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->registerObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    return-void
.end method

.method public setImsCdmaScanTimer(I)I
    .locals 2
    .parameter "cdma"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f54

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsEmpaSupported(Z)I
    .locals 2
    .parameter "empa"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsHomeDomain(Ljava/lang/String;)I
    .locals 2
    .parameter "domain"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4c

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsMultimodeScanTimer(I)I
    .locals 2
    .parameter "mm"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f53

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsPcscfPort(I)I
    .locals 2
    .parameter "port"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4b

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsPhoneContextURI(Ljava/lang/String;)I
    .locals 2
    .parameter "uri"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4d

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setImsSigComp(Z)I
    .locals 2
    .parameter "sigcomp"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4e

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsSmsFormat(Z)I
    .locals 2
    .parameter "format"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f51

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsSmsOverIP(Z)I
    .locals 2
    .parameter "on"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f52

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsT1Timer(I)I
    .locals 2
    .parameter "t1"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f48

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsT2Timer(I)I
    .locals 2
    .parameter "t2"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f50

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setImsTestMode(Z)I
    .locals 2
    .parameter "enabled"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x2b

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(IZ)I

    move-result v0

    return v0
.end method

.method public setImsTfTimer(I)I
    .locals 2
    .parameter "tf"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    const/16 v1, 0x1f4f

    invoke-virtual {v0, v1, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setPhoneNVInfo(II)I

    move-result v0

    return v0
.end method

.method public setModemAPN(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "apn_str"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->setModemAPN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V
    .locals 1
    .parameter "ob"

    .prologue
    iget-object v0, p0, Lcom/motorola/android/telephony/PhoneNVInfoProxy;->mPhoneNVInfo:Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;

    invoke-virtual {v0, p1}, Lcom/motorola/android/telephony/cdma/CDMAPhoneNVInfo;->unregisterObserver(Lcom/motorola/android/telephony/IPhoneNVInfoObserver;)V

    return-void
.end method
