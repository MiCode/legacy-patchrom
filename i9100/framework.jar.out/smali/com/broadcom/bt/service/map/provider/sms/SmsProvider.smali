.class public Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;
.super Lcom/broadcom/bt/service/map/provider/BaseProvider;
.source "SmsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;
    }
.end annotation


# static fields
.field private static final CFG_SEND_MSG_SIZE_INFO_IN_LISTING:Z = true

.field private static final COL_ADDRESS:I = 0x1

.field private static final COL_BODY:I = 0x9

.field private static final COL_DATE:I = 0x2

.field private static final COL_DISPLAY_NAME:I = 0x3

.field private static final COL_FAMILY_NAME:I = 0x2

.field private static final COL_GIVEN_NAME:I = 0x0

.field private static final COL_ID:I = 0x0

.field private static final COL_LOCKED:I = 0x3

.field private static final COL_MIDDLE_NAME:I = 0x1

.field private static final COL_PERSON:I = 0x4

.field private static final COL_PREFIX:I = 0x4

.field private static final COL_READ:I = 0x5

.field private static final COL_SUBJECT:I = 0x6

.field private static final COL_SUFFIX:I = 0x5

.field private static final COL_THREAD_ID:I = 0x8

.field private static final COL_TYPE_ID:I = 0x7

.field private static final DEL_COL_ADDRESS:I = 0x2

.field private static final DEL_COL_BODY:I = 0xb

.field private static final DEL_COL_DATE:I = 0x4

.field private static final DEL_COL_ID:I = 0x0

.field private static final DEL_COL_LOCKED:I = 0xd

.field private static final DEL_COL_PERSON:I = 0x3

.field private static final DEL_COL_READ:I = 0x6

.field private static final DEL_COL_SUBJECT:I = 0xa

.field private static final DEL_COL_THREAD_ID:I = 0x1

.field private static final DEL_COL_TYPE_ID:I = 0x8

.field private static final DS_SMS_DISPLAY_NAME_ID:I = 0x0

.field protected static final FOLDER_PATH_DRAFT:Ljava/lang/String; = "/draft"

.field protected static final FOLDER_PATH_INBOX:Ljava/lang/String; = "/inbox"

.field protected static final FOLDER_PATH_OUTBOX:Ljava/lang/String; = "/outbox"

.field protected static final FOLDER_PATH_SENT:Ljava/lang/String; = "/sent"

.field private static final PERSON_NAME_INFO_PROJ:[Ljava/lang/String; = null

.field private static final PROVIDER_DISPLAY_NAME_ID:I = 0x0

.field private static final PROVIDER_ID:Ljava/lang/String; = "com.broadcom.bt"

.field private static final SMS_PROVIDER_PROJ:[Ljava/lang/String; = null

.field private static final SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String; = null

.field private static final SMS_ROOT_FOLDERS:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "MapSMSProvider"


# instance fields
.field protected mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

.field protected mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

.field private mOwnerPhoneNumber:Ljava/lang/String;

.field private mPhoneType:I

.field private mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

.field protected mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

.field private mTmpDirectory:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 84
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "data2"

    aput-object v1, v0, v3

    const-string v1, "data5"

    aput-object v1, v0, v4

    const-string v1, "data3"

    aput-object v1, v0, v5

    const-string v1, "data1"

    aput-object v1, v0, v6

    const-string v1, "data4"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "data6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    .line 300
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "inbox"

    aput-object v1, v0, v3

    const-string/jumbo v1, "outbox"

    aput-object v1, v0, v4

    const-string/jumbo v1, "sent"

    aput-object v1, v0, v5

    const-string v1, "deleted"

    aput-object v1, v0, v6

    const-string v1, "draft"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "failed"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "queued"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    .line 311
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string/jumbo v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "thread_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ_NO_BODY:[Ljava/lang/String;

    .line 316
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "address"

    aput-object v1, v0, v4

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "locked"

    aput-object v1, v0, v6

    const-string/jumbo v1, "person"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "thread_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "body"

    aput-object v2, v0, v1

    sput-object v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/BaseProvider;-><init>()V

    .line 107
    new-instance v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-direct {v0, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V

    iput-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    .line 109
    return-void
.end method

.method private static createFolderUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 3
    .parameter "folderPath"

    .prologue
    .line 416
    invoke-static {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid folder path:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    const/4 v0, 0x0

    .line 421
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2f

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v1, p0

    goto :goto_1
.end method

.method static final getFolderPath(I)Ljava/lang/String;
    .locals 1
    .parameter "smsMessageType"

    .prologue
    .line 355
    packed-switch p0, :pswitch_data_0

    .line 369
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 357
    :pswitch_0
    const-string v0, "/draft"

    goto :goto_0

    .line 359
    :pswitch_1
    const-string v0, "/failed"

    goto :goto_0

    .line 361
    :pswitch_2
    const-string v0, "/inbox"

    goto :goto_0

    .line 363
    :pswitch_3
    const-string v0, "/outbox"

    goto :goto_0

    .line 365
    :pswitch_4
    const-string v0, "/queued"

    goto :goto_0

    .line 367
    :pswitch_5
    const-string v0, "/sent"

    goto :goto_0

    .line 355
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch
.end method

.method static getFolderPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "virtualPath"

    .prologue
    const-string/jumbo v2, "root/telecom/msg"

    .line 397
    if-eqz p0, :cond_0

    .line 398
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 399
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const-string/jumbo v1, "root/telecom/msg"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    if-le v0, v1, :cond_0

    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {p0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    const-string/jumbo v0, "root/telecom/msg"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method static final getMessageType(Ljava/lang/String;)I
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 374
    if-eqz p0, :cond_5

    .line 375
    const-string v0, "/draft"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const/4 v0, 0x3

    .line 389
    :goto_0
    return v0

    .line 377
    :cond_0
    const-string v0, "/failed"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 378
    const/4 v0, 0x5

    goto :goto_0

    .line 379
    :cond_1
    const-string v0, "/inbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 380
    const/4 v0, 0x1

    goto :goto_0

    .line 381
    :cond_2
    const-string v0, "/outbox"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    const/4 v0, 0x4

    goto :goto_0

    .line 383
    :cond_3
    const-string v0, "/queued"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 384
    const/4 v0, 0x6

    goto :goto_0

    .line 385
    :cond_4
    const-string v0, "/sent"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 386
    const/4 v0, 0x2

    goto :goto_0

    .line 389
    :cond_5
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 9
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 488
    const/4 v7, 0x0

    .line 489
    .local v7, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v6, 0x0

    .line 491
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->PERSON_NAME_INFO_PROJ:[Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 493
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 494
    new-instance v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;

    invoke-direct {v8}, Lcom/broadcom/bt/service/map/provider/PersonInfo;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 495
    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .local v8, info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mGivenName:Ljava/lang/String;

    .line 496
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mMiddleName:Ljava/lang/String;

    .line 497
    const/4 v0, 0x2

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mFamilyName:Ljava/lang/String;

    .line 498
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mDisplayName:Ljava/lang/String;

    .line 499
    const/4 v0, 0x4

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mPrefix:Ljava/lang/String;

    .line 500
    const/4 v0, 0x5

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lcom/broadcom/bt/service/map/provider/PersonInfo;->mSuffix:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 505
    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 506
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 507
    const/4 v6, 0x0

    .line 509
    :cond_1
    return-object v7

    .line 502
    :catch_0
    move-exception v0

    goto :goto_0

    .end local v7           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v8       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :catch_1
    move-exception v0

    move-object v7, v8

    .end local v8           #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v7       #info:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    goto :goto_0
.end method

.method private getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 3
    .parameter "personId"

    .prologue
    .line 479
    if-nez p1, :cond_0

    .line 480
    const/4 v0, 0x0

    .line 482
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, "mimetype = \'vnd.android.cursor.item/name\' AND contact_id = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_0
.end method

.method private getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .locals 13
    .parameter "phoneNumber"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v12, "MapSMSProvider"

    .line 444
    const/4 v7, 0x0

    .line 445
    .local v7, lookupKey:Ljava/lang/String;
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 446
    .local v1, uri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 448
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "lookup"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 450
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 456
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 457
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 458
    const/4 v6, 0x0

    .line 460
    :cond_1
    if-nez v7, :cond_2

    .line 462
    const-string v0, "MapSMSProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Contact not found with number:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v9

    .line 467
    :goto_1
    return-object v0

    .line 453
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 454
    .local v8, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get contact lookup uri for phone:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 467
    .end local v8           #t:Ljava/lang/Throwable;
    :cond_2
    const-string/jumbo v0, "mimetype = \'vnd.android.cursor.item/name\' AND lookup = ?"

    new-array v2, v11, [Ljava/lang/String;

    aput-object v7, v2, v10

    invoke-direct {p0, v0, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfo(Ljava/lang/String;[Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v0

    goto :goto_1
.end method

.method private getThreadRecipientAddresses(I)Ljava/util/List;
    .locals 13
    .parameter "threadId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v12, "MapSMSProvider"

    .line 514
    const/4 v6, 0x0

    .line 515
    .local v6, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 516
    .local v9, recipientIds:Ljava/lang/String;
    const/4 v7, 0x0

    .line 518
    .local v7, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_CONVERSATIONS_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/recipients"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "recipient_ids"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 521
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 527
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 528
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 530
    :cond_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 531
    new-instance v10, Ljava/util/StringTokenizer;

    const-string v0, " "

    invoke-direct {v10, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v10, t:Ljava/util/StringTokenizer;
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 534
    :cond_2
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v8

    .line 535
    .local v8, recipientId:Ljava/lang/String;
    new-instance v6, Ljava/util/LinkedList;

    .end local v6           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 537
    .restart local v6       #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canonical-address/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "address"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 540
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 541
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 542
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 547
    :cond_3
    :goto_1
    if-eqz v7, :cond_4

    .line 548
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 549
    const/4 v7, 0x0

    .line 551
    :cond_4
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-nez v0, :cond_2

    .line 554
    .end local v8           #recipientId:Ljava/lang/String;
    .end local v10           #t:Ljava/util/StringTokenizer;
    :cond_5
    return-object v6

    .line 524
    :catch_0
    move-exception v0

    move-object v10, v0

    .line 525
    .local v10, t:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error getting conversation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 544
    .restart local v8       #recipientId:Ljava/lang/String;
    .local v10, t:Ljava/util/StringTokenizer;
    :catch_1
    move-exception v0

    move-object v11, v0

    .line 545
    .local v11, tt:Ljava/lang/Throwable;
    const-string v0, "MapSMSProvider"

    const-string v0, "Unable to get canonical address"

    invoke-static {v12, v0, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private isDeletedFolder(Ljava/lang/String;)Z
    .locals 1
    .parameter "folderPath"

    .prologue
    .line 1078
    const-string v0, "deleted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isValidFolderPath(Ljava/lang/String;)Z
    .locals 2
    .parameter "folderPath"

    .prologue
    const/4 v1, 0x1

    .line 351
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lt v0, v1, :cond_0

    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static toProviderMessageDBID(I)I
    .locals 1
    .parameter "messageId"

    .prologue
    .line 434
    if-lez p0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateStatusChange()V
    .locals 3

    .prologue
    .line 1600
    const-string v1, "MapSMSProvider"

    const-string/jumbo v2, "updateStatusChang send braodcast"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1601
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.mms.NOTIFICATION_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1602
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1603
    return-void
.end method


# virtual methods
.method protected disableNotifications(Ljava/lang/String;)Z
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 896
    const-string v0, "MapSMSProvider"

    const-string v1, "disableNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 899
    const/4 v0, 0x1

    return v0
.end method

.method protected enableNotifications(Ljava/lang/String;)Z
    .locals 3
    .parameter "datasourceId"

    .prologue
    const/4 v2, 0x1

    .line 887
    const-string v0, "MapSMSProvider"

    const-string v1, "enableNotifications()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    iput-boolean v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    .line 890
    return v2
.end method

.method protected getProviderId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 776
    const-string v0, "com.broadcom.bt"

    return-object v0
.end method

.method protected notificationsEnabled()Z
    .locals 1

    .prologue
    .line 903
    iget-boolean v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mNotificationsEnabled:Z

    return v0
.end method

.method protected onClientConnected(Ljava/lang/String;)V
    .locals 3
    .parameter "deviceName"

    .prologue
    .line 1656
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClientConnected(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    return-void
.end method

.method protected onClientDisconnected()V
    .locals 2

    .prologue
    .line 1661
    const-string v0, "MapSMSProvider"

    const-string/jumbo v1, "onClientDisconnected()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    return-void
.end method

.method protected onGetFolderListing(ILjava/lang/String;Ljava/lang/String;II)V
    .locals 3
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "maxEntries"
    .parameter "offset"

    .prologue
    .line 910
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 911
    const-string v0, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetFolderListing(): SMS only contains root folders...Request path is not the root folder: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListingError_NoFolders(ILjava/lang/String;Ljava/lang/String;)V

    .line 919
    :goto_0
    return-void

    .line 918
    :cond_0
    iget-object v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    sget-object v1, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_ROOT_FOLDERS:[Ljava/lang/String;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendFolderListings(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onGetMsg(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BB)V
    .locals 27
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "virtualFolderPath"
    .parameter "messageId"
    .parameter "charSetId"
    .parameter "includeAttachments"

    .prologue
    .line 927
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 928
    :cond_0
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetMsg(): Invalid folder path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 1073
    :goto_0
    return-void

    .line 934
    :cond_1
    if-eqz p7, :cond_2

    .line 935
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onGetMsg(): SMS provider currently doesn\'t support returning attachments"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    :cond_2
    move/from16 v14, p6

    .line 941
    .local v14, bCharset:B
    const/16 v17, 0x0

    .line 942
    .local v17, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/16 v23, 0x0

    .line 943
    .local v23, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v24, 0x0

    .line 944
    .local v24, outFile:Ljava/io/File;
    const/16 v20, 0x0

    .line 945
    .local v20, content:Ljava/lang/String;
    const/16 v19, 0x0

    .line 946
    .local v19, c:Landroid/database/Cursor;
    const/16 v22, 0x0

    .line 948
    .local v22, err:Ljava/lang/Throwable;
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object v5, v0

    const/16 v6, 0xa

    move-object/from16 v0, p5

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getItemById(I)Landroid/database/Cursor;

    move-result-object v6

    .line 951
    .end local v19           #c:Landroid/database/Cursor;
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 953
    const/4 v5, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v5

    move v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v23

    .line 954
    const/16 v5, 0xb

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 960
    :goto_1
    if-eqz v6, :cond_3

    .line 961
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 962
    const/4 v6, 0x0

    .line 1003
    :cond_3
    :try_start_0
    new-instance v18, Lcom/broadcom/bt/util/bmsg/BMessage;

    invoke-direct/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    .line 1004
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v18, bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, p4

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setBMessageHeaderInfo(Lcom/broadcom/bt/util/bmsg/BMessage;BLjava/lang/String;Lcom/broadcom/bt/service/map/MessageInfo;)V

    .line 1008
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v16

    .line 1009
    .local v16, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->addBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v13

    .line 1012
    .local v13, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v13, :cond_a

    .line 1013
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onGetMsg(): bBody is null"

    .end local v6           #c:Landroid/database/Cursor;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1057
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v16           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    :catch_0
    move-exception v5

    move-object/from16 v26, v5

    move-object/from16 v17, v18

    .line 1058
    .end local v18           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .local v26, t:Ljava/lang/Throwable;
    :goto_2
    move-object/from16 v22, v26

    .line 1061
    .end local v26           #t:Ljava/lang/Throwable;
    :goto_3
    if-eqz v17, :cond_4

    .line 1062
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1063
    const/16 v17, 0x0

    .line 1066
    :cond_4
    if-eqz v22, :cond_e

    .line 1067
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onGetMsg(): Unable to create BMessage"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 958
    .restart local v6       #c:Landroid/database/Cursor;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 969
    .end local v6           #c:Landroid/database/Cursor;
    .restart local v19       #c:Landroid/database/Cursor;
    :cond_6
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    sget-object v7, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 972
    .end local v19           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    if-eqz v6, :cond_7

    :try_start_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 973
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v23

    .line 974
    const/16 v5, 0x9

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 975
    if-eqz v23, :cond_7

    if-eqz v20, :cond_7

    .line 976
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x16

    move v0, v5

    move-object/from16 v1, v23

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4

    .line 983
    :cond_7
    :goto_4
    if-eqz v6, :cond_8

    .line 984
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 985
    const/4 v6, 0x0

    .line 988
    :cond_8
    if-nez v23, :cond_9

    .line 989
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #c:Landroid/database/Cursor;
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetMsg(): Unable to find message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 979
    .restart local v19       #c:Landroid/database/Cursor;
    :catch_1
    move-exception v5

    move-object/from16 v26, v5

    move-object/from16 v6, v19

    .line 980
    .end local v19           #c:Landroid/database/Cursor;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v26       #t:Ljava/lang/Throwable;
    :goto_5
    const-string v5, "MapSMSProvider"

    const-string/jumbo v7, "onGetMsg(): Unable to query for SMS messages"

    move-object v0, v5

    move-object v1, v7

    move-object/from16 v2, v26

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 994
    .end local v26           #t:Ljava/lang/Throwable;
    :cond_9
    move-object/from16 v0, v23

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    move v5, v0

    if-nez v5, :cond_3

    .line 995
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onGetMsg(): Binary SMS not currentlly supported"

    .end local v6           #c:Landroid/database/Cursor;
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnNoMessage(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1017
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v6       #c:Landroid/database/Cursor;
    .restart local v13       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v16       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v18       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :cond_a
    const/4 v5, 0x1

    :try_start_4
    invoke-virtual {v13, v5}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1025
    invoke-virtual {v13}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->addContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v15

    .line 1030
    .local v15, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v14, :cond_b

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_b

    .line 1032
    .end local v6           #c:Landroid/database/Cursor;
    const-string v5, "MapSMSProvider"

    const-string v6, "Native charset requested"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object v7, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object v2, v5

    move-object v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/util/bmsg/BMessage;->encodeSMSDeliverPDU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1036
    .local v21, encodedContent:Ljava/lang/String;
    if-nez v21, :cond_d

    .line 1037
    const-string v5, "MapSMSProvider"

    const-string v6, "Native charset requested but encoding failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    .end local v21           #encodedContent:Ljava/lang/String;
    :cond_b
    :goto_6
    if-eqz v15, :cond_c

    .line 1048
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->addMessageContent(Ljava/lang/String;)V

    .line 1054
    :cond_c
    new-instance v25, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    move-object v5, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v25

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    .line 1056
    .end local v24           #outFile:Ljava/io/File;
    .local v25, outFile:Ljava/io/File;
    :try_start_5
    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->write(Ljava/io/File;)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/File;
    .restart local v24       #outFile:Ljava/io/File;
    move-object/from16 v17, v18

    .line 1059
    .end local v18           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto/16 :goto_3

    .line 1040
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v18       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v21       #encodedContent:Ljava/lang/String;
    :cond_d
    :try_start_6
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Native charset requested - encoding succeeded - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    move-object/from16 v20, v21

    .line 1042
    invoke-virtual {v13, v14}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setCharSet(B)V

    .line 1043
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->setEncoding(B)V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    .line 1070
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v15           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v16           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v18           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v21           #encodedContent:Ljava/lang/String;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v7, v0

    invoke-virtual/range {v24 .. v24}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p5

    move v11, v14

    invoke-virtual/range {v7 .. v12}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->returnMessage(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1057
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_2
    move-exception v5

    move-object/from16 v26, v5

    goto/16 :goto_2

    .end local v6           #c:Landroid/database/Cursor;
    .end local v17           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .end local v24           #outFile:Ljava/io/File;
    .restart local v13       #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .restart local v15       #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .restart local v16       #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v18       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v25       #outFile:Ljava/io/File;
    :catch_3
    move-exception v5

    move-object/from16 v26, v5

    move-object/from16 v24, v25

    .end local v25           #outFile:Ljava/io/File;
    .restart local v24       #outFile:Ljava/io/File;
    move-object/from16 v17, v18

    .end local v18           #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    .restart local v17       #bMsg:Lcom/broadcom/bt/util/bmsg/BMessage;
    goto/16 :goto_2

    .line 979
    .end local v13           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v15           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v16           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .restart local v6       #c:Landroid/database/Cursor;
    :catch_4
    move-exception v5

    move-object/from16 v26, v5

    goto/16 :goto_5
.end method

.method protected onGetMsgListing(Ljava/lang/String;ILjava/lang/String;IIIBBLjava/lang/String;Ljava/lang/String;BLjava/lang/String;Ljava/lang/String;B)V
    .locals 32
    .parameter "datasourceId"
    .parameter "requestId"
    .parameter "folderPath"
    .parameter "parameterMask"
    .parameter "maxEntries"
    .parameter "offsetMessageId"
    .parameter "maxSubjectLengthAsByte"
    .parameter "msgMask"
    .parameter "periodBegin"
    .parameter "periodEnd"
    .parameter "readStatus"
    .parameter "recipient"
    .parameter "originator"
    .parameter "pri_status"

    .prologue
    .line 1088
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1089
    :cond_0
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetMsgListing(): Invalid folder path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    .line 1317
    :cond_1
    :goto_0
    return-void

    .line 1094
    :cond_2
    move/from16 v14, p7

    .line 1095
    .local v14, maxSubjectLength:I
    if-gez v14, :cond_3

    const/16 v5, -0x80

    if-lt v14, v5, :cond_3

    .line 1096
    add-int/lit16 v14, v14, 0x100

    .line 1098
    :cond_3
    const/16 v5, 0x10

    if-le v14, v5, :cond_4

    .line 1099
    const/16 v14, 0x10

    .line 1101
    :cond_4
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetMsgListing(): folderPath="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parameterMask="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxEntries="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " maxSubjectLength="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " periodBegin="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " periodEnd="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " readStatus="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " recipient="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " originator="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " msgMask = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " providerType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    and-int/lit8 v5, p8, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 1109
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetMsgListing(): Filtering on SMS_GSM so send back nothing providerType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1113
    :cond_5
    and-int/lit8 v5, p8, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v5, v0

    const/4 v6, 0x4

    if-ne v5, v6, :cond_6

    .line 1118
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onGetMsgListing(): Filtering on SMS_CDMA so send back nothing providerType = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1122
    :cond_6
    if-gtz p5, :cond_a

    const/4 v5, 0x1

    move/from16 v28, v5

    .line 1124
    .local v28, returnAllMsgs:Z
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isDeletedFolder(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1129
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toProviderMessageDBID(I)I

    move-result v23

    .line 1130
    .local v23, messageDbId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->getAllItemsGreaterThan(I)Landroid/database/Cursor;

    move-result-object v9

    .line 1131
    .local v9, c:Landroid/database/Cursor;
    if-eqz v9, :cond_b

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1134
    new-instance v21, Ljava/util/LinkedList;

    invoke-direct/range {v21 .. v21}, Ljava/util/LinkedList;-><init>()V

    .line 1137
    .local v21, mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_7
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object v1, v9

    move v2, v5

    move v3, v14

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v20

    .line 1139
    .local v20, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1141
    if-nez v28, :cond_8

    .line 1142
    add-int/lit8 p5, p5, -0x1

    .line 1145
    :cond_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_9

    if-nez v28, :cond_7

    if-gtz p5, :cond_7

    .line 1146
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 1152
    .end local v20           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :goto_2
    if-eqz v9, :cond_1

    .line 1153
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 1122
    .end local v9           #c:Landroid/database/Cursor;
    .end local v23           #messageDbId:I
    .end local v28           #returnAllMsgs:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v28, v5

    goto :goto_1

    .line 1150
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v23       #messageDbId:I
    .restart local v28       #returnAllMsgs:Z
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1161
    .end local v9           #c:Landroid/database/Cursor;
    .end local v23           #messageDbId:I
    :cond_c
    const/16 v17, 0x0

    .line 1162
    .local v17, filterPriority:B
    const/16 v16, 0x0

    .line 1163
    .local v16, filterNewMsg:Z
    move/from16 v18, p11

    .line 1165
    .local v18, filterReadStatus:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1166
    .local v6, uri:Landroid/net/Uri;
    if-nez v6, :cond_d

    .line 1168
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1172
    :cond_d
    const/4 v15, 0x0

    .line 1173
    .local v15, c:Landroid/database/Cursor;
    const/16 v21, 0x0

    .line 1174
    .restart local v21       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    new-instance v31, Ljava/lang/StringBuilder;

    invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V

    .line 1175
    .local v31, where:Ljava/lang/StringBuilder;
    const/16 v19, 0x0

    .line 1197
    .local v19, hasWhereCondition:Z
    const-string v5, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onGetMsgList(): readStatus="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    invoke-static/range {v18 .. v18}, Lcom/broadcom/bt/service/map/BluetoothMAP;->isValidMsgStatus(B)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 1204
    const-string v5, "MapSMSProvider"

    const-string v7, "Adding message status filter..."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    if-eqz v19, :cond_17

    .line 1208
    const-string v5, " AND "

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1213
    :goto_3
    const-string v5, "("

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    const-string/jumbo v5, "read"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1215
    const/4 v5, 0x1

    move/from16 v0, v18

    move v1, v5

    if-ne v0, v1, :cond_18

    const-string v5, "0"

    :goto_4
    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    const-string v5, ")"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    :cond_e
    if-eqz p9, :cond_f

    invoke-virtual/range {p9 .. p9}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_f

    .line 1221
    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    .line 1222
    .local v30, time:Landroid/text/format/Time;
    const-wide/16 v24, 0x0

    .line 1223
    .local v24, periodBeginmillis:J
    move-object/from16 v0, v30

    move-object/from16 v1, p9

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1225
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v24

    .line 1226
    const-string v5, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "periodBegin: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1228
    if-eqz v19, :cond_19

    .line 1230
    const-string v5, " AND "

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1234
    :goto_5
    const-string v5, "("

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    const-string v5, "date"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " >= "

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1241
    .end local v24           #periodBeginmillis:J
    .end local v30           #time:Landroid/text/format/Time;
    :cond_f
    if-eqz p10, :cond_10

    invoke-virtual/range {p10 .. p10}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v7, 0x8

    if-lt v5, v7, :cond_10

    .line 1243
    new-instance v30, Landroid/text/format/Time;

    invoke-direct/range {v30 .. v30}, Landroid/text/format/Time;-><init>()V

    .line 1244
    .restart local v30       #time:Landroid/text/format/Time;
    const-wide/16 v26, 0x0

    .line 1245
    .local v26, periodEndmillis:J
    move-object/from16 v0, v30

    move-object/from16 v1, p10

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->parse(Ljava/lang/String;)Z

    .line 1247
    const/4 v5, 0x0

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v26

    .line 1248
    const-string v5, "MapSMSProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "periodEnd: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    if-eqz v19, :cond_1a

    .line 1252
    const-string v5, " AND "

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1256
    :goto_6
    const-string v5, "("

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    const-string v5, "date"

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " <= "

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ")"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v31

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1264
    .end local v26           #periodEndmillis:J
    .end local v30           #time:Landroid/text/format/Time;
    :cond_10
    :try_start_0
    sget-object v7, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    check-cast v7, [Ljava/lang/String;

    .line 1270
    .local v7, projections:[Ljava/lang/String;
    const-string v5, "MapSMSProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onGetMsgListing(): Querying "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " with filter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_1b

    invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_7
    const/4 v9, 0x0

    const-string v10, "_id desc "

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1276
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    if-eqz v9, :cond_15

    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1279
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onGetMsgListing(): Found messages!"

    .end local v6           #uri:Landroid/net/Uri;
    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1282
    new-instance v22, Ljava/util/LinkedList;

    invoke-direct/range {v22 .. v22}, Ljava/util/LinkedList;-><init>()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 1285
    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .local v22, mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_11
    if-nez p6, :cond_1c

    .line 1287
    const/4 v10, 0x1

    move-object/from16 v8, p0

    move/from16 v11, p4

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    :try_start_2
    invoke-virtual/range {v8 .. v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;

    move-result-object v20

    .line 1288
    .restart local v20       #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    if-eqz v20, :cond_12

    .line 1289
    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1291
    :cond_12
    if-nez v28, :cond_13

    .line 1292
    add-int/lit8 p5, p5, -0x1

    .line 1299
    .end local v20           #mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    :cond_13
    :goto_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result v5

    if-eqz v5, :cond_14

    if-nez v28, :cond_11

    if-gtz p5, :cond_11

    :cond_14
    move-object/from16 v21, v22

    .line 1306
    .end local v7           #projections:[Ljava/lang/String;
    .end local v22           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v21       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_15
    :goto_9
    if-eqz v9, :cond_16

    .line 1307
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1308
    const/4 v9, 0x0

    .line 1311
    :cond_16
    if-nez v21, :cond_1d

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMesageListingError_NoMsgs(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1211
    .end local v9           #c:Landroid/database/Cursor;
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    :cond_17
    const/16 v19, 0x1

    goto/16 :goto_3

    .line 1215
    :cond_18
    const-string v5, "1"

    goto/16 :goto_4

    .line 1232
    .restart local v24       #periodBeginmillis:J
    .restart local v30       #time:Landroid/text/format/Time;
    :cond_19
    const/16 v19, 0x1

    goto/16 :goto_5

    .line 1254
    .end local v24           #periodBeginmillis:J
    .restart local v26       #periodEndmillis:J
    :cond_1a
    const/16 v19, 0x1

    goto/16 :goto_6

    .line 1273
    .end local v26           #periodEndmillis:J
    .end local v30           #time:Landroid/text/format/Time;
    .restart local v7       #projections:[Ljava/lang/String;
    :cond_1b
    const/4 v8, 0x0

    goto :goto_7

    .line 1296
    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v9       #c:Landroid/database/Cursor;
    .restart local v22       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :cond_1c
    :try_start_3
    const-string v5, "MapSMSProvider"

    const-string v6, "OnGetMsgListing() : skipping upto the offset"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1297
    add-int/lit8 p6, p6, -0x1

    goto :goto_8

    .line 1302
    .end local v7           #projections:[Ljava/lang/String;
    .end local v9           #c:Landroid/database/Cursor;
    .end local v22           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v6       #uri:Landroid/net/Uri;
    .restart local v15       #c:Landroid/database/Cursor;
    .restart local v21       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :catch_0
    move-exception v5

    move-object/from16 v29, v5

    move-object v9, v15

    .line 1303
    .end local v6           #uri:Landroid/net/Uri;
    .end local v15           #c:Landroid/database/Cursor;
    .restart local v9       #c:Landroid/database/Cursor;
    .local v29, t:Ljava/lang/Throwable;
    :goto_a
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onGetMsgListing(): Unable to query for SMS messages"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v29

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 1314
    .end local v29           #t:Ljava/lang/Throwable;
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p2

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMessageListings(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    goto/16 :goto_0

    .line 1302
    .restart local v7       #projections:[Ljava/lang/String;
    :catch_1
    move-exception v5

    move-object/from16 v29, v5

    goto :goto_a

    .end local v21           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v22       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    :catch_2
    move-exception v5

    move-object/from16 v29, v5

    move-object/from16 v21, v22

    .end local v22           #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    .restart local v21       #mInfos:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/broadcom/bt/service/map/MessageInfo;>;"
    goto :goto_a
.end method

.method protected onPushMsg(ILjava/lang/String;BBBLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 29
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "msgTransparent"
    .parameter "msgRetry"
    .parameter "msgCharset"
    .parameter "msgContentUri"
    .parameter "folderPath"
    .parameter "virtualFolderPath"

    .prologue
    .line 1323
    const/4 v8, 0x0

    .line 1324
    .local v8, content:Ljava/lang/String;
    const/4 v7, 0x0

    .line 1325
    .local v7, destAddress:Ljava/lang/String;
    const/4 v11, 0x0

    .line 1326
    .local v11, isRead:Z
    const/4 v9, 0x0

    .line 1327
    .local v9, subject:Ljava/lang/String;
    invoke-static/range {p6 .. p6}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->parseBMessage(Ljava/lang/String;)Lcom/broadcom/bt/util/bmsg/BMessage;

    move-result-object v18

    .line 1328
    .local v18, bMessage:Lcom/broadcom/bt/util/bmsg/BMessage;
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onPushMsg() charset = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " msgContentUri = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    if-nez v18, :cond_0

    .line 1330
    const-string v5, "MapSMSProvider"

    const-string v6, "(onPushMsg(): Unable to push SMS message. Null BMessage"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    .line 1500
    .end local v9           #subject:Ljava/lang/String;
    :goto_0
    return-void

    .line 1336
    .restart local v9       #subject:Ljava/lang/String;
    :cond_0
    const-string v5, "/outbox"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "/draft"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 1337
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "(onPushMsg(): only support push msg in outbox/drafe folder: "

    .end local v9           #subject:Ljava/lang/String;
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto :goto_0

    .line 1347
    .restart local v9       #subject:Ljava/lang/String;
    :cond_1
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->getMessageType()B

    move-result v23

    .line 1351
    .local v23, msgType:B
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onPushMsg(): Message type = "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    const/4 v5, 0x4

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_4

    const/4 v5, 0x2

    move/from16 v0, v23

    move v1, v5

    if-eq v0, v1, :cond_4

    .line 1355
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to process BMessage: not a SMS message type"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1416
    .end local v23           #msgType:B
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    if-nez v7, :cond_c

    .line 1417
    :cond_3
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to push SMS text message. Invalid destination address or content"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1361
    .restart local v23       #msgType:B
    :cond_4
    :try_start_1
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 1362
    :cond_5
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onPushMsg(): invalid folder path:"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1411
    .end local v23           #msgType:B
    :catch_0
    move-exception v5

    move-object/from16 v21, v5

    .line 1412
    .local v21, e:Ljava/lang/Exception;
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Error parsing BMessage"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1366
    .end local v21           #e:Ljava/lang/Exception;
    .restart local v23       #msgType:B
    :cond_6
    :try_start_2
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->isRead()Z

    move-result v11

    .line 1369
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->getEnvelope()Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;

    move-result-object v17

    .line 1370
    .local v17, bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    if-nez v17, :cond_7

    .line 1371
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to process BMessage. Envelope is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1376
    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getRecipient()Lcom/broadcom/bt/util/bmsg/BMessageVCard;

    move-result-object v20

    .line 1377
    .local v20, bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    if-nez v20, :cond_8

    .line 1378
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to process BMessage. Recipient is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1383
    :cond_8
    const/4 v5, 0x2

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessageVCard;->getProperty(B)Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;

    move-result-object v19

    .line 1385
    .local v19, bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    if-nez v19, :cond_9

    .line 1386
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to process BMessage. Recipient TEL property is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1390
    :cond_9
    invoke-virtual/range {v19 .. v19}, Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;->getValue()Ljava/lang/String;

    move-result-object v7

    .line 1393
    invoke-virtual/range {v17 .. v17}, Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;->getBody()Lcom/broadcom/bt/util/bmsg/BMessageBody;

    move-result-object v15

    .line 1394
    .local v15, bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    if-nez v15, :cond_a

    .line 1395
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to process BMessage. Body is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1400
    :cond_a
    invoke-virtual {v15}, Lcom/broadcom/bt/util/bmsg/BMessageBody;->getContent()Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;

    move-result-object v16

    .line 1401
    .local v16, bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    if-nez v16, :cond_b

    .line 1402
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to process BMessage. Cintent is null"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1405
    :cond_b
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getFirstMessageContent()Ljava/lang/String;

    move-result-object v8

    .line 1406
    const/16 v24, 0x0

    .line 1407
    .local v24, next:Ljava/lang/String;
    :goto_2
    invoke-virtual/range {v16 .. v16}, Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;->getNextMessageContent()Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_2

    .line 1408
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    goto :goto_2

    .line 1422
    .end local v15           #bBody:Lcom/broadcom/bt/util/bmsg/BMessageBody;
    .end local v16           #bContent:Lcom/broadcom/bt/util/bmsg/BMessageBodyContent;
    .end local v17           #bEnv:Lcom/broadcom/bt/util/bmsg/BMessageEnvelope;
    .end local v19           #bProp:Lcom/broadcom/bt/util/bmsg/BMessageVCardProperty;
    .end local v20           #bRecipient:Lcom/broadcom/bt/util/bmsg/BMessageVCard;
    .end local v23           #msgType:B
    .end local v24           #next:Ljava/lang/String;
    :cond_c
    if-nez p5, :cond_d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    .line 1425
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Native charset used to push message - got message "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1427
    move-object/from16 v0, v18

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/broadcom/bt/util/bmsg/BMessage;->decodeSMSSubmitPDU(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1428
    .local v25, sUTF8Content:Ljava/lang/String;
    if-nez v25, :cond_10

    .line 1429
    const-string v5, "MapSMSProvider"

    const-string v6, "Decoded message body - failed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1443
    .end local v25           #sUTF8Content:Ljava/lang/String;
    :cond_d
    invoke-virtual/range {v18 .. v18}, Lcom/broadcom/bt/util/bmsg/BMessage;->finish()V

    .line 1444
    const/16 v18, 0x0

    .line 1446
    const/16 v22, 0x0

    .line 1448
    .local v22, messageUri:Landroid/net/Uri;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-static {v5, v7}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v13

    .line 1449
    .local v13, threadId:J
    const-string v5, "/outbox"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1451
    const-string v5, "MapSMSProvider"

    const-string v6, "Sending message..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    move-object v5, v0

    invoke-virtual {v5, v7, v8, v13, v14}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;->sendMessage(Ljava/lang/String;Ljava/lang/String;J)Landroid/net/Uri;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v22

    .line 1483
    .end local v9           #subject:Ljava/lang/String;
    .end local v13           #threadId:J
    :cond_e
    :goto_3
    if-eqz v22, :cond_12

    .line 1485
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Created message to send. Uri: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    const-string v5, "/outbox"

    move-object v0, v5

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 1493
    const-string p7, "/sent"

    .line 1495
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    invoke-virtual/range {v22 .. v22}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v6

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Success(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1433
    .end local v22           #messageUri:Landroid/net/Uri;
    .restart local v9       #subject:Ljava/lang/String;
    .restart local v25       #sUTF8Content:Ljava/lang/String;
    :cond_10
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Decoded message body - got message "

    .end local v8           #content:Ljava/lang/String;
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    move-object/from16 v8, v25

    .line 1435
    .restart local v8       #content:Ljava/lang/String;
    if-nez v8, :cond_d

    .line 1436
    const-string v5, "MapSMSProvider"

    const-string/jumbo v6, "onPushMsg(): Unable to push SMS text message. Empty content - conversion failed"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1458
    .end local v25           #sUTF8Content:Ljava/lang/String;
    .restart local v13       #threadId:J
    .restart local v22       #messageUri:Landroid/net/Uri;
    :cond_11
    :try_start_4
    const-string v5, "MapSMSProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Pushing message to "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->createFolderUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    .line 1461
    .local v6, addrUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v27

    invoke-static/range {v27 .. v28}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const/4 v12, 0x1

    invoke-static/range {v5 .. v14}, Landroid/provider/Telephony$Sms;->addMessageToUri(Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZZJ)Landroid/net/Uri;

    move-result-object v22

    .line 1464
    if-eqz v22, :cond_e

    .line 1465
    const/4 v5, 0x1

    invoke-static/range {p7 .. p7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getMessageType(Ljava/lang/String;)I

    move-result v6

    .end local v6           #addrUri:Landroid/net/Uri;
    if-ne v5, v6, :cond_e

    .line 1469
    const-string v5, "MapSMSProvider"

    const-string v6, "Updating properties for inbox message..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    new-instance v26, Landroid/content/ContentValues;

    const/4 v5, 0x3

    move-object/from16 v0, v26

    move v1, v5

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1472
    .local v26, v:Landroid/content/ContentValues;
    const-string/jumbo v5, "protocol"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1473
    const-string/jumbo v5, "reply_path_present"

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1474
    const-string/jumbo v5, "status"

    const/4 v6, -0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v26

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v9, 0x0

    move-object v0, v5

    move-object/from16 v1, v22

    move-object/from16 v2, v26

    move-object v3, v6

    move-object v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_3

    .line 1479
    .end local v9           #subject:Ljava/lang/String;
    .end local v13           #threadId:J
    .end local v26           #v:Landroid/content/ContentValues;
    :catch_1
    move-exception v5

    move-object/from16 v21, v5

    .line 1480
    .restart local v21       #e:Ljava/lang/Exception;
    const-string v5, "MapSMSProvider"

    const-string v6, "Unable to push message"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_3

    .line 1498
    .end local v21           #e:Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->setMsgPushStatus_Error(ILjava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected onSetMessageDeletedStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 24
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "deletedStatus"

    .prologue
    .line 1510
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetMessageDeletedStatus(): folderpath="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " messageId ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    const/16 v22, 0x0

    .line 1517
    .local v22, status:B
    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static/range {p3 .. p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1518
    :cond_0
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onSetMessageDeletedStatus(): Invalid folder path:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    const/4 v9, 0x1

    move/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    move/from16 v9, v22

    .line 1596
    .end local v22           #status:B
    .local v9, status:B
    :cond_1
    :goto_0
    return-void

    .line 1526
    .end local v9           #status:B
    .restart local v22       #status:B
    :cond_2
    const/4 v4, 0x1

    move v0, v4

    move/from16 v1, p5

    if-ne v0, v1, :cond_6

    .line 1533
    const/16 v20, 0x0

    .line 1535
    .local v20, c:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->SMS_PROVIDER_PROJ:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v20

    .line 1538
    if-eqz v20, :cond_3

    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    move-object v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, v20

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const/16 v6, 0x8

    move-object/from16 v0, v20

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x1

    move-object/from16 v0, v20

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    move-object/from16 v0, v20

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/4 v9, 0x2

    move-object/from16 v0, v20

    move v1, v9

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x0

    const/4 v12, 0x5

    move-object/from16 v0, v20

    move v1, v12

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const/4 v13, 0x0

    const/4 v14, 0x7

    move-object/from16 v0, v20

    move v1, v14

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const/4 v15, 0x0

    const/16 v16, 0x6

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x9

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    const/16 v19, 0x3

    move-object/from16 v0, v20

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-virtual/range {v4 .. v19}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->addItem(IILjava/lang/String;IJIIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 1555
    const-string v4, "MapSMSProvider"

    const-string/jumbo v5, "onSetMessageDeletedStatus(): Unable to add item to deleted folder"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1563
    :cond_3
    :goto_1
    if-eqz v20, :cond_4

    .line 1564
    invoke-interface/range {v20 .. v20}, Landroid/database/Cursor;->close()V

    .line 1565
    const/16 v20, 0x0

    .line 1569
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v21

    .line 1571
    .local v21, rowsDeleted:I
    if-gtz v21, :cond_5

    .line 1572
    const/4 v9, 0x1

    .line 1573
    .end local v22           #status:B
    .restart local v9       #status:B
    const-string v4, "MapSMSProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to delete message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1589
    .end local v20           #c:Landroid/database/Cursor;
    .end local v21           #rowsDeleted:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v4, v0

    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x2

    move/from16 v5, p1

    move-object/from16 v7, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p3

    invoke-virtual/range {v4 .. v11}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendMsgStatusResponse(ILjava/lang/String;Ljava/lang/String;BBLjava/lang/String;Ljava/lang/String;)Z

    .line 1591
    if-nez v9, :cond_1

    .line 1593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    move-object v4, v0

    move-object v0, v4

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;->sendNotification_MessageDeleted(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1558
    .end local v9           #status:B
    .restart local v20       #c:Landroid/database/Cursor;
    .restart local v22       #status:B
    :catch_0
    move-exception v4

    move-object/from16 v23, v4

    .line 1561
    .local v23, t:Ljava/lang/Throwable;
    const-string v4, "MapSMSProvider"

    const-string/jumbo v5, "onSetMessageDeletedStatus(): Unable to query for SMS messages"

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v23

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1576
    .end local v23           #t:Ljava/lang/Throwable;
    .restart local v21       #rowsDeleted:I
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->updateStatusChange()V

    move/from16 v9, v22

    .end local v22           #status:B
    .restart local v9       #status:B
    goto :goto_2

    .line 1585
    .end local v9           #status:B
    .end local v20           #c:Landroid/database/Cursor;
    .end local v21           #rowsDeleted:I
    .restart local v22       #status:B
    :cond_6
    const/4 v9, 0x1

    .line 1586
    .end local v22           #status:B
    .restart local v9       #status:B
    const-string v4, "MapSMSProvider"

    const-string v5, "Undelete is not supported for SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method protected onSetMessageReadStatus(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)V
    .locals 8
    .parameter "requestId"
    .parameter "datasourceId"
    .parameter "folderPath"
    .parameter "messageId"
    .parameter "readStatus"

    .prologue
    const/4 v5, 0x1

    const-string/jumbo v6, "read"

    const-string v7, "MapSMSProvider"

    .line 1609
    const-string v3, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetMessageReadStatus(): folderpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", messageId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", readStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isRootFolder(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {p3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->isValidFolderPath(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1615
    :cond_0
    const-string v3, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetMessageReadStatus(): Invalid folder path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1646
    :goto_0
    return-void

    .line 1620
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 1621
    .local v2, values:Landroid/content/ContentValues;
    if-ne v5, p5, :cond_2

    .line 1622
    const-string/jumbo v3, "read"

    const-string v3, "1"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1631
    :goto_1
    :try_start_0
    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 1633
    .local v0, result:I
    if-gtz v0, :cond_4

    .line 1634
    const-string v3, "MapSMSProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSetMessageReadStatus(): Unable to update read status. Message not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1642
    .end local v0           #result:I
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 1643
    .local v1, t:Ljava/lang/Throwable;
    const-string v3, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EonSetMessageReadStatus(): rror updating read status for message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1623
    .end local v1           #t:Ljava/lang/Throwable;
    :cond_2
    if-nez p5, :cond_3

    .line 1624
    const-string/jumbo v3, "read"

    const-string v3, "0"

    invoke-virtual {v2, v6, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1626
    :cond_3
    const-string v3, "MapSMSProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSetMessageReadStatus(): Invalid state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1639
    .restart local v0       #result:I
    :cond_4
    :try_start_1
    invoke-direct {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->updateStatusChange()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method protected onStarted()V
    .locals 6

    .prologue
    const-string v4, "MapSMSProvider"

    .line 806
    new-instance v2, Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/map/provider/ProviderHelper;-><init>(Lcom/broadcom/bt/service/map/provider/BaseProvider;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mHelper:Lcom/broadcom/bt/service/map/provider/ProviderHelper;

    .line 810
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    if-eqz v2, :cond_0

    .line 811
    const-string v2, "MapSMSProvider"

    const-string v2, "Unregistering already registered receiver"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :try_start_0
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 818
    :cond_0
    :goto_0
    new-instance v2, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-direct {v2, p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;-><init>(Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 819
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getEventCallbackHandler()Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;

    move-result-object v0

    .line 820
    .local v0, handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    iget-object v4, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;->createFilter(Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 824
    new-instance v2, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    iget-object v3, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mSender:Lcom/broadcom/bt/service/map/provider/sms/SmsMessageSender;

    .line 825
    return-void

    .line 814
    .end local v0           #handler:Lcom/broadcom/bt/service/map/provider/EventCallbackHandler;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 815
    .local v1, t:Ljava/lang/Throwable;
    const-string v2, "MapSMSProvider"

    const-string v2, "Unable to unregister receiver"

    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onStopped()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    const-string v4, "MapSMSProvider"

    .line 829
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->closeDeletedFolderDatabase()V

    .line 831
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    if-eqz v1, :cond_0

    .line 832
    const-string v1, "MapSMSProvider"

    const-string v1, "Unregistering already registered receiver"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    :try_start_0
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 835
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 839
    :goto_0
    iput-object v3, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mReceiver:Lcom/broadcom/bt/service/map/provider/sms/SmsEventReceiver;

    .line 841
    :cond_0
    return-void

    .line 836
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 837
    .local v0, t:Ljava/lang/Throwable;
    const-string v1, "MapSMSProvider"

    const-string v1, "Unable to unregister receiver"

    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected onUpdateInbox(Ljava/lang/String;)V
    .locals 2
    .parameter "datasourceId"

    .prologue
    .line 1651
    const-string v0, "MapSMSProvider"

    const-string/jumbo v1, "onUpdateInbox(): Update inbox is not supported for SMS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1652
    return-void
.end method

.method protected preStart()V
    .locals 4

    .prologue
    const-string v3, "MapSMSProvider"

    .line 781
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 783
    .local v0, mgr:Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    iput v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    .line 784
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    .line 787
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 788
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    if-nez v1, :cond_0

    .line 789
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.broadcom.bt.app.system/map"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    .line 790
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_0

    .line 791
    const-string v1, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "******Cannot create temporary directory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    :cond_0
    const-string v1, "MapSMSProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Temporary directory set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mTmpDirectory:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    iget-object v1, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mDeletedFolder:Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;

    invoke-virtual {v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider$SmsDeletedFolder;->openDeletedFolderDatabase()Z

    .line 802
    return-void
.end method

.method protected registerDatasources()V
    .locals 8

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v2, 0x0

    .line 844
    const/4 v0, 0x5

    new-array v7, v0, [Ljava/lang/String;

    .line 846
    .local v7, folderMappings:[Ljava/lang/String;
    new-instance v0, Ljava/lang/String;

    const-string v1, "inbox=inbox"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v2

    .line 847
    const/4 v0, 0x1

    new-instance v1, Ljava/lang/String;

    const-string/jumbo v3, "outbox=outbox"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v7, v0

    .line 848
    new-instance v0, Ljava/lang/String;

    const-string/jumbo v1, "sent=sent"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v4

    .line 849
    const/4 v0, 0x3

    new-instance v1, Ljava/lang/String;

    const-string v3, "deleted=deleted"

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v1, v7, v0

    .line 850
    new-instance v0, Ljava/lang/String;

    const-string v1, "draft=draft"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v0, v7, v5

    .line 852
    iget v0, p0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    if-ne v0, v4, :cond_0

    move v0, v5

    :goto_0
    iput-byte v0, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    .line 854
    iget-byte v1, p0, Lcom/broadcom/bt/service/map/provider/BaseProvider;->mProviderType:B

    const-string v3, "SMS"

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v2

    invoke-virtual/range {v0 .. v7}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->registerDS(IILjava/lang/String;IZZ[Ljava/lang/String;)Z

    .line 856
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->startMSEInstance()V

    .line 857
    return-void

    :cond_0
    move v0, v4

    .line 852
    goto :goto_0
.end method

.method protected startMSEInstance()V
    .locals 2

    .prologue
    .line 871
    const-string v0, "MapSMSProvider"

    const-string/jumbo v1, "startMSEInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 873
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->startMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 874
    return-void
.end method

.method protected stopMSEInstance()V
    .locals 2

    .prologue
    .line 879
    const-string v0, "MapSMSProvider"

    const-string/jumbo v1, "startMSEInstance()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getProviderId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SMS"

    invoke-virtual {p0, v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->stopMSE(Ljava/lang/String;Ljava/lang/String;)Z

    .line 882
    return-void
.end method

.method protected toDeletedMessageInfo(Landroid/database/Cursor;ZI)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 17
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "maxSubjectLength"

    .prologue
    .line 557
    new-instance v9, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v9}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 558
    .local v9, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/4 v13, 0x0

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 559
    const/16 v13, 0x10d7

    iput v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 563
    const/4 v13, 0x0

    iput-boolean v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 564
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    move v13, v0

    const/4 v14, 0x2

    if-ne v13, v14, :cond_4

    const/4 v13, 0x4

    :goto_0
    iput-byte v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 566
    const/4 v13, 0x1

    iput-boolean v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 568
    const/4 v13, 0x4

    const-wide/16 v14, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move-wide v2, v14

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v7

    .line 569
    .local v7, lDateTime:J
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v7, v8}, Ljava/util/Date;-><init>(J)V

    .line 570
    .local v5, d:Ljava/util/Date;
    new-instance v6, Ljava/text/SimpleDateFormat;

    const-string/jumbo v13, "yyyyMMddHHmmss"

    invoke-direct {v6, v13}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 572
    .local v6, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v6, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 573
    const-string v13, "MapSMSProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Pre-split date :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/4 v15, 0x0

    const/16 v16, 0x8

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "T"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    const/16 v15, 0x8

    const/16 v16, 0xe

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 575
    const-string v13, "MapSMSProvider"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Post-split date :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v13, 0x0

    iput-byte v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 578
    const/4 v13, 0x1

    const/4 v14, 0x6

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v14

    if-ne v13, v14, :cond_5

    const/4 v13, 0x1

    :goto_1
    iput-boolean v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 579
    const/4 v13, 0x0

    iput-boolean v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 580
    const/4 v13, 0x0

    iput-boolean v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 581
    const/16 v13, 0xd

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move v1, v13

    move v2, v14

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v13

    iput-boolean v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 582
    const/4 v13, 0x0

    iput v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 584
    const/16 v13, 0xb

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object v0, v9

    move-object v1, v13

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 585
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v11

    .line 588
    .local v11, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v13, 0x3

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v12

    .line 589
    .local v12, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/4 v13, 0x2

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 591
    .local v4, address:Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 592
    invoke-static {v9, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 593
    invoke-static {v9, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 595
    :cond_0
    iput-object v4, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 596
    iput-object v4, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 599
    if-eqz v11, :cond_1

    .line 600
    invoke-static {v9, v11}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 602
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object v13, v0

    iput-object v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 604
    if-eqz p2, :cond_3

    .line 605
    const/16 v13, 0xb

    move-object/from16 v0, p1

    move v1, v13

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 606
    .local v10, msg:Ljava/lang/String;
    if-eqz v10, :cond_2

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_6

    :cond_2
    const/4 v13, 0x0

    :goto_2
    iput v13, v9, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 609
    .end local v10           #msg:Ljava/lang/String;
    :cond_3
    return-object v9

    .line 564
    .end local v4           #address:Ljava/lang/String;
    .end local v5           #d:Ljava/util/Date;
    .end local v6           #formatter:Ljava/text/SimpleDateFormat;
    .end local v7           #lDateTime:J
    .end local v11           #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v12           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_4
    const/4 v13, 0x2

    goto/16 :goto_0

    .line 578
    .restart local v5       #d:Ljava/util/Date;
    .restart local v6       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v7       #lDateTime:J
    :cond_5
    const/4 v13, 0x0

    goto :goto_1

    .line 606
    .restart local v4       #address:Ljava/lang/String;
    .restart local v10       #msg:Ljava/lang/String;
    .restart local v11       #ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .restart local v12       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_6
    invoke-virtual {v10}, Ljava/lang/String;->getBytes()[B

    move-result-object v13

    array-length v13, v13

    add-int/lit8 v13, v13, 0x16

    goto :goto_2
.end method

.method protected toMessageInfo(Landroid/database/Cursor;ZILjava/lang/String;Ljava/lang/String;I)Lcom/broadcom/bt/service/map/MessageInfo;
    .locals 21
    .parameter "c"
    .parameter "includeMessageSize"
    .parameter "parameterMask"
    .parameter "recipient"
    .parameter "originator"
    .parameter "maxSubjectLength"

    .prologue
    .line 615
    const/16 v17, 0x7

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v15

    .line 616
    .local v15, smsFolderType:I
    invoke-virtual/range {p0 .. p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getOwnerInfo()Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v12

    .line 619
    .local v12, ownerInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    new-instance v10, Lcom/broadcom/bt/service/map/MessageInfo;

    invoke-direct {v10}, Lcom/broadcom/bt/service/map/MessageInfo;-><init>()V

    .line 620
    .local v10, mInfo:Lcom/broadcom/bt/service/map/MessageInfo;
    const/16 v17, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgHandle:Ljava/lang/String;

    .line 622
    if-nez p3, :cond_a

    .line 624
    const/16 v17, 0x10ff

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    .line 635
    :goto_0
    invoke-static {v15}, Landroid/provider/Telephony$Sms;->isOutgoingFolder(I)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_b

    :cond_0
    const/16 v17, 0x1

    :goto_1
    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    .line 636
    move-object/from16 v0, p0

    iget v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mPhoneType:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    const/16 v17, 0x4

    :goto_2
    move/from16 v0, v17

    move-object v1, v10

    iput-byte v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgType:B

    .line 638
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mText:Z

    .line 640
    const/16 v17, 0x2

    const-wide/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getLong(Landroid/database/Cursor;IJ)J

    move-result-wide v8

    .line 641
    .local v8, lDateTime:J
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 642
    .local v6, d:Ljava/util/Date;
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v17, "yyyyMMddHHmmss"

    move-object v0, v7

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 644
    .local v7, formatter:Ljava/text/SimpleDateFormat;
    invoke-virtual {v7, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 645
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Pre-split date :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x8

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "T"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v18, v0

    const/16 v19, 0x8

    const/16 v20, 0xe

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    .line 647
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Post-split date :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mDateTime:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v10

    iput-byte v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mReceptionStatus:B

    .line 650
    const/16 v17, 0x1

    const/16 v18, 0x5

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_d

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsRead:Z

    .line 652
    const/16 v17, 0x2

    move v0, v15

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x5

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_e

    :cond_1
    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsSent:Z

    .line 653
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsHighPriority:Z

    .line 654
    const/16 v17, 0x3

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getBoolean(Landroid/database/Cursor;IZ)Z

    move-result v17

    move/from16 v0, v17

    move-object v1, v10

    iput-boolean v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mIsProtected:Z

    .line 655
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mAttachmentSize:I

    .line 657
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object v0, v10

    move-object/from16 v1, v17

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/broadcom/bt/service/map/MessageInfo;->setSubject(Ljava/lang/String;I)V

    .line 661
    move-object v0, v10

    iget-boolean v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mIsOutbound:Z

    move/from16 v17, v0

    if-eqz v17, :cond_11

    .line 662
    const-string v17, "MapSMSProvider"

    const-string/jumbo v18, "outbound message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    const/16 v17, 0x3

    move v0, v15

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    .line 667
    const/16 v17, 0x8

    const/16 v18, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getInt(Landroid/database/Cursor;II)I

    move-result v16

    .line 668
    .local v16, threadId:I
    if-lez v16, :cond_2

    .line 669
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getThreadRecipientAddresses(I)Ljava/util/List;

    move-result-object v5

    .line 670
    .local v5, addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v17

    if-lez v17, :cond_2

    .line 672
    const/16 v17, 0x0

    move-object v0, v5

    move/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    .end local p3
    check-cast p3, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 673
    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v13

    .line 674
    .local v13, pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    if-eqz v13, :cond_2

    .line 675
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 690
    .end local v5           #addresses:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v13           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local v16           #threadId:I
    :cond_2
    :goto_5
    if-eqz v12, :cond_3

    .line 691
    invoke-static {v10, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 692
    invoke-static {v10, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 694
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 695
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 727
    :goto_6
    if-eqz p2, :cond_5

    .line 728
    const/16 v17, 0x9

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 729
    .local v11, msg:Ljava/lang/String;
    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    if-nez v17, :cond_14

    :cond_4
    const/16 v17, 0x0

    :goto_7
    move/from16 v0, v17

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mMsgSize:I

    .line 734
    .end local v11           #msg:Ljava/lang/String;
    :cond_5
    if-eqz p4, :cond_7

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_7

    const-string v17, "*"

    move-object/from16 v0, p4

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_7

    .line 736
    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_6

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 738
    :cond_6
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "toMessageInfo: receipient matches filter"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    :cond_7
    :goto_8
    if-eqz v10, :cond_9

    if-eqz p5, :cond_9

    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_9

    const-string v17, "*"

    move-object/from16 v0, p5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    .line 746
    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_16

    .line 748
    :cond_8
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "toMessageInfo: sender matches filter"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_9
    :goto_9
    return-object v10

    .line 632
    .end local v6           #d:Ljava/util/Date;
    .end local v7           #formatter:Ljava/text/SimpleDateFormat;
    .end local v8           #lDateTime:J
    .restart local p3
    :cond_a
    move/from16 v0, p3

    move-object v1, v10

    iput v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mParameterMask:I

    goto/16 :goto_0

    .line 635
    :cond_b
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 636
    :cond_c
    const/16 v17, 0x2

    goto/16 :goto_2

    .line 650
    .restart local v6       #d:Ljava/util/Date;
    .restart local v7       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v8       #lDateTime:J
    :cond_d
    const/16 v17, 0x0

    goto/16 :goto_3

    .line 652
    :cond_e
    const/16 v17, 0x0

    goto/16 :goto_4

    .line 680
    :cond_f
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 681
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 682
    .local v14, personId:Ljava/lang/String;
    if-nez v14, :cond_10

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByPhoneNo(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v17

    move-object/from16 v13, v17

    .line 684
    .restart local v13       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :goto_a
    if-eqz v13, :cond_2

    .line 685
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    goto/16 :goto_5

    .line 682
    .end local v13           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    :cond_10
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v17

    move-object/from16 v13, v17

    goto :goto_a

    .line 700
    .end local v14           #personId:Ljava/lang/String;
    :cond_11
    const-string v17, "MapSMSProvider"

    const-string v18, "inbound message"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v17, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->getPersonInfoByContactId(Ljava/lang/String;)Lcom/broadcom/bt/service/map/provider/PersonInfo;

    move-result-object v13

    .line 702
    .restart local v13       #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    const/16 v17, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 704
    .local v4, address:Ljava/lang/String;
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "address: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    if-eqz v13, :cond_12

    .line 707
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgSenderNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 708
    invoke-static {v10, v13}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgReplyToNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 710
    :cond_12
    iput-object v4, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    .line 711
    iput-object v4, v10, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    .line 714
    if-eqz v12, :cond_13

    .line 715
    invoke-static {v10, v12}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->setMsgRecipientNameInfo(Lcom/broadcom/bt/service/map/MessageInfo;Lcom/broadcom/bt/service/map/provider/PersonInfo;)V

    .line 717
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->mOwnerPhoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v10

    iput-object v0, v1, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    .line 718
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Sender Name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Sender Addressing = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mSenderAddressing:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "ReplyTo Addressing = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mReplyToAddressing:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Recipient Addressing = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientRddressing:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v17, "MapSMSProvider"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Recipient Name = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object v0, v10

    iget-object v0, v0, Lcom/broadcom/bt/service/map/MessageInfo;->mRecipientName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 729
    .end local v4           #address:Ljava/lang/String;
    .end local v13           #pInfo:Lcom/broadcom/bt/service/map/provider/PersonInfo;
    .end local p3
    .restart local v11       #msg:Ljava/lang/String;
    :cond_14
    invoke-virtual {v11}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    add-int/lit8 v17, v17, 0x16

    goto/16 :goto_7

    .line 740
    .end local v11           #msg:Ljava/lang/String;
    :cond_15
    const/4 v10, 0x0

    goto/16 :goto_8

    .line 750
    :cond_16
    const/4 v10, 0x0

    goto/16 :goto_9
.end method

.method protected unregisterDatasources()V
    .locals 2

    .prologue
    .line 862
    const-string v0, "MapSMSProvider"

    const-string/jumbo v1, "unregisterDatasources"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {p0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->stopMSEInstance()V

    .line 865
    const-string v0, "SMS"

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/service/map/provider/sms/SmsProvider;->unregisterDS(Ljava/lang/String;)Z

    .line 866
    return-void
.end method
