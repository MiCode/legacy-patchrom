.class public final Landroid/provider/BTMapBrowseUtils;
.super Ljava/lang/Object;
.source "BTMapBrowseUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/BTMapBrowseUtils$MmsAttributes;,
        Landroid/provider/BTMapBrowseUtils$Message;,
        Landroid/provider/BTMapBrowseUtils$MessageListingParams;
    }
.end annotation


# static fields
.field public static ATTACHMENT_SIZE:B = 0x0t

.field private static final CANONICAL_ADDRESS_URI:Landroid/net/Uri; = null

.field private static final DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final EMAIL_FOLDER_NAME:I = 0x1

.field private static final EMAIL_FOLDER_PARENT:I = 0x2

.field private static final EMAIL_FOLDER_TYPE:I = 0x3

.field private static EM_BCC:I = 0x0

.field private static EM_CC:I = 0x0

.field private static EM_DOWNSTATUS:I = 0x0

.field private static EM_FROM:I = 0x0

.field private static EM_PRIORITY:I = 0x0

.field private static EM_RECVD:I = 0x0

.field private static EM_REPLYTO:I = 0x0

.field private static EM_SENT:I = 0x0

.field private static EM_STATUS:I = 0x0

.field private static EM_SUBJECT:I = 0x0

.field private static EM_SYNC:I = 0x0

.field private static EM_TO:I = 0x0

.field public static HANDLE:B = 0x0t

.field private static final INVALID:I = -0x1

.field private static final LOG_DEV:Z = true

.field private static MMS_DATE:I = 0x0

.field private static MMS_MESSAGETYPE:I = 0x0

.field private static MMS_PRIORITY:I = 0x0

.field private static MMS_PUSHED_VIA_MAP:Z = false

.field private static MMS_READ:I = 0x0

.field private static MMS_RESPONSESTATUS:I = 0x0

.field private static MMS_RETRIEVESTATUS:I = 0x0

.field private static MMS_STATUS:I = 0x0

.field private static MMS_SUBJECT:I = 0x0

.field private static MMS_SUBJECT_CHARSET:I = 0x0

.field private static MMS_TID:I = 0x0

.field public static final MSG:Ljava/lang/String; = "msg"

.field private static NO:Ljava/lang/String; = null

.field public static PRIORITY:B = 0x0t

.field public static PROTECTED_FIELD:B = 0x0t

.field public static READ:B = 0x0t

.field public static RECEPTION_STATUS:B = 0x0t

.field public static RECP_ADDRESS:B = 0x0t

.field public static RECP_NAME:B = 0x0t

.field public static REPLYTO_ADDRESS:B = 0x0t

.field public static SENDER_ADDRESS:B = 0x0t

.field public static SENDER_NAME:B = 0x0t

.field public static SENT:B = 0x0t

.field public static SIZE:B = 0x0t

.field private static SMS_ADDRESS:I = 0x0

.field private static SMS_BODY:I = 0x0

.field private static SMS_DATE:I = 0x0

.field private static SMS_PRIORITY:I = 0x0

.field private static SMS_READ:I = 0x0

.field private static SMS_STATUS:I = 0x0

.field private static SMS_TID:I = 0x0

.field public static SUBJECT:B = 0x0t

.field public static final TAG:Ljava/lang/String; = "BTMapBrowseUtils"

.field public static final TELECOM:Ljava/lang/String; = "telecom"

.field public static TEXT:B = 0x0t

.field private static THREADS_RECP:I = 0x0

.field public static TYPE:B = 0x0t

.field private static YES:Ljava/lang/String; = null

.field private static _ID:I = 0x0

.field private static final sACCOUNT_ID_NOT_SET:J = -0x1L

.field private static final sALLTHREADSURI:Landroid/net/Uri; = null

.field private static sDEFAULT_EMAIL_ACCOUNT:J = 0x0L

.field public static final sDELETEDFOLDER:Ljava/lang/String; = "deleted"

.field public static final sDRAFTSFOLDER:Ljava/lang/String; = "drafts"

.field private static sEMAILPROJ:[Ljava/lang/String; = null

.field public static final sFAILEDFOLDER:Ljava/lang/String; = "failed"

.field private static sFOLDERPROJ:[Ljava/lang/String; = null

.field public static final sINBOXFOLDER:Ljava/lang/String; = "inbox"

.field private static sMMSPROJECTION:[Ljava/lang/String; = null

.field public static final sOUTBOXFOLDER:Ljava/lang/String; = "outbox"

.field public static final sQUEUEDFOLDER:Ljava/lang/String; = "queued"

.field public static final sSENTFOLDER:Ljava/lang/String; = "sent"

.field private static sSMSPROJECTION:[Ljava/lang/String;

.field private static final sTHREADSPROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v0, "content://mms-sms/canonical-addresses"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sALLTHREADSURI:Landroid/net/Uri;

    sput v3, Landroid/provider/BTMapBrowseUtils;->THREADS_RECP:I

    sput-boolean v4, Landroid/provider/BTMapBrowseUtils;->MMS_PUSHED_VIA_MAP:Z

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "recipient_ids"

    aput-object v1, v0, v3

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sTHREADSPROJECTION:[Ljava/lang/String;

    sput v4, Landroid/provider/BTMapBrowseUtils;->_ID:I

    sput v3, Landroid/provider/BTMapBrowseUtils;->SMS_ADDRESS:I

    sput v5, Landroid/provider/BTMapBrowseUtils;->SMS_DATE:I

    sput v6, Landroid/provider/BTMapBrowseUtils;->SMS_READ:I

    sput v7, Landroid/provider/BTMapBrowseUtils;->SMS_STATUS:I

    const/4 v0, 0x5

    sput v0, Landroid/provider/BTMapBrowseUtils;->SMS_BODY:I

    const/4 v0, 0x6

    sput v0, Landroid/provider/BTMapBrowseUtils;->SMS_TID:I

    const/4 v0, 0x7

    sput v0, Landroid/provider/BTMapBrowseUtils;->SMS_PRIORITY:I

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "read"

    aput-object v1, v0, v6

    const-string v1, "status"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "body"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "thread_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "priority"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sSMSPROJECTION:[Ljava/lang/String;

    sput v3, Landroid/provider/BTMapBrowseUtils;->MMS_TID:I

    sput v5, Landroid/provider/BTMapBrowseUtils;->MMS_DATE:I

    sput v6, Landroid/provider/BTMapBrowseUtils;->MMS_PRIORITY:I

    sput v7, Landroid/provider/BTMapBrowseUtils;->MMS_SUBJECT:I

    const/4 v0, 0x5

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_READ:I

    const/4 v0, 0x6

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_STATUS:I

    const/4 v0, 0x7

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_RETRIEVESTATUS:I

    const/16 v0, 0x8

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_RESPONSESTATUS:I

    const/16 v0, 0x9

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_MESSAGETYPE:I

    const/16 v0, 0xa

    sput v0, Landroid/provider/BTMapBrowseUtils;->MMS_SUBJECT_CHARSET:I

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v5

    const-string v1, "pri"

    aput-object v1, v0, v6

    const-string v1, "sub"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "st"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "retr_st"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "resp_st"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "m_type"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sMMSPROJECTION:[Ljava/lang/String;

    const-wide/16 v0, -0x1

    sput-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "name"

    aput-object v1, v0, v3

    const-string v1, "parent_id"

    aput-object v1, v0, v5

    const-string v1, "folder_type"

    aput-object v1, v0, v6

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    sput v3, Landroid/provider/BTMapBrowseUtils;->EM_BCC:I

    sput v5, Landroid/provider/BTMapBrowseUtils;->EM_CC:I

    sput v6, Landroid/provider/BTMapBrowseUtils;->EM_RECVD:I

    sput v7, Landroid/provider/BTMapBrowseUtils;->EM_SENT:I

    const/4 v0, 0x5

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_DOWNSTATUS:I

    const/4 v0, 0x6

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_FROM:I

    const/4 v0, 0x7

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_PRIORITY:I

    const/16 v0, 0x8

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_REPLYTO:I

    const/16 v0, 0x9

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_STATUS:I

    const/16 v0, 0xa

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_SUBJECT:I

    const/16 v0, 0xb

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_TO:I

    const/16 v0, 0xc

    sput v0, Landroid/provider/BTMapBrowseUtils;->EM_SYNC:I

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "bcc"

    aput-object v1, v0, v3

    const-string v1, "cc"

    aput-object v1, v0, v5

    const-string v1, "date_received"

    aput-object v1, v0, v6

    const-string v1, "date_sent"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "download_status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "_from"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "priority"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "reply_to"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "_to"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sync_status"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->sEMAILPROJ:[Ljava/lang/String;

    sput-byte v4, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    sput-byte v3, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    sput-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_NAME:B

    sput-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    sput-byte v7, Landroid/provider/BTMapBrowseUtils;->RECP_NAME:B

    const/4 v0, 0x5

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    const/4 v0, 0x6

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    const/4 v0, 0x7

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    const/16 v0, 0x8

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const/16 v0, 0x9

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    const/16 v0, 0xa

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const/16 v0, 0xb

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    const/16 v0, 0xc

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->READ:B

    const/16 v0, 0xd

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->SENT:B

    const/16 v0, 0xe

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    const/16 v0, 0xf

    sput-byte v0, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    const-string v0, "yes"

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    const-string v0, "no"

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    sput-object v0, Landroid/provider/BTMapBrowseUtils;->DRAFT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodeAddresses(Ljava/util/List;)[Lcom/google/android/mms/pdu/EncodedStringValue;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Lcom/google/android/mms/pdu/EncodedStringValue;"
        }
    .end annotation

    .prologue
    .local p0, array:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, count:I
    if-lez v0, :cond_1

    new-array v1, v0, [Lcom/google/android/mms/pdu/EncodedStringValue;

    .local v1, encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_0

    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object v3, v1

    .end local v1           #encodedArray:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v2           #i:I
    :goto_1
    return-object v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 10
    .parameter "context"
    .parameter "thread_id"
    .parameter "threadsCursor"
    .parameter "recpCursor"

    .prologue
    const/4 v8, 0x0

    const-wide/16 v5, 0x0

    .local v5, tid:J
    const/4 v4, 0x0

    .local v4, recps:Ljava/lang/String;
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_2

    :goto_0
    invoke-interface {p3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_0

    sget v7, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v7, v5, p1

    if-nez v7, :cond_1

    sget v7, Landroid/provider/BTMapBrowseUtils;->THREADS_RECP:I

    invoke-interface {p3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    cmp-long v7, v5, p1

    if-eqz v7, :cond_2

    move-object v7, v8

    :goto_1
    return-object v7

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    :cond_2
    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .local v3, recp_ids:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .local v0, addr_builder:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, j:I
    :goto_2
    array-length v7, v3

    if-ge v1, v7, :cond_3

    aget-object v7, v3, v1

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    invoke-interface {p4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_8

    :goto_3
    invoke-interface {p4}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v7

    if-nez v7, :cond_7

    const/4 v2, 0x0

    .local v2, k:I
    :goto_4
    array-length v7, v3

    if-ge v2, v7, :cond_6

    aget-object v7, v3, v2

    sget v8, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {p4, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    invoke-interface {p4, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v3, v2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-nez v7, :cond_5

    aget-object v7, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    aget-object v7, v3, v2

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/16 v8, 0x3b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_6
    invoke-interface {p4}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_3

    .end local v2           #k:I
    :cond_7
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_8
    move-object v7, v8

    goto :goto_1
.end method

.method public static getAndSetDefaultEmailAccount(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    .local v6, account_id:J
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAndSetDefaultEmailAccount, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/provider/BTMapBrowseUtils;->isEmailAccountSet()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.motorola.blur.setupprovider/app_settings"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "value"

    aput-object v3, v2, v5

    const-string v3, "name = \'com.motorola.blur.email.pref_default_email_account\'"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_2

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v6

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    invoke-static {v6, v7}, Landroid/provider/BTMapBrowseUtils;->setDefaultEmailAccount(J)V

    move-wide v0, v6

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getEmailMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 30
    .parameter "context"
    .parameter "path"
    .parameter "params"

    .prologue
    const/4 v12, 0x0

    .local v12, list_size:I
    const/16 v18, 0x0

    .local v18, msg_size:I
    invoke-static/range {p1 .. p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v20

    .local v20, parent:J
    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .end local p0
    :goto_0
    return-object v4

    .restart local p0
    :cond_0
    const/4 v11, 0x1

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p2

    array-length v0, v0

    move v4, v0

    if-ge v11, v4, :cond_2

    aget-object v4, p2, v11

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    move-object v3, v4

    invoke-static {v0, v1, v2, v3}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v20

    const-wide/16 v4, -0x1

    cmp-long v4, v20, v4

    if-nez v4, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parent_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "account_id"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-wide v5, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, selection:Ljava/lang/String;
    const-string v4, "EMAIL"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .local v27, temp_string:Ljava/lang/String;
    if-eqz v27, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_3
    const-string v4, "date_received"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    if-eqz v27, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " AND ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "date_sent"

    move-object/from16 v0, p3

    move-object v1, v4

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OR "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_4
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "query : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->sEMAILPROJ:[Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "date_received DESC, modified DESC"

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    .local v17, msgListCursor:Landroid/database/Cursor;
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "msgs : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v17, :cond_14

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-nez v12, :cond_5

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .local v14, messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    const/4 v11, 0x0

    :goto_2
    if-ge v11, v12, :cond_13

    const-wide/16 v15, 0x0

    .local v15, msgId:J
    const/16 v24, 0x0

    .local v24, skip:Z
    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_STATUS:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    and-int/lit8 v26, v4, 0x4

    .local v26, temp_int:I
    invoke-virtual/range {p3 .. p3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->readStatusFilter()I

    move-result v22

    .local v22, readStatusFilter:I
    const/4 v4, 0x1

    move/from16 v0, v22

    move v1, v4

    if-ne v0, v1, :cond_6

    if-gtz v26, :cond_b

    :cond_6
    const/4 v4, 0x1

    move/from16 v0, v22

    move v1, v4

    if-ne v0, v1, :cond_7

    if-gtz v26, :cond_b

    :cond_7
    new-instance v13, Landroid/provider/BTMapBrowseUtils$Message;

    move-object v0, v13

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/provider/BTMapBrowseUtils$Message;-><init>(Landroid/provider/BTMapBrowseUtils;)V

    .local v13, message:Landroid/provider/BTMapBrowseUtils$Message;
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "message : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v26, :cond_c

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_3
    sget v4, Landroid/provider/BTMapBrowseUtils;->_ID:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    const-string v5, "EMAIL"

    move-wide v0, v15

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_SUBJECT:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .local v25, subject:Ljava/lang/String;
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handle : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide v1, v15

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "Subject : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v25 .. v25}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x100

    if-gt v4, v5, :cond_d

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    move-object v0, v13

    move v1, v4

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_4
    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_SENT:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setDateTime(J)V

    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_FROM:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .local v10, from:Ljava/lang/String;
    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_REPLYTO:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .local v23, replyTo:Ljava/lang/String;
    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_TO:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    .local v29, toFromDb:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/provider/BTMapBrowseUtils;->EM_CC:I

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Landroid/provider/BTMapBrowseUtils;->EM_BCC:I

    move-object/from16 v0, v17

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, ","

    move-object/from16 v0, v29

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v28

    .local v28, to:[Ljava/lang/String;
    const/4 v4, 0x2

    move v0, v4

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    .local v19, namesAndEmails:[Ljava/lang/String;
    if-eqz v10, :cond_8

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v10, v4, v5

    invoke-static {v4}, Landroid/provider/BTMapBrowseUtils;->getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SENDER_NAME:B

    const/4 v5, 0x1

    aget-object v5, v19, v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :cond_8
    if-eqz v28, :cond_9

    invoke-static/range {v28 .. v28}, Landroid/provider/BTMapBrowseUtils;->getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->RECP_NAME:B

    const/4 v5, 0x1

    aget-object v5, v19, v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :cond_9
    if-eqz v23, :cond_a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v23, v4, v5

    invoke-static {v4}, Landroid/provider/BTMapBrowseUtils;->getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v19

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    const/4 v5, 0x0

    aget-object v5, v19, v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :cond_a
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sender address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    invoke-virtual {v13, v6}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nsender names : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_NAME:B

    invoke-virtual {v13, v6}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nrecp address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    invoke-virtual {v13, v6}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nrecp names : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECP_NAME:B

    invoke-virtual {v13, v6}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\nreply to addr : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    invoke-virtual {v13, v6}, Landroid/provider/BTMapBrowseUtils$Message;->getField(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    const-string v5, "EMAIL"

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_SYNC:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getFolderTypeFromId(Landroid/content/Context;J)J

    move-result-wide v4

    const-wide/16 v6, 0x6

    cmp-long v4, v4, v6

    if-nez v4, :cond_f

    if-nez v26, :cond_f

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v5, "complete"

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getEmailTextSize(Landroid/content/Context;J)I

    move-result v18

    :goto_5
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const-string v5, "0"

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "size : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v18, :cond_11

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_6
    sget v4, Landroid/provider/BTMapBrowseUtils;->EM_PRIORITY:I

    move-object/from16 v0, v17

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/4 v4, 0x3

    move/from16 v0, v26

    move v1, v4

    if-le v0, v1, :cond_12

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_7
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Email : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " done"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v10           #from:Ljava/lang/String;
    .end local v13           #message:Landroid/provider/BTMapBrowseUtils$Message;
    .end local v19           #namesAndEmails:[Ljava/lang/String;
    .end local v23           #replyTo:Ljava/lang/String;
    .end local v25           #subject:Ljava/lang/String;
    .end local v28           #to:[Ljava/lang/String;
    .end local v29           #toFromDb:Ljava/lang/String;
    :cond_b
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_2

    .restart local v13       #message:Landroid/provider/BTMapBrowseUtils$Message;
    :cond_c
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_3

    .restart local v25       #subject:Ljava/lang/String;
    :cond_d
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const/4 v5, 0x0

    const/16 v6, 0xff

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_e
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const-string v5, ""

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .restart local v10       #from:Ljava/lang/String;
    .restart local v19       #namesAndEmails:[Ljava/lang/String;
    .restart local v23       #replyTo:Ljava/lang/String;
    .restart local v28       #to:[Ljava/lang/String;
    .restart local v29       #toFromDb:Ljava/lang/String;
    :cond_f
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    if-nez v26, :cond_10

    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v5, "complete"

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    move-object/from16 v0, p1

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getEmailTextSize(Landroid/content/Context;J)I

    move-result v18

    goto/16 :goto_5

    :cond_10
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v5, "notification"

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_12
    sget-byte v4, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v5, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_7

    .end local v10           #from:Ljava/lang/String;
    .end local v13           #message:Landroid/provider/BTMapBrowseUtils$Message;
    .end local v15           #msgId:J
    .end local v19           #namesAndEmails:[Ljava/lang/String;
    .end local v22           #readStatusFilter:I
    .end local v23           #replyTo:Ljava/lang/String;
    .end local v24           #skip:Z
    .end local v25           #subject:Ljava/lang/String;
    .end local v26           #temp_int:I
    .end local v28           #to:[Ljava/lang/String;
    .end local v29           #toFromDb:Ljava/lang/String;
    :cond_13
    const-string v4, "BTMapBrowseUtils"

    const-string v5, "Emails done"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/provider/BTMapBrowseUtils$Message;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v4, p0

    goto/16 :goto_0

    .end local v14           #messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    .restart local p0
    :cond_14
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method private static getEmailTextSize(Landroid/content/Context;J)I
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    const/4 v7, -0x1

    .local v7, size:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "message_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "content_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'text/plain%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$BodyParts;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v8, "size"

    aput-object v8, v2, v5

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return v7
.end method

.method public static getFolderFromMessageId(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v7, -0x1

    .local v7, fid:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "parent_id"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v7
.end method

.method private static getFolderId(Landroid/content/Context;JLjava/lang/String;)J
    .locals 11
    .parameter "context"
    .parameter "parent"
    .parameter "name"

    .prologue
    const-string v5, " AND "

    const-string v4, " = "

    const-wide/16 v7, -0x1

    .local v7, id:J
    const-wide/16 v9, 0xff

    .local v9, type:J
    invoke-static {p0}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/provider/BTMapBrowseUtils;->getFolderTypeFromName(Ljava/lang/String;)J

    move-result-wide v9

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "folder_type"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .local v3, selection:Ljava/lang/String;
    const-wide/16 v0, 0xff

    cmp-long v0, v9, v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " AND name LIKE "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_2

    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-wide v7
.end method

.method private static getFolderListing(Landroid/content/Context;J)Ljava/util/ArrayList;
    .locals 13
    .parameter "context"
    .parameter "parent"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    new-instance v3, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "account_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v1, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "parent_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .local v3, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_4

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .end local p0
    .local v7, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .local v11, type:J
    const-wide/16 v0, 0xff

    cmp-long v0, v11, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .local v9, name:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    .local v10, size:I
    if-lez v10, :cond_2

    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    if-ge v8, v10, :cond_0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v8, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "folder : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "added at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #i:I
    .end local v9           #name:Ljava/lang/String;
    .end local v10           #size:I
    :cond_0
    :goto_2
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_0

    .restart local v8       #i:I
    .restart local v9       #name:Ljava/lang/String;
    .restart local v10       #size:I
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .end local v8           #i:I
    :cond_2
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .end local v9           #name:Ljava/lang/String;
    .end local v10           #size:I
    .end local v11           #type:J
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v0, v7

    .end local v7           #folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_3
    return-object v0

    .restart local p0
    :cond_4
    move-object v0, v4

    goto :goto_3
.end method

.method private static getFolderNameFromId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v7, 0x0

    .local v7, name:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v7
.end method

.method public static getFolderPathForFolder(Landroid/content/Context;J)Ljava/lang/String;
    .locals 8
    .parameter "context"
    .parameter "folder_id"

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v0, 0x0

    .local v0, folder_type:J
    const/4 v2, 0x0

    .local v2, name:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, path:Ljava/lang/String;
    :cond_0
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getFolderTypeFromId(Landroid/content/Context;J)J

    move-result-wide v0

    cmp-long v4, v0, v6

    if-nez v4, :cond_2

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getFolderNameFromId(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    :cond_3
    :goto_1
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getParentFolder(Landroid/content/Context;J)J

    move-result-wide p1

    cmp-long v4, v0, v6

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method public static getFolderPathFromMessageId(Landroid/content/Context;J)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    const-wide/16 v0, 0x0

    .local v0, folder_id:J
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapBrowseUtils;->getFolderFromMessageId(Landroid/content/Context;J)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Landroid/provider/BTMapBrowseUtils;->getFolderPathForFolder(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFolderTypeFromId(Landroid/content/Context;J)J
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const-wide/16 v7, -0x1

    .local v7, type:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v7
.end method

.method private static getFolderTypeFromName(Ljava/lang/String;)J
    .locals 3
    .parameter "name"

    .prologue
    const-wide/16 v0, 0xff

    .local v0, type:J
    const-string v2, "inbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x4

    :cond_0
    :goto_0
    return-wide v0

    :cond_1
    const-string v2, "outbox"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v0, 0x5

    goto :goto_0

    :cond_2
    const-string v2, "sent"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-wide/16 v0, 0x6

    goto :goto_0

    :cond_3
    const-string v2, "drafts"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-wide/16 v0, 0x3

    goto :goto_0

    :cond_4
    const-string v2, "deleted"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x2

    goto :goto_0
.end method

.method private getMessageBody(Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)Ljava/lang/String;
    .locals 7
    .parameter "charset"
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    const-string v6, "BTMapBrowseUtils"

    const/4 v2, 0x0

    .local v2, text:Ljava/lang/String;
    const-string v3, "BTMapBrowseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMessageBody: charset = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "native"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x0

    .local v0, msg:Landroid/telephony/SmsMessage;
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageType()I

    move-result v1

    .local v1, msgType:I
    if-nez v1, :cond_1

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyDataBytes()[[B

    move-result-object v4

    invoke-static {v3, v4}, Lcom/motorola/android/bmessage/SmsUtils;->newFromTLPDU(I[[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    const-string v3, "BTMapBrowseUtils"

    const-string v3, "SmsUtils.newFromTLPDU returned null"

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/String;

    .end local v2           #text:Ljava/lang/String;
    const-string v3, ""

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .end local v0           #msg:Landroid/telephony/SmsMessage;
    .end local v1           #msgType:I
    .restart local v2       #text:Ljava/lang/String;
    :goto_1
    return-object v2

    .restart local v0       #msg:Landroid/telephony/SmsMessage;
    .restart local v1       #msgType:I
    :cond_1
    if-ne v1, v5, :cond_0

    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyDataBytes()[[B

    move-result-object v3

    invoke-static {v5, v3}, Lcom/motorola/android/bmessage/SmsUtils;->newFromTLPDU(I[[B)Landroid/telephony/SmsMessage;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .end local v0           #msg:Landroid/telephony/SmsMessage;
    .end local v1           #msgType:I
    :cond_3
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getMmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 38
    .parameter "context"
    .parameter "folder"
    .parameter "params"

    .prologue
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .local v8, selection:Ljava/lang/String;
    const/16 v33, 0x0

    .local v33, temp_string:Ljava/lang/String;
    const/16 v17, 0x0

    .local v17, list_size:I
    const/16 v25, 0x0

    .local v25, msg_size:I
    const-string v5, "inbox"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v8, "msg_box = 1"

    :goto_0
    const-string v5, "MMS"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForPriority(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForReadStatus()Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v5, "date"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    if-eqz v33, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->sMMSPROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v22

    .local v22, msgListCursor:Landroid/database/Cursor;
    if-eqz v22, :cond_15

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->sALLTHREADSURI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/BTMapBrowseUtils;->sTHREADSPROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v37

    .local v37, threadsCursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v29

    .local v29, recpCursor:Landroid/database/Cursor;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " threads : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " recipients : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->getCount()I

    move-result v17

    if-nez v17, :cond_7

    const/4 v5, 0x0

    .end local v22           #msgListCursor:Landroid/database/Cursor;
    .end local v29           #recpCursor:Landroid/database/Cursor;
    .end local v37           #threadsCursor:Landroid/database/Cursor;
    .end local p0
    :goto_1
    return-object v5

    .restart local p0
    :cond_3
    const-string v5, "outbox"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v8, "msg_box = 4"

    goto/16 :goto_0

    :cond_4
    const-string v5, "sent"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v8, "msg_box = 2"

    goto/16 :goto_0

    :cond_5
    const-string v5, "drafts"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v8, "msg_box = 3"

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .restart local v22       #msgListCursor:Landroid/database/Cursor;
    .restart local v29       #recpCursor:Landroid/database/Cursor;
    .restart local v37       #threadsCursor:Landroid/database/Cursor;
    :cond_7
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .local v19, messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    const/16 v16, 0x0

    .local v16, i:I
    :goto_2
    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_14

    const-wide/16 v35, 0x0

    .local v35, thread_id:J
    const-wide/16 v20, 0x0

    .local v20, msgId:J
    const/16 v32, 0x0

    .local v32, temp_int:I
    const/16 v30, 0x0

    .local v30, skip:Z
    new-instance v18, Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/provider/BTMapBrowseUtils$Message;-><init>(Landroid/provider/BTMapBrowseUtils;)V

    .local v18, message:Landroid/provider/BTMapBrowseUtils$Message;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget v5, Landroid/provider/BTMapBrowseUtils;->_ID:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    const-string v6, "MMS"

    move-wide/from16 v0, v20

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_SUBJECT:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v31

    .local v31, subject:Ljava/lang/String;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handle : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "Subject : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v31 .. v31}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    add-int v25, v25, v5

    invoke-virtual/range {v31 .. v31}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_9

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_3
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_DATE:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    move-object/from16 v0, v18

    move-wide v1, v5

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setDateTime(J)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v26

    .local v26, myNumber:Ljava/lang/String;
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_TID:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v35

    move-object/from16 v0, p1

    move-wide/from16 v1, v35

    move-object/from16 v3, v37

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v27

    .local v27, otherNumber:Ljava/lang/String;
    invoke-static/range {v26 .. v26}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->REPLYTO_ADDRESS:B

    const/4 v6, 0x0

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    const-string v5, "inbox"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_4
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numbers : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    const-string v6, "MMS"

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-object v5, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v5

    move-wide/from16 v1, v20

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v24

    .local v24, msgUri:Landroid/net/Uri;
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_RESPONSESTATUS:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v5, 0x80

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_c

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_5
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_PRIORITY:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v5, 0x81

    move/from16 v0, v32

    move v1, v5

    if-le v0, v1, :cond_d

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_6
    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_READ:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/4 v5, 0x1

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_e

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_7
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget v5, Landroid/provider/BTMapBrowseUtils;->MMS_MESSAGETYPE:I

    move-object/from16 v0, v22

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    const/16 v5, 0x82

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_f

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v6, "notification"

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_8
    if-lez v25, :cond_13

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_9
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const-string v6, "0"

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v30, :cond_8

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_2

    .end local v24           #msgUri:Landroid/net/Uri;
    .end local v26           #myNumber:Ljava/lang/String;
    .end local v27           #otherNumber:Ljava/lang/String;
    :cond_9
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const/4 v6, 0x0

    const/16 v7, 0xff

    move-object/from16 v0, v31

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const-string v6, ""

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_3

    .restart local v26       #myNumber:Ljava/lang/String;
    .restart local v27       #otherNumber:Ljava/lang/String;
    :cond_b
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object/from16 v0, v18

    move v1, v5

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    .restart local v24       #msgUri:Landroid/net/Uri;
    :cond_c
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_d
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_e
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_f
    const/16 v5, 0x84

    move/from16 v0, v32

    move v1, v5

    if-eq v0, v1, :cond_10

    const/16 v5, 0x80

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_12

    :cond_10
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v28

    .local v28, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, v28

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v23

    check-cast v23, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .local v23, msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils;->getMmsText(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)Ljava/lang/String;

    move-result-object v34

    .local v34, text:Ljava/lang/String;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MMS Text : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {v34 .. v34}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    invoke-virtual/range {v34 .. v34}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    add-int v25, v25, v5

    :cond_11
    const/16 v30, 0x0

    .end local v23           #msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    .end local v28           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v34           #text:Ljava/lang/String;
    :goto_a
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v6, "complete"

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_8

    :catch_0
    move-exception v5

    move-object v15, v5

    .local v15, e:Lcom/google/android/mms/MmsException;
    const-string v5, "BTMapBrowseUtils"

    const-string v6, "Unknown type of the message:"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .end local v15           #e:Lcom/google/android/mms/MmsException;
    :cond_12
    const/16 v30, 0x1

    goto/16 :goto_8

    :cond_13
    sget-byte v5, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    move-object/from16 v0, v18

    move v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_9

    .end local v18           #message:Landroid/provider/BTMapBrowseUtils$Message;
    .end local v20           #msgId:J
    .end local v24           #msgUri:Landroid/net/Uri;
    .end local v26           #myNumber:Ljava/lang/String;
    .end local v27           #otherNumber:Ljava/lang/String;
    .end local v30           #skip:Z
    .end local v31           #subject:Ljava/lang/String;
    .end local v32           #temp_int:I
    .end local v35           #thread_id:J
    :cond_14
    const-string v5, "BTMapBrowseUtils"

    const-string v6, "MMS done"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v22 .. v22}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v37 .. v37}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v29 .. v29}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v0, v19

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v5, p0

    goto/16 :goto_1

    .end local v16           #i:I
    .end local v19           #messageListing:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/provider/BTMapBrowseUtils$Message;>;"
    .end local v29           #recpCursor:Landroid/database/Cursor;
    .end local v37           #threadsCursor:Landroid/database/Cursor;
    .restart local p0
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private static getNamesAndAddresses([Ljava/lang/String;)[Ljava/lang/String;
    .locals 12
    .parameter "addresses"

    .prologue
    const/4 v9, 0x0

    const-string v11, ">"

    const-string v10, ";"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .local v1, concatAddr:Ljava/lang/StringBuilder;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .local v2, concatName:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v7, p0

    if-ge v3, v7, :cond_8

    const/4 v0, 0x0

    .local v0, addr:Ljava/lang/String;
    const/4 v5, 0x0

    .local v5, name:Ljava/lang/String;
    aget-object v7, p0, v3

    invoke-static {v7}, Landroid/provider/BTMapBrowseUtils;->isEmailAddressFromRegex(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    aget-object v0, p0, v3

    :cond_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, ";"

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, ";"

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    aget-object v7, p0, v3

    const-string v8, "<"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .local v6, temp:[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, j:I
    :goto_1
    array-length v7, v6

    if-ge v4, v7, :cond_0

    aget-object v7, v6, v4

    const-string v8, ">"

    invoke-virtual {v7, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    aget-object v7, v6, v4

    const-string v8, ">"

    invoke-virtual {v7, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v9

    aput-object v7, v6, v4

    aget-object v7, v6, v4

    invoke-static {v7}, Landroid/provider/BTMapBrowseUtils;->isEmailAddressFromRegex(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v0, v6, v4

    :cond_6
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    aget-object v5, v6, v4

    goto :goto_2

    .end local v0           #addr:Ljava/lang/String;
    .end local v4           #j:I
    .end local v5           #name:Ljava/lang/String;
    .end local v6           #temp:[Ljava/lang/String;
    :cond_8
    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v9

    const/4 v8, 0x1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    return-object v7
.end method

.method public static getParentFolder(Landroid/content/Context;J)J
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v9, 0x0

    const/4 v3, 0x0

    const-wide/16 v7, -0x1

    .local v7, pid:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v4, "parent_id"

    aput-object v4, v2, v9

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v7
.end method

.method private static getPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "key"

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getReportingEmailAccount()J
    .locals 2

    .prologue
    sget-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    return-wide v0
.end method

.method private static getRootFolderId(Landroid/content/Context;)J
    .locals 9
    .parameter "context"

    .prologue
    const-wide/16 v7, -0x1

    .local v7, id:J
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "account_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "folder_type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-wide v7
.end method

.method private getSmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 28
    .parameter "context"
    .parameter "folder"
    .parameter "params"

    .prologue
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8}, Ljava/lang/String;-><init>()V

    .local v8, selection:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, temp_string:Ljava/lang/String;
    const/16 v16, 0x0

    .local v16, list_size:I
    const-string v5, "inbox"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v8, "type = 1"

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterForReadStatus()Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    const-string v5, "date"

    move-object/from16 v0, p3

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils$MessageListingParams;->getFilterPeriod(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-eqz v23, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v8, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "query string : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->sSMSPROJECTION:[Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "date DESC"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .local v18, msgListCursor:Landroid/database/Cursor;
    if-eqz v18, :cond_f

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->sALLTHREADSURI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/BTMapBrowseUtils;->sTHREADSPROJECTION:[Ljava/lang/String;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v27

    .local v27, threadsCursor:Landroid/database/Cursor;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/BTMapBrowseUtils;->CANONICAL_ADDRESS_URI:Landroid/net/Uri;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .local v21, recpCursor:Landroid/database/Cursor;
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "msgs : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " threads : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " recipients : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->getCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v16

    if-nez v16, :cond_8

    const/4 v5, 0x0

    .end local v18           #msgListCursor:Landroid/database/Cursor;
    .end local v21           #recpCursor:Landroid/database/Cursor;
    .end local v27           #threadsCursor:Landroid/database/Cursor;
    :goto_1
    return-object v5

    :cond_2
    const-string v5, "outbox"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v8, "type = 4"

    goto/16 :goto_0

    :cond_3
    const-string v5, "sent"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v8, "type = 2"

    goto/16 :goto_0

    :cond_4
    const-string v5, "failed"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v8, "type = 5"

    goto/16 :goto_0

    :cond_5
    const-string v5, "queued"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    const-string v8, "type = 6"

    goto/16 :goto_0

    :cond_6
    const-string v5, "drafts"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v8, "type = 3"

    goto/16 :goto_0

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .restart local v18       #msgListCursor:Landroid/database/Cursor;
    .restart local v21       #recpCursor:Landroid/database/Cursor;
    .restart local v27       #threadsCursor:Landroid/database/Cursor;
    :cond_8
    move/from16 v0, v16

    new-array v0, v0, [Landroid/provider/BTMapBrowseUtils$Message;

    move-object/from16 v17, v0

    .local v17, messageListing:[Landroid/provider/BTMapBrowseUtils$Message;
    const/4 v15, 0x0

    .local v15, i:I
    :goto_2
    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x0

    .local v22, temp_int:I
    new-instance v5, Landroid/provider/BTMapBrowseUtils$Message;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/provider/BTMapBrowseUtils$Message;-><init>(Landroid/provider/BTMapBrowseUtils;)V

    aput-object v5, v17, v15

    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_BODY:I

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .local v24, text:Ljava/lang/String;
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->HANDLE:B

    sget v7, Landroid/provider/BTMapBrowseUtils;->_ID:I

    move-object/from16 v0, v18

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v10, v7}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_TID:I

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v25

    .local v25, thread_id:J
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->TEXT:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    aget-object v5, v17, v15

    sget v6, Landroid/provider/BTMapBrowseUtils;->SMS_DATE:I

    move-object/from16 v0, v18

    move v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setDateTime(J)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v19

    .local v19, myNumber:Ljava/lang/String;
    move-object/from16 v0, p1

    move-wide/from16 v1, v25

    move-object/from16 v3, v27

    move-object/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getAddresses(Landroid/content/Context;JLandroid/database/Cursor;Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v20

    .local v20, otherNumber:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v20 .. v20}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const-string v5, "inbox"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_3
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "numbers : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->TYPE:B

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SIZE:B

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->ATTACHMENT_SIZE:B

    const-string v7, "0"

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_STATUS:I

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-nez v22, :cond_a

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_4
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_PRIORITY:I

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    if-lez v22, :cond_b

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_5
    sget v5, Landroid/provider/BTMapBrowseUtils;->SMS_READ:I

    move-object/from16 v0, v18

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    const/4 v5, 0x1

    move/from16 v0, v22

    move v1, v5

    if-ne v0, v1, :cond_c

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->YES:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_6
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->PROTECTED_FIELD:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECEPTION_STATUS:B

    const-string v7, "complete"

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x100

    if-gt v5, v6, :cond_d

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    :goto_7
    const-string v5, "BTMapBrowseUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "message : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " done"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_2

    :cond_9
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENDER_ADDRESS:B

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->RECP_ADDRESS:B

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_a
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SENT:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_4

    :cond_b
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->PRIORITY:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_5

    :cond_c
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->READ:B

    sget-object v7, Landroid/provider/BTMapBrowseUtils;->NO:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    aget-object v5, v17, v15

    sget-byte v6, Landroid/provider/BTMapBrowseUtils;->SUBJECT:B

    const/4 v7, 0x0

    const/16 v9, 0xff

    move-object/from16 v0, v24

    move v1, v7

    move v2, v9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/provider/BTMapBrowseUtils$Message;->setField(ILjava/lang/String;)V

    goto :goto_7

    .end local v19           #myNumber:Ljava/lang/String;
    .end local v20           #otherNumber:Ljava/lang/String;
    .end local v22           #temp_int:I
    .end local v24           #text:Ljava/lang/String;
    .end local v25           #thread_id:J
    :cond_e
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v27 .. v27}, Landroid/database/Cursor;->close()V

    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    move-object/from16 v5, v17

    goto/16 :goto_1

    .end local v15           #i:I
    .end local v17           #messageListing:[Landroid/provider/BTMapBrowseUtils$Message;
    .end local v21           #recpCursor:Landroid/database/Cursor;
    .end local v27           #threadsCursor:Landroid/database/Cursor;
    :cond_f
    const/4 v5, 0x0

    goto/16 :goto_1
.end method

.method private isDraftMessageOnThread(Landroid/content/Context;J)Z
    .locals 18
    .parameter "context"
    .parameter "threadId"

    .prologue
    const/16 v17, 0x0

    .local v17, smsDraftCursor:Landroid/database/Cursor;
    const/16 v16, 0x0

    .local v16, mmsDraftCursor:Landroid/database/Cursor;
    const/4 v15, 0x0

    .local v15, isDraftMessageOnThread:Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .local v7, smsSelection:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Landroid/provider/BTMapBrowseUtils;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v9}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v17

    if-eqz v17, :cond_1

    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v15, 0x1

    :cond_0
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    :cond_1
    if-eqz v15, :cond_2

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v0, v3

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .local v12, mmsSelection:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    sget-object v10, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    sget-object v11, Landroid/provider/BTMapBrowseUtils;->DRAFT_PROJECTION:[Ljava/lang/String;

    const/4 v13, 0x0

    const-string v14, "date DESC"

    move-object/from16 v8, p1

    invoke-static/range {v8 .. v14}, Lcom/google/android/mms/util/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    if-eqz v16, :cond_4

    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    const/4 v15, 0x1

    :cond_3
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_4
    move v3, v15

    goto :goto_0
.end method

.method private static isEmailAccountSet()Z
    .locals 4

    .prologue
    sget-wide v0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isEmailAddressFromRegex(Ljava/lang/String;)Z
    .locals 1
    .parameter "str"

    .prologue
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    goto :goto_0
.end method

.method public static isEmailDeletedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "pref_key_btmap_email_del"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isEmailPushedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "pref_key_btmap_email_push"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMmsDeletedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "pref_key_btmap_mms_del"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isMmsPushedViaMap()Z
    .locals 1

    .prologue
    sget-boolean v0, Landroid/provider/BTMapBrowseUtils;->MMS_PUSHED_VIA_MAP:Z

    return v0
.end method

.method public static isMmsPushedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "pref_key_btmap_mms_push"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmsDeletedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "pref_key_btmap_sms_del"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSmsPushedViaMap(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    const-string v0, "pref_key_btmap_sms_push"

    invoke-static {p0, v0}, Landroid/provider/BTMapBrowseUtils;->getPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .parameter "context"
    .parameter "action"
    .parameter "value"

    .prologue
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static setDefaultEmailAccount(J)V
    .locals 4
    .parameter "id"

    .prologue
    sput-wide p0, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultEmailAccount, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setOrResetPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .parameter "context"
    .parameter "key"
    .parameter "value"

    .prologue
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    return-void
.end method

.method public static storeAndSendEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 2
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Landroid/provider/BTMapBrowseUtils;->uploadEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static storeDraftEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 2
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/BTMapBrowseUtils;->uploadEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;Z)J

    move-result-wide v0

    return-wide v0
.end method

.method public static updateInbox(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-string v6, "BTMapBrowseUtils"

    invoke-static {p0}, Landroid/provider/BTMapBrowseUtils;->getAndSetDefaultEmailAccount(Landroid/content/Context;)J

    invoke-static {p0}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v3

    const-string v5, "inbox"

    invoke-static {p0, v3, v4, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .local v0, inboxId:J
    const-wide/16 v3, -0x1

    cmp-long v3, v0, v3

    if-nez v3, :cond_0

    const-string v3, "BTMapBrowseUtils"

    const-string v3, "updateInbox : failed, folder id invalid"

    invoke-static {v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v3, "BTMapBrowseUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateInbox : folder id : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.motorola.bt.update_inbox"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v3, "folder"

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "account"

    sget-wide v4, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private static uploadEmail(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;Z)J
    .locals 12
    .parameter "context"
    .parameter "charset"
    .parameter "params"
    .parameter "needToSend"

    .prologue
    const-wide/16 v8, 0x0

    .local v8, folderId:J
    const/4 p1, 0x1

    .local p1, toFolder:I
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailToList()Ljava/util/List;

    move-result-object v7

    .local v7, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailCcList()Ljava/util/List;

    move-result-object v6

    .local v6, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailBccList()Ljava/util/List;

    move-result-object p1

    .local p1, bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v10

    .local v10, text:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailSubject()Ljava/lang/String;

    move-result-object p2

    .local p2, subject:Ljava/lang/String;
    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pushing email text : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "subject : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .local v11, values:Landroid/content/ContentValues;
    const-string v0, "account_id"

    sget-wide v1, Landroid/provider/BTMapBrowseUtils;->sDEFAULT_EMAIL_ACCOUNT:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "subject"

    invoke-virtual {v11, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "flags"

    .end local p2           #subject:Ljava/lang/String;
    const-string v0, "visible"

    invoke-virtual {v11, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v11, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p2, "message_uuid"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, p2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    const/16 p2, 0x8

    .local p2, toFolder:I
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Email$Folder;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sFOLDERPROJ:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "folder_type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    .end local p2           #toFolder:I
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .local p2, cursor:Landroid/database/Cursor;
    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Landroid/provider/BTMapBrowseUtils;->_ID:I

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .end local v8           #folderId:J
    .local v0, folderId:J
    const-string v2, "parent_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v2, 0x0

    .local v2, res:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .end local v2           #res:Landroid/net/Uri;
    sget-object v3, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v3

    .local v3, res:Landroid/net/Uri;
    const-string v2, "BTMapBrowseUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Email stored : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.motorola.bt.push_email_message"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v2, intent:Landroid/content/Intent;
    const-string v4, "send"

    invoke-virtual {v2, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p3, "uri"

    .end local p3
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "text"

    invoke-virtual {v2, p3, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "dests"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-eqz v6, :cond_0

    const-string p3, "cc"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_0
    if-eqz p1, :cond_1

    const-string p3, "bcc"

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, p3, v4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    invoke-virtual {v3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    .end local p0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    const-string p2, "EMAIL"

    .end local p2           #cursor:Landroid/database/Cursor;
    invoke-static {p0, p1, p2}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide p0

    move-wide p2, p0

    move-wide p0, v0

    .end local v0           #folderId:J
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #res:Landroid/net/Uri;
    .end local p1           #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p0, folderId:J
    :goto_1
    return-wide p2

    .restart local v8       #folderId:J
    .local p0, context:Landroid/content/Context;
    .restart local p1       #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local p3
    :cond_2
    const/4 p2, 0x3

    .local p2, toFolder:I
    goto/16 :goto_0

    .local p2, cursor:Landroid/database/Cursor;
    :cond_3
    const-wide/16 p0, -0x1

    move-wide p2, p0

    move-wide p0, v8

    .end local v8           #folderId:J
    .end local p1           #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local p0, folderId:J
    goto :goto_1
.end method


# virtual methods
.method public getFolderListing(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 11
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "msg"

    const-string v9, "telecom"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getAndSetDefaultEmailAccount(Landroid/content/Context;)J

    if-nez p2, :cond_0

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "telecom"

    aput-object v9, v4, v6

    .end local p0
    :goto_0
    return-object v4

    .restart local p0
    :cond_0
    aget-object v4, p2, v6

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "telecom"

    aput-object v9, v4, v6

    goto :goto_0

    :cond_1
    aget-object v4, p2, v6

    const-string v5, "telecom"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    array-length v4, p2

    if-ne v4, v7, :cond_2

    new-array v4, v7, [Ljava/lang/String;

    const-string v5, "msg"

    aput-object v10, v4, v6

    goto :goto_0

    :cond_2
    aget-object v4, p2, v7

    const-string v5, "msg"

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    array-length v4, p2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    const-string v4, "inbox"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "outbox"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "sent"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "failed"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "queued"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "drafts"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "deleted"

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/provider/BTMapBrowseUtils;->isEmailAccountSet()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderListing(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    new-array v4, v6, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    move-object v4, p0

    goto :goto_0

    .restart local p0
    :cond_4
    invoke-static {}, Landroid/provider/BTMapBrowseUtils;->isEmailAccountSet()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v2

    .local v2, parent:J
    const/4 v1, 0x2

    .local v1, i:I
    :goto_2
    array-length v4, p2

    if-ge v1, v4, :cond_6

    aget-object v4, p2, v1

    invoke-static {p1, v2, v3, v4}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_5

    move-object v4, v8

    goto/16 :goto_0

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-static {p1, v2, v3}, Landroid/provider/BTMapBrowseUtils;->getFolderListing(Landroid/content/Context;J)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .end local v1           #i:I
    .end local v2           #parent:J
    :cond_7
    move-object v4, v8

    goto/16 :goto_0

    :cond_8
    move-object v4, v8

    goto/16 :goto_0
.end method

.method public getMMSFields(Landroid/content/Context;Landroid/net/Uri;)Landroid/provider/BTMapBrowseUtils$MmsAttributes;
    .locals 24
    .parameter "context"
    .parameter "uri"

    .prologue
    const/4 v8, 0x0

    .local v8, priority:I
    const/16 v19, 0x0

    .local v19, msg_type:I
    const/4 v9, 0x0

    .local v9, read_status:I
    const-wide/16 v10, 0x0

    .local v10, date:J
    const/16 v21, 0x0

    .local v21, subject:Ljava/lang/String;
    const/16 v23, 0x0

    .local v23, to:[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, body:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, box:Ljava/lang/String;
    const/16 v22, 0x0

    .local v22, temp_to:[Lcom/google/android/mms/pdu/EncodedStringValue;
    const/16 v18, 0x0

    .local v18, msgPdu:Lcom/google/android/mms/pdu/MultimediaMessagePdu;
    :try_start_0
    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v20

    .local v20, p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v20

    .end local v20           #p:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, v20

    check-cast v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    move-object/from16 v18, v0
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getMessageType()I

    move-result v19

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getPriority()I

    move-result v8

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v18 .. v18}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getTo()[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/provider/BTMapBrowseUtils;->getMmsText(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, v22

    array-length v0, v0

    move v2, v0

    move/from16 v0, v17

    move v1, v2

    if-ge v0, v1, :cond_0

    aget-object v2, v22, v17

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v23, v17

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .end local v17           #i:I
    :catch_0
    move-exception v2

    move-object v15, v2

    .local v15, e:Lcom/google/android/mms/MmsException;
    const-string v2, "BTMapBrowseUtils"

    const-string v3, "Not a fully downloaded MMS"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .end local v15           #e:Lcom/google/android/mms/MmsException;
    :goto_1
    return-object v2

    :catch_1
    move-exception v2

    move-object/from16 v16, v2

    .local v16, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "BTMapBrowseUtils"

    const-string v3, "Unknown type of the message"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_1

    .end local v16           #ex:Ljava/lang/IllegalArgumentException;
    .restart local v17       #i:I
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, "date DESC"

    move-object/from16 v3, p2

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .local v14, cursor:Landroid/database/Cursor;
    if-eqz v14, :cond_2

    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-interface {v14}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "read"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string v2, "date"

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v14, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    const/4 v2, 0x1

    const-string v3, "msg_box"

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v14, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v2, v3}, Landroid/provider/BTMapUtils;->getFolderName(ZI)Ljava/lang/String;

    move-result-object v12

    :cond_1
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    new-instance v2, Landroid/provider/BTMapBrowseUtils$MmsAttributes;

    move-object/from16 v3, p0

    move-object/from16 v4, v23

    move-object/from16 v5, v21

    move-object v6, v13

    move/from16 v7, v19

    invoke-direct/range {v2 .. v12}, Landroid/provider/BTMapBrowseUtils$MmsAttributes;-><init>(Landroid/provider/BTMapBrowseUtils;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIJLjava/lang/String;)V

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;
    .locals 5
    .parameter "context"
    .parameter "path"
    .parameter "params"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "BTMapBrowseUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message listing path[0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path[1] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, p2, v3

    const-string v1, "sms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, p3}, Landroid/provider/BTMapBrowseUtils;->getSmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    aget-object v0, p2, v3

    const-string v1, "mms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-object v0, p2, v4

    invoke-direct {p0, p1, v0, p3}, Landroid/provider/BTMapBrowseUtils;->getMmsMessageListing(Landroid/content/Context;Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    goto :goto_0

    :cond_1
    aget-object v0, p2, v3

    const-string v1, "email"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getAndSetDefaultEmailAccount(Landroid/content/Context;)J

    invoke-direct {p0, p1, p2, p3}, Landroid/provider/BTMapBrowseUtils;->getEmailMessageListing(Landroid/content/Context;[Ljava/lang/String;Landroid/provider/BTMapBrowseUtils$MessageListingParams;)[Landroid/provider/BTMapBrowseUtils$Message;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMmsText(Lcom/google/android/mms/pdu/MultimediaMessagePdu;)Ljava/lang/String;
    .locals 10
    .parameter "pdu"

    .prologue
    invoke-virtual {p1}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v0

    .local v0, body:Lcom/google/android/mms/pdu/PduBody;
    invoke-virtual {v0}, Lcom/google/android/mms/pdu/PduBody;->getPartsNum()I

    move-result v4

    .local v4, numParts:I
    const/4 v6, 0x0

    .local v6, text:Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/android/mms/pdu/PduBody;->getPart(I)Lcom/google/android/mms/pdu/PduPart;

    move-result-object v5

    .local v5, part:Lcom/google/android/mms/pdu/PduPart;
    new-instance v8, Ljava/lang/String;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getContentType()[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>([B)V

    const-string v9, "text/plain"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getData()[B

    move-result-object v1

    .local v1, bytes:[B
    invoke-virtual {v5}, Lcom/google/android/mms/pdu/PduPart;->getCharset()I

    move-result v2

    .local v2, charset:I
    if-eqz v1, :cond_0

    new-instance v7, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v7, v2, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    .local v7, value:Lcom/google/android/mms/pdu/EncodedStringValue;
    invoke-virtual {v7}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v6

    .end local v1           #bytes:[B
    .end local v2           #charset:I
    .end local v5           #part:Lcom/google/android/mms/pdu/PduPart;
    .end local v7           #value:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_0
    return-object v6

    .restart local v5       #part:Lcom/google/android/mms/pdu/PduPart;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public isLegalPath(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "path"

    .prologue
    const/4 v7, 0x0

    const-string v9, "] : "

    const-string v8, "BTMapBrowseUtils"

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, currentPath:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    aget-object v5, p2, v7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v5, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLegalPath, path[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, p2, v7

    const-string v6, "telecom"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    aget-object v5, p2, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    :goto_0
    return v5

    :cond_0
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    array-length v5, p2

    if-ge v1, v5, :cond_4

    const-string v5, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLegalPath, path["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-array v5, v7, [Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p0, p1, v5}, Landroid/provider/BTMapBrowseUtils;->getFolderListing(Landroid/content/Context;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, list:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, isPresent:Z
    if-eqz v4, :cond_1

    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    array-length v5, v4

    if-ge v3, v5, :cond_1

    const-string v5, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isLegalPath, list["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] : "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v5, p2, v1

    aget-object v6, v4, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .end local v3           #j:I
    :cond_1
    if-nez v2, :cond_3

    const-string v5, "BTMapBrowseUtils"

    const-string v5, "isLegalPath : returning FALSE"

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v7

    goto :goto_0

    .restart local v3       #j:I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3           #j:I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v2           #isPresent:Z
    .end local v4           #list:[Ljava/lang/String;
    :cond_4
    const-string v5, "BTMapBrowseUtils"

    const-string v5, "isLegalPath : returning TRUE"

    invoke-static {v8, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto/16 :goto_0
.end method

.method public setDeletedStatus(Landroid/content/Context;JLjava/lang/String;Z)Z
    .locals 7
    .parameter "context"
    .parameter "handle"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v2, 0x0

    .local v2, msgUri:Landroid/net/Uri;
    if-nez p5, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "BTMapBrowseUtils"

    const-string v5, "Deleting SMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.motorola.bt.del_sms_warn"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "com.motorola.bt.del_sms_warn"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_1
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const-string v4, "MMS"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "BTMapBrowseUtils"

    const-string v5, "Deleting MMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.motorola.bt.del_mms_warn"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "com.motorola.bt.del_mms_warn"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v4, "BTMapBrowseUtils"

    const-string v5, "Deleted MMS"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v4, "EMAIL"

    invoke-virtual {v4, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "BTMapBrowseUtils"

    const-string v5, "Deleting Email"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "com.motorola.bt.del_email_warn"

    const/4 v5, 0x1

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    sget-object v4, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {p1}, Landroid/provider/BTMapBrowseUtils;->getRootFolderId(Landroid/content/Context;)J

    move-result-wide v4

    const-string v6, "deleted"

    invoke-static {p1, v4, v5, v6}, Landroid/provider/BTMapBrowseUtils;->getFolderId(Landroid/content/Context;JLjava/lang/String;)J

    move-result-wide v0

    .local v0, deletedId:J
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "parent_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v4, v2, v3, v5, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v4, "com.motorola.bt.del_email_warn"

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    const-string v4, "BTMapBrowseUtils"

    const-string v5, "Deleted Email"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public setReadStatus(Landroid/content/Context;JLjava/lang/String;Z)V
    .locals 10
    .parameter "context"
    .parameter "handle"
    .parameter "type"
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v5, "read"

    const-string v9, "BTMapBrowseUtils"

    const/4 v1, 0x0

    .local v1, msgUri:Landroid/net/Uri;
    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .local v8, values:Landroid/content/ContentValues;
    const-string v0, "read"

    if-eqz p5, :cond_1

    move v0, v4

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "BTMapBrowseUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked SMS read unread status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .end local v8           #values:Landroid/content/ContentValues;
    :cond_0
    :goto_1
    return-void

    .restart local v8       #values:Landroid/content/ContentValues;
    :cond_1
    move v0, v2

    goto :goto_0

    .end local v8           #values:Landroid/content/ContentValues;
    :cond_2
    const-string v0, "MMS"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v0, "read"

    if-eqz p5, :cond_3

    move v0, v4

    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v8, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "BTMapBrowseUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked MMS read unread status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2

    .end local v8           #values:Landroid/content/ContentValues;
    :cond_4
    const-string v0, "EMAIL"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/provider/Email$Message;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Landroid/provider/BTMapBrowseUtils;->sEMAILPROJ:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .local v6, cursor:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, status:I
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Landroid/provider/BTMapBrowseUtils;->EM_STATUS:I

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    :cond_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    if-eqz p5, :cond_6

    or-int/lit8 v7, v7, 0x4

    :goto_3
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .restart local v8       #values:Landroid/content/ContentValues;
    const-string v0, "status"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v8, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    const-string v0, "BTMapBrowseUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Marked Email read unread status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v8           #values:Landroid/content/ContentValues;
    :cond_6
    and-int/lit8 v7, v7, -0x5

    goto :goto_3
.end method

.method public storeAndSendMms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 18
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailToList()Ljava/util/List;

    move-result-object v3

    .local v3, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v13

    .local v13, text:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailSubject()Ljava/lang/String;

    move-result-object v12

    .local v12, subject:Ljava/lang/String;
    new-instance v11, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v11}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .local v11, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v3}, Landroid/provider/BTMapBrowseUtils;->encodeAddresses(Ljava/util/List;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v5

    .local v5, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v5, :cond_0

    invoke-virtual {v11, v5}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_0
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    new-instance v14, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v14, v12}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v14}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    invoke-virtual {v11, v14, v15}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    new-instance v9, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .local v9, pb:Lcom/google/android/mms/pdu/PduBody;
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v14, "text/plain"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    const/16 v14, 0x6a

    invoke-virtual {v8, v14}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    invoke-virtual {v13}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const-string v14, "text_0.txt"

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-virtual {v8, v14}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    invoke-virtual {v11, v9}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    const-string v14, "BTMapBrowseUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "text : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " subject : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "com.motorola.bt.push_mms_warn"

    const/4 v15, 0x1

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .local v7, mPersister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v10, 0x0

    .local v10, res:Landroid/net/Uri;
    :try_start_0
    sget-object v14, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v11, v14}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    const-string v14, "com.motorola.bt.push_mms_warn"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_0
    const-string v14, "BTMapBrowseUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "MMS stored : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.motorola.bt.push_mms_message"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v6, intent:Landroid/content/Intent;
    const-string v14, "uri"

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    const-string v16, "MMS"

    invoke-static/range {v14 .. v16}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v14

    return-wide v14

    .end local v6           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v14

    move-object v4, v14

    .local v4, e:Ljava/lang/Exception;
    :try_start_1
    const-string v14, "BTMapBrowseUtils"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Error e = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v14, "com.motorola.bt.push_mms_warn"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .end local v4           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v14

    const-string v15, "com.motorola.bt.push_mms_warn"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v14
.end method

.method public storeAndSendSms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 20
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    new-instance v19, Landroid/content/ContentValues;

    invoke-direct/range {v19 .. v19}, Landroid/content/ContentValues;-><init>()V

    .local v19, values:Landroid/content/ContentValues;
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageReceiverDataList()Ljava/util/List;

    move-result-object v14

    .local v14, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .local v17, msgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getMessageBody(Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)Ljava/lang/String;

    move-result-object v6

    .local v6, text:Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .local v12, date:J
    const-string v4, "BTMapBrowseUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pushing SMS body : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " DATE : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .local v5, address:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    const-wide/16 v10, -0x42

    invoke-static/range {v4 .. v11}, Landroid/provider/Telephony$Sms$Outbox;->addMessage(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;ZJ)Landroid/net/Uri;

    move-result-object v18

    .local v18, uri:Landroid/net/Uri;
    const/4 v4, 0x6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move v2, v4

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Telephony$Sms;->moveMessageToFolder(Landroid/content/Context;Landroid/net/Uri;II)Z

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v17

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v4, "BTMapBrowseUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .end local v5           #address:Ljava/lang/String;
    const-string v7, " SMS Pushed"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v18 .. v18}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v18           #uri:Landroid/net/Uri;
    :cond_0
    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.motorola.bt.push_sms_message"

    move-object/from16 v0, v16

    move-object v1, v4

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v16, intent:Landroid/content/Intent;
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    const/4 v4, 0x0

    move-object/from16 v0, v17

    move v1, v4

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static/range {p0 .. p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v8, v4}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v7

    return-wide v7
.end method

.method public storeDraftMms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 21
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailToList()Ljava/util/List;

    move-result-object v4

    .local v4, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v17, "BTMapBrowseUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "storeDraftMms: no. of dests = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_0

    const-wide/16 v17, 0x0

    :goto_0
    return-wide v17

    :cond_0
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .local v10, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v10, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageBodyData()Ljava/lang/String;

    move-result-object v14

    .local v14, text:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getEmailSubject()Ljava/lang/String;

    move-result-object v13

    .local v13, subject:Ljava/lang/String;
    const-string v17, "BTMapBrowseUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "text : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " subject : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v15, -0x1

    .local v15, threadId:J
    :try_start_0
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v17, v15, v17

    if-gtz v17, :cond_1

    const-wide/16 v17, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v17, "BTMapBrowseUtils"

    const-string v18, "Unable to create/get thread id"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v5

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v17, 0x0

    goto :goto_0

    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v15

    invoke-direct {v0, v1, v2, v3}, Landroid/provider/BTMapBrowseUtils;->isDraftMessageOnThread(Landroid/content/Context;J)Z

    move-result v17

    if-eqz v17, :cond_2

    const-wide/16 v17, 0x0

    goto :goto_0

    :cond_2
    new-instance v12, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v12}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .local v12, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v4}, Landroid/provider/BTMapBrowseUtils;->encodeAddresses(Ljava/util/List;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v6

    .local v6, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v6, :cond_3

    invoke-virtual {v12, v6}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_3
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    new-instance v17, Lcom/google/android/mms/pdu/EncodedStringValue;

    move-object/from16 v0, v17

    move-object v1, v13

    invoke-direct {v0, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/SendReq;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    const-wide/16 v19, 0x3e8

    div-long v17, v17, v19

    move-object v0, v12

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/SendReq;->setDate(J)V

    new-instance v9, Lcom/google/android/mms/pdu/PduBody;

    invoke-direct {v9}, Lcom/google/android/mms/pdu/PduBody;-><init>()V

    .local v9, pb:Lcom/google/android/mms/pdu/PduBody;
    new-instance v8, Lcom/google/android/mms/pdu/PduPart;

    invoke-direct {v8}, Lcom/google/android/mms/pdu/PduPart;-><init>()V

    .local v8, part:Lcom/google/android/mms/pdu/PduPart;
    const-string v17, "text/plain"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setContentType([B)V

    const/16 v17, 0x6a

    move-object v0, v8

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setCharset(I)V

    invoke-virtual {v14}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setData([B)V

    const-string v17, "text_0.txt"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/mms/pdu/PduPart;->setFilename([B)V

    invoke-virtual {v9, v8}, Lcom/google/android/mms/pdu/PduBody;->addPart(Lcom/google/android/mms/pdu/PduPart;)Z

    invoke-virtual {v12, v9}, Lcom/google/android/mms/pdu/SendReq;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    const-string v17, "com.motorola.bt.push_mms_warn"

    const/16 v18, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-static/range {p1 .. p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v7

    .local v7, mPersister:Lcom/google/android/mms/pdu/PduPersister;
    const/4 v11, 0x0

    .local v11, res:Landroid/net/Uri;
    :try_start_1
    sget-object v17, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    move-object v0, v7

    move-object v1, v12

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    const-string v17, "com.motorola.bt.push_mms_warn"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    :goto_1
    const-string v17, "BTMapBrowseUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "MMS stored : "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v11}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    const-string v19, "MMS"

    invoke-static/range {v17 .. v19}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v17

    goto/16 :goto_0

    :catch_1
    move-exception v17

    move-object/from16 v5, v17

    .local v5, e:Ljava/lang/Exception;
    :try_start_2
    const-string v17, "BTMapBrowseUtils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Error e = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v17, "com.motorola.bt.push_mms_warn"

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    .end local v5           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v17

    const-string v18, "com.motorola.bt.push_mms_warn"

    const/16 v19, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v17
.end method

.method public storeDraftSms(Landroid/content/Context;Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)J
    .locals 17
    .parameter "context"
    .parameter "charset"
    .parameter "params"

    .prologue
    invoke-virtual/range {p3 .. p3}, Lcom/motorola/android/bmessage/MessageStruct;->getMessageReceiverDataList()Ljava/util/List;

    move-result-object v4

    .local v4, dests:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v13, "BTMapBrowseUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "storeDraftSms: no. of dests = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_0

    const-wide/16 v13, 0x0

    :goto_0
    return-wide v13

    :cond_0
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .local v7, recipients:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v7, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-direct {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->getMessageBody(Ljava/lang/String;Lcom/motorola/android/bmessage/MessageStruct;)Ljava/lang/String;

    move-result-object v8

    .local v8, text:Ljava/lang/String;
    const-string v13, "BTMapBrowseUtils"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Storing SMS body : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v9, -0x1

    .local v9, threadId:J
    :try_start_0
    move-object/from16 v0, p1

    move-object v1, v7

    invoke-static {v0, v1}, Landroid/provider/Telephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;)J
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v9

    const-wide/16 v13, 0x0

    cmp-long v13, v9, v13

    if-gtz v13, :cond_1

    const-wide/16 v13, 0x0

    goto :goto_0

    :catch_0
    move-exception v5

    .local v5, e:Ljava/lang/IllegalArgumentException;
    const-string v13, "BTMapBrowseUtils"

    const-string v14, "Unable to create/get thread id"

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/16 v13, 0x0

    goto :goto_0

    .end local v5           #e:Ljava/lang/IllegalArgumentException;
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v9

    invoke-direct {v0, v1, v2, v3}, Landroid/provider/BTMapBrowseUtils;->isDraftMessageOnThread(Landroid/content/Context;J)Z

    move-result v13

    if-eqz v13, :cond_2

    const-wide/16 v13, 0x0

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    .local v11, uri:Landroid/net/Uri;
    new-instance v12, Landroid/content/ContentValues;

    const/4 v13, 0x3

    invoke-direct {v12, v13}, Landroid/content/ContentValues;-><init>(I)V

    .local v12, values:Landroid/content/ContentValues;
    const-string v13, "thread_id"

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v13, "body"

    invoke-virtual {v12, v13, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "type"

    const/4 v14, 0x3

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v13, "com.motorola.bt.push_sms_warn"

    const/4 v14, 0x1

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    sget-object v14, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v12}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/database/sqlite/SQLiteFullException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v11

    const-string v13, "com.motorola.bt.push_sms_warn"

    const/4 v14, 0x0

    move-object/from16 v0, p1

    move-object v1, v13

    move v2, v14

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v11}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v6

    .local v6, msgId:Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v13

    invoke-static {}, Landroid/provider/BTMapUtils;->typeSms()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v14, v15}, Landroid/provider/BTMapUtils;->transformHandle(JLjava/lang/String;)J

    move-result-wide v13

    goto/16 :goto_0

    .end local v6           #msgId:Ljava/lang/String;
    :catch_1
    move-exception v13

    move-object v5, v13

    .local v5, e:Landroid/database/sqlite/SQLiteFullException;
    :try_start_2
    const-string v13, "BTMapBrowseUtils"

    const-string v14, "Caught a SQLiteException on insert: "

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-wide/16 v13, 0x0

    const-string v15, "com.motorola.bt.push_sms_warn"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v5           #e:Landroid/database/sqlite/SQLiteFullException;
    :catch_2
    move-exception v13

    move-object v5, v13

    .local v5, e:Landroid/database/sqlite/SQLiteException;
    :try_start_3
    const-string v13, "BTMapBrowseUtils"

    const-string v14, "Caught a SQLiteException on insert: "

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/google/android/mms/util/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-wide/16 v13, 0x0

    const-string v15, "com.motorola.bt.push_sms_warn"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v5           #e:Landroid/database/sqlite/SQLiteException;
    :catch_3
    move-exception v13

    move-object v5, v13

    .local v5, e:Ljava/lang/Throwable;
    :try_start_4
    const-string v13, "BTMapBrowseUtils"

    const-string v14, "Caught an exception on insert: "

    invoke-static {v13, v14, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide/16 v13, 0x0

    const-string v15, "com.motorola.bt.push_sms_warn"

    const/16 v16, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .end local v5           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v13

    const-string v14, "com.motorola.bt.push_sms_warn"

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object v1, v14

    move v2, v15

    invoke-static {v0, v1, v2}, Landroid/provider/BTMapBrowseUtils;->sendWarning(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v13
.end method
