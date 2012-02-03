.class public Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExchangeAccountPolicy"
.end annotation


# instance fields
.field private mAccId:J

.field private mDomain:Ljava/lang/String;

.field private mEmailAddress:Ljava/lang/String;

.field private mHost:Ljava/lang/String;

.field private final mService:Landroid/app/enterprise/IExchangeAccountPolicy;

.field private mUser:Ljava/lang/String;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 2397
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2398
    const-string v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IExchangeAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    .line 2400
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 2387
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    .locals 23
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "easUser"
    .parameter "easDomain"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "serverAddress"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "serverPassword"
    .parameter "serverPathPrefix"

    .prologue
    .line 2458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 2460
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    move/from16 v14, p11

    move/from16 v15, p12

    move-object/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    invoke-interface/range {v3 .. v21}, Landroid/app/enterprise/IExchangeAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;ZZZLjava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 2469
    :goto_0
    return-wide v3

    .line 2465
    :catch_0
    move-exception v3

    move-object/from16 v22, v3

    .line 2466
    .local v22, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with exchange account policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2469
    .end local v22           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 2914
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2916
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2921
    :goto_0
    return v1

    .line 2917
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2918
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2921
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    .line 2896
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2898
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 2903
    :goto_0
    return-object v1

    .line 2899
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2900
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2903
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "easDomain"
    .parameter "easUser"
    .parameter "activeSyncHost"

    .prologue
    .line 2878
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2880
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 2885
    :goto_0
    return-wide v1

    .line 2881
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2882
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2885
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 8

    .prologue
    const-wide/16 v2, 0x0

    const-string/jumbo v0, "setAccountBaseParameters : "

    .line 2928
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_1

    .line 2930
    :try_start_0
    iget-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 2932
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2934
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2935
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2936
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAccountBaseParameters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2937
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    iget-object v2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iget-object v3, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iget-wide v5, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J

    .line 2938
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 2939
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2941
    :cond_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v0}, Landroid/app/enterprise/IExchangeAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2946
    :cond_1
    :goto_0
    return-void

    .line 2942
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2943
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 2608
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2610
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2615
    :goto_0
    return v1

    .line 2611
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2612
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2615
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    .locals 8
    .parameter "user"
    .parameter "domain"
    .parameter "emailAddress"
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 2488
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 2490
    :try_start_0
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-wide v5, p5

    invoke-interface/range {v0 .. v6}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountBaseParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2495
    :goto_0
    return-wide v0

    .line 2491
    :catch_0
    move-exception v0

    move-object v7, v0

    .line 2492
    .local v7, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed talking with exchange account policy"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2495
    .end local v7           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 2854
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2856
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2861
    :goto_0
    return v1

    .line 2857
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2858
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2861
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 3
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 2629
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2631
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2636
    :goto_0
    return v1

    .line 2632
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2633
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2636
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 2833
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2835
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IExchangeAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2840
    :goto_0
    return v1

    .line 2836
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2837
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2840
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setClientAuthCert([BLjava/lang/String;J)V
    .locals 3
    .parameter "certData"
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 2958
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2960
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3, p4}, Landroid/app/enterprise/IExchangeAccountPolicy;->setClientAuthCert([BLjava/lang/String;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2965
    :cond_0
    :goto_0
    return-void

    .line 2961
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2962
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setDomain(Ljava/lang/String;J)V
    .locals 1
    .parameter "domain"
    .parameter "accId"

    .prologue
    .line 2669
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 2671
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mDomain:Ljava/lang/String;

    .line 2672
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2677
    :cond_0
    return-void
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .locals 1
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 2546
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 2548
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mEmailAddress:Ljava/lang/String;

    .line 2549
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2554
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setHost(Ljava/lang/String;J)V
    .locals 1
    .parameter "host"
    .parameter "accId"

    .prologue
    .line 2507
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 2509
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mHost:Ljava/lang/String;

    .line 2510
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2515
    :cond_0
    return-void
.end method

.method public setPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 2689
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2691
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2696
    :goto_0
    return v1

    .line 2692
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2693
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2696
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 3
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    .line 2751
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2753
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2758
    :goto_0
    return v1

    .line 2754
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2755
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2758
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setProtocolVersion(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocolVersion"
    .parameter "accId"

    .prologue
    .line 2709
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2711
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setProtocolVersion(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2716
    :goto_0
    return v1

    .line 2712
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2713
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2716
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 2567
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2569
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2574
    :goto_0
    return v1

    .line 2570
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2571
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2574
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 2795
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2797
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2802
    :goto_0
    return v1

    .line 2798
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2799
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2802
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 2815
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2817
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2822
    :goto_0
    return v1

    .line 2818
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2819
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2822
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 3
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 2729
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2731
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2736
    :goto_0
    return v1

    .line 2732
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2733
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2736
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 3
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 2650
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2652
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2657
    :goto_0
    return v1

    .line 2653
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2654
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2657
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 3
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 2775
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2777
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2782
    :goto_0
    return v1

    .line 2778
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2779
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2782
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setTLS(ZJ)Z
    .locals 3
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 2587
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v1, :cond_0

    .line 2589
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IExchangeAccountPolicy;->setTLS(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 2594
    :goto_0
    return v1

    .line 2590
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 2591
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with exchange account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2594
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setUser(Ljava/lang/String;J)V
    .locals 1
    .parameter "user"
    .parameter "accId"

    .prologue
    .line 2526
    iget-object v0, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mService:Landroid/app/enterprise/IExchangeAccountPolicy;

    if-eqz v0, :cond_0

    .line 2528
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mUser:Ljava/lang/String;

    .line 2529
    iput-wide p2, p0, Landroid/app/admin/DevicePolicyManager$ExchangeAccountPolicy;->mAccId:J

    .line 2534
    :cond_0
    return-void
.end method
