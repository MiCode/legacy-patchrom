.class public abstract Lcom/broadcom/bt/service/map/provider/BaseProvider;
.super Ljava/lang/Object;
.source "BaseProvider.java"

# interfaces
.implements Lcom/broadcom/bt/service/map/IMapEventHandler;
.implements Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/BaseProvider$1;,
        Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final D:Z = true

.field public static final TAG:Ljava/lang/String; = "MAP.BaseProvider"

.field public static final folderListingStatus_InvalidParentPath:B = 0x1t

.field public static final folderListingStatus_NoFolders:B = 0x2t

.field public static final folderListingStatus_Success:B


# instance fields
.field protected mContentResolver:Landroid/content/ContentResolver;

.field protected mContext:Landroid/content/Context;

.field protected mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

.field protected mIsStarted:Z

.field protected mNotificationsEnabled:Z

.field protected mProviderType:B

.field protected mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

.field protected mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothEnable()V

    return-void
.end method

.method static synthetic access$100(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onBluetoothDisable()V

    return-void
.end method

.method protected static getBoolean(Landroid/database/Cursor;IZ)Z
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    const/4 v2, 0x1

    .line 465
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-ne v2, v1, :cond_0

    move v1, v2

    .line 468
    :goto_0
    return v1

    .line 465
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 466
    :catch_0
    move-exception v0

    .line 467
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get boolean value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 468
    goto :goto_0
.end method

.method protected static getInt(Landroid/database/Cursor;II)I
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 447
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 450
    :goto_0
    return v1

    .line 448
    :catch_0
    move-exception v0

    .line 449
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get int value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, p2

    .line 450
    goto :goto_0
.end method

.method protected static getLong(Landroid/database/Cursor;IJ)J
    .locals 4
    .parameter "c"
    .parameter "colId"
    .parameter "defaultValue"

    .prologue
    .line 456
    :try_start_0
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 459
    :goto_0
    return-wide v1

    .line 457
    :catch_0
    move-exception v0

    .line 458
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get long value from col "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v1, p2

    .line 459
    goto :goto_0
.end method

.method protected static isRootFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "path"

    .prologue
    .line 442
    const-string v0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected static isValidMsgStatus(B)Z
    .locals 2
    .parameter "val"

    .prologue
    const/4 v1, 0x1

    .line 404
    if-eq v1, p0, :cond_0

    const/4 v0, 0x2

    if-ne v0, p0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized onBluetoothDisable()V
    .locals 2

    .prologue
    .line 86
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    const-string/jumbo v1, "onBluetoothDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->finish()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    monitor-exit p0

    return-void

    .line 86
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized onBluetoothEnable()V
    .locals 2

    .prologue
    .line 81
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    const-string/jumbo v1, "onBluetoothEnable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    monitor-exit p0

    return-void

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected static parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;
    .locals 7
    .parameter "uri"

    .prologue
    const/4 v5, 0x0

    const-string v6, "MAP.BaseProvider"

    .line 547
    const/4 v0, 0x0

    .line 548
    .local v0, filePath:Ljava/lang/String;
    if-nez p0, :cond_0

    .line 549
    :try_start_0
    const-string v2, "MAP.BaseProvider"

    const-string v3, "Unable to parse BMessage file. Null file path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v5

    .line 563
    :goto_0
    return-object v2

    .line 551
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 552
    move-object v0, p0

    .line 560
    :goto_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/broadcom/bt/util/bmsg/BMessage;->parse(Ljava/io/File;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v2

    goto :goto_0

    .line 553
    :cond_1
    const-string v2, "file://"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 554
    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 556
    :cond_2
    const-string v2, "MAP.BaseProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to parse BMessage file. URI is not a file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 557
    goto :goto_0

    .line 561
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 562
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "MAP.BaseProvider"

    const-string v2, "Unable to parse BMessage file."

    invoke-static {v6, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v2, v5

    .line 563
    goto :goto_0
.end method

.method protected static setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 8
    .parameter "bMsg"
    .parameter "vCardVersionId"
    .parameter "folderPath"
    .parameter "mInfo"

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 496
    if-eqz p0, :cond_0

    if-eqz p1, :cond_2

    if-eq p1, v6, :cond_2

    .line 498
    :cond_0
    const-string v3, "MAP.BaseProvider"

    const-string v4, "Unable to set BMessage Header Info"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    :cond_1
    :goto_0
    return-void

    .line 503
    :cond_2
    iget-boolean v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    invoke-virtual {p0, v3}, Lcom/broadcom/bt/util/bmsg/BMessage;->setReadStatus(Z)V

    .line 504
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/util/bmsg/BMessage;->setFolder(Ljava/lang/String;)V

    .line 505
    invoke-static {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 508
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addOriginator()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v1

    .line 516
    .local v1, bOriginator:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-eqz v1, :cond_1

    .line 519
    invoke-virtual {v1, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 522
    const/4 v3, 0x0

    iget-object v4, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v5}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 523
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    invoke-virtual {v1, v7, v3, v5}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 526
    invoke-virtual {p0}, Lcom/broadcom/bt/util/bmsg/BMessage;->addEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v0

    .line 529
    .local v0, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual {v0}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v2

    .line 537
    .local v2, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-eqz v2, :cond_1

    .line 540
    invoke-virtual {v2, p1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->setVersion(B)V

    .line 541
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v2, v6, v3, v5}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    .line 542
    iget-object v3, p3, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    invoke-virtual {v2, v7, v3, v5}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->addProperty(BLjava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    goto :goto_0
.end method

.method protected static setBMessageType(Lcom/broadcom/bt/util/bmsg/BMessage;Lcom/broadcom/bt/service/map/MessageInfo;)V
    .locals 3
    .parameter "bMsg"
    .parameter "mInfo"

    .prologue
    .line 473
    if-eqz p1, :cond_0

    .line 474
    iget-byte v0, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    packed-switch v0, :pswitch_data_0

    .line 488
    :pswitch_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to set message type (type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 476
    :pswitch_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 479
    :pswitch_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 482
    :pswitch_3
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 485
    :pswitch_4
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/util/bmsg/BMessage;->setMessageType(B)V

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected static setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 4
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    const-string v3, " "

    .line 431
    if-nez p1, :cond_0

    .line 439
    :goto_0
    return-void

    .line 434
    :cond_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgRecipientNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 4
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    const-string v3, " "

    .line 420
    if-nez p1, :cond_0

    .line 428
    :goto_0
    return-void

    .line 423
    :cond_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgReplyToNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected static setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V
    .locals 4
    .parameter "mInfo"
    .parameter "pInfo"

    .prologue
    const-string v3, " "

    .line 408
    if-nez p1, :cond_0

    .line 417
    :goto_0
    return-void

    .line 411
    :cond_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMsgSenderNameInfo - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/broadcom/bt/service/map/provider/PersonInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method protected abstract disableNotifications(Ljava/lang/String;)Z
.end method

.method protected abstract enableNotifications(Ljava/lang/String;)Z
.end method

.method public finish()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 137
    const-string v0, "MAP.BaseProvider"

    const-string v1, "finish"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->stop()V

    .line 140
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 142
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->finish()V

    .line 147
    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 150
    :cond_1
    return-void
.end method

.method protected getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    if-nez v0, :cond_0

    .line 234
    new-instance v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-direct {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;-><init>()V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 235
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->start()V

    .line 236
    :goto_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 238
    const-wide/16 v0, 0x64

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 239
    :catch_0
    move-exception v0

    goto :goto_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    return-object v0
.end method

.method protected getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 1

    .prologue
    .line 400
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getProviderId()Ljava/lang/String;
.end method

.method protected getString(ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "resourceId"
    .parameter "defaultVal"

    .prologue
    .line 568
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    if-gtz p1, :cond_0

    move-object v1, p2

    .line 576
    :goto_0
    return-object v1

    .line 572
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 573
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 574
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MAP.BaseProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get string resource:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, p2

    .line 576
    goto :goto_0
.end method

.method public init(Landroid/content/Context;Z)V
    .locals 5
    .parameter "ctx"
    .parameter "startImmediately"

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string v1, "MAP.BaseProvider"

    const-string v2, "init"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    .line 123
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    new-instance v1, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    invoke-direct {v1, p0, v4}, Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;Lcom/broadcom/bt/service/map/provider/BaseProvider$1;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    .line 126
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    .line 127
    invoke-static {v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->addFilter_DSDiscover(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v0

    .line 128
    .local v0, ifilter:Landroid/content/IntentFilter;
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/BaseProvider$EventBroadcastReceiver;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mEventCallbackHandler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    iget-object v3, v3, Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    if-eqz p2, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V

    .line 134
    :cond_0
    return-void
.end method

.method protected isRegistered(Ljava/lang/String;)Z
    .locals 3
    .parameter "datasourceId"

    .prologue
    const-string v2, "MAP.BaseProvider"

    .line 600
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 601
    :cond_0
    const-string v0, "MAP.BaseProvider"

    const-string v0, "isRegistered. Proxy or datasource is null"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v0, 0x0

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_1
    const-string v0, "MAP.BaseProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRegistered. getProviderId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", datasourceId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->isRegistered(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected abstract onClientConnected(Ljava/lang/String;)V
.end method

.method protected abstract onClientDisconnected()V
.end method

.method protected declared-synchronized onDSDiscoverEvent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 647
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_0

    .line 649
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    :goto_0
    monitor-exit p0

    return-void

    .line 652
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 647
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
.end method

.method protected abstract onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
.end method

.method protected abstract onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
.end method

.method public onMCEConnected(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "deviceName"

    .prologue
    .line 258
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMCEConnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientConnected(Ljava/lang/String;)V

    .line 260
    return-void
.end method

.method public onMCEDisconnected(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 264
    const-string v0, "MAP.BaseProvider"

    const-string/jumbo v1, "onMCEDisconnected "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onClientDisconnected()V

    .line 266
    return-void
.end method

.method public onMCEGetFolderListing(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 6
    .parameter "request_id"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 337
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get folder listing. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    .line 341
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V

    goto :goto_0
.end method

.method public onMCEGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 8
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSet"
    .parameter "includeAttachment"

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move/from16 v7, p8

    .line 375
    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V

    goto :goto_0
.end method

.method public onMCEGetMsgListing(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 17
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxListCnt"
    .parameter "listStartOffset"
    .parameter "subjectLength"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 348
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    const-string v2, "MAP.BaseProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to update get message listing. Wrong providerId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    :cond_0
    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move/from16 v16, p15

    .line 352
    invoke-virtual/range {v2 .. v16}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V

    goto :goto_0
.end method

.method public onMCEPushMsg(ILjava/lang/String;Ljava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "msgContentUri"

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 362
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to push message. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p9

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    .line 365
    invoke-virtual/range {v0 .. v8}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onMCERegisterForNotification(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "notificationMode"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v6, ","

    const-string v3, "MAP.BaseProvider"

    .line 286
    const/4 v0, 0x0

    .line 288
    .local v0, isSuccess:Z
    const-string v1, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMCERegisterForNotification("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 293
    const-string v1, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enable/disable notifications. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string/jumbo v1, "on"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-eqz v1, :cond_2

    .line 299
    const/4 v0, 0x1

    .line 316
    :cond_1
    :goto_1
    if-ne v0, v4, :cond_7

    .line 318
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v5}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0

    .line 300
    :cond_2
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->enableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 301
    iput-boolean v4, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 302
    const/4 v0, 0x1

    goto :goto_1

    .line 304
    :cond_3
    const-string v1, "MAP.BaseProvider"

    const-string v1, "Unable to enable notifications"

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 306
    :cond_4
    const-string/jumbo v1, "off"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 307
    iget-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    if-nez v1, :cond_5

    .line 308
    const/4 v0, 0x1

    goto :goto_1

    .line 309
    :cond_5
    invoke-virtual {p0, p3}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->disableNotifications(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 310
    iput-boolean v5, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 311
    const/4 v0, 0x1

    goto :goto_1

    .line 314
    :cond_6
    const-string v1, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to enable/disable notifications: invalid mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 322
    :cond_7
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2, p3, v4}, Lcom/broadcom/bt/service/map/BluetoothMAP;->notifyRegistrationResponse(ILjava/lang/String;Ljava/lang/String;B)I

    goto :goto_0
.end method

.method public onMCESetMessageStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 6
    .parameter "requestId"
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "statusType"
    .parameter "statusValue"

    .prologue
    const-string v2, "MAP.BaseProvider"

    .line 380
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    const-string v0, "MAP.BaseProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMCESetMessageStatus(): Unable to set message status. Wrong providerId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :goto_0
    return-void

    .line 385
    :cond_0
    const/4 v0, 0x1

    if-ne p6, v0, :cond_1

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 386
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 388
    :cond_1
    const/4 v0, 0x2

    if-ne p6, v0, :cond_2

    move-object v0, p0

    move v1, p1

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move v5, p7

    .line 389
    invoke-virtual/range {v0 .. v5}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V

    goto :goto_0

    .line 392
    :cond_2
    const-string v0, "MAP.BaseProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onMCESetMessageStatus(): invalid message status type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onMCEUpdateInbox(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    .line 328
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to update inbox. Wrong providerId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    :goto_0
    return-void

    .line 332
    :cond_0
    invoke-virtual {p0, p2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onUpdateInbox(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onMSEInstanceStarted()V
    .locals 0

    .prologue
    .line 675
    return-void
.end method

.method protected onMSEInstanceStopped()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public onMSEStateChanged(Ljava/lang/String;Ljava/lang/String;B)V
    .locals 2
    .parameter "providerId"
    .parameter "datasourceId"
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 270
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 271
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Unable to start/stop provider: context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    const/4 v0, 0x2

    if-ne p3, v0, :cond_2

    .line 276
    iput-boolean v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 277
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStarted()V

    goto :goto_0

    .line 278
    :cond_2
    if-ne p3, v1, :cond_0

    .line 279
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 280
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onMSEInstanceStopped()V

    goto :goto_0
.end method

.method public onMsgGetInProgress()V
    .locals 0

    .prologue
    .line 249
    return-void
.end method

.method public onMsgPushInProgress()V
    .locals 0

    .prologue
    .line 254
    return-void
.end method

.method public onProxyAvailable(Ljava/lang/Object;)V
    .locals 3
    .parameter "proxyObject"

    .prologue
    .line 218
    check-cast p1, Lcom/broadcom/bt/service/map/BluetoothMAP;

    .end local p1
    iput-object p1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 220
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 222
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider started!: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->registerDatasources()V

    .line 225
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStarted()V

    .line 226
    return-void
.end method

.method protected abstract onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method protected abstract onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected abstract onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
.end method

.method protected onStarted()V
    .locals 0

    .prologue
    .line 660
    return-void
.end method

.method protected onStopped()V
    .locals 0

    .prologue
    .line 672
    return-void
.end method

.method protected abstract onUpdateInbox(Ljava/lang/String;)V
.end method

.method protected preStart()V
    .locals 0

    .prologue
    .line 641
    return-void
.end method

.method protected preStop()V
    .locals 0

    .prologue
    .line 666
    return-void
.end method

.method protected registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z
    .locals 17
    .parameter "providerType"
    .parameter "providerNameResourceId"
    .parameter "datasourceId"
    .parameter "datasourceNameResourceId"
    .parameter "supportsMessageFilter"
    .parameter "supportsMessageOffsetBrowsing"
    .parameter "folderMappings"

    .prologue
    .line 583
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 584
    .local v15, providerDisplayName:Ljava/lang/String;
    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 585
    .local v14, dsDisplayName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-object v3, v0

    if-eqz v3, :cond_0

    if-nez p3, :cond_1

    .line 586
    :cond_0
    const-string v3, "MAP.BaseProvider"

    const-string v4, "Unable to register datasource. Proxy or datasource is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v3, 0x0

    .line 595
    :goto_0
    return v3

    .line 590
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object v4, v0

    move/from16 v0, p1

    int-to-byte v0, v0

    move v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v7

    if-nez v15, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v5

    move-object v8, v5

    :goto_1
    if-nez v14, :cond_3

    move-object/from16 v10, p3

    :goto_2
    move-object/from16 v5, p0

    move-object/from16 v9, p3

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v3 .. v13}, Lcom/broadcom/bt/service/map/BluetoothMAP;->init(Landroid/content/Context;Lcom/broadcom/bt/service/map/IMapEventHandler;BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)I

    .line 594
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/broadcom/bt/service/map/BluetoothMAP;->registerDSProvider()I

    move-result v16

    .line 595
    .local v16, status:I
    if-nez v16, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    .end local v16           #status:I
    :cond_2
    move-object v8, v15

    .line 590
    goto :goto_1

    :cond_3
    move-object v10, v14

    goto :goto_2

    .line 595
    .restart local v16       #status:I
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected abstract registerDatasources()V
.end method

.method protected declared-synchronized start()V
    .locals 3

    .prologue
    const-string v0, "MAP.BaseProvider"

    .line 159
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 162
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Unable to start provider. Invalid context specified,"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :goto_0
    monitor-exit p0

    return-void

    .line 165
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-eqz v0, :cond_1

    .line 166
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Cannot start provider. Already started..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 169
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStart()V

    .line 173
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->getProxy(Landroid/content/Context;Lcom/broadcom/bt/service/framework/IBluetoothProxyCallback;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method protected startMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v3, 0x0

    .line 619
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v1, :cond_0

    .line 620
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Unable to start datasource. Proxy  is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 625
    :goto_0
    return v1

    .line 624
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->startMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 625
    .local v0, status:I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method protected abstract startMSEInstance()V
.end method

.method protected declared-synchronized stop()V
    .locals 3

    .prologue
    const-string v0, "MAP.BaseProvider"

    .line 183
    monitor-enter p0

    :try_start_0
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stopping provider: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    if-nez v0, :cond_1

    .line 186
    const-string v0, "MAP.BaseProvider"

    const-string v1, "Cannot stop provider. Already stopped..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->finish()V

    .line 191
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :goto_0
    monitor-exit p0

    return-void

    .line 198
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->preStop()V

    .line 199
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->unregisterDatasources()V

    .line 201
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v0}, Lcom/broadcom/bt/service/map/BluetoothMAP;->finish()V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    .line 205
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mIsStarted:Z

    .line 207
    const-string v0, "MAP.BaseProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provider stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->onStopped()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected stopMSE(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .parameter "providerId"
    .parameter "datasourceId"

    .prologue
    const/4 v3, 0x0

    .line 629
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-nez v1, :cond_0

    .line 630
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Unable to stop datasource. Proxy  is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 635
    :goto_0
    return v1

    .line 634
    :cond_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {v1, p1, p2}, Lcom/broadcom/bt/service/map/BluetoothMAP;->stopMSEInstance(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 635
    .local v0, status:I
    if-nez v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_0
.end method

.method protected abstract stopMSEInstance()V
.end method

.method protected unregisterDS(Ljava/lang/String;)Z
    .locals 4
    .parameter "datasourceId"

    .prologue
    const/4 v3, 0x0

    .line 610
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    if-eqz v1, :cond_0

    if-nez p1, :cond_1

    .line 611
    :cond_0
    const-string v1, "MAP.BaseProvider"

    const-string v2, "Unable to unregister datasource. Proxy or datasource is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 615
    :goto_0
    return v1

    .line 614
    :cond_1
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProxy:Lcom/broadcom/bt/service/map/BluetoothMAP;

    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;->getProviderId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/broadcom/bt/service/map/BluetoothMAP;->unregisterDSProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 615
    .local v0, status:I
    if-nez v0, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_0
.end method

.method protected abstract unregisterDatasources()V
.end method
