.class public Lcom/android/server/enterprise/EmailAccountPolicy;
.super Landroid/app/enterprise/IEmailAccountPolicy$Stub;
.source "EmailAccountPolicy.java"


# static fields
.field private static final RESTART_DELAY:I = 0x1388

.field private static final RESTART_EMAIL_APP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EmailAccountPolicy"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "ctx"

    .prologue
    .line 21
    invoke-direct {p0}, Landroid/app/enterprise/IEmailAccountPolicy$Stub;-><init>()V

    .line 557
    new-instance v0, Lcom/android/server/enterprise/EmailAccountPolicy$1;

    invoke-direct {v0, p0}, Lcom/android/server/enterprise/EmailAccountPolicy$1;-><init>(Lcom/android/server/enterprise/EmailAccountPolicy;)V

    iput-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mHandler:Landroid/os/Handler;

    .line 22
    iput-object p1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/enterprise/EmailAccountPolicy;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private booleanToByte(Z)B
    .locals 1
    .parameter "value"

    .prologue
    .line 496
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized reCreate(Ljava/lang/String;Ljava/lang/String;JZ)J
    .locals 42
    .parameter "emailAddress"
    .parameter "serverAddress"
    .parameter "accId"
    .parameter "inComing"

    .prologue
    .line 448
    monitor-enter p0

    const-wide/16 v40, -0x1

    .line 450
    .local v40, newAccountId:J
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reCreate() : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,Type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p5, :cond_0

    const-string v4, "InComing"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 452
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 453
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 455
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    .line 456
    const-string v3, "reCreate() : Error :: Invalid input parameters."

    invoke-static {v3}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 457
    const-wide/16 v3, -0x1

    .line 492
    :goto_1
    monitor-exit p0

    return-wide v3

    .line 450
    :cond_0
    :try_start_1
    const-string v4, "OutGoing"

    goto :goto_0

    .line 460
    :cond_1
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EmailAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v37

    .line 461
    .local v37, acc:Landroid/app/enterprise/Account;
    const-string v3, "EmailAccountPolicy"

    invoke-virtual/range {v37 .. v37}, Landroid/app/enterprise/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    move-object/from16 v0, p0

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EmailAccountPolicy;->deleteAccount(J)Z

    .line 465
    new-instance v38, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct/range {v38 .. v38}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 466
    .local v38, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    invoke-static/range {v37 .. v38}, Lcom/android/server/enterprise/SettingsUtils;->fillExistingAccountInfo(Landroid/app/enterprise/Account;Lcom/android/server/enterprise/AccountMetaData;)V

    .line 467
    if-eqz p5, :cond_4

    .line 468
    if-eqz p1, :cond_2

    .line 469
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 470
    :cond_2
    if-eqz p2, :cond_3

    .line 471
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 479
    :cond_3
    :goto_2
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    move v7, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    move v8, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    move v9, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    move v13, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    move v14, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    move/from16 v17, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    move/from16 v18, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    move/from16 v19, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    move/from16 v20, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    move/from16 v26, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    move/from16 v27, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    move/from16 v28, v0

    move-object/from16 v0, v38

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    move/from16 v29, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-static/range {v3 .. v36}, Lcom/android/server/enterprise/SettingsUtils;->createNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J

    move-result-wide v40

    .line 487
    move-object/from16 v0, p0

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/EmailAccountPolicy;->getAccountDetails(J)Landroid/app/enterprise/Account;

    move-result-object v37

    .line 488
    const-string v3, "EmailAccountPolicy"

    invoke-virtual/range {v37 .. v37}, Landroid/app/enterprise/Account;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .end local v37           #acc:Landroid/app/enterprise/Account;
    .end local v38           #accountMData:Lcom/android/server/enterprise/AccountMetaData;
    :goto_3
    move-wide/from16 v3, v40

    .line 492
    goto/16 :goto_1

    .line 473
    .restart local v37       #acc:Landroid/app/enterprise/Account;
    .restart local v38       #accountMData:Lcom/android/server/enterprise/AccountMetaData;
    :cond_4
    if-eqz p1, :cond_5

    .line 474
    move-object/from16 v0, p1

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 475
    :cond_5
    if-eqz p2, :cond_3

    .line 476
    move-object/from16 v0, p2

    move-object/from16 v1, v38

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2

    .line 489
    .end local v37           #acc:Landroid/app/enterprise/Account;
    .end local v38           #accountMData:Lcom/android/server/enterprise/AccountMetaData;
    :catch_0
    move-exception v3

    move-object/from16 v39, v3

    .line 490
    .local v39, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual/range {v39 .. v39}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 448
    .end local v39           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

.method private declared-synchronized updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J
    .locals 38
    .parameter "accountMData"
    .parameter "accountId"
    .parameter "mContext"

    .prologue
    .line 62
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object v3, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    move v8, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    move v9, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object v10, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object v11, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    move-object v12, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    move v13, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    move v14, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object v15, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    move/from16 v17, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    move/from16 v18, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    move/from16 v19, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v30, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    move-object/from16 v31, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v32, v0

    const/16 v33, 0x0

    const/16 v34, 0x1

    move-wide/from16 v1, p2

    move-object/from16 v35, p4

    invoke-static/range {v1 .. v35}, Lcom/android/server/enterprise/SettingsUtils;->updateExistingAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v36

    .line 68
    .local v36, accId:J
    monitor-exit p0

    return-wide v36

    .line 62
    .end local v36           #accId:J
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public addNewAccount(Ljava/lang/String;Ljava/lang/String;IIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 36
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
    .line 55
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v8

    move-object/from16 v0, p0

    move/from16 v1, p9

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v12

    move-object/from16 v0, p0

    move/from16 v1, p10

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v13

    move-object/from16 v0, p0

    move/from16 v1, p14

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v17

    move-object/from16 v0, p0

    move/from16 v1, p15

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v18

    move-object/from16 v0, p0

    move/from16 v1, p16

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v19

    move-object/from16 v0, p0

    move/from16 v1, p23

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v26

    move-object/from16 v0, p0

    move/from16 v1, p24

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v27

    move-object/from16 v0, p0

    move/from16 v1, p25

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v28

    const/16 v32, 0x0

    const/16 v33, 0x1

    const/16 v34, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    move/from16 v16, p13

    move-object/from16 v20, p17

    move-object/from16 v21, p18

    move-object/from16 v22, p19

    move-object/from16 v23, p20

    move-object/from16 v24, p21

    move/from16 v25, p22

    move-object/from16 v29, p26

    move-object/from16 v30, p27

    move-object/from16 v31, p28

    invoke-static/range {v2 .. v35}, Lcom/android/server/enterprise/SettingsUtils;->createNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J

    move-result-wide v2

    return-wide v2
.end method

.method public deleteAccount(J)Z
    .locals 2
    .parameter "accId"

    .prologue
    .line 542
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deleteAccount() :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 543
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public getAccountDetails(J)Landroid/app/enterprise/Account;
    .locals 2
    .parameter "accId"

    .prologue
    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountDetails() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 532
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Landroid/app/enterprise/Account;

    move-result-object v0

    return-object v0
.end method

.method public getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 6
    .parameter "emailId"
    .parameter "serverAddress"
    .parameter "protocol"

    .prologue
    .line 520
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAccountId() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 521
    const/4 v0, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide v0

    return-wide v0
.end method

.method public sendAccountsChangedBroadcast()V
    .locals 4

    .prologue
    .line 550
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->sendAccountsChangedBroadcast(Landroid/content/Context;)V

    .line 551
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 552
    return-void
.end method

.method public setAccountName(Ljava/lang/String;J)Z
    .locals 5
    .parameter "accountName"
    .parameter "accId"

    .prologue
    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAccountName() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 79
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 80
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAlwaysVibrateOnEmailNotification(ZJ)Z
    .locals 5
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 179
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAlwaysVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 182
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    .line 183
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAsDefaultAccount(J)Z
    .locals 3
    .parameter "accId"

    .prologue
    .line 508
    const-string v0, "EmailAccountPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAsDefaultAccount() :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    iget-object v0, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v0}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public setEmailAddress(Ljava/lang/String;J)Z
    .locals 5
    .parameter "emailAddress"
    .parameter "accId"

    .prologue
    .line 84
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEmailAddress() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 87
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 88
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingProtocol(Ljava/lang/String;J)Z
    .locals 5
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingProtocol() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 210
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 211
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAcceptAllCertificates(ZJ)Z
    .locals 5
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 274
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 277
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    .line 278
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInComingServerAddress() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 217
    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->reCreate(Ljava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide p2

    .line 218
    return-wide p2
.end method

.method public setInComingServerLogin(Ljava/lang/String;J)J
    .locals 6
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInComingServerLogin() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 284
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->reCreate(Ljava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide p2

    .line 285
    return-wide p2
.end method

.method public setInComingServerPassword(Ljava/lang/String;J)Z
    .locals 5
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 298
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerPassword() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 301
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 302
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 5
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 315
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerPathPrefix() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 318
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 319
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerPort(IJ)Z
    .locals 5
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInComingServerPort() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 224
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 225
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 226
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerSSL(ZJ)Z
    .locals 5
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 239
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 242
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    .line 243
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setInComingServerTLS(ZJ)Z
    .locals 5
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 257
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setInComingServerTLS() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 260
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    .line 261
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingProtocol(Ljava/lang/String;J)Z
    .locals 5
    .parameter "protocol"
    .parameter "accId"

    .prologue
    .line 328
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingProtocol() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 330
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 331
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 332
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAcceptAllCertificates(ZJ)Z
    .locals 5
    .parameter "acceptAllCertificates"
    .parameter "accId"

    .prologue
    .line 395
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerAcceptAllCertificates() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 398
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    .line 399
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerAddress(Ljava/lang/String;J)J
    .locals 6
    .parameter "serverAddress"
    .parameter "accId"

    .prologue
    .line 336
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutGoingServerAddress() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 338
    const/4 v1, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->reCreate(Ljava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide p2

    .line 339
    return-wide p2
.end method

.method public setOutGoingServerLogin(Ljava/lang/String;J)J
    .locals 6
    .parameter "loginId"
    .parameter "accId"

    .prologue
    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setOutGoingServerLogin() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 406
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/enterprise/EmailAccountPolicy;->reCreate(Ljava/lang/String;Ljava/lang/String;JZ)J

    move-result-wide p2

    .line 407
    return-wide p2
.end method

.method public setOutGoingServerPassword(Ljava/lang/String;J)Z
    .locals 5
    .parameter "password"
    .parameter "accId"

    .prologue
    .line 421
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerPassword() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 424
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 425
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPathPrefix(Ljava/lang/String;J)Z
    .locals 5
    .parameter "pathPrefix"
    .parameter "accId"

    .prologue
    .line 438
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerPathPrefix() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 441
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    .line 442
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerPort(IJ)Z
    .locals 5
    .parameter "port"
    .parameter "accId"

    .prologue
    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOutGoingServerPort() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;)V

    .line 345
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 346
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 347
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerSSL(ZJ)Z
    .locals 5
    .parameter "enableSSL"
    .parameter "accId"

    .prologue
    .line 361
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerSSL() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 364
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    .line 365
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setOutGoingServerTLS(ZJ)Z
    .locals 5
    .parameter "enableTLS"
    .parameter "accId"

    .prologue
    .line 378
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOutGoingServerTLS() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 381
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    .line 382
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setPastDaysToSync(IJ)Z
    .locals 5
    .parameter "pastDaysToSync"
    .parameter "accId"

    .prologue
    .line 103
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPastDaysToSync() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 106
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 107
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSenderName(Ljava/lang/String;J)Z
    .locals 5
    .parameter "senderName"
    .parameter "accId"

    .prologue
    .line 146
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSenderName() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 149
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 150
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSignature(Ljava/lang/String;J)Z
    .locals 5
    .parameter "signature"
    .parameter "accId"

    .prologue
    .line 163
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSignature() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 166
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput-object p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 167
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSilentVibrateOnEmailNotification(ZJ)Z
    .locals 5
    .parameter "enable"
    .parameter "accId"

    .prologue
    .line 195
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSilentVibrateOnEmailNotification() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 198
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/EmailAccountPolicy;->booleanToByte(Z)B

    move-result v1

    iput-byte v1, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    .line 199
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSyncInterval(IJ)Z
    .locals 5
    .parameter "syncInterval"
    .parameter "accId"

    .prologue
    .line 128
    const-string v1, "EmailAccountPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSyncInterval() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/enterprise/Utils;->writeToLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    new-instance v0, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct {v0}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 131
    .local v0, amd:Lcom/android/server/enterprise/AccountMetaData;
    iput p1, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 132
    const-wide/16 v1, -0x1

    iget-object v3, p0, Lcom/android/server/enterprise/EmailAccountPolicy;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p2, p3, v3}, Lcom/android/server/enterprise/EmailAccountPolicy;->updateAccount(Lcom/android/server/enterprise/AccountMetaData;JLandroid/content/Context;)J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
