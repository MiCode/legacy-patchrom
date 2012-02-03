.class public Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;
.super Ljava/lang/Object;
.source "DevicePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/admin/DevicePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EmailAccountPolicy"
.end annotation


# instance fields
.field private final mService:Landroid/app/enterprise/IEmailAccountPolicy;

.field final synthetic this$0:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method private constructor <init>(Landroid/app/admin/DevicePolicyManager;)V
    .locals 1
    .parameter

    .prologue
    .line 3085
    iput-object p1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->this$0:Landroid/app/admin/DevicePolicyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3086
    const-string v0, "email_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/enterprise/IEmailAccountPolicy;

    move-result-object v0

    iput-object v0, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    .line 3088
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/admin/DevicePolicyManager;Landroid/app/admin/DevicePolicyManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3081
    invoke-direct {p0, p1}, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;-><init>(Landroid/app/admin/DevicePolicyManager;)V

    return-void
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 33
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "isDefault"
    .parameter "senderName"
    .parameter "protocolVersion"
    .parameter "signature"
    .parameter "emailNotificationVibrateAlways"
    .parameter "emailNotificationVibrateWhenSilent"
    .parameter "inComingProtocol"
    .parameter "inComingServerAddress"
    .parameter "inComingServerPort"
    .parameter "inComingServerUseSSL"
    .parameter "inComingServerUseTLS"
    .parameter "inComingServerAcceptAllCertificates"
    .parameter "inComingServerLogin"
    .parameter "inComingServerPassword"
    .parameter "inComingServerPathPrefix"
    .parameter "outGoingProtocol"
    .parameter "outGoingServerAddress"
    .parameter "outGoingServerPort"
    .parameter "outGoingServerUseSSL"
    .parameter "outGoingServerUseTLS"
    .parameter "outGoingServerAcceptAllCertificates"
    .parameter "outGoingServerLogin"
    .parameter "outGoingServerPassword"
    .parameter "outGoingServerPathPrefix"

    .prologue
    .line 3126
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object v3, v0

    if-eqz v3, :cond_0

    .line 3128
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move/from16 v17, p14

    move/from16 v18, p15

    move/from16 v19, p16

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move/from16 v26, p23

    move/from16 v27, p24

    move/from16 v28, p25

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    invoke-interface/range {v3 .. v31}, Landroid/app/enterprise/IEmailAccountPolicy;->addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 3142
    :goto_0
    return-wide v3

    .line 3138
    :catch_0
    move-exception v3

    move-object/from16 v32, v3

    .line 3139
    .local v32, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Failed talking with email account policy"

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v32

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3142
    .end local v32           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v3, -0x1

    goto :goto_0
.end method

.method public deleteAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 3656
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3658
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->deleteAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3663
    :goto_0
    return v1

    .line 3659
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3660
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3663
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 3
    .parameter "accId"

    .prologue
    .line 3639
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3641
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 3646
    :goto_0
    return-object v1

    .line 3642
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3643
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3646
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    .line 3628
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3630
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3635
    :goto_0
    return-wide v1

    .line 3631
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3632
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3635
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 3

    .prologue
    .line 3670
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3672
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1}, Landroid/app/enterprise/IEmailAccountPolicy;->sendAccountsChangedBroadcast()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3677
    :cond_0
    :goto_0
    return-void

    .line 3673
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3674
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 3
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 3146
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3148
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAccountName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3153
    :goto_0
    return v1

    .line 3149
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3150
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3153
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
    .line 3269
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3271
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setAlwaysVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3276
    :goto_0
    return v1

    .line 3272
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3273
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3276
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 3612
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3614
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2}, Landroid/app/enterprise/IEmailAccountPolicy;->setAsDefaultAccount(J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3619
    :goto_0
    return v1

    .line 3615
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3616
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3619
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .locals 3
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 3157
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3159
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setEmailAddress(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3164
    :goto_0
    return v1

    .line 3160
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3161
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3164
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 3304
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3306
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingProtocol(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3311
    :goto_0
    return v1

    .line 3307
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3308
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3311
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 3390
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3392
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3398
    :goto_0
    return v1

    .line 3394
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3395
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3398
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 3315
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3317
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3322
    :goto_0
    return-wide v1

    .line 3318
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3319
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3322
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .locals 3
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 3402
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3404
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerLogin(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3409
    :goto_0
    return-wide v1

    .line 3405
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3406
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3409
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 3422
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3424
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3429
    :goto_0
    return v1

    .line 3425
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3426
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3429
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 3442
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3444
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3449
    :goto_0
    return v1

    .line 3445
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3446
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3449
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 3
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 3326
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3328
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerPort(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3333
    :goto_0
    return v1

    .line 3329
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3330
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3333
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 3347
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3349
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3354
    :goto_0
    return v1

    .line 3350
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3351
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3354
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerTLS(ZJ)Z
    .locals 3
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 3368
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3370
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setInComingServerTLS(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3375
    :goto_0
    return v1

    .line 3371
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3372
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3375
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .locals 3
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 3456
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3458
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingProtocol(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3463
    :goto_0
    return v1

    .line 3459
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3460
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3463
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 3
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 3542
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3544
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAcceptAllCertificates(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3550
    :goto_0
    return v1

    .line 3546
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3547
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3550
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 3
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 3467
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3469
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerAddress(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3474
    :goto_0
    return-wide v1

    .line 3470
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3471
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3474
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .locals 3
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 3554
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3556
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerLogin(Ljava/lang/String;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 3561
    :goto_0
    return-wide v1

    .line 3557
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3558
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3561
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const-wide/16 v1, -0x1

    goto :goto_0
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 3
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 3574
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3576
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPassword(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3581
    :goto_0
    return v1

    .line 3577
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3578
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3581
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 3
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 3594
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3596
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3601
    :goto_0
    return v1

    .line 3597
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3598
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3601
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 3
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 3478
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3480
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerPort(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3485
    :goto_0
    return v1

    .line 3481
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3482
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3485
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 3
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 3499
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3501
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerSSL(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3506
    :goto_0
    return v1

    .line 3502
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3503
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3506
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerTLS(ZJ)Z
    .locals 3
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 3520
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3522
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setOutGoingServerTLS(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3527
    :goto_0
    return v1

    .line 3523
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3524
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3527
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
    .line 3179
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3181
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setPastDaysToSync(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3186
    :goto_0
    return v1

    .line 3182
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3183
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3186
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
    .line 3228
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3230
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSenderName(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3235
    :goto_0
    return v1

    .line 3231
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3232
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3235
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
    .line 3248
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3250
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSignature(Ljava/lang/String;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3255
    :goto_0
    return v1

    .line 3251
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3252
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3255
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
    .line 3290
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3292
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSilentVibrateOnEmailNotification(ZJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3297
    :goto_0
    return v1

    .line 3293
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3294
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3297
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
    .line 3208
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    if-eqz v1, :cond_0

    .line 3210
    :try_start_0
    iget-object v1, p0, Landroid/app/admin/DevicePolicyManager$EmailAccountPolicy;->mService:Landroid/app/enterprise/IEmailAccountPolicy;

    invoke-interface {v1, p1, p2, p3}, Landroid/app/enterprise/IEmailAccountPolicy;->setSyncInterval(IJ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 3215
    :goto_0
    return v1

    .line 3211
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 3212
    .local v0, e:Landroid/os/RemoteException;
    invoke-static {}, Landroid/app/admin/DevicePolicyManager;->access$900()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed talking with email account policy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3215
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
