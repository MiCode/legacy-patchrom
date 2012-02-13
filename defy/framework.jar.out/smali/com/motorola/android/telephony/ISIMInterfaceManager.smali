.class public Lcom/motorola/android/telephony/ISIMInterfaceManager;
.super Ljava/lang/Object;
.source "ISIMInterfaceManager.java"


# static fields
.field protected static final DBG:Z = true

.field protected static final LOG_TAG:Ljava/lang/String; = "[ISIMInterfaceManager]"


# instance fields
.field private mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "imssimrecords"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/motorola/android/internal/telephony/IISIMInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/android/internal/telephony/IISIMInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ISIM service handle is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/motorola/android/telephony/ISIMInterfaceManager;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ISIMAuthReq(I[BI[B)Lcom/motorola/android/telephony/ISIMAuthRes;
    .locals 3
    .parameter "rand_length"
    .parameter "rand"
    .parameter "autn_length"
    .parameter "autn"

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/motorola/android/internal/telephony/IISIMInterface;->ISIMAuthReq(I[BI[B)Lcom/motorola/android/telephony/ISIMAuthRes;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public dispose()V
    .locals 0

    .prologue
    return-void
.end method

.method public getAllISIMPublicIdentity()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/IISIMInterface;->getAllISIMPublicIdentity()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getISIMAdminData()[B
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/IISIMInterface;->getISIMAdminData()[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getISIMHomeDomain()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/IISIMInterface;->getISIMHomeDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getISIMPCSCF()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/IISIMInterface;->getISIMPCSCF()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    move-object v1, v2

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    move-object v1, v2

    goto :goto_0
.end method

.method public getISIMPrivateIdentity()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-interface {v1}, Lcom/motorola/android/internal/telephony/IISIMInterface;->getISIMPrivateIdentity()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v1

    move-object v0, v1

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "Remote Exception happened"

    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/ISIMInterfaceManager;->loge(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .local v0, ex:Ljava/lang/NullPointerException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null Pointer Exception happened"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/motorola/android/telephony/ISIMInterfaceManager;->mISIMinterface:Lcom/motorola/android/internal/telephony/IISIMInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/motorola/android/telephony/ISIMInterfaceManager;->loge(Ljava/lang/String;)V

    move-object v1, v3

    goto :goto_0
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "[ISIMInterfaceManager]"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "[ISIMInterfaceManager]"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
