.class Lcom/android/server/enterprise/SettingsUtils;
.super Ljava/lang/Object;
.source "SettingsUtils.java"


# static fields
.field private static final ACCOUNTCB_CONTENT_URI:Landroid/net/Uri; = null

.field private static final ACCOUNT_CONTENT_URI:Landroid/net/Uri; = null

.field private static final HOST_AUTH_CONTENT_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "SettingsUtils"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "content://com.android.email.provider/account"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://com.android.email.provider/hostauth"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .line 32
    const-string v0, "content://com.android.email.provider/accountcb"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized createNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J
    .locals 41
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
    .parameter "isEasAccount"
    .parameter "isInsertOP"
    .parameter "existingAccInfo"
    .parameter "mContext"

    .prologue
    .line 390
    const-class v40, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v40

    const-wide/16 v36, -0x1

    .line 391
    .local v36, accountId:J
    :try_start_0
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "createNewAccount : Processing account "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p31, :cond_9

    const-string v7, "creation"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " request for EmailId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (AccountType is : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p30, :cond_a

    const-string v7, "Eas"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-static/range {p0 .. p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 395
    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 396
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 397
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 398
    invoke-static/range {p7 .. p7}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p7

    .line 399
    invoke-static/range {p8 .. p8}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p8

    .line 400
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 402
    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p12

    .line 403
    invoke-static/range {p13 .. p13}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p13

    .line 404
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    .line 405
    invoke-static/range {p19 .. p19}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p19

    .line 406
    invoke-static/range {p20 .. p20}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p20

    .line 408
    invoke-static/range {p21 .. p21}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p21

    .line 409
    invoke-static/range {p22 .. p22}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p22

    .line 410
    invoke-static/range {p27 .. p27}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p27

    .line 411
    invoke-static/range {p28 .. p28}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p28

    .line 412
    invoke-static/range {p29 .. p29}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p29

    .line 414
    if-eqz p31, :cond_b

    const/4 v5, 0x0

    move v13, v5

    .line 415
    .local v13, inComingServerAuthFlags:I
    :goto_2
    if-eqz p31, :cond_c

    const/4 v5, 0x0

    move/from16 v16, v5

    .line 416
    .local v16, outGoingServerAuthFlags:I
    :goto_3
    const/16 v24, 0x0

    .line 417
    .local v24, compatibilityUuid:Ljava/lang/String;
    if-eqz p31, :cond_d

    const/4 v5, 0x0

    move/from16 v22, v5

    .line 418
    .local v22, settingsFlags:I
    :goto_4
    const/16 v29, 0x0

    .line 419
    .local v29, securityFlags:I
    const/16 v28, 0x0

    .line 420
    .local v28, newMessageCount:I
    const/16 v30, 0x0

    .line 421
    .local v30, securitySyncKey:Ljava/lang/String;
    const/16 v23, 0x0

    .line 423
    .local v23, syncKey:Ljava/lang/String;
    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    invoke-static/range {p1 .. p1}, Lcom/android/server/enterprise/SettingsUtils;->isValidEmailAddress(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz p30, :cond_0

    if-eqz p2, :cond_8

    :cond_0
    if-eqz p30, :cond_1

    if-eqz p3, :cond_8

    :cond_1
    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p4

    if-gt v0, v1, :cond_8

    const/4 v5, 0x6

    move v0, v5

    move/from16 v1, p4

    if-lt v0, v1, :cond_8

    if-eqz p30, :cond_2

    if-eqz p8, :cond_8

    :cond_2
    if-nez p30, :cond_3

    if-eqz p12, :cond_8

    :cond_3
    if-eqz p13, :cond_8

    if-nez p30, :cond_4

    if-eqz p18, :cond_8

    :cond_4
    if-eqz p19, :cond_8

    if-nez p30, :cond_5

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p14

    if-gt v0, v1, :cond_8

    :cond_5
    if-nez p30, :cond_6

    if-eqz p21, :cond_8

    :cond_6
    if-eqz p22, :cond_8

    if-nez p30, :cond_7

    if-eqz p27, :cond_8

    :cond_7
    if-eqz p28, :cond_8

    if-nez p30, :cond_e

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p23

    if-le v0, v1, :cond_e

    .line 429
    :cond_8
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p4, "createNewAccount : Error :: Invalid input parameters."

    .end local p4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .local v15, syncKey:Ljava/lang/String;
    move/from16 v12, v16

    .end local v16           #outGoingServerAuthFlags:I
    .local v12, outGoingServerAuthFlags:I
    move v8, v13

    .end local v13           #inComingServerAuthFlags:I
    .local v8, inComingServerAuthFlags:I
    move-wide/from16 p0, v36

    .end local v36           #accountId:J
    .end local p1
    .local p0, accountId:J
    move-wide/from16 p2, v36

    .line 536
    .end local p0           #accountId:J
    .end local p3
    .end local p5
    .end local p6
    .end local p10
    .end local p11
    .end local p14
    .end local p15
    .end local p16
    .end local p17
    .local p2, accountId:J
    :goto_5
    monitor-exit v40

    return-wide p2

    .line 391
    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .end local v22           #settingsFlags:I
    .end local v24           #compatibilityUuid:Ljava/lang/String;
    .end local v28           #newMessageCount:I
    .end local v29           #securityFlags:I
    .end local v30           #securitySyncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, easUser:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p6
    .restart local p10
    .restart local p11
    .restart local p14
    .restart local p15
    .restart local p16
    .restart local p17
    :cond_9
    :try_start_1
    const-string v7, "updation"

    goto/16 :goto_0

    :cond_a
    const-string v7, "Non-Eas"

    goto/16 :goto_1

    .line 414
    :cond_b
    move-object/from16 v0, p32

    iget-object v0, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    move-object v5, v0

    iget v5, v5, Landroid/app/enterprise/HostAuth;->mFlags:I

    move v13, v5

    goto/16 :goto_2

    .line 415
    .restart local v13       #inComingServerAuthFlags:I
    :cond_c
    move-object/from16 v0, p32

    iget-object v0, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    move-object v5, v0

    iget v5, v5, Landroid/app/enterprise/HostAuth;->mFlags:I

    move/from16 v16, v5

    goto/16 :goto_3

    .line 417
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v24       #compatibilityUuid:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p32

    iget v0, v0, Landroid/app/enterprise/Account;->mFlags:I

    move v5, v0

    move/from16 v22, v5

    goto/16 :goto_4

    .line 433
    .restart local v22       #settingsFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v28       #newMessageCount:I
    .restart local v29       #securityFlags:I
    .restart local v30       #securitySyncKey:Ljava/lang/String;
    :cond_e
    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p10

    if-ne v0, v1, :cond_f

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p11

    if-ne v0, v1, :cond_f

    .line 434
    const-string p0, "SettingsUtils"

    .end local p0           #displayName:Ljava/lang/String;
    const-string p4, "createNewAccount : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    .end local p4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    move/from16 v12, v16

    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    move v8, v13

    .end local v13           #inComingServerAuthFlags:I
    .restart local v8       #inComingServerAuthFlags:I
    move-wide/from16 p0, v36

    .end local v36           #accountId:J
    .end local p1
    .local p0, accountId:J
    move-wide/from16 p2, v36

    .line 436
    .end local p0           #accountId:J
    .end local p3
    .local p2, accountId:J
    goto :goto_5

    .line 439
    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .restart local v13       #inComingServerAuthFlags:I
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, easUser:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_f
    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p15

    if-ne v0, v1, :cond_10

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p16

    if-ne v0, v1, :cond_10

    .line 440
    const-string p0, "SettingsUtils"

    .end local p0           #displayName:Ljava/lang/String;
    const-string p4, "createNewAccount : Error :: Invalid input parameters. From the arguments \'inComingServerUseSSL\' and \'inComingServerUseTLS\' only one will be true at a time"

    .end local p4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    move/from16 v12, v16

    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    move v8, v13

    .end local v13           #inComingServerAuthFlags:I
    .restart local v8       #inComingServerAuthFlags:I
    move-wide/from16 p0, v36

    .end local v36           #accountId:J
    .end local p1
    .local p0, accountId:J
    move-wide/from16 p2, v36

    .line 441
    .end local p0           #accountId:J
    .end local p3
    .local p2, accountId:J
    goto :goto_5

    .line 444
    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .restart local v13       #inComingServerAuthFlags:I
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, easUser:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_10
    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p24

    if-ne v0, v1, :cond_11

    const/4 v5, 0x1

    move v0, v5

    move/from16 v1, p25

    if-ne v0, v1, :cond_11

    .line 445
    const-string p0, "SettingsUtils"

    .end local p0           #displayName:Ljava/lang/String;
    const-string p4, "createNewAccount : Error :: Invalid input parameters. From the arguments \'outGoingServerUseSSL\' and \'outGoingServerUseTLS\' only one will be true at a time"

    .end local p4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    move/from16 v12, v16

    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    move v8, v13

    .end local v13           #inComingServerAuthFlags:I
    .restart local v8       #inComingServerAuthFlags:I
    move-wide/from16 p0, v36

    .end local v36           #accountId:J
    .end local p1
    .local p0, accountId:J
    move-wide/from16 p2, v36

    .line 446
    .end local p0           #accountId:J
    .end local p3
    .local p2, accountId:J
    goto/16 :goto_5

    .line 449
    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .restart local v13       #inComingServerAuthFlags:I
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, easUser:Ljava/lang/String;
    .restart local p3
    .restart local p4
    :cond_11
    const-wide/16 v5, -0x1

    .line 450
    .local v5, accountsRowId:J
    const-wide/16 v11, -0x1

    .line 451
    .local v11, inComingRowId:J
    const-wide/16 v20, -0x1

    .line 453
    .local v20, outGoingRowId:J
    if-eqz p30, :cond_30

    .line 454
    const-string v6, "com.android.exchange"

    if-eqz p19, :cond_1a

    move-object/from16 v7, p19

    :goto_6
    move-object/from16 v5, p1

    move/from16 v8, p31

    move-object/from16 v9, p32

    move-object/from16 v10, p33

    invoke-static/range {v5 .. v10}, Lcom/android/server/enterprise/SettingsUtils;->insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/enterprise/Account;Landroid/content/Context;)J

    .end local v5           #accountsRowId:J
    move-result-wide v5

    .restart local v5       #accountsRowId:J
    move-wide/from16 v38, v5

    .line 457
    .end local v5           #accountsRowId:J
    .local v38, accountsRowId:J
    :goto_7
    if-eqz p30, :cond_12

    const-wide/16 v5, -0x1

    cmp-long v5, v5, v38

    if-nez v5, :cond_13

    :cond_12
    if-nez p30, :cond_2f

    .line 459
    :cond_13
    if-eqz p31, :cond_1b

    const/4 v5, 0x4

    :goto_8
    move v0, v5

    move/from16 v1, p15

    move/from16 v2, p16

    move/from16 v3, p17

    move-object/from16 v4, p33

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuthFlags(IBBBLandroid/content/Context;)I

    move-result v8

    .line 460
    .end local v13           #inComingServerAuthFlags:I
    .restart local v8       #inComingServerAuthFlags:I
    new-instance p15, Ljava/lang/StringBuilder;

    .end local p15
    invoke-direct/range {p15 .. p15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p15

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p15

    const-string p16, "\\"

    .end local p16
    invoke-virtual/range {p15 .. p16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p15

    move-object/from16 v0, p15

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p15

    invoke-virtual/range {p15 .. p15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p15

    .line 462
    .local p15, easLogin:Ljava/lang/String;
    if-eqz p30, :cond_1c

    const-string p16, "eas"

    move-object/from16 v5, p16

    :goto_9
    if-eqz p30, :cond_1d

    const/16 p14, 0x0

    move/from16 v7, p14

    .end local p14
    :goto_a
    if-eqz p30, :cond_1e

    move-object/from16 v9, p15

    :goto_b
    const/4 v14, 0x1

    move-object/from16 v6, p13

    move-object/from16 v10, p19

    move-object/from16 v11, p20

    move/from16 v12, p31

    move-object/from16 v13, p32

    move-object/from16 v15, p33

    invoke-static/range {v5 .. v15}, Lcom/android/server/enterprise/SettingsUtils;->insertHostAuthTableRow(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/enterprise/Account;ZLandroid/content/Context;)J

    .end local v11           #inComingRowId:J
    move-result-wide p16

    .line 464
    .end local p17
    .local p16, inComingRowId:J
    const-wide/16 v5, -0x1

    cmp-long p14, v5, p16

    if-eqz p14, :cond_2e

    .line 466
    if-eqz p31, :cond_1f

    const/16 p14, 0x4

    :goto_c
    move/from16 v0, p14

    move/from16 v1, p24

    move/from16 v2, p25

    move/from16 v3, p26

    move-object/from16 v4, p33

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuthFlags(IBBBLandroid/content/Context;)I

    move-result v12

    .line 468
    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    if-eqz p30, :cond_20

    const-string p14, "eas"

    move-object/from16 v9, p14

    :goto_d
    if-eqz p30, :cond_21

    const/16 p14, 0x0

    move/from16 v11, p14

    :goto_e
    if-eqz p30, :cond_22

    move-object/from16 v13, p15

    :goto_f
    const/16 v18, 0x0

    move-object/from16 v10, p22

    move-object/from16 v14, p28

    move-object/from16 v15, p29

    move/from16 v16, p31

    move-object/from16 v17, p32

    move-object/from16 v19, p33

    invoke-static/range {v9 .. v19}, Lcom/android/server/enterprise/SettingsUtils;->insertHostAuthTableRow(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/enterprise/Account;ZLandroid/content/Context;)J

    move-result-wide v20

    .line 471
    :goto_10
    const-wide/16 p14, -0x1

    cmp-long p14, p14, p16

    if-eqz p14, :cond_2d

    const-wide/16 p14, -0x1

    cmp-long p14, p14, v20

    if-eqz p14, :cond_2d

    .line 472
    if-eqz p30, :cond_2c

    .line 473
    if-eqz p31, :cond_23

    .line 475
    const-string v15, "0"

    .line 480
    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    :goto_11
    const/16 v26, 0x0

    .line 481
    .local v26, ringtoneUri:Ljava/lang/String;
    if-eqz p31, :cond_24

    .line 483
    const-string v26, "content://settings/system/notification_sound"

    .line 484
    const/16 v22, 0x1

    .line 485
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p14

    invoke-virtual/range {p14 .. p14}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v24

    .line 492
    :goto_12
    const/16 p14, 0x1

    move/from16 v0, p14

    move/from16 v1, p10

    if-ne v0, v1, :cond_25

    .line 493
    or-int/lit8 v22, v22, 0x2

    .line 497
    .end local p10
    :cond_14
    :goto_13
    const/16 p10, 0x1

    move/from16 v0, p10

    move/from16 v1, p11

    if-ne v0, v1, :cond_26

    .line 498
    or-int/lit8 v22, v22, 0x40

    .end local p11
    :cond_15
    :goto_14
    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move/from16 v16, p4

    move/from16 v17, p5

    move-wide/from16 v18, p16

    move/from16 v23, p6

    move-object/from16 v25, p7

    move-object/from16 v27, p8

    move-object/from16 v31, p9

    move/from16 v32, p30

    move/from16 v33, p31

    move-object/from16 v34, p32

    move-object/from16 v35, p33

    .line 502
    invoke-static/range {v13 .. v35}, Lcom/android/server/enterprise/SettingsUtils;->insertAccountTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide p4

    .line 504
    .end local v36           #accountId:J
    .end local p5
    .local p4, accountId:J
    const-wide/16 p10, -0x1

    cmp-long p0, p10, p4

    if-eqz p0, :cond_16

    .line 505
    .end local p0           #displayName:Ljava/lang/String;
    const/16 p0, 0x1

    move/from16 v0, p0

    move/from16 v1, p6

    if-ne v0, v1, :cond_16

    .line 506
    :try_start_2
    move-wide/from16 v0, p4

    move-object/from16 v2, p33

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/SettingsUtils;->setAsDefaultAccount(JLandroid/content/Context;)Z

    :cond_16
    move-wide/from16 p10, p16

    .line 510
    .end local v26           #ringtoneUri:Ljava/lang/String;
    .end local p15           #easLogin:Ljava/lang/String;
    .end local p16           #inComingRowId:J
    .local p10, inComingRowId:J
    :goto_15
    const-wide/16 p14, -0x1

    cmp-long p0, p14, p4

    if-nez p0, :cond_28

    .line 511
    const-string p0, "SettingsUtils"

    new-instance p6, Ljava/lang/StringBuilder;

    .end local p6
    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p14, "createNewAccount : Account "

    move-object/from16 v0, p6

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    if-eqz p31, :cond_27

    const-string p14, "creation"

    :goto_16
    move-object/from16 v0, p6

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p14, " was unsuccessful for EmailId: "

    move-object/from16 v0, p6

    move-object/from16 v1, p14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    if-eqz p31, :cond_19

    .line 515
    const-string p0, "SettingsUtils"

    const-string p6, "createNewAccount : Starting redundant data cleanup... if any...!!!"

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const-wide/16 p14, -0x1

    cmp-long p0, p14, v38

    if-eqz p0, :cond_17

    .line 517
    move-wide/from16 v0, v38

    move-object/from16 v2, p33

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 520
    :cond_17
    const-wide/16 p14, -0x1

    cmp-long p0, p14, p10

    if-eqz p0, :cond_18

    .line 521
    move-wide/from16 v0, p10

    move-object/from16 v2, p33

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 524
    :cond_18
    const-wide/16 p10, -0x1

    cmp-long p0, p10, v20

    if-eqz p0, :cond_19

    .line 525
    .end local p10           #inComingRowId:J
    move-wide/from16 v0, v20

    move-object/from16 v2, p33

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_19
    :goto_17
    move-wide/from16 p0, p4

    .end local p1
    .end local p4           #accountId:J
    .local p0, accountId:J
    move-wide/from16 p2, p4

    .line 536
    .end local p0           #accountId:J
    .end local p3
    .local p2, accountId:J
    goto/16 :goto_5

    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .end local v38           #accountsRowId:J
    .restart local v5       #accountsRowId:J
    .restart local v11       #inComingRowId:J
    .restart local v13       #inComingServerAuthFlags:I
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, easUser:Ljava/lang/String;
    .restart local p3
    .local p4, syncLookback:I
    .restart local p5
    .restart local p6
    .local p10, emailNotificationVibrateAlways:B
    .restart local p11
    .restart local p14
    .local p15, inComingServerUseSSL:B
    .local p16, inComingServerUseTLS:B
    .restart local p17
    :cond_1a
    move-object/from16 v7, p28

    .line 454
    goto/16 :goto_6

    .end local v5           #accountsRowId:J
    .restart local v38       #accountsRowId:J
    :cond_1b
    move v5, v13

    .line 459
    goto/16 :goto_8

    .end local v13           #inComingServerAuthFlags:I
    .end local p16           #inComingServerUseTLS:B
    .restart local v8       #inComingServerAuthFlags:I
    .local p15, easLogin:Ljava/lang/String;
    :cond_1c
    move-object/from16 v5, p12

    .line 462
    goto/16 :goto_9

    :cond_1d
    move/from16 v7, p14

    goto/16 :goto_a

    .end local p14
    :cond_1e
    move-object/from16 v9, p18

    goto/16 :goto_b

    .end local v11           #inComingRowId:J
    .end local p17
    .local p16, inComingRowId:J
    :cond_1f
    move/from16 p14, v16

    .line 466
    goto/16 :goto_c

    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    :cond_20
    move-object/from16 v9, p21

    .line 468
    goto/16 :goto_d

    :cond_21
    move/from16 v11, p23

    goto/16 :goto_e

    :cond_22
    move-object/from16 v13, p27

    goto/16 :goto_f

    .line 477
    :cond_23
    :try_start_3
    move-object/from16 v0, p32

    iget-object v0, v0, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    move-object v15, v0

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    goto/16 :goto_11

    .line 488
    .restart local v26       #ringtoneUri:Ljava/lang/String;
    :cond_24
    move-object/from16 v0, p32

    iget-object v0, v0, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    move-object/from16 v26, v0

    .line 489
    move-object/from16 v0, p32

    iget v0, v0, Landroid/app/enterprise/Account;->mFlags:I

    move/from16 v22, v0

    .line 490
    move-object/from16 v0, p32

    iget-object v0, v0, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    move-object/from16 v24, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_12

    .line 494
    :cond_25
    const/16 p10, 0x2

    and-int/lit8 p14, v22, 0x2

    move/from16 v0, p10

    move/from16 v1, p14

    if-ne v0, v1, :cond_14

    .line 495
    .end local p10           #emailNotificationVibrateAlways:B
    xor-int/lit8 v22, v22, 0x2

    goto/16 :goto_13

    .line 499
    :cond_26
    const/16 p10, 0x40

    and-int/lit8 p11, v22, 0x40

    move/from16 v0, p10

    move/from16 v1, p11

    if-ne v0, v1, :cond_15

    .line 500
    .end local p11
    xor-int/lit8 v22, v22, 0x40

    goto/16 :goto_14

    .line 511
    .end local v26           #ringtoneUri:Ljava/lang/String;
    .end local v36           #accountId:J
    .end local p0           #displayName:Ljava/lang/String;
    .end local p5
    .end local p6
    .end local p15           #easLogin:Ljava/lang/String;
    .end local p16           #inComingRowId:J
    .local p4, accountId:J
    .local p10, inComingRowId:J
    :cond_27
    :try_start_4
    const-string p14, "updation"

    goto/16 :goto_16

    .line 529
    .restart local p6
    :cond_28
    if-eqz p31, :cond_29

    .line 530
    new-instance p0, Landroid/content/Intent;

    const-string p6, "com.android.email.ENABLE_MESSAGECOMPOSE"

    .end local p6
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 531
    .local p0, intent:Landroid/content/Intent;
    move-object/from16 v0, p33

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 533
    .end local p0           #intent:Landroid/content/Intent;
    :cond_29
    const-string p0, "SettingsUtils"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "createNewAccount : Account "

    .end local p10           #inComingRowId:J
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    if-eqz p31, :cond_2a

    const-string p10, "created"

    :goto_18
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p10, " successfully for EmailId: "

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p10, " ( "

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    if-eqz p31, :cond_2b

    const-string p10, "Generated"

    :goto_19
    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p10, "  AccountId : "

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move-wide/from16 v1, p4

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p6

    const-string p10, " )"

    move-object/from16 v0, p6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_17

    .line 390
    :catchall_0
    move-exception p0

    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .end local v20           #outGoingRowId:J
    .end local v22           #settingsFlags:I
    .end local v24           #compatibilityUuid:Ljava/lang/String;
    .end local v28           #newMessageCount:I
    .end local v29           #securityFlags:I
    .end local v30           #securitySyncKey:Ljava/lang/String;
    .end local v38           #accountsRowId:J
    :goto_1a
    monitor-exit v40

    throw p0

    .line 533
    .restart local v8       #inComingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    .restart local v15       #syncKey:Ljava/lang/String;
    .restart local v20       #outGoingRowId:J
    .restart local v22       #settingsFlags:I
    .restart local v24       #compatibilityUuid:Ljava/lang/String;
    .restart local v28       #newMessageCount:I
    .restart local v29       #securityFlags:I
    .restart local v30       #securitySyncKey:Ljava/lang/String;
    .restart local v38       #accountsRowId:J
    :cond_2a
    :try_start_5
    const-string p10, "updated"

    goto :goto_18

    :cond_2b
    const-string p10, "Updated"
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_19

    .line 390
    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .end local v20           #outGoingRowId:J
    .end local v22           #settingsFlags:I
    .end local v24           #compatibilityUuid:Ljava/lang/String;
    .end local v28           #newMessageCount:I
    .end local v29           #securityFlags:I
    .end local v30           #securitySyncKey:Ljava/lang/String;
    .end local v38           #accountsRowId:J
    .end local p4           #accountId:J
    .restart local v36       #accountId:J
    .restart local p5
    .restart local p6
    :catchall_1
    move-exception p0

    move-wide/from16 p4, v36

    .end local v36           #accountId:J
    .end local p5
    .restart local p4       #accountId:J
    goto :goto_1a

    .restart local v8       #inComingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    .restart local v20       #outGoingRowId:J
    .restart local v22       #settingsFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v24       #compatibilityUuid:Ljava/lang/String;
    .restart local v28       #newMessageCount:I
    .restart local v29       #securityFlags:I
    .restart local v30       #securitySyncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .restart local v38       #accountsRowId:J
    .local p0, displayName:Ljava/lang/String;
    .local p4, syncLookback:I
    .restart local p5
    .local p10, emailNotificationVibrateAlways:B
    .restart local p11
    .restart local p15       #easLogin:Ljava/lang/String;
    .restart local p16       #inComingRowId:J
    :cond_2c
    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    goto/16 :goto_11

    .end local v15           #syncKey:Ljava/lang/String;
    .restart local v23       #syncKey:Ljava/lang/String;
    :cond_2d
    move-wide/from16 p10, p16

    .end local p11
    .end local p16           #inComingRowId:J
    .local p10, inComingRowId:J
    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    move-wide/from16 p4, v36

    .end local v36           #accountId:J
    .end local p5
    .local p4, accountId:J
    goto/16 :goto_15

    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p4, syncLookback:I
    .restart local p5
    .local p10, emailNotificationVibrateAlways:B
    .restart local p11
    .restart local p16       #inComingRowId:J
    :cond_2e
    move/from16 v12, v16

    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    goto/16 :goto_10

    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .restart local v11       #inComingRowId:J
    .restart local v13       #inComingServerAuthFlags:I
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local p14
    .local p15, inComingServerUseSSL:B
    .local p16, inComingServerUseTLS:B
    .restart local p17
    :cond_2f
    move-wide/from16 p10, v11

    .end local v11           #inComingRowId:J
    .end local p11
    .local p10, inComingRowId:J
    move-object/from16 v15, v23

    .end local v23           #syncKey:Ljava/lang/String;
    .restart local v15       #syncKey:Ljava/lang/String;
    move v8, v13

    .end local v13           #inComingServerAuthFlags:I
    .restart local v8       #inComingServerAuthFlags:I
    move-wide/from16 p4, v36

    .end local v36           #accountId:J
    .end local p5
    .local p4, accountId:J
    move/from16 v12, v16

    .end local v16           #outGoingServerAuthFlags:I
    .restart local v12       #outGoingServerAuthFlags:I
    goto/16 :goto_15

    .end local v8           #inComingServerAuthFlags:I
    .end local v12           #outGoingServerAuthFlags:I
    .end local v15           #syncKey:Ljava/lang/String;
    .end local v38           #accountsRowId:J
    .restart local v5       #accountsRowId:J
    .restart local v11       #inComingRowId:J
    .restart local v13       #inComingServerAuthFlags:I
    .restart local v16       #outGoingServerAuthFlags:I
    .restart local v23       #syncKey:Ljava/lang/String;
    .restart local v36       #accountId:J
    .local p4, syncLookback:I
    .restart local p5
    .local p10, emailNotificationVibrateAlways:B
    .restart local p11
    :cond_30
    move-wide/from16 v38, v5

    .end local v5           #accountsRowId:J
    .restart local v38       #accountsRowId:J
    goto/16 :goto_7
.end method

.method static declared-synchronized deleteAccount(JLandroid/content/Context;)Z
    .locals 11
    .parameter "accountId"
    .parameter "mContext"

    .prologue
    .line 860
    const-class v9, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v9

    const/4 v2, 0x0

    .line 861
    .local v2, rowCount:I
    const-wide/16 v0, 0x1

    cmp-long v0, v0, p0

    if-lez v0, :cond_0

    .line 862
    :try_start_0
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p1, "deleteAccount : accountId is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    const/4 p0, 0x0

    move p1, p0

    move p0, v2

    .line 918
    .end local v2           #rowCount:I
    .end local p2
    .local p0, rowCount:I
    :goto_0
    monitor-exit v9

    return p1

    .line 865
    .restart local v2       #rowCount:I
    .local p0, accountId:J
    .restart local p2
    :cond_0
    const/4 v0, 0x0

    .line 866
    .local v0, ac:Landroid/app/enterprise/Account;
    const/4 v1, 0x0

    .line 867
    .local v1, found:Z
    const/4 v4, 0x0

    .line 869
    .local v4, isEas:Z
    :try_start_1
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Landroid/app/enterprise/Account;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 870
    if-eqz v0, :cond_9

    move v3, v1

    .end local v1           #found:Z
    .local v3, found:Z
    move-object v6, v0

    .end local v0           #ac:Landroid/app/enterprise/Account;
    .local v6, ac:Landroid/app/enterprise/Account;
    move v5, v2

    .line 873
    .end local v2           #rowCount:I
    .local v5, rowCount:I
    :goto_1
    const/4 v0, 0x0

    .line 874
    .local v0, accountType:Ljava/lang/String;
    :try_start_2
    iget-object v1, v6, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v1, v1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    const-string v2, "eas"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 875
    const-string v0, "com.android.exchange"

    .line 876
    const/4 v4, 0x1

    .line 882
    :goto_2
    iget-object v1, v6, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    invoke-static {v1, v0, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide v1

    .line 883
    .local v1, accountsRowId:J
    const-wide/16 v7, -0x1

    cmp-long v7, v7, v1

    if-eqz v7, :cond_1

    .line 884
    invoke-static {v1, v2, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountsTableRow(JLandroid/content/Context;)Z

    .line 887
    :cond_1
    iget-wide v1, v6, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .end local v1           #accountsRowId:J
    invoke-static {v1, v2, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 889
    iget-wide v1, v6, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    invoke-static {v1, v2, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteHostAuthTableRow(JLandroid/content/Context;)Z

    .line 892
    iget v1, v6, Landroid/app/enterprise/Account;->mId:I

    int-to-long v1, v1

    invoke-static {v1, v2, p2}, Lcom/android/server/enterprise/SettingsUtils;->deleteAccountTableRow(JLandroid/content/Context;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v0

    .end local v3           #found:Z
    .local v0, found:Z
    move v7, v0

    .line 897
    .end local v0           #found:Z
    .local v7, found:Z
    :goto_3
    add-int/lit8 v8, v5, 0x1

    .line 899
    .end local v5           #rowCount:I
    .local v8, rowCount:I
    if-eqz v7, :cond_5

    .line 900
    if-eqz v4, :cond_3

    .line 901
    :try_start_3
    iget-object v0, v6, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v0, v0, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/enterprise/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 902
    .local v1, ret:[Ljava/lang/String;
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v2, 0x1

    aget-object v1, v1, v2

    .end local v1           #ret:[Ljava/lang/String;
    iget-object v2, v6, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v6, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v3, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-result-wide p0

    .line 906
    :goto_4
    const-wide/16 v0, -0x1

    cmp-long v0, v0, p0

    if-nez v0, :cond_4

    move v0, v7

    .end local v7           #found:Z
    .restart local v0       #found:Z
    move-object p2, v6

    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    move v1, v8

    .line 918
    .end local v8           #rowCount:I
    .local v1, rowCount:I
    :goto_5
    if-lez v1, :cond_7

    const/4 p0, 0x1

    .end local p0           #accountId:J
    :goto_6
    move p1, p0

    move p0, v1

    .end local v1           #rowCount:I
    .local p0, rowCount:I
    goto :goto_0

    .line 878
    .local v0, accountType:Ljava/lang/String;
    .restart local v3       #found:Z
    .restart local v5       #rowCount:I
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    .local p0, accountId:J
    .local p2, mContext:Landroid/content/Context;
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 894
    :catch_0
    move-exception v1

    .line 895
    .local v1, e:Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move v7, v3

    .end local v3           #found:Z
    .restart local v7       #found:Z
    goto :goto_3

    .line 904
    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #e:Ljava/lang/Exception;
    .end local v5           #rowCount:I
    .restart local v8       #rowCount:I
    :cond_3
    const/4 v0, 0x0

    :try_start_5
    iget-object v1, v6, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v1, v1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iget-object v2, v6, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iget-object v3, v6, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v3, v3, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J

    move-result-wide p0

    goto :goto_4

    .line 908
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Landroid/app/enterprise/Account;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    move-result-object v0

    .line 909
    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local v0, ac:Landroid/app/enterprise/Account;
    if-nez v0, :cond_6

    move-object p2, v0

    .end local v0           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    move v1, v8

    .end local v8           #rowCount:I
    .local v1, rowCount:I
    move v0, v7

    .line 910
    .end local v7           #found:Z
    .local v0, found:Z
    goto :goto_5

    .end local v0           #found:Z
    .end local v1           #rowCount:I
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    .restart local v7       #found:Z
    .restart local v8       #rowCount:I
    .local p2, mContext:Landroid/content/Context;
    :cond_5
    move-object v0, v6

    .line 913
    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local v0, ac:Landroid/app/enterprise/Account;
    :cond_6
    if-nez v7, :cond_8

    move-object p2, v0

    .end local v0           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    move v1, v8

    .end local v8           #rowCount:I
    .restart local v1       #rowCount:I
    move v0, v7

    .end local v7           #found:Z
    .local v0, found:Z
    goto :goto_5

    .line 915
    .local v0, ac:Landroid/app/enterprise/Account;
    .local v1, found:Z
    .restart local v2       #rowCount:I
    .local p2, mContext:Landroid/content/Context;
    :catch_1
    move-exception p2

    move-object v10, p2

    move-object p2, v0

    .end local v0           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    move-object v0, v10

    .line 916
    .local v0, e:Ljava/lang/Exception;
    :goto_7
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move v0, v1

    .end local v1           #found:Z
    .local v0, found:Z
    move v1, v2

    .end local v2           #rowCount:I
    .local v1, rowCount:I
    goto :goto_5

    .line 918
    :cond_7
    const/4 p0, 0x0

    goto :goto_6

    .line 860
    .end local v0           #found:Z
    .end local v1           #rowCount:I
    .end local v4           #isEas:Z
    .end local p0           #accountId:J
    .end local p2           #ac:Landroid/app/enterprise/Account;
    .restart local v2       #rowCount:I
    :catchall_0
    move-exception p0

    move-object p1, p0

    move p0, v2

    .end local v2           #rowCount:I
    .local p0, rowCount:I
    :goto_8
    monitor-exit v9

    throw p1

    .line 915
    .local v0, accountType:Ljava/lang/String;
    .local v1, e:Ljava/lang/Exception;
    .restart local v3       #found:Z
    .restart local v4       #isEas:Z
    .restart local v5       #rowCount:I
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    .local p0, accountId:J
    .local p2, mContext:Landroid/content/Context;
    :catch_2
    move-exception p2

    move-object v0, p2

    move v1, v3

    .end local v3           #found:Z
    .local v1, found:Z
    move v2, v5

    .end local v5           #rowCount:I
    .restart local v2       #rowCount:I
    move-object p2, v6

    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    goto :goto_7

    .end local v0           #accountType:Ljava/lang/String;
    .end local v1           #found:Z
    .end local v2           #rowCount:I
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    .restart local v7       #found:Z
    .restart local v8       #rowCount:I
    .local p2, mContext:Landroid/content/Context;
    :catch_3
    move-exception p2

    move-object v0, p2

    move v1, v7

    .end local v7           #found:Z
    .restart local v1       #found:Z
    move v2, v8

    .end local v8           #rowCount:I
    .restart local v2       #rowCount:I
    move-object p2, v6

    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    goto :goto_7

    .line 860
    .end local v1           #found:Z
    .end local v2           #rowCount:I
    .restart local v0       #accountType:Ljava/lang/String;
    .restart local v3       #found:Z
    .restart local v5       #rowCount:I
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    .local p2, mContext:Landroid/content/Context;
    :catchall_1
    move-exception p0

    move-object p1, p0

    move p0, v5

    .end local v5           #rowCount:I
    .local p0, rowCount:I
    goto :goto_8

    .end local v0           #accountType:Ljava/lang/String;
    .end local v3           #found:Z
    .restart local v7       #found:Z
    .restart local v8       #rowCount:I
    .local p0, accountId:J
    :catchall_2
    move-exception p0

    move-object p1, p0

    move p0, v8

    .end local v8           #rowCount:I
    .local p0, rowCount:I
    goto :goto_8

    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local v0, ac:Landroid/app/enterprise/Account;
    .restart local v8       #rowCount:I
    .local p0, accountId:J
    :cond_8
    move v3, v7

    .end local v7           #found:Z
    .restart local v3       #found:Z
    move-object v6, v0

    .end local v0           #ac:Landroid/app/enterprise/Account;
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    move v5, v8

    .end local v8           #rowCount:I
    .restart local v5       #rowCount:I
    goto/16 :goto_1

    .end local v3           #found:Z
    .end local v5           #rowCount:I
    .end local v6           #ac:Landroid/app/enterprise/Account;
    .restart local v0       #ac:Landroid/app/enterprise/Account;
    .restart local v1       #found:Z
    .restart local v2       #rowCount:I
    :cond_9
    move-object p2, v0

    .end local v0           #ac:Landroid/app/enterprise/Account;
    .local p2, ac:Landroid/app/enterprise/Account;
    move v0, v1

    .end local v1           #found:Z
    .local v0, found:Z
    move v1, v2

    .end local v2           #rowCount:I
    .local v1, rowCount:I
    goto :goto_5
.end method

.method static declared-synchronized deleteAccountTableRow(JLandroid/content/Context;)Z
    .locals 8
    .parameter "rowId"
    .parameter "mContext"

    .prologue
    const/4 v7, 0x0

    const-string v3, "SettingsUtils"

    .line 950
    const-class v3, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v3

    const/4 v1, -0x1

    .line 951
    .local v1, rowCount:I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p0

    if-lez v4, :cond_0

    .line 952
    :try_start_0
    const-string v4, "SettingsUtils"

    const-string v5, "deleteAccountTableRow : rowId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v7

    .line 962
    :goto_0
    monitor-exit v3

    return v4

    .line 956
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 957
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 958
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteAccountTableRow : deleted rowCount from Account : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 962
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 959
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 960
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 950
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_1
    move v4, v7

    .line 962
    goto :goto_0
.end method

.method private static declared-synchronized deleteAccountsTableRow(JLandroid/content/Context;)Z
    .locals 11
    .parameter "rowId"
    .parameter "mContext"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x0

    const-string v4, "SettingsUtils"

    .line 621
    const-class v4, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v4

    const/4 v0, 0x0

    .line 622
    .local v0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v5, 0x1

    cmp-long v5, v5, p0

    if-lez v5, :cond_0

    .line 623
    :try_start_0
    const-string v5, "SettingsUtils"

    const-string v6, "deleteAccountsTableRow : rowId is invalid"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v5, v8

    .line 642
    :goto_0
    monitor-exit v4

    return v5

    .line 627
    :cond_0
    :try_start_1
    const-string v1, "/data/system/accounts.db"

    .line 628
    .local v1, accountsDBPath:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 630
    const-string v5, "accounts"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "_id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 631
    .local v3, rowCount:I
    if-lez v3, :cond_2

    .line 632
    :goto_1
    const-string v5, "SettingsUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "deleteAccountsTableRow - deleted row Id : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 638
    if-eqz v0, :cond_1

    .line 639
    :try_start_2
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 642
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v3           #rowCount:I
    :cond_1
    :goto_2
    cmp-long v5, v9, p0

    if-eqz v5, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    .restart local v1       #accountsDBPath:Ljava/lang/String;
    .restart local v3       #rowCount:I
    :cond_2
    move-wide p0, v9

    .line 631
    goto :goto_1

    .line 634
    .end local v1           #accountsDBPath:Ljava/lang/String;
    .end local v3           #rowCount:I
    :catch_0
    move-exception v5

    move-object v2, v5

    .line 635
    .local v2, e:Ljava/lang/Exception;
    const-wide/16 p0, -0x1

    .line 636
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 638
    if-eqz v0, :cond_1

    .line 639
    :try_start_4
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 621
    .end local v2           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5

    .line 638
    :catchall_1
    move-exception v5

    if-eqz v0, :cond_3

    .line 639
    :try_start_5
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 638
    :cond_3
    throw v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_4
    move v5, v8

    .line 642
    goto :goto_0
.end method

.method static declared-synchronized deleteHostAuthTableRow(JLandroid/content/Context;)Z
    .locals 8
    .parameter "rowId"
    .parameter "mContext"

    .prologue
    const/4 v7, 0x0

    const-string v3, "SettingsUtils"

    .line 928
    const-class v3, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v3

    const/4 v1, -0x1

    .line 929
    .local v1, rowCount:I
    const-wide/16 v4, 0x1

    cmp-long v4, v4, p0

    if-lez v4, :cond_0

    .line 930
    :try_start_0
    const-string v4, "SettingsUtils"

    const-string v5, "deleteHostAuthTableRow : rowId is invalid"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v4, v7

    .line 940
    :goto_0
    monitor-exit v3

    return v4

    .line 934
    :cond_0
    :try_start_1
    sget-object v4, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 935
    .local v2, uri:Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 936
    const-string v4, "SettingsUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "deleteHostAuthTableRow : deleted rowCount from HostAuth : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 940
    .end local v2           #uri:Landroid/net/Uri;
    :goto_1
    if-lez v1, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    .line 937
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 938
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 928
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4

    :cond_1
    move v4, v7

    .line 940
    goto :goto_0
.end method

.method public static declared-synchronized fillExistingAccountInfo(Landroid/app/enterprise/Account;Lcom/android/server/enterprise/AccountMetaData;)V
    .locals 5
    .parameter "ac"
    .parameter "amd"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    const-class v1, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/enterprise/SettingsUtils;->getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, easDomainAndUser:[Ljava/lang/String;
    iget-object v2, p0, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 301
    iget-object v2, p0, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 302
    const/4 v2, 0x1

    aget-object v2, v0, v2

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    .line 303
    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 304
    iget v2, p0, Landroid/app/enterprise/Account;->mSyncLookback:I

    iput v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 305
    iget v2, p0, Landroid/app/enterprise/Account;->mSyncInterval:I

    iput v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 306
    iget-boolean v2, p0, Landroid/app/enterprise/Account;->mIsDefault:Z

    if-eqz v2, :cond_0

    move v2, v4

    :goto_0
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    .line 307
    iget-object v2, p0, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 308
    iget-object v2, p0, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 309
    iget-object v2, p0, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 311
    iget-boolean v2, p0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    .line 312
    iget-boolean v2, p0, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    .line 314
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 315
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 316
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget v2, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    iput v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 317
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    .line 318
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    if-eqz v2, :cond_4

    move v2, v4

    :goto_4
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    .line 319
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    if-eqz v2, :cond_5

    move v2, v4

    :goto_5
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    .line 320
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 321
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 322
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 324
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 325
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 326
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget v2, v2, Landroid/app/enterprise/HostAuth;->mPort:I

    iput v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 327
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, v2, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    if-eqz v2, :cond_6

    move v2, v4

    :goto_6
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    .line 328
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, v2, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    if-eqz v2, :cond_7

    move v2, v4

    :goto_7
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    .line 329
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-boolean v2, v2, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    if-eqz v2, :cond_8

    move v2, v4

    :goto_8
    int-to-byte v2, v2

    iput-byte v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    .line 330
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 331
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 332
    iget-object v2, p0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    iget-object v2, v2, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    iput-object v2, p1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    monitor-exit v1

    return-void

    :cond_0
    move v2, v3

    .line 306
    goto/16 :goto_0

    :cond_1
    move v2, v3

    .line 311
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 312
    goto/16 :goto_2

    :cond_3
    move v2, v3

    .line 317
    goto :goto_3

    :cond_4
    move v2, v3

    .line 318
    goto :goto_4

    :cond_5
    move v2, v3

    .line 319
    goto :goto_5

    :cond_6
    move v2, v3

    .line 327
    goto :goto_6

    :cond_7
    move v2, v3

    .line 328
    goto :goto_7

    :cond_8
    move v2, v3

    .line 329
    goto :goto_8

    .line 299
    .end local v0           #easDomainAndUser:[Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static declared-synchronized getAccount(JLandroid/content/Context;)Landroid/app/enterprise/Account;
    .locals 13
    .parameter "accountId"
    .parameter "mContext"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v0, "_id"

    .line 1058
    const-class v9, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v9

    const/4 v6, 0x0

    .line 1059
    .local v6, ac:Landroid/app/enterprise/Account;
    const/4 v8, 0x0

    .line 1061
    .local v8, c:Landroid/database/Cursor;
    const/16 v0, 0x12

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "displayName"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "emailAddress"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "syncKey"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "syncLookback"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "syncInterval"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "hostAuthKeyRecv"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "hostAuthKeySend"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/16 v0, 0x9

    const-string v1, "isDefault"

    aput-object v1, v2, v0

    const/16 v0, 0xa

    const-string v1, "compatibilityUuid"

    aput-object v1, v2, v0

    const/16 v0, 0xb

    const-string v1, "senderName"

    aput-object v1, v2, v0

    const/16 v0, 0xc

    const-string v1, "ringtoneUri"

    aput-object v1, v2, v0

    const/16 v0, 0xd

    const-string v1, "protocolVersion"

    aput-object v1, v2, v0

    const/16 v0, 0xe

    const-string v1, "newMessageCount"

    aput-object v1, v2, v0

    const/16 v0, 0xf

    const-string v1, "securityFlags"

    aput-object v1, v2, v0

    const/16 v0, 0x10

    const-string v1, "securitySyncKey"

    aput-object v1, v2, v0

    const/16 v0, 0x11

    const-string v1, "signature"

    aput-object v1, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1067
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1068
    const-string v0, "SettingsUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccount row count : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1070
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1071
    new-instance v7, Landroid/app/enterprise/Account;

    invoke-direct {v7}, Landroid/app/enterprise/Account;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1072
    .end local v6           #ac:Landroid/app/enterprise/Account;
    .local v7, ac:Landroid/app/enterprise/Account;
    :try_start_2
    const-string v0, "_id"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/app/enterprise/Account;->mId:I

    .line 1073
    const-string v0, "displayName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mDisplayName:Ljava/lang/String;

    .line 1074
    const-string v0, "emailAddress"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .line 1075
    const-string v0, "syncKey"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mSyncKey:Ljava/lang/String;

    .line 1076
    const-string v0, "syncLookback"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/app/enterprise/Account;->mSyncLookback:I

    .line 1077
    const-string v0, "syncInterval"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/app/enterprise/Account;->mSyncInterval:I

    .line 1078
    const-string v0, "hostAuthKeyRecv"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    .line 1079
    const-string v0, "hostAuthKeySend"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    .line 1080
    const-string v0, "flags"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/app/enterprise/Account;->mFlags:I

    .line 1081
    iget v0, v7, Landroid/app/enterprise/Account;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-ne v12, v0, :cond_2

    move v0, v10

    :goto_0
    iput-boolean v0, v7, Landroid/app/enterprise/Account;->mEmailNotificationVibrateAlways:Z

    .line 1082
    const/16 v0, 0x40

    iget v1, v7, Landroid/app/enterprise/Account;->mFlags:I

    and-int/lit8 v1, v1, 0x40

    if-ne v0, v1, :cond_3

    move v0, v10

    :goto_1
    iput-boolean v0, v7, Landroid/app/enterprise/Account;->mEmailNotificationVibrateWhenSilent:Z

    .line 1083
    const-string v0, "isDefault"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne v0, v10, :cond_4

    move v0, v10

    :goto_2
    iput-boolean v0, v7, Landroid/app/enterprise/Account;->mIsDefault:Z

    .line 1084
    const-string v0, "compatibilityUuid"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mCompatibilityUuid:Ljava/lang/String;

    .line 1085
    const-string v0, "senderName"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mSenderName:Ljava/lang/String;

    .line 1086
    const-string v0, "ringtoneUri"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mRingtoneUri:Ljava/lang/String;

    .line 1087
    const-string v0, "protocolVersion"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mProtocolVersion:Ljava/lang/String;

    .line 1088
    const-string v0, "newMessageCount"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/app/enterprise/Account;->mNewMessageCount:I

    .line 1089
    const-string v0, "securityFlags"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, v7, Landroid/app/enterprise/Account;->mSecurityFlags:I

    .line 1090
    const-string v0, "securitySyncKey"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mSecuritySyncKey:Ljava/lang/String;

    .line 1091
    const-string v0, "signature"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Landroid/app/enterprise/Account;->mSignature:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, v7

    .line 1094
    .end local v7           #ac:Landroid/app/enterprise/Account;
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    :cond_0
    if-eqz v8, :cond_1

    .line 1095
    :try_start_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1097
    :cond_1
    monitor-exit v9

    return-object v6

    .end local v6           #ac:Landroid/app/enterprise/Account;
    .restart local v7       #ac:Landroid/app/enterprise/Account;
    :cond_2
    move v0, v11

    .line 1081
    goto/16 :goto_0

    :cond_3
    move v0, v11

    .line 1082
    goto :goto_1

    :cond_4
    move v0, v11

    .line 1083
    goto :goto_2

    .line 1094
    .end local v7           #ac:Landroid/app/enterprise/Account;
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v8, :cond_5

    .line 1095
    :try_start_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1094
    :cond_5
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1058
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit v9

    throw v0

    .line 1094
    .end local v6           #ac:Landroid/app/enterprise/Account;
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v7       #ac:Landroid/app/enterprise/Account;
    :catchall_2
    move-exception v0

    move-object v6, v7

    .end local v7           #ac:Landroid/app/enterprise/Account;
    .restart local v6       #ac:Landroid/app/enterprise/Account;
    goto :goto_3
.end method

.method static declared-synchronized getAccountDetails(JLandroid/content/Context;)Landroid/app/enterprise/Account;
    .locals 6
    .parameter "accountId"
    .parameter "mContext"

    .prologue
    .line 1037
    const-class v3, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v3

    const/4 v0, 0x0

    .line 1038
    .local v0, ac:Landroid/app/enterprise/Account;
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/android/server/enterprise/SettingsUtils;->getAccount(JLandroid/content/Context;)Landroid/app/enterprise/Account;

    move-result-object v0

    .line 1039
    if-eqz v0, :cond_1

    .line 1040
    const/4 v1, 0x0

    .line 1041
    .local v1, haRecv:Landroid/app/enterprise/HostAuth;
    const/4 v2, 0x0

    .line 1042
    .local v2, haSend:Landroid/app/enterprise/HostAuth;
    iget-wide v4, v0, Landroid/app/enterprise/Account;->mHostAuthKeyRecv:J

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuth(JLandroid/content/Context;)Landroid/app/enterprise/HostAuth;

    move-result-object v1

    .line 1043
    if-eqz v1, :cond_0

    .line 1044
    iget-wide v4, v0, Landroid/app/enterprise/Account;->mHostAuthKeySend:J

    invoke-static {v4, v5, p2}, Lcom/android/server/enterprise/SettingsUtils;->getHostAuth(JLandroid/content/Context;)Landroid/app/enterprise/HostAuth;

    move-result-object v2

    .line 1046
    :cond_0
    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 1047
    iput-object v1, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    .line 1048
    iput-object v2, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1054
    .end local v1           #haRecv:Landroid/app/enterprise/HostAuth;
    .end local v2           #haSend:Landroid/app/enterprise/HostAuth;
    :cond_1
    :goto_0
    monitor-exit v3

    return-object v0

    .line 1051
    .restart local v1       #haRecv:Landroid/app/enterprise/HostAuth;
    .restart local v2       #haSend:Landroid/app/enterprise/HostAuth;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1037
    .end local v1           #haRecv:Landroid/app/enterprise/HostAuth;
    .end local v2           #haSend:Landroid/app/enterprise/HostAuth;
    :catchall_0
    move-exception v4

    monitor-exit v3

    throw v4
.end method

.method static declared-synchronized getAccountId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)J
    .locals 14
    .parameter "easDomain"
    .parameter "user"
    .parameter "serverAddress"
    .parameter "protocol"
    .parameter "isEas"
    .parameter "mContext"

    .prologue
    .line 974
    const-class v13, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v13

    const-wide/16 v8, -0x1

    .line 975
    .local v8, accountId:J
    const/4 v10, 0x0

    .line 977
    .local v10, c:Landroid/database/Cursor;
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 978
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 979
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 980
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 982
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 983
    :cond_0
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p4, "getAccountId : Error :: Invalid input parameters."

    .end local p4
    move-object v0, p0

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-object p0, v10

    .end local v10           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    move-wide/from16 p2, v8

    .end local v8           #accountId:J
    .end local p3
    .local p2, accountId:J
    move-wide/from16 p4, v8

    .line 1027
    .end local p2           #accountId:J
    .end local p5
    .local p4, accountId:J
    :goto_0
    monitor-exit v13

    return-wide p4

    .line 986
    .restart local v8       #accountId:J
    .restart local v10       #c:Landroid/database/Cursor;
    .local p0, easDomain:Ljava/lang/String;
    .local p2, serverAddress:Ljava/lang/String;
    .restart local p3
    .local p4, isEas:Z
    .restart local p5
    :cond_1
    if-eqz p4, :cond_2

    if-eqz p0, :cond_2

    .line 987
    :try_start_1
    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4           #isEas:Z
    invoke-direct/range {p4 .. p4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    move-object v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #easDomain:Ljava/lang/String;
    const-string p4, "\\"

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 989
    :cond_2
    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    const-string p4, "_id"

    aput-object p4, v4, p0

    .line 993
    .local v4, ID_PROJECTION:[Ljava/lang/String;
    const/4 p0, 0x3

    new-array v6, p0, [Ljava/lang/String;

    const/4 p0, 0x0

    aput-object p3, v6, p0

    const/4 p0, 0x1

    aput-object p2, v6, p0

    const/4 p0, 0x2

    aput-object p1, v6, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 996
    .local v6, selectionArgs:[Ljava/lang/String;
    const-wide/16 v11, -0x1

    .line 998
    .local v11, hostAuthId:J
    :try_start_2
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "protocol=? AND address=? AND login=? "

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object p0

    .line 999
    .end local v10           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :try_start_3
    const-string p4, "SettingsUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAccountId for HOST_AUTH row count : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move-object v1, v2

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1000
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_9

    .line 1001
    const-string p4, "_id"

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    move-object v0, p0

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-result p4

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide v2, v0

    .line 1004
    .end local v11           #hostAuthId:J
    .local v2, hostAuthId:J
    :goto_1
    if-eqz p0, :cond_3

    .line 1005
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1007
    :cond_3
    const/4 p0, 0x0

    .line 1009
    const-wide/16 v10, -0x1

    cmp-long p4, v10, v2

    if-eqz p4, :cond_8

    .line 1010
    const/16 p4, 0x1

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object v4, v0

    .end local v4           #ID_PROJECTION:[Ljava/lang/String;
    const/16 p4, 0x0

    const-string v5, "_id"

    aput-object v5, v4, p4

    .line 1013
    .restart local v4       #ID_PROJECTION:[Ljava/lang/String;
    const/16 p4, 0x2

    move/from16 v0, p4

    new-array v0, v0, [Ljava/lang/String;

    move-object v6, v0

    .end local v6           #selectionArgs:[Ljava/lang/String;
    const/16 p4, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, p4

    const/16 p4, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    .end local v2           #hostAuthId:J
    aput-object v2, v6, p4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1017
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :try_start_5
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "hostAuthKeyRecv=? OR hostAuthKeySend=? "

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 1018
    const-string p4, "SettingsUtils"

    new-instance p5, Ljava/lang/StringBuilder;

    .end local p5
    invoke-direct/range {p5 .. p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAccountId for ACCOUNT row count : "

    move-object/from16 v0, p5

    move-object v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    move-object/from16 v0, p5

    move v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p4 .. p5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p4

    if-eqz p4, :cond_7

    .line 1020
    const-string p4, "_id"

    move-object v0, p0

    move-object/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    move-object v0, p0

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result p4

    move/from16 v0, p4

    int-to-long v0, v0

    move-wide/from16 p4, v0

    .line 1023
    .end local v8           #accountId:J
    .local p4, accountId:J
    :goto_2
    if-eqz p0, :cond_4

    .line 1024
    :try_start_6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_4
    move-wide/from16 p2, p4

    .end local p3
    .end local p4           #accountId:J
    .local p2, accountId:J
    :goto_3
    move-wide/from16 p4, p2

    .line 1027
    .end local p2           #accountId:J
    .restart local p4       #accountId:J
    goto/16 :goto_0

    .line 1004
    .end local p0           #c:Landroid/database/Cursor;
    .end local p4           #accountId:J
    .restart local v8       #accountId:J
    .restart local v10       #c:Landroid/database/Cursor;
    .restart local v11       #hostAuthId:J
    .local p2, serverAddress:Ljava/lang/String;
    .restart local p3
    .restart local p5
    :catchall_0
    move-exception p0

    move-object/from16 p4, p0

    move-object p0, v10

    .end local v10           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    :goto_4
    if-eqz p0, :cond_5

    .line 1005
    :try_start_7
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1004
    :cond_5
    throw p4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 974
    .end local v4           #ID_PROJECTION:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v11           #hostAuthId:J
    .end local p5
    :catchall_1
    move-exception p4

    move-object/from16 v2, p4

    move-wide/from16 p4, v8

    .end local v8           #accountId:J
    .restart local p4       #accountId:J
    :goto_5
    monitor-exit v13

    throw v2

    .line 1023
    .end local p4           #accountId:J
    .restart local v4       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    .restart local v8       #accountId:J
    :catchall_2
    move-exception p4

    if-eqz p0, :cond_6

    .line 1024
    :try_start_8
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1023
    :cond_6
    throw p4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1004
    .restart local v11       #hostAuthId:J
    .restart local p5
    :catchall_3
    move-exception p4

    goto :goto_4

    .line 974
    .end local v4           #ID_PROJECTION:[Ljava/lang/String;
    .end local v6           #selectionArgs:[Ljava/lang/String;
    .end local v11           #hostAuthId:J
    .end local p0           #c:Landroid/database/Cursor;
    .restart local v10       #c:Landroid/database/Cursor;
    :catchall_4
    move-exception p0

    move-wide/from16 p4, v8

    .end local v8           #accountId:J
    .end local p5
    .restart local p4       #accountId:J
    move-object v2, p0

    move-object p0, v10

    .end local v10           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    goto :goto_5

    .restart local v4       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v6       #selectionArgs:[Ljava/lang/String;
    :catchall_5
    move-exception v2

    goto :goto_5

    .end local p4           #accountId:J
    .restart local v8       #accountId:J
    :cond_7
    move-wide/from16 p4, v8

    .end local v8           #accountId:J
    .restart local p4       #accountId:J
    goto :goto_2

    .end local p4           #accountId:J
    .restart local v2       #hostAuthId:J
    .restart local v8       #accountId:J
    .restart local p5
    :cond_8
    move-wide/from16 p2, v8

    .end local v8           #accountId:J
    .end local p3
    .local p2, accountId:J
    goto :goto_3

    .end local v2           #hostAuthId:J
    .restart local v8       #accountId:J
    .restart local v11       #hostAuthId:J
    .local p2, serverAddress:Ljava/lang/String;
    .restart local p3
    :cond_9
    move-wide v2, v11

    .end local v11           #hostAuthId:J
    .restart local v2       #hostAuthId:J
    goto/16 :goto_1
.end method

.method private static declared-synchronized getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J
    .locals 13
    .parameter "emailId"
    .parameter "accountType"
    .parameter "mContext"

    .prologue
    .line 646
    const-class v5, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v5

    const/4 p2, 0x0

    .line 647
    .local p2, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v2, 0x0

    .line 648
    .local v2, cr:Landroid/database/Cursor;
    const-wide/16 v3, -0x1

    .line 649
    .local v3, rowId:J
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 650
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object p1

    .line 652
    if-eqz p0, :cond_c

    .line 654
    :try_start_1
    const-string v0, "/data/system/accounts.db"

    .line 655
    .local v0, accountsDBPath:Ljava/lang/String;
    const/4 v1, 0x0

    const/4 v6, 0x0

    invoke-static {v0, v1, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 656
    const-wide/16 v0, -0x1

    .line 658
    .local v0, accountsDBRowId:J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SELECT rowid FROM accounts WHERE name = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p1, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\' AND type = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {p2, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 659
    const-string v6, "SettingsUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getAccountsDBRowId - got row count : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " for emailAddress : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz p1, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND account type : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_1

    .line 661
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 662
    const/4 v0, 0x0

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getLong(I)J

    .end local v0           #accountsDBRowId:J
    move-result-wide v0

    .line 663
    .restart local v0       #accountsDBRowId:J
    if-eqz v2, :cond_0

    .line 664
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 665
    :cond_0
    const/4 v2, 0x0

    .line 667
    :cond_1
    const-wide/16 v6, -0x1

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 668
    move-wide v0, v0

    .line 669
    .end local v3           #rowId:J
    .local v0, rowId:J
    :try_start_2
    const-string p0, "SettingsUtils"

    .end local p0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccountsDBRowId - Found row Id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 677
    :goto_2
    if-eqz v2, :cond_2

    .line 678
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_2
    if-eqz p2, :cond_3

    .line 680
    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :cond_3
    move-object p1, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local p1, cr:Landroid/database/Cursor;
    move-object p0, p2

    .line 686
    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :goto_3
    monitor-exit v5

    return-wide v0

    .line 658
    .local v0, accountsDBRowId:J
    .restart local v2       #cr:Landroid/database/Cursor;
    .restart local v3       #rowId:J
    .local p0, emailId:Ljava/lang/String;
    .local p1, accountType:Ljava/lang/String;
    .restart local p2       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :cond_4
    :try_start_4
    const-string v7, ""

    goto/16 :goto_0

    .line 659
    :cond_5
    const-string v8, ""

    goto :goto_1

    .line 671
    :cond_6
    const-string v0, "SettingsUtils"

    .end local v0           #accountsDBRowId:J
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAccountsDBRowId - entry doesn\'t exist for name: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0           #emailId:Ljava/lang/String;
    if-eqz p1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND account type : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_4
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v0, v3

    .end local v3           #rowId:J
    .local v0, rowId:J
    goto :goto_2

    .end local v0           #rowId:J
    .restart local v3       #rowId:J
    :cond_7
    const-string v1, ""
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    .line 673
    :catch_0
    move-exception p0

    move-object v0, p0

    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    move-object p2, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local p2, cr:Landroid/database/Cursor;
    move-wide v1, v3

    .line 674
    .end local v3           #rowId:J
    .local v0, e:Ljava/lang/Exception;
    .local v1, rowId:J
    :goto_5
    const-wide/16 v1, -0x1

    .line 675
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 677
    if-eqz p2, :cond_8

    .line 678
    :try_start_6
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_8
    if-eqz p0, :cond_9

    .line 680
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :cond_9
    move-object p1, p2

    .end local p2           #cr:Landroid/database/Cursor;
    .local p1, cr:Landroid/database/Cursor;
    move-wide v10, v1

    .end local v1           #rowId:J
    .local v10, rowId:J
    move-wide v0, v10

    .line 682
    .end local v10           #rowId:J
    .local v0, rowId:J
    goto :goto_3

    .line 677
    .end local v0           #rowId:J
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #cr:Landroid/database/Cursor;
    .restart local v3       #rowId:J
    .local p1, accountType:Ljava/lang/String;
    .local p2, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_0
    move-exception p0

    move-wide v0, v3

    .end local v3           #rowId:J
    .restart local v0       #rowId:J
    move-object v10, p0

    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    move-object p2, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local p2, cr:Landroid/database/Cursor;
    move-object v2, v10

    :goto_6
    if-eqz p2, :cond_a

    .line 678
    :try_start_7
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 679
    :cond_a
    if-eqz p0, :cond_b

    .line 680
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 677
    :cond_b
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 646
    :catchall_1
    move-exception v2

    :goto_7
    monitor-exit v5

    throw v2

    .line 684
    .end local v0           #rowId:J
    .restart local v2       #cr:Landroid/database/Cursor;
    .restart local v3       #rowId:J
    .local p0, emailId:Ljava/lang/String;
    .local p2, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :cond_c
    :try_start_8
    const-string p0, "SettingsUtils"

    .end local p0           #emailId:Ljava/lang/String;
    const-string v0, "getAccountsDBRowId : Error :: Invalid input parameters."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    move-wide v0, v3

    .end local v3           #rowId:J
    .restart local v0       #rowId:J
    move-object p1, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local p1, cr:Landroid/database/Cursor;
    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_3

    .line 677
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #cr:Landroid/database/Cursor;
    .local p1, accountType:Ljava/lang/String;
    .restart local p2       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_2
    move-exception p0

    move-object v10, p0

    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    move-object p2, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local p2, cr:Landroid/database/Cursor;
    move-object v2, v10

    goto :goto_6

    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #rowId:J
    :catchall_3
    move-exception v0

    move-object v10, v0

    move-wide v11, v1

    .end local v1           #rowId:J
    .local v11, rowId:J
    move-wide v0, v11

    .end local v11           #rowId:J
    .local v0, rowId:J
    move-object v2, v10

    goto :goto_6

    .line 673
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #cr:Landroid/database/Cursor;
    .local p2, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :catch_1
    move-exception p0

    move-object v10, p0

    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    move-object p2, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local p2, cr:Landroid/database/Cursor;
    move-wide v11, v0

    .end local v0           #rowId:J
    .restart local v11       #rowId:J
    move-wide v1, v11

    .end local v11           #rowId:J
    .restart local v1       #rowId:J
    move-object v0, v10

    goto :goto_5

    .line 646
    .end local v1           #rowId:J
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #cr:Landroid/database/Cursor;
    .restart local v3       #rowId:J
    .local p2, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_4
    move-exception p0

    move-wide v0, v3

    .end local v3           #rowId:J
    .restart local v0       #rowId:J
    move-object v10, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local v10, cr:Landroid/database/Cursor;
    move-object v2, p0

    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    move-object p2, v10

    .end local v10           #cr:Landroid/database/Cursor;
    .local p2, cr:Landroid/database/Cursor;
    goto :goto_7

    .local v0, e:Ljava/lang/Exception;
    .restart local v1       #rowId:J
    :catchall_5
    move-exception v0

    move-wide v10, v1

    .end local v1           #rowId:J
    .local v10, rowId:J
    move-object v2, v0

    move-wide v0, v10

    .end local v10           #rowId:J
    .local v0, rowId:J
    goto :goto_7

    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v2       #cr:Landroid/database/Cursor;
    .local p2, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :catchall_6
    move-exception p0

    move-object v10, v2

    .end local v2           #cr:Landroid/database/Cursor;
    .local v10, cr:Landroid/database/Cursor;
    move-object v2, p0

    move-object p0, p2

    .end local p2           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    move-object p2, v10

    .end local v10           #cr:Landroid/database/Cursor;
    .local p2, cr:Landroid/database/Cursor;
    goto :goto_7
.end method

.method static declared-synchronized getEasDomainAndUserFromLogin(Ljava/lang/String;)[Ljava/lang/String;
    .locals 7
    .parameter "login"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const-string v2, "\\"

    .line 336
    const-class v2, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v2

    const/4 v3, 0x2

    :try_start_0
    new-array v0, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput-object v4, v0, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v0, v3

    .line 339
    .local v0, easDomainAndUser:[Ljava/lang/String;
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 340
    if-eqz p0, :cond_0

    .line 341
    const-string v3, "\\"

    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 342
    const-string v3, "\\"

    invoke-static {v3}, Ljava/util/regex/Matcher;->quoteReplacement(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 343
    .local v1, sp:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 344
    array-length v3, v1

    if-ne v6, v3, :cond_1

    .line 345
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 346
    const/4 v3, 0x1

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 353
    .end local v1           #sp:[Ljava/lang/String;
    :cond_0
    :goto_0
    monitor-exit v2

    return-object v0

    .line 347
    .restart local v1       #sp:[Ljava/lang/String;
    :cond_1
    :try_start_1
    array-length v3, v1

    if-ne v5, v3, :cond_0

    .line 348
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 336
    .end local v0           #easDomainAndUser:[Ljava/lang/String;
    .end local v1           #sp:[Ljava/lang/String;
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private static declared-synchronized getHostAuth(JLandroid/content/Context;)Landroid/app/enterprise/HostAuth;
    .locals 9
    .parameter "id"
    .parameter "mContext"

    .prologue
    .line 1101
    const-class v8, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v8

    const/4 v7, 0x0

    .line 1102
    .local v7, hAuth:Landroid/app/enterprise/HostAuth;
    const/4 v6, 0x0

    .line 1104
    .local v6, c:Landroid/database/Cursor;
    const/16 v0, 0x9

    :try_start_0
    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const/4 v0, 0x1

    const-string v1, "protocol"

    aput-object v1, v2, v0

    const/4 v0, 0x2

    const-string v1, "address"

    aput-object v1, v2, v0

    const/4 v0, 0x3

    const-string v1, "port"

    aput-object v1, v2, v0

    const/4 v0, 0x4

    const-string v1, "flags"

    aput-object v1, v2, v0

    const/4 v0, 0x5

    const-string v1, "login"

    aput-object v1, v2, v0

    const/4 v0, 0x6

    const-string v1, "password"

    aput-object v1, v2, v0

    const/4 v0, 0x7

    const-string v1, "domain"

    aput-object v1, v2, v0

    const/16 v0, 0x8

    const-string v1, "accountKey"

    aput-object v1, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 1108
    .local v2, ID_PROJECTION:[Ljava/lang/String;
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    new-instance p2, Ljava/lang/StringBuilder;

    .end local p2
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "_id = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    .end local p0
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p0

    .line 1109
    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    :try_start_2
    const-string p1, "SettingsUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getHostAuth row count : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_5

    .line 1111
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1112
    new-instance p1, Landroid/app/enterprise/HostAuth;

    invoke-direct {p1}, Landroid/app/enterprise/HostAuth;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1113
    .end local v7           #hAuth:Landroid/app/enterprise/HostAuth;
    .local p1, hAuth:Landroid/app/enterprise/HostAuth;
    :try_start_3
    const-string p2, "_id"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Landroid/app/enterprise/HostAuth;->mId:I

    .line 1114
    const-string p2, "protocol"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/app/enterprise/HostAuth;->mProtocol:Ljava/lang/String;

    .line 1115
    const-string p2, "address"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/app/enterprise/HostAuth;->mAddress:Ljava/lang/String;

    .line 1116
    const-string p2, "port"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Landroid/app/enterprise/HostAuth;->mPort:I

    .line 1117
    const-string p2, "flags"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    iput p2, p1, Landroid/app/enterprise/HostAuth;->mFlags:I

    .line 1118
    const/4 p2, 0x1

    iget v0, p1, Landroid/app/enterprise/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    :goto_0
    iput-boolean p2, p1, Landroid/app/enterprise/HostAuth;->mUseSSL:Z

    .line 1119
    const/4 p2, 0x2

    iget v0, p1, Landroid/app/enterprise/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-ne p2, v0, :cond_2

    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p1, Landroid/app/enterprise/HostAuth;->mUseTLS:Z

    .line 1120
    const/16 p2, 0x8

    iget v0, p1, Landroid/app/enterprise/HostAuth;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-ne p2, v0, :cond_3

    const/4 p2, 0x1

    :goto_2
    iput-boolean p2, p1, Landroid/app/enterprise/HostAuth;->mAcceptAllCertificates:Z

    .line 1121
    const-string p2, "login"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/app/enterprise/HostAuth;->mLogin:Ljava/lang/String;

    .line 1122
    const-string p2, "password"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/app/enterprise/HostAuth;->mPassword:Ljava/lang/String;

    .line 1123
    const-string p2, "domain"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/app/enterprise/HostAuth;->mDomain:Ljava/lang/String;

    .line 1124
    const-string p2, "accountKey"

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p0, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    int-to-long v0, p2

    iput-wide v0, p1, Landroid/app/enterprise/HostAuth;->mAccountKey:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1127
    :goto_3
    if-eqz p0, :cond_0

    .line 1128
    :try_start_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1130
    :cond_0
    monitor-exit v8

    return-object p1

    .line 1118
    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 1119
    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    .line 1120
    :cond_3
    const/4 p2, 0x0

    goto :goto_2

    .line 1127
    .end local p0           #c:Landroid/database/Cursor;
    .end local p1           #hAuth:Landroid/app/enterprise/HostAuth;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #hAuth:Landroid/app/enterprise/HostAuth;
    :catchall_0
    move-exception p0

    move-object p2, p0

    move-object p1, v7

    .end local v7           #hAuth:Landroid/app/enterprise/HostAuth;
    .restart local p1       #hAuth:Landroid/app/enterprise/HostAuth;
    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .restart local p0       #c:Landroid/database/Cursor;
    :goto_4
    if-eqz p0, :cond_4

    .line 1128
    :try_start_5
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 1127
    :cond_4
    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1101
    :catchall_1
    move-exception p2

    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    :goto_5
    monitor-exit v8

    throw p2

    .line 1127
    .end local p1           #hAuth:Landroid/app/enterprise/HostAuth;
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v7       #hAuth:Landroid/app/enterprise/HostAuth;
    :catchall_2
    move-exception p1

    move-object p2, p1

    move-object p1, v7

    .end local v7           #hAuth:Landroid/app/enterprise/HostAuth;
    .restart local p1       #hAuth:Landroid/app/enterprise/HostAuth;
    goto :goto_4

    :catchall_3
    move-exception p2

    goto :goto_4

    .line 1101
    .end local v2           #ID_PROJECTION:[Ljava/lang/String;
    .end local p1           #hAuth:Landroid/app/enterprise/HostAuth;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v7       #hAuth:Landroid/app/enterprise/HostAuth;
    .local p0, id:J
    .restart local p2
    :catchall_4
    move-exception p0

    move-object p1, v7

    .end local v7           #hAuth:Landroid/app/enterprise/HostAuth;
    .end local p0           #id:J
    .restart local p1       #hAuth:Landroid/app/enterprise/HostAuth;
    move-object p2, p0

    move-object p0, v6

    .end local v6           #c:Landroid/database/Cursor;
    .local p0, c:Landroid/database/Cursor;
    goto :goto_5

    .end local p1           #hAuth:Landroid/app/enterprise/HostAuth;
    .end local p2
    .restart local v2       #ID_PROJECTION:[Ljava/lang/String;
    .restart local v7       #hAuth:Landroid/app/enterprise/HostAuth;
    :cond_5
    move-object p1, v7

    .end local v7           #hAuth:Landroid/app/enterprise/HostAuth;
    .restart local p1       #hAuth:Landroid/app/enterprise/HostAuth;
    goto :goto_3
.end method

.method private static declared-synchronized getHostAuthFlags(IBBBLandroid/content/Context;)I
    .locals 5
    .parameter "existingFlag"
    .parameter "useSSL"
    .parameter "useTLS"
    .parameter "acceptAllCertificates"
    .parameter "mContext"

    .prologue
    const/4 v4, 0x1

    .line 557
    const-class v1, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v1

    move v0, p0

    .line 560
    .local v0, flag:I
    if-ne v4, p1, :cond_3

    .line 561
    or-int/lit8 v0, v0, 0x1

    .line 566
    :cond_0
    :goto_0
    if-ne v4, p2, :cond_4

    .line 567
    or-int/lit8 v0, v0, 0x2

    .line 572
    :cond_1
    :goto_1
    if-ne v4, p3, :cond_5

    .line 573
    or-int/lit8 v0, v0, 0x8

    .line 577
    :cond_2
    :goto_2
    monitor-exit v1

    return v0

    .line 562
    :cond_3
    and-int/lit8 v2, v0, 0x1

    if-ne v4, v2, :cond_0

    .line 563
    xor-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 568
    :cond_4
    const/4 v2, 0x2

    and-int/lit8 v3, v0, 0x2

    if-ne v2, v3, :cond_1

    .line 569
    xor-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 574
    :cond_5
    const/16 v2, 0x8

    and-int/lit8 v3, v0, 0x8

    if-ne v2, v3, :cond_2

    .line 575
    xor-int/lit8 v0, v0, 0x8

    goto :goto_2
.end method

.method public static declared-synchronized getValidStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "str"

    .prologue
    const/4 v3, 0x0

    .line 76
    const-class v1, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v1

    if-nez p0, :cond_0

    move-object v2, v3

    .line 80
    :goto_0
    monitor-exit v1

    return-object v2

    .line 76
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_1

    move-object v2, p0

    goto :goto_0

    :cond_1
    move-object v2, v3

    goto :goto_0

    .line 77
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 78
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v3

    .line 80
    goto :goto_0

    .line 76
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v1

    throw v2
.end method

.method private static declared-synchronized insertAccountTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJJIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J
    .locals 11
    .parameter "displayName"
    .parameter "emailAddress"
    .parameter "syncKey"
    .parameter "syncLookback"
    .parameter "syncInterval"
    .parameter "hostAuthKeyRecv"
    .parameter "hostAuthKeySend"
    .parameter "settingsFlags"
    .parameter "isDefault"
    .parameter "compatibilityUuid"
    .parameter "senderName"
    .parameter "ringtoneUri"
    .parameter "protocolVersion"
    .parameter "newMessageCount"
    .parameter "securityFlags"
    .parameter "securitySyncKey"
    .parameter "signature"
    .parameter "isEasAccount"
    .parameter "isInsertOP"
    .parameter "existingAccInfo"
    .parameter "mContext"

    .prologue
    .line 698
    const-class v7, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v7

    const-wide/16 v5, -0x1

    .line 700
    .local v5, rowId:J
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 701
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 703
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 704
    invoke-static/range {p12 .. p12}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p12

    .line 705
    invoke-static/range {p13 .. p13}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p13

    .line 706
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    .line 707
    invoke-static/range {p17 .. p17}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p17

    .line 708
    invoke-static/range {p18 .. p18}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p18

    .line 710
    if-nez p0, :cond_0

    .line 711
    move-object p0, p1

    .line 713
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-eqz p11, :cond_1

    if-eqz p13, :cond_1

    const/4 v8, 0x1

    if-gt v8, p3, :cond_1

    const/4 v8, 0x6

    if-lt v8, p3, :cond_1

    const-wide/16 v8, 0x1

    cmp-long v8, v8, p5

    if-gtz v8, :cond_1

    const-wide/16 v8, 0x1

    cmp-long v8, v8, p7

    if-gtz v8, :cond_1

    const/4 v8, 0x1

    move v0, v8

    move/from16 v1, p9

    if-le v0, v1, :cond_2

    .line 716
    :cond_1
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p3, "insertAccountTableRow : Error :: Invalid input parameters."

    .end local p3
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide p0, v5

    .end local v5           #rowId:J
    .end local p1
    .local p0, rowId:J
    move-wide p2, v5

    .line 790
    .end local p0           #rowId:J
    .end local p4
    .end local p5
    .end local p7
    .end local p19
    .local p2, rowId:J
    :goto_0
    monitor-exit v7

    return-wide p2

    .line 719
    .restart local v5       #rowId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, syncKey:Ljava/lang/String;
    .restart local p3
    .restart local p4
    .restart local p5
    .restart local p7
    .restart local p19
    :cond_2
    if-eqz p19, :cond_4

    if-eqz p2, :cond_3

    if-nez p14, :cond_4

    .line 720
    :cond_3
    :try_start_1
    const-string p0, "SettingsUtils"

    .end local p0           #displayName:Ljava/lang/String;
    const-string p3, "insertAccountTableRow : Error :: Invalid input parameters."

    .end local p3
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p0, v5

    .end local v5           #rowId:J
    .end local p1
    .local p0, rowId:J
    move-wide p2, v5

    .line 721
    .end local p0           #rowId:J
    .local p2, rowId:J
    goto :goto_0

    .line 723
    .restart local v5       #rowId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, syncKey:Ljava/lang/String;
    .restart local p3
    :cond_4
    if-nez p19, :cond_5

    if-nez p12, :cond_5

    .line 724
    const-string p0, "SettingsUtils"

    .end local p0           #displayName:Ljava/lang/String;
    const-string p3, "insertAccountTableRow : Error :: Invalid input parameters."

    .end local p3
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-wide p0, v5

    .end local v5           #rowId:J
    .end local p1
    .local p0, rowId:J
    move-wide p2, v5

    .line 725
    .end local p0           #rowId:J
    .local p2, rowId:J
    goto :goto_0

    .line 728
    .restart local v5       #rowId:J
    .local p0, displayName:Ljava/lang/String;
    .restart local p1
    .local p2, syncKey:Ljava/lang/String;
    .restart local p3
    :cond_5
    const/16 p15, 0x0

    .line 729
    const/16 p16, 0x0

    .line 731
    new-instance p19, Landroid/content/ContentValues;

    .end local p19
    invoke-direct/range {p19 .. p19}, Landroid/content/ContentValues;-><init>()V

    .line 733
    .local p19, values:Landroid/content/ContentValues;
    const-string v8, "displayName"

    move-object/from16 v0, p19

    move-object v1, v8

    move-object v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    const-string p0, "emailAddress"

    .end local p0           #displayName:Ljava/lang/String;
    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    if-eqz p2, :cond_6

    .line 736
    const-string p0, "syncKey"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :cond_6
    const-string p0, "syncLookback"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .end local p3
    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 738
    const-string p0, "syncInterval"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const-string p0, "offPeakSchedule"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string p0, "hostAuthKeyRecv"

    move-wide/from16 v0, p5

    long-to-int v0, v0

    move p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 741
    const-string p0, "hostAuthKeySend"

    move-wide/from16 v0, p7

    long-to-int v0, v0

    move p3, v0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 742
    const-string p0, "flags"

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    const-string p0, "isDefault"

    const/4 p3, 0x1

    move v0, p3

    move/from16 v1, p10

    if-ne v0, v1, :cond_c

    const/4 p3, 0x1

    :goto_1
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 744
    const-string p0, "compatibilityUuid"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object/from16 v2, p11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    if-eqz p12, :cond_7

    .line 746
    const-string p0, "senderName"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object/from16 v2, p12

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 747
    :cond_7
    const-string p0, "ringtoneUri"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object/from16 v2, p13

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    if-eqz p14, :cond_8

    .line 749
    const-string p0, "protocolVersion"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object/from16 v2, p14

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :cond_8
    if-eqz p20, :cond_9

    .line 751
    const-string p0, "newMessageCount"

    invoke-static/range {p15 .. p15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 752
    const-string p0, "securityFlags"

    invoke-static/range {p16 .. p16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    move-object/from16 v0, p19

    move-object v1, p0

    move-object v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    :cond_9
    if-eqz p17, :cond_a

    .line 755
    const-string p0, "securitySyncKey"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object/from16 v2, p17

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :cond_a
    if-eqz p18, :cond_b

    .line 757
    const-string p0, "signature"

    move-object/from16 v0, p19

    move-object v1, p0

    move-object/from16 v2, p18

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    :cond_b
    invoke-virtual/range {p19 .. p19}, Landroid/content/ContentValues;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result p0

    if-lez p0, :cond_f

    .line 761
    if-eqz p20, :cond_d

    .line 762
    :try_start_2
    invoke-virtual/range {p22 .. p22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p3, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p19

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 763
    .local p0, newRowUri:Landroid/net/Uri;
    const-string p3, "SettingsUtils"

    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "insertAccountTableRow rowUri : "

    .end local p5
    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p3, p4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-wide p3

    .line 766
    .end local v5           #rowId:J
    .local p3, rowId:J
    :try_start_3
    new-instance p0, Landroid/content/ContentValues;

    .end local p0           #newRowUri:Landroid/net/Uri;
    invoke-direct {p0}, Landroid/content/ContentValues;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 767
    .end local p19           #values:Landroid/content/ContentValues;
    .local p0, values:Landroid/content/ContentValues;
    :try_start_4
    const-string p5, "accountKey"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 768
    const-string p5, "sevenAccountKey"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 769
    const-string p5, "timeLimit"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 770
    const-string p5, "sizeLimit"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 771
    const-string p5, "typeMsg"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 772
    const-string p5, "peakTime"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 773
    const-string p5, "offPeakTime"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 774
    const-string p5, "days"

    const-string p6, ""

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const-string p5, "peakStartTime"

    const-string p6, ""

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    const-string p5, "peakEndTime"

    const-string p6, ""

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    const-string p5, "whileRoaming"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 778
    const-string p5, "attachmentEnabled"

    const/16 p6, 0x0

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    move-object v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 779
    invoke-virtual/range {p22 .. p22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p5

    sget-object p6, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNTCB_CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, p5

    move-object/from16 v1, p6

    move-object v2, p0

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 784
    :goto_2
    const-string p5, "SettingsUtils"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct/range {p6 .. p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "insertAccountTableRow row Id : "

    .end local p7
    invoke-virtual/range {p6 .. p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    move-object/from16 v0, p6

    move-wide v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual/range {p6 .. p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static/range {p5 .. p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-object p2, p0

    .end local p0           #values:Landroid/content/ContentValues;
    .local p2, values:Landroid/content/ContentValues;
    move-wide p0, p3

    .end local p1
    .end local p3           #rowId:J
    .local p0, rowId:J
    :goto_3
    move-wide p2, p0

    .line 790
    .end local p0           #rowId:J
    .local p2, rowId:J
    goto/16 :goto_0

    .line 743
    .restart local v5       #rowId:J
    .restart local p1
    .local p2, syncKey:Ljava/lang/String;
    .restart local p4
    .restart local p5
    .restart local p7
    .restart local p19       #values:Landroid/content/ContentValues;
    :cond_c
    const/4 p3, 0x0

    goto/16 :goto_1

    .line 781
    :cond_d
    :try_start_5
    invoke-virtual/range {p22 .. p22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p3, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance p4, Ljava/lang/StringBuilder;

    .end local p4
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "_id = "

    .end local p5
    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    move-object/from16 v0, p21

    iget v0, v0, Landroid/app/enterprise/Account;->mId:I

    move/from16 p5, v0

    invoke-virtual/range {p4 .. p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 p5, 0x0

    move-object v0, p0

    move-object v1, p3

    move-object/from16 v2, p19

    move-object v3, p4

    move-object/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    .line 782
    .local p0, rowCount:I
    if-lez p0, :cond_e

    move-object/from16 v0, p21

    iget v0, v0, Landroid/app/enterprise/Account;->mId:I

    move p0, v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .end local p0           #rowCount:I
    :goto_4
    int-to-long p3, p0

    .end local v5           #rowId:J
    .restart local p3       #rowId:J
    move-object/from16 p0, p19

    .end local p19           #values:Landroid/content/ContentValues;
    .local p0, values:Landroid/content/ContentValues;
    goto :goto_2

    .end local p3           #rowId:J
    .restart local v5       #rowId:J
    .local p0, rowCount:I
    .restart local p19       #values:Landroid/content/ContentValues;
    :cond_e
    const/4 p0, -0x1

    goto :goto_4

    .line 785
    .end local p0           #rowCount:I
    :catch_0
    move-exception p0

    move-object/from16 p5, p19

    .end local p19           #values:Landroid/content/ContentValues;
    .local p5, values:Landroid/content/ContentValues;
    move-wide p3, v5

    .line 786
    .end local v5           #rowId:J
    .end local p7
    .local p0, e:Ljava/lang/Exception;
    .restart local p3       #rowId:J
    :goto_5
    const-wide/16 p3, -0x1

    .line 787
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 p2, p5

    .end local p5           #values:Landroid/content/ContentValues;
    .local p2, values:Landroid/content/ContentValues;
    move-wide p0, p3

    .end local p1
    .end local p3           #rowId:J
    .local p0, rowId:J
    goto :goto_3

    .line 698
    .end local p0           #rowId:J
    .restart local v5       #rowId:J
    .restart local p1
    .local p2, syncKey:Ljava/lang/String;
    .restart local p7
    :catchall_0
    move-exception p0

    move-wide p3, v5

    .end local v5           #rowId:J
    .end local p7
    .restart local p3       #rowId:J
    :goto_6
    monitor-exit v7

    throw p0

    .line 785
    .restart local p7
    .restart local p19       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception p0

    move-object/from16 p5, p19

    .end local p19           #values:Landroid/content/ContentValues;
    .restart local p5       #values:Landroid/content/ContentValues;
    goto :goto_5

    .end local p5           #values:Landroid/content/ContentValues;
    .end local p7
    .local p0, values:Landroid/content/ContentValues;
    :catch_2
    move-exception p5

    move-object/from16 v10, p5

    move-object/from16 p5, p0

    .end local p0           #values:Landroid/content/ContentValues;
    .restart local p5       #values:Landroid/content/ContentValues;
    move-object p0, v10

    goto :goto_5

    .line 698
    .end local p5           #values:Landroid/content/ContentValues;
    :catchall_1
    move-exception p0

    goto :goto_6

    .end local p3           #rowId:J
    .restart local v5       #rowId:J
    .restart local p4
    .local p5, hostAuthKeyRecv:J
    .restart local p7
    .restart local p19       #values:Landroid/content/ContentValues;
    :cond_f
    move-object/from16 p2, p19

    .end local p19           #values:Landroid/content/ContentValues;
    .local p2, values:Landroid/content/ContentValues;
    move-wide p0, v5

    .end local v5           #rowId:J
    .end local p1
    .local p0, rowId:J
    goto :goto_3
.end method

.method private static declared-synchronized insertAccountsTableRow(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/enterprise/Account;Landroid/content/Context;)J
    .locals 10
    .parameter "name"
    .parameter "type"
    .parameter "password"
    .parameter "isInsertOP"
    .parameter "existingAccInfo"
    .parameter "mContext"

    .prologue
    .line 581
    const-class v4, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v4

    const/4 v0, 0x0

    .line 582
    .local v0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v1, -0x1

    .line 583
    .local v1, rowId:J
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 584
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 585
    invoke-static {p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-result-object p2

    .line 587
    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 589
    :try_start_1
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 590
    .local v3, values:Landroid/content/ContentValues;
    const-string v5, "name"

    invoke-virtual {v3, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string p0, "type"

    .end local p0
    invoke-virtual {v3, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    const-string p0, "password"

    invoke-virtual {v3, p0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    const-string p0, "/data/system/accounts.db"

    .line 595
    .local p0, accountsDBPath:Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {p0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->openDatabase(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object p0

    .line 596
    .end local v0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    if-eqz p3, :cond_1

    .line 597
    :try_start_2
    const-string p3, "accounts"

    .end local p3
    const-string p4, "doesn\'t exist at all"

    .end local p4
    invoke-virtual {p0, p3, p4, v3}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-wide p3

    .line 605
    .end local v1           #rowId:J
    .end local p5
    .local p3, rowId:J
    :goto_0
    :try_start_3
    const-string p5, "SettingsUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertAccountsTableRow row Id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 610
    if-eqz p0, :cond_0

    .line 611
    :try_start_4
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_0
    move-wide p1, p3

    .line 617
    .end local v3           #values:Landroid/content/ContentValues;
    .end local p2
    .end local p3           #rowId:J
    .local p1, rowId:J
    :goto_1
    monitor-exit v4

    return-wide p1

    .line 599
    .restart local v1       #rowId:J
    .restart local v3       #values:Landroid/content/ContentValues;
    .local p1, type:Ljava/lang/String;
    .restart local p2
    .local p3, isInsertOP:Z
    .restart local p4
    .restart local p5
    :cond_1
    :try_start_5
    iget-object p3, p4, Landroid/app/enterprise/Account;->mEmailAddress:Ljava/lang/String;

    .end local p3           #isInsertOP:Z
    const-string p4, "com.android.exchange"

    .end local p4
    invoke-static {p3, p4, p5}, Lcom/android/server/enterprise/SettingsUtils;->getAccountsDBRowId(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)J

    move-result-wide p3

    .line 600
    .local p3, accountsDBRowId:J
    const-wide/16 v5, -0x1

    cmp-long p5, v5, p3

    if-eqz p5, :cond_6

    .line 601
    .end local p5
    const-string p5, "accounts"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id = "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {p0, p5, v3, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-result p5

    .line 602
    .local p5, rowCount:I
    if-lez p5, :cond_2

    .end local v1           #rowId:J
    .local p3, rowId:J
    :goto_2
    goto :goto_0

    .restart local v1       #rowId:J
    .local p3, accountsDBRowId:J
    :cond_2
    const-wide/16 p3, -0x1

    goto :goto_2

    .line 606
    .end local v3           #values:Landroid/content/ContentValues;
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p3, isInsertOP:Z
    .restart local p4
    .local p5, mContext:Landroid/content/Context;
    :catch_0
    move-exception p0

    move-object p3, p0

    move-wide p4, v1

    .end local v1           #rowId:J
    .end local p5           #mContext:Landroid/content/Context;
    .local p4, rowId:J
    move-object p0, v0

    .line 607
    .end local v0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p3, e:Ljava/lang/Exception;
    :goto_3
    const-wide/16 p4, -0x1

    .line 608
    :try_start_6
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 610
    if-eqz p0, :cond_3

    .line 611
    :try_start_7
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :cond_3
    move-wide p1, p4

    .line 613
    .end local p2
    .end local p4           #rowId:J
    .local p1, rowId:J
    goto :goto_1

    .line 610
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #rowId:J
    .local p1, type:Ljava/lang/String;
    .restart local p2
    .local p3, isInsertOP:Z
    .local p4, existingAccInfo:Landroid/app/enterprise/Account;
    .restart local p5       #mContext:Landroid/content/Context;
    :catchall_0
    move-exception p0

    move-object p5, p0

    move-wide p3, v1

    .end local v1           #rowId:J
    .end local p4           #existingAccInfo:Landroid/app/enterprise/Account;
    .local p3, rowId:J
    move-object p0, v0

    .end local v0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .end local p5           #mContext:Landroid/content/Context;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    :goto_4
    if-eqz p0, :cond_4

    .line 611
    :try_start_8
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 610
    :cond_4
    throw p5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 581
    :catchall_1
    move-exception p5

    :goto_5
    monitor-exit v4

    throw p5

    .line 615
    .restart local v0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #rowId:J
    .local p0, name:Ljava/lang/String;
    .local p3, isInsertOP:Z
    .restart local p4       #existingAccInfo:Landroid/app/enterprise/Account;
    .restart local p5       #mContext:Landroid/content/Context;
    :cond_5
    :try_start_9
    const-string p0, "SettingsUtils"

    .end local p0           #name:Ljava/lang/String;
    const-string p3, "insertAccountsTableRow : Error :: Invalid input parameters."

    .end local p3           #isInsertOP:Z
    invoke-static {p0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    move-wide p1, v1

    .end local v1           #rowId:J
    .end local p2
    .local p1, rowId:J
    move-object p0, v0

    .end local v0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .local p0, accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_1

    .line 610
    .end local p4           #existingAccInfo:Landroid/app/enterprise/Account;
    .end local p5           #mContext:Landroid/content/Context;
    .restart local v1       #rowId:J
    .restart local v3       #values:Landroid/content/ContentValues;
    .local p1, type:Ljava/lang/String;
    .restart local p2
    :catchall_2
    move-exception p3

    move-object p5, p3

    move-wide p3, v1

    .end local v1           #rowId:J
    .local p3, rowId:J
    goto :goto_4

    :catchall_3
    move-exception p5

    goto :goto_4

    .end local v3           #values:Landroid/content/ContentValues;
    .local p3, e:Ljava/lang/Exception;
    .local p4, rowId:J
    :catchall_4
    move-exception p3

    move-object v7, p3

    move-wide v8, p4

    .end local p4           #rowId:J
    .local v8, rowId:J
    move-wide p3, v8

    .end local v8           #rowId:J
    .local p3, rowId:J
    move-object p5, v7

    goto :goto_4

    .line 606
    .end local p3           #rowId:J
    .restart local v1       #rowId:J
    .restart local v3       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception p3

    move-wide p4, v1

    .end local v1           #rowId:J
    .restart local p4       #rowId:J
    goto :goto_3

    .end local p4           #rowId:J
    .restart local p3       #rowId:J
    :catch_2
    move-exception p5

    move-object v7, p5

    move-wide v8, p3

    .end local p3           #rowId:J
    .restart local v8       #rowId:J
    move-wide p4, v8

    .end local v8           #rowId:J
    .restart local p4       #rowId:J
    move-object p3, v7

    goto :goto_3

    .line 581
    .end local v3           #values:Landroid/content/ContentValues;
    .end local p0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local v1       #rowId:J
    .local p4, existingAccInfo:Landroid/app/enterprise/Account;
    .restart local p5       #mContext:Landroid/content/Context;
    :catchall_5
    move-exception p0

    move-wide p3, v1

    .end local v1           #rowId:J
    .end local p4           #existingAccInfo:Landroid/app/enterprise/Account;
    .restart local p3       #rowId:J
    move-object p5, p0

    move-object p0, v0

    .end local v0           #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    .restart local p0       #accountsDB:Landroid/database/sqlite/SQLiteDatabase;
    goto :goto_5

    .end local p5           #mContext:Landroid/content/Context;
    .local p3, e:Ljava/lang/Exception;
    .local p4, rowId:J
    :catchall_6
    move-exception p3

    move-wide v7, p4

    .end local p4           #rowId:J
    .local v7, rowId:J
    move-object p5, p3

    move-wide p3, v7

    .end local v7           #rowId:J
    .local p3, rowId:J
    goto :goto_5

    .restart local v1       #rowId:J
    .restart local v3       #values:Landroid/content/ContentValues;
    .local p3, accountsDBRowId:J
    :cond_6
    move-wide p3, v1

    .end local v1           #rowId:J
    .local p3, rowId:J
    goto/16 :goto_0
.end method

.method private static declared-synchronized insertHostAuthTableRow(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/app/enterprise/Account;ZLandroid/content/Context;)J
    .locals 11
    .parameter "protocol"
    .parameter "address"
    .parameter "port"
    .parameter "flags"
    .parameter "login"
    .parameter "password"
    .parameter "domain"
    .parameter "isInsertOP"
    .parameter "existingAccInfo"
    .parameter "isHostAuthRecv"
    .parameter "mContext"

    .prologue
    .line 795
    const-class v9, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v9

    const-wide/16 v6, -0x1

    .line 796
    .local v6, rowId:J
    const/4 v5, 0x0

    .line 797
    .local v5, inputdataError:Z
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 798
    invoke-static {p1}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 799
    invoke-static {p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 800
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 801
    invoke-static/range {p6 .. p6}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p6

    .line 803
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p4, :cond_0

    if-nez p5, :cond_1

    .line 804
    :cond_0
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p7, "insertHostAuthTableRow : Error :: Invalid input parameters."

    .end local p7
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p0, v5

    .end local v5           #inputdataError:Z
    .local p0, inputdataError:Z
    move-wide p4, v6

    .end local v6           #rowId:J
    .end local p5
    .local p4, rowId:J
    move-wide/from16 p6, v6

    .line 850
    .end local p1
    .end local p4           #rowId:J
    .end local p8
    .end local p9
    .end local p10
    .local p6, rowId:J
    :goto_0
    monitor-exit v9

    return-wide p6

    .line 807
    .restart local v5       #inputdataError:Z
    .restart local v6       #rowId:J
    .local p0, protocol:Ljava/lang/String;
    .restart local p1
    .local p4, login:Ljava/lang/String;
    .restart local p5
    .local p6, domain:Ljava/lang/String;
    .restart local p7
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_1
    if-gez p3, :cond_2

    .line 808
    const/4 p3, 0x0

    .line 809
    :cond_2
    if-gtz p2, :cond_3

    .line 810
    :try_start_1
    const-string v8, "eas"

    invoke-virtual {p0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v8

    if-eqz v8, :cond_5

    .line 811
    const/4 p2, 0x0

    .line 817
    :cond_3
    :goto_1
    if-nez v5, :cond_9

    .line 818
    :try_start_2
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 820
    .local v8, values:Landroid/content/ContentValues;
    const-string v10, "protocol"

    invoke-virtual {v8, v10, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    const-string p0, "address"

    .end local p0           #protocol:Ljava/lang/String;
    invoke-virtual {v8, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string p0, "port"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, p0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 823
    const-string p0, "flags"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, p0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 824
    const-string p0, "login"

    invoke-virtual {v8, p0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const-string p0, "password"

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    if-eqz p6, :cond_4

    .line 827
    const-string p0, "domain"

    move-object v0, v8

    move-object v1, p0

    move-object/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    :cond_4
    const-string p0, "accountKey"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, p0, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 831
    invoke-virtual {v8}, Landroid/content/ContentValues;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result p0

    if-lez p0, :cond_a

    .line 833
    if-eqz p7, :cond_6

    .line 834
    :try_start_3
    invoke-virtual/range {p10 .. p10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p7, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .end local p7
    move-object v0, p0

    move-object/from16 v1, p7

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    .line 835
    .local p0, newRowUri:Landroid/net/Uri;
    invoke-static {p0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide p7

    .line 841
    .end local v6           #rowId:J
    .end local p0           #newRowUri:Landroid/net/Uri;
    .end local p8
    .end local p9
    .end local p10
    .local p7, rowId:J
    :goto_2
    :try_start_4
    const-string p0, "SettingsUtils"

    new-instance p9, Ljava/lang/StringBuilder;

    invoke-direct/range {p9 .. p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "insertHostAuthTableRow row Id : "

    invoke-virtual/range {p9 .. p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    move-object/from16 v0, p9

    move-wide/from16 v1, p7

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p9

    invoke-virtual/range {p9 .. p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    move-object v0, p0

    move-object/from16 v1, p9

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-wide/from16 p0, p7

    .end local v8           #values:Landroid/content/ContentValues;
    .end local p1
    .end local p7           #rowId:J
    .local p0, rowId:J
    :goto_3
    move-wide p4, p0

    .end local p0           #rowId:J
    .end local p5
    .local p4, rowId:J
    move-wide/from16 p6, p0

    .end local p4           #rowId:J
    .local p6, rowId:J
    move p0, v5

    .line 850
    .end local v5           #inputdataError:Z
    .local p0, inputdataError:Z
    goto/16 :goto_0

    .line 813
    .restart local v5       #inputdataError:Z
    .restart local v6       #rowId:J
    .local p0, protocol:Ljava/lang/String;
    .restart local p1
    .local p4, login:Ljava/lang/String;
    .restart local p5
    .local p6, domain:Ljava/lang/String;
    .local p7, isInsertOP:Z
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_5
    const/4 v5, 0x1

    goto/16 :goto_1

    .line 837
    .end local p0           #protocol:Ljava/lang/String;
    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_6
    if-eqz p9, :cond_7

    :try_start_5
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/app/enterprise/Account;->mHostAuthRecv:Landroid/app/enterprise/HostAuth;

    move-object p0, v0

    iget p0, p0, Landroid/app/enterprise/HostAuth;->mId:I

    .line 838
    .local p0, existingHostAuthRowId:I
    :goto_4
    invoke-virtual/range {p10 .. p10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p7

    .end local p7           #isInsertOP:Z
    sget-object p8, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    .end local p8
    new-instance p9, Ljava/lang/StringBuilder;

    .end local p9
    invoke-direct/range {p9 .. p9}, Ljava/lang/StringBuilder;-><init>()V

    const-string p10, "_id = "

    .end local p10
    invoke-virtual/range {p9 .. p10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p9

    move-object/from16 v0, p9

    move v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p9

    invoke-virtual/range {p9 .. p9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p9

    const/16 p10, 0x0

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    move-object v2, v8

    move-object/from16 v3, p9

    move-object/from16 v4, p10

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p7

    .line 839
    .local p7, rowCount:I
    if-lez p7, :cond_8

    .end local p0           #existingHostAuthRowId:I
    :goto_5
    move v0, p0

    int-to-long v0, v0

    move-wide/from16 p7, v0

    .end local v6           #rowId:J
    .local p7, rowId:J
    goto :goto_2

    .line 837
    .restart local v6       #rowId:J
    .local p7, isInsertOP:Z
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_7
    move-object/from16 v0, p8

    iget-object v0, v0, Landroid/app/enterprise/Account;->mHostAuthSend:Landroid/app/enterprise/HostAuth;

    move-object p0, v0

    iget p0, p0, Landroid/app/enterprise/HostAuth;->mId:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_4

    .line 839
    .end local p8
    .end local p9
    .end local p10
    .restart local p0       #existingHostAuthRowId:I
    .local p7, rowCount:I
    :cond_8
    const/4 p0, -0x1

    goto :goto_5

    .line 842
    .end local p0           #existingHostAuthRowId:I
    .end local p7           #rowCount:I
    :catch_0
    move-exception p0

    move-wide/from16 p7, v6

    .line 843
    .end local v6           #rowId:J
    .local p0, e:Ljava/lang/Exception;
    .local p7, rowId:J
    :goto_6
    const-wide/16 p7, -0x1

    .line 844
    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-wide/from16 p0, p7

    .end local p1
    .end local p7           #rowId:J
    .local p0, rowId:J
    goto :goto_3

    .line 848
    .end local v8           #values:Landroid/content/ContentValues;
    .restart local v6       #rowId:J
    .local p0, protocol:Ljava/lang/String;
    .restart local p1
    .local p7, isInsertOP:Z
    .restart local p8
    .restart local p9
    .restart local p10
    :cond_9
    :try_start_7
    const-string p0, "SettingsUtils"

    .end local p0           #protocol:Ljava/lang/String;
    const-string p7, "insertHostAuthTableRow : Error :: Invalid input parameters."

    .end local p7           #isInsertOP:Z
    move-object v0, p0

    move-object/from16 v1, p7

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :cond_a
    move-wide p0, v6

    .end local v6           #rowId:J
    .end local p1
    .local p0, rowId:J
    goto :goto_3

    .line 795
    .end local p0           #rowId:J
    .restart local v6       #rowId:J
    .restart local p1
    :catchall_0
    move-exception p0

    move-wide/from16 p7, v6

    .end local v6           #rowId:J
    .end local p8
    .local p7, rowId:J
    move-object/from16 p9, p0

    move p0, v5

    .end local v5           #inputdataError:Z
    .end local p9
    .end local p10
    .local p0, inputdataError:Z
    :goto_7
    monitor-exit v9

    throw p9

    .line 842
    .end local p0           #inputdataError:Z
    .restart local v5       #inputdataError:Z
    .restart local v8       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception p0

    goto :goto_6

    .line 795
    .end local v8           #values:Landroid/content/ContentValues;
    .end local p7           #rowId:J
    .restart local v6       #rowId:J
    :catchall_1
    move-exception p0

    move-wide/from16 p7, v6

    .end local v6           #rowId:J
    .restart local p7       #rowId:J
    move-object/from16 p9, p0

    move p0, v5

    .end local v5           #inputdataError:Z
    .restart local p0       #inputdataError:Z
    goto :goto_7

    .end local p0           #inputdataError:Z
    .restart local v5       #inputdataError:Z
    .restart local v8       #values:Landroid/content/ContentValues;
    :catchall_2
    move-exception p0

    move-object/from16 p9, p0

    move p0, v5

    .end local v5           #inputdataError:Z
    .restart local p0       #inputdataError:Z
    goto :goto_7
.end method

.method public static declared-synchronized isValidEmailAddress(Ljava/lang/String;)Z
    .locals 11
    .parameter "emailAddress"

    .prologue
    const/4 v10, 0x1

    .line 539
    const-class v7, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v7

    const/4 v3, 0x0

    .line 540
    .local v3, isValid:Z
    :try_start_0
    invoke-static {p0}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    .line 541
    if-eqz p0, :cond_0

    .line 543
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    .line 544
    .local v6, len:I
    const/16 v8, 0x40

    invoke-virtual {p0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 545
    .local v1, firstAt:I
    const/16 v8, 0x40

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    .line 546
    .local v4, lastAt:I
    const/16 v8, 0x2e

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v8, v9}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 547
    .local v2, firstDot:I
    const/16 v8, 0x2e

    invoke-virtual {p0, v8}, Ljava/lang/String;->lastIndexOf(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    .line 548
    .local v5, lastDot:I
    if-lez v1, :cond_1

    if-ne v1, v4, :cond_1

    add-int/lit8 v8, v4, 0x1

    if-ge v8, v2, :cond_1

    if-gt v2, v5, :cond_1

    sub-int v8, v6, v10

    if-ge v5, v8, :cond_1

    move v3, v10

    .line 553
    .end local v1           #firstAt:I
    .end local v2           #firstDot:I
    .end local v4           #lastAt:I
    .end local v5           #lastDot:I
    .end local v6           #len:I
    :cond_0
    :goto_0
    monitor-exit v7

    return v3

    .line 548
    .restart local v1       #firstAt:I
    .restart local v2       #firstDot:I
    .restart local v4       #lastAt:I
    .restart local v5       #lastDot:I
    .restart local v6       #len:I
    :cond_1
    const/4 v8, 0x0

    move v3, v8

    goto :goto_0

    .line 549
    .end local v1           #firstAt:I
    .end local v2           #firstDot:I
    .end local v4           #lastAt:I
    .end local v5           #lastDot:I
    .end local v6           #len:I
    :catch_0
    move-exception v8

    move-object v0, v8

    .line 550
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 539
    .end local v0           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    monitor-exit v7

    throw v8
.end method

.method public static declared-synchronized loadNewValuesInAccountMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/AccountMetaData;)V
    .locals 3
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
    .parameter "accountMData"

    .prologue
    .line 199
    const-class v2, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v2

    if-eqz p0, :cond_0

    .line 200
    :try_start_0
    move-object v0, p0

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    .line 201
    :cond_0
    if-eqz p1, :cond_1

    .line 202
    move-object v0, p1

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    .line 203
    :cond_1
    if-eqz p2, :cond_2

    .line 204
    move-object v0, p2

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    .line 205
    :cond_2
    if-eqz p3, :cond_3

    .line 206
    move-object v0, p3

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    .line 207
    :cond_3
    const/16 p0, -0x64

    if-eq p0, p4, :cond_4

    .line 208
    .end local p0
    move v0, p4

    move-object/from16 v1, p30

    iput v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    .line 209
    :cond_4
    const/16 p0, -0x64

    if-eq p0, p5, :cond_5

    .line 210
    move v0, p5

    move-object/from16 v1, p30

    iput v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    .line 211
    :cond_5
    const/16 p0, -0x64

    if-eq p0, p6, :cond_6

    .line 212
    move v0, p6

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    .line 213
    :cond_6
    if-eqz p7, :cond_7

    .line 214
    move-object v0, p7

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    .line 215
    :cond_7
    if-eqz p8, :cond_8

    .line 216
    move-object v0, p8

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    .line 217
    :cond_8
    if-eqz p9, :cond_9

    .line 218
    move-object v0, p9

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    .line 219
    :cond_9
    const/16 p0, -0x64

    if-eq p0, p11, :cond_a

    .line 220
    move v0, p11

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    .line 221
    const/4 p0, 0x1

    if-ne p0, p11, :cond_a

    .line 222
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    .line 224
    :cond_a
    const/16 p0, -0x64

    if-eq p0, p10, :cond_c

    .line 225
    const/4 p0, 0x1

    if-ne p0, p10, :cond_b

    .line 226
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    .line 227
    :cond_b
    move v0, p10

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    .line 231
    :cond_c
    if-eqz p12, :cond_d

    .line 232
    move-object v0, p12

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    .line 233
    :cond_d
    if-eqz p13, :cond_e

    .line 234
    move-object/from16 v0, p13

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    .line 235
    :cond_e
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p14

    if-eq v0, v1, :cond_f

    .line 236
    move/from16 v0, p14

    move-object/from16 v1, p30

    iput v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    .line 238
    :cond_f
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p15

    if-eq v0, v1, :cond_10

    .line 239
    move/from16 v0, p15

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    .line 240
    const/4 p0, 0x1

    move v0, p0

    move/from16 v1, p15

    if-ne v0, v1, :cond_10

    .line 241
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    .line 243
    :cond_10
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p16

    if-eq v0, v1, :cond_11

    .line 244
    move/from16 v0, p16

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    .line 245
    const/4 p0, 0x1

    move v0, p0

    move/from16 v1, p16

    if-ne v0, v1, :cond_11

    .line 246
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    .line 248
    :cond_11
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p17

    if-eq v0, v1, :cond_12

    .line 249
    move/from16 v0, p17

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    .line 251
    :cond_12
    move-object/from16 v0, p30

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    move p0, v0

    if-nez p0, :cond_13

    move-object/from16 v0, p30

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    move p0, v0

    if-nez p0, :cond_13

    .line 252
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    .line 255
    :cond_13
    if-eqz p18, :cond_14

    .line 256
    move-object/from16 v0, p18

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    .line 257
    :cond_14
    if-eqz p19, :cond_15

    .line 258
    move-object/from16 v0, p19

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    .line 259
    :cond_15
    if-eqz p20, :cond_16

    .line 260
    move-object/from16 v0, p20

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    .line 262
    :cond_16
    if-eqz p21, :cond_17

    .line 263
    move-object/from16 v0, p21

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    .line 264
    :cond_17
    if-eqz p22, :cond_18

    .line 265
    move-object/from16 v0, p22

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    .line 266
    :cond_18
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p23

    if-eq v0, v1, :cond_19

    .line 267
    move/from16 v0, p23

    move-object/from16 v1, p30

    iput v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    .line 269
    :cond_19
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p24

    if-eq v0, v1, :cond_1a

    .line 270
    move/from16 v0, p24

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    .line 271
    const/4 p0, 0x1

    move v0, p0

    move/from16 v1, p24

    if-ne v0, v1, :cond_1a

    .line 272
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    .line 274
    :cond_1a
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p25

    if-eq v0, v1, :cond_1b

    .line 275
    move/from16 v0, p25

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    .line 276
    const/4 p0, 0x1

    move v0, p0

    move/from16 v1, p25

    if-ne v0, v1, :cond_1b

    .line 277
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    .line 279
    :cond_1b
    const/16 p0, -0x64

    move v0, p0

    move/from16 v1, p26

    if-eq v0, v1, :cond_1c

    .line 280
    move/from16 v0, p26

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    .line 282
    :cond_1c
    move-object/from16 v0, p30

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    move p0, v0

    if-nez p0, :cond_1d

    move-object/from16 v0, p30

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    move p0, v0

    if-nez p0, :cond_1d

    .line 283
    const/4 p0, 0x0

    move v0, p0

    move-object/from16 v1, p30

    iput-byte v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    .line 286
    :cond_1d
    if-eqz p27, :cond_1e

    .line 287
    move-object/from16 v0, p27

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    .line 288
    :cond_1e
    if-eqz p28, :cond_1f

    .line 289
    move-object/from16 v0, p28

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    .line 290
    :cond_1f
    if-eqz p29, :cond_20

    .line 291
    move-object/from16 v0, p29

    move-object/from16 v1, p30

    iput-object v0, v1, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 292
    :cond_20
    monitor-exit v2

    return-void

    .line 199
    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public static declared-synchronized sendAccountsChangedBroadcast(Landroid/content/Context;)V
    .locals 9
    .parameter "mContext"

    .prologue
    .line 60
    const-class v4, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v4

    :try_start_0
    const-string v2, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    .line 61
    .local v2, LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String;
    const/high16 v1, 0x1000

    .line 62
    .local v1, FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 63
    .local v0, ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 64
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/SettingsUtils;->HOST_AUTH_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    .end local v0           #ACCOUNTS_CHANGED_INTENT:Landroid/content/Intent;
    .end local v1           #FLAG_RECEIVER_REGISTERED_ONLY_BEFORE_BOOT:I
    .end local v2           #LOGIN_ACCOUNTS_CHANGED_ACTION:Ljava/lang/String;
    :goto_0
    :try_start_1
    const-string v5, "SettingsUtils"

    const-string v6, "sendAccountsChangedBroadcast()"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 72
    monitor-exit v4

    return-void

    .line 68
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 69
    .local v3, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 60
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit v4

    throw v5
.end method

.method static declared-synchronized setAsDefaultAccount(JLandroid/content/Context;)Z
    .locals 13
    .parameter "accountId"
    .parameter "mContext"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const-string v6, "isDefault"

    const-string v6, "SettingsUtils"

    .line 35
    const-class v6, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter v6

    const/4 v2, 0x0

    .line 36
    .local v2, success:Z
    const-wide/16 v7, 0x1

    cmp-long v7, v7, p0

    if-lez v7, :cond_0

    .line 37
    :try_start_0
    const-string v7, "SettingsUtils"

    const-string v8, "setAsDefaultAccount : accountId is invalid"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v2

    .line 55
    .end local v2           #success:Z
    .local v3, success:I
    :goto_0
    monitor-exit v6

    return v3

    .line 40
    .end local v3           #success:I
    .restart local v2       #success:Z
    :cond_0
    :try_start_1
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v4, values:Landroid/content/ContentValues;
    const-string v7, "isDefault"

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v4, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 45
    .local v0, count:I
    const-string v7, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAsDefaultAccount : row count for resetting the default column : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 47
    .end local v4           #values:Landroid/content/ContentValues;
    .local v5, values:Landroid/content/ContentValues;
    :try_start_3
    const-string v7, "isDefault"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Lcom/android/server/enterprise/SettingsUtils;->ACCOUNT_CONTENT_URI:Landroid/net/Uri;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "_id = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v5, v9, v10}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 49
    const-string v7, "SettingsUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setAsDefaultAccount : row count for setting the default column : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 50
    if-lez v0, :cond_1

    move v2, v12

    :goto_1
    move-object v4, v5

    .end local v0           #count:I
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    :goto_2
    move v3, v2

    .line 55
    .restart local v3       #success:I
    goto :goto_0

    .end local v3           #success:I
    .end local v4           #values:Landroid/content/ContentValues;
    .restart local v0       #count:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_1
    move v2, v11

    .line 50
    goto :goto_1

    .line 51
    .end local v0           #count:I
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v7

    move-object v1, v7

    .line 52
    .local v1, e:Ljava/lang/Exception;
    :goto_3
    const/4 v2, 0x0

    .line 53
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 35
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #values:Landroid/content/ContentValues;
    :catchall_0
    move-exception v7

    monitor-exit v6

    throw v7

    .line 51
    .restart local v0       #count:I
    .restart local v5       #values:Landroid/content/ContentValues;
    :catch_1
    move-exception v7

    move-object v1, v7

    move-object v4, v5

    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v4       #values:Landroid/content/ContentValues;
    goto :goto_3
.end method

.method static declared-synchronized updateExistingAccount(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/content/Context;)J
    .locals 68
    .parameter "accountId"
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
    .parameter "isEasAccount"
    .parameter "isUpdateOP"
    .parameter "mContext"

    .prologue
    .line 89
    const-class p33, Lcom/android/server/enterprise/SettingsUtils;

    monitor-enter p33

    .end local p33
    :try_start_0
    const-string v3, "SettingsUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateExistingAccount : Processing account updation request for AccountId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " (AccountType is : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p32, :cond_0

    const-string v5, "Eas"

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " )"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-wide/16 v3, -0x1

    .line 92
    .local v3, invalidAccId:J
    const-wide/16 v3, 0x1

    cmp-long v3, v3, p0

    if-lez v3, :cond_1

    .line 93
    .end local v3           #invalidAccId:J
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p1, "updateExistingAccount : accountId is invalid"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    const-wide/16 p0, -0x1

    .line 157
    :goto_1
    monitor-exit p33

    return-wide p0

    .line 89
    .restart local p0
    :cond_0
    :try_start_1
    const-string v5, "Non-Eas"

    goto :goto_0

    .line 98
    :cond_1
    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, p12

    if-ne v0, v1, :cond_2

    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, p13

    if-ne v0, v1, :cond_2

    .line 99
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p1, "updateExistingAccount : Error :: Invalid input parameters. From the arguments \'emailNotificationVibrateAlways\' and \'emailNotificationVibrateWhenSilent\' only one will be true at a time"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-wide/16 p0, -0x1

    goto :goto_1

    .line 104
    .restart local p0
    :cond_2
    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, p17

    if-ne v0, v1, :cond_3

    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, p18

    if-ne v0, v1, :cond_3

    .line 105
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p1, "updateExistingAccount : Error :: Invalid input parameters. From the arguments \'inComingServerUseSSL\' and \'inComingServerUseTLS\' only one will be true at a time"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-wide/16 p0, -0x1

    goto :goto_1

    .line 109
    .restart local p0
    :cond_3
    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, p26

    if-ne v0, v1, :cond_4

    const/4 v3, 0x1

    move v0, v3

    move/from16 v1, p27

    if-ne v0, v1, :cond_4

    .line 110
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p1, "updateExistingAccount : Error :: Invalid input parameters. From the arguments \'outGoingServerUseSSL\' and \'outGoingServerUseTLS\' only one will be true at a time"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    const-wide/16 p0, -0x1

    goto :goto_1

    .line 114
    .restart local p0
    :cond_4
    move-wide/from16 v0, p0

    move-object/from16 v2, p34

    invoke-static {v0, v1, v2}, Lcom/android/server/enterprise/SettingsUtils;->getAccountDetails(JLandroid/content/Context;)Landroid/app/enterprise/Account;

    move-result-object v66

    .line 115
    .local v66, ac:Landroid/app/enterprise/Account;
    if-nez v66, :cond_5

    .line 116
    const-string p0, "SettingsUtils"

    .end local p0
    const-string p1, "updateExistingAccount : Account information is null"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const-wide/16 p0, -0x1

    goto :goto_1

    .line 120
    .restart local p0
    :cond_5
    invoke-static/range {p2 .. p2}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 121
    invoke-static/range {p3 .. p3}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 122
    invoke-static/range {p4 .. p4}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 123
    invoke-static/range {p5 .. p5}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 124
    invoke-static/range {p9 .. p9}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p9

    .line 125
    invoke-static/range {p10 .. p10}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p10

    .line 126
    invoke-static/range {p11 .. p11}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p11

    .line 128
    invoke-static/range {p14 .. p14}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p14

    .line 129
    invoke-static/range {p15 .. p15}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p15

    .line 130
    invoke-static/range {p20 .. p20}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p20

    .line 131
    invoke-static/range {p21 .. p21}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p21

    .line 132
    invoke-static/range {p22 .. p22}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p22

    .line 134
    invoke-static/range {p23 .. p23}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p23

    .line 135
    invoke-static/range {p24 .. p24}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p24

    .line 136
    invoke-static/range {p29 .. p29}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p29

    .line 137
    invoke-static/range {p30 .. p30}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p30

    .line 138
    invoke-static/range {p31 .. p31}, Lcom/android/server/enterprise/SettingsUtils;->getValidStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p31

    .line 141
    new-instance v33, Lcom/android/server/enterprise/AccountMetaData;

    invoke-direct/range {v33 .. v33}, Lcom/android/server/enterprise/AccountMetaData;-><init>()V

    .line 142
    .local v33, accountMData:Lcom/android/server/enterprise/AccountMetaData;
    move-object/from16 v0, v66

    move-object/from16 v1, v33

    invoke-static {v0, v1}, Lcom/android/server/enterprise/SettingsUtils;->fillExistingAccountInfo(Landroid/app/enterprise/Account;Lcom/android/server/enterprise/AccountMetaData;)V

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move/from16 v17, p16

    move/from16 v18, p17

    move/from16 v19, p18

    move/from16 v20, p19

    move-object/from16 v21, p20

    move-object/from16 v22, p21

    move-object/from16 v23, p22

    move-object/from16 v24, p23

    move-object/from16 v25, p24

    move/from16 v26, p25

    move/from16 v27, p26

    move/from16 v28, p27

    move/from16 v29, p28

    move-object/from16 v30, p29

    move-object/from16 v31, p30

    move-object/from16 v32, p31

    .line 145
    invoke-static/range {v3 .. v33}, Lcom/android/server/enterprise/SettingsUtils;->loadNewValuesInAccountMetaData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/enterprise/AccountMetaData;)V

    .line 150
    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mDisplayName:Ljava/lang/String;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailAddress:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasUser:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEasDomain:Ljava/lang/String;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncLookback:I

    move/from16 v38, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSyncInterval:I

    move/from16 v39, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mIsDefault:B

    move/from16 v40, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSenderName:Ljava/lang/String;

    move-object/from16 v41, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mProtocolVersion:Ljava/lang/String;

    move-object/from16 v42, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mSignature:Ljava/lang/String;

    move-object/from16 v43, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateAlways:B

    move/from16 v44, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mEmailNotificationVibrateWhenSilent:B

    move/from16 v45, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingProtocol:Ljava/lang/String;

    move-object/from16 v46, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAddress:Ljava/lang/String;

    move-object/from16 v47, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPort:I

    move/from16 v48, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseSSL:B

    move/from16 v49, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerUseTLS:B

    move/from16 v50, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerAcceptAllCertificates:B

    move/from16 v51, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerLogin:Ljava/lang/String;

    move-object/from16 v52, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPassword:Ljava/lang/String;

    move-object/from16 v53, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mInComingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v54, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingProtocol:Ljava/lang/String;

    move-object/from16 v55, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAddress:Ljava/lang/String;

    move-object/from16 v56, v0

    move-object/from16 v0, v33

    iget v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPort:I

    move/from16 v57, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseSSL:B

    move/from16 v58, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerUseTLS:B

    move/from16 v59, v0

    move-object/from16 v0, v33

    iget-byte v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerAcceptAllCertificates:B

    move/from16 v60, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerLogin:Ljava/lang/String;

    move-object/from16 v61, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPassword:Ljava/lang/String;

    move-object/from16 v62, v0

    move-object/from16 v0, v33

    iget-object v0, v0, Lcom/android/server/enterprise/AccountMetaData;->mOutGoingServerPathPrefix:Ljava/lang/String;

    move-object/from16 v63, v0

    const/16 v65, 0x0

    move/from16 v64, p32

    move-object/from16 v67, p34

    invoke-static/range {v34 .. v67}, Lcom/android/server/enterprise/SettingsUtils;->createNewAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IBBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLandroid/app/enterprise/Account;Landroid/content/Context;)J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide p0

    .line 157
    goto/16 :goto_1

    .line 89
    .end local v33           #accountMData:Lcom/android/server/enterprise/AccountMetaData;
    .end local v66           #ac:Landroid/app/enterprise/Account;
    .end local p0
    :catchall_0
    move-exception p0

    monitor-exit p33

    throw p0
.end method
